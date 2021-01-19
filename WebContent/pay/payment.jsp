<%@page import="com.pay.dto.PayDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %> 
<c:import url="../menu.jsp" />

<script type="text/javascript" src="https://code.jquery.com/jquery-1.12.4.min.js" ></script>
<script type="text/javascript" src="https://cdn.iamport.kr/js/iamport.payment-1.1.5.js"></script>
<form name="orderform" id="orderform" method="post" class="orderform" action="/oop/payInput.do">
<!-- 파라메터 보낼 내역 -->
<%	
	request.setCharacterEncoding("UTF-8");
	/* pay 넘길 내역 */
	String mid = request.getParameter("mid");
	String oname = request.getParameter("oname");
	String ophone = request.getParameter("ophone");
	String oaddress = request.getParameter("address") + " " 
						+ request.getParameter("addressDetail") + " "
							+ request.getParameter("addressExtra");
	String opost = request.getParameter("opost");
	int oamount = Integer.parseInt(request.getParameter("oamount"));
	int opayment = Integer.parseInt(request.getParameter("opayment"));
	int odelivery = Integer.parseInt(request.getParameter("odelivery"));
	int pid = Integer.parseInt(request.getParameter("pid"));
	int odsize = Integer.parseInt(request.getParameter("odsize"));
	int odqty = Integer.parseInt(request.getParameter("odqty"));	
	
	System.out.println("mid :" +mid);
	System.out.println("oname :" +oname);
	System.out.println("ophone :" +ophone);
	System.out.println("oaddress :" +oaddress);
	System.out.println("opost :" +opost);
	System.out.println("oamount :" +oamount);
	System.out.println("opayment :" +opayment);
	System.out.println("odelivery :" +odelivery);
	System.out.println("odsize :" +odsize);
	System.out.println("odqty :" +odqty);	
%>
<input type ="text" name="mid" value="<%=mid%>">
<input type ="text" name="oname" value="<%=oname%>">
<input type ="hidden" name="ophone" value="<%=ophone%>">
<input type ="hidden" name="oaddress" value="<%=oaddress%>">
<input type ="hidden" name="opost" value="<%=opost%>">
<input type ="hidden" name="oamount" value="<%=oamount%>">
<input type ="hidden" name="opayment" value="<%=opayment%>">
<input type ="hidden" name="odelivery" value="<%=odelivery%>">
<input type ="hidden" name="pid" value="<%=pid%>">
<input type ="hidden" name="odsize" value="<%=odsize%>">
<input type ="hidden" name="odqty" value="<%=odqty%>">

<%	/* 카카오 들어갈 내역 */
	String name = request.getParameter("name");
//   String email = (String)request.getAttribute("email");
    String phone = request.getParameter("phone");
    String address = oaddress;
    int totalPrice = oamount; 
    
    System.out.println(name+phone+address+totalPrice);
%>


    <script>
    $(function(){
        var IMP = window.IMP; // 생략가능
        IMP.init('imp88042020'); // 'iamport' 대신 부여받은 "가맹점 식별코드"를 사용
        var msg;
        
        IMP.request_pay({
            pg : 'kakaopay',
            pay_method : 'card',
            merchant_uid : 'merchant_' + new Date().getTime(),
            name : 'Oopshoes',
            amount : <%=totalPrice%>,
         <%--    buyer_email : '<%=email%>', --%>
            buyer_name : '<%=name%>',
            buyer_tel : '<%=phone%>',
            buyer_addr : '<%=address%>',
            buyer_postcode : '123-456',
            //m_redirect_url : 'http://www.naver.com'
        }, function(rsp) {
            if ( rsp.success ) {
                //[1] 서버단에서 결제정보 조회를 위해 jQuery ajax로 imp_uid 전달하기
                jQuery.ajax({
                    url: "/payments/complete", //cross-domain error가 발생하지 않도록 주의해주세요
                    type: 'POST',
                    dataType: 'json',
                    data: {
                        imp_uid : rsp.imp_uid
                        //기타 필요한 데이터가 있으면 추가 전달
                    }
                }).done(function(data) {
                    //[2] 서버에서 REST API로 결제정보확인 및 서비스루틴이 정상적인 경우
                    if ( everythings_fine ) {
                        msg = '결제가 완료되었습니다.';
                        msg += '\n고유ID : ' + rsp.imp_uid;
                        msg += '\n상점 거래ID : ' + rsp.merchant_uid;
                        msg += '\결제 금액 : ' + rsp.paid_amount;
                        msg += '카드 승인번호 : ' + rsp.apply_num;
                        
                        alert(msg);
                    } else {
                        //[3] 아직 제대로 결제가 되지 않았습니다.
                        //[4] 결제된 금액이 요청한 금액과 달라 결제를 자동취소처리하였습니다.
                    }
                });
                //성공시 이동할 페이지
	                frm = document.orderform;
					frm.action = "/oop/payInput.do";
					frm.submit();
<%--         			location.href='<%=request.getContextPath()%>/pay/payInsertResult.jsp?msg='+msg; --%>
            } else {
                msg = '결제에 실패하였습니다.';
                msg += '에러내용 : ' + rsp.error_msg;
                //실패시 이동할 페이지
                location.href="/oop/cartList.do?mid=${logOK.getMid()}";
                alert(msg);
            }
        });
        
    });
    </script>
 
</form>
<c:import url="../footer.jsp" />
