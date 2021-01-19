<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %> 
<c:import url="../menu.jsp" />

<form action="/oop/pay/payment.jsp" method="post">
	<div class="order-checkout">
		<div class ="order-wrap">
			<div class ="contents-title">
				<h2 class="title">ORDER</h2>
			</div>	
			<!-- 주문내역 확인란-->
			<div class = "order-check">
				<div class ="tit">
					<strong>주문내역</strong>
				</div>
				<div class="order-summary">
		<c:if test="${!empty list}">
		<c:forEach items="${list}" var="ob">
		<c:set var ="all" scope="session" value="${ob.getMid()}"/>
		<input type="hidden" name="mid" value="${all}">
					<div class="cart-order-list">
						<div class="order-list">
							<!-- 상품 이미지 -->
							<div class="image-wrap"><img id="pimage" src="/oop/img/shoes/${ob.getPimage1()}"></div>
							<!-- 상품 디테일 -->
							<div class="info-wrap">
								<div class ="pName">
								${ob.getPname()}
								</div>
								<div class="">
									사이즈 : ${ob.getOdsize()}
									<input type ="hidden" name="odsize" value="${ob.getOdsize()}">	
								</div>
								<div>
									수량 : ${ob. getOdqty()}
									<input type ="hidden" name="odqty" value="${ob.getOdqty()}">
								</div>
								<div class="retail-price">
								<input type ="hidden" name="pid" value="${ob.getPid()}">
									<span style="background-color: rgb(255, 255, 255); font-size: large;">
                     				<fmt:formatNumber type="number" maxFractionDigits="3" value="${ob.getOdqty()*ob.getPprice()}"/>원</span>
								</div>
							</div>
						</div>
					</div>
		</c:forEach></c:if>	
				</div>	
				<!-- 금액창 -->
				<div class = "info-price-container">
					<div class = "info-price">
						<!-- 상품금액 -->
						<div class ="item-price">
							<div class="label">상품금액</div>	
							<div class = "price">
								<strong>
								<c:if test="${!empty list}">
								<c:set var ="sum" value="0"/>
								<c:forEach var="ob" items="${list}">
								<c:set var="sum" value="${sum+ob.pprice*ob.odqty}"/>
								<c:set var="dis" value="${ob.getPdiscount()}"/>
								</c:forEach>
										<strong>
										<fmt:formatNumber type="number" maxFractionDigits="3" value="${sum}" />원
										</strong>
								</c:if></strong>
							</div>
						</div>
					 <!-- 예상배송비 -->               
	                    <div class ="item-price">
	                       <div class="label">예상배송비</div>
	                       <div class = "price">
	                          <c:choose>
		                             <c:when test = "${sum<100000}">
		                             	<c:set var="odel" value="3000"/>
		                             	<input type ="hidden" name="odelivery" value="1">
		                             	<fmt:formatNumber type="number" maxFractionDigits="3" value="${odel}" />원
		                             </c:when>
		                             <c:otherwise>
		                             	<c:set var="odel" value="0"/>
		                             	<input type ="hidden" name="odelivery" value="0">
		                            	 ${odel}원</c:otherwise>
		                      </c:choose>
	                       </div>
	                    </div>
						<!-- 상품 할인 금액 -->
						<div class = "item-price">
	                        <div class="label">상품 할인 금액</div>
	                        <div class="price sale">
	                           <strong><fmt:formatNumber type="number" maxFractionDigits="3" value="${sum*dis*0.01}" />원</strong>
	                        </div>
                     	</div>
						<!-- 주문 할인 금액 -->
						<div class = "item-price">
							<span class="label">상품 할인 금액</span>
							<span class="price sale">
								<strong>원</strong>
							</span>
						</div>
					</div>
					<!-- 총 결제 예정 금액	 -->							
					<div class="total-price ">
						<strong class ="label"  id="total-tit">총 결제 예정 금액</strong>
						<div class ="price-sale-total">
							<strong>
	                        <fmt:formatNumber type="number" maxFractionDigits="3" value="${sum-sum*dis*0.01+odel}" />원
	                        </strong>
	                        <fmt:parseNumber var="sum2" value="${sum-sum*dis/100+odel}" integerOnly="true" />
							<input type ="hidden" name="oamount" value="${sum2}">
						</div>
					</div>
					<!-- 안내사항 -->
					<div class = "info">
						<li id="li_info">장기간 장바구니에 보관하신 상품은 시간이 지남에 따라 가격과 혜택이 변동될 수 있으며, 최대 30일 동안 보관됩니다.</li>
					</div>
				</div>
			</div>
			<!-- 주문고객 정보 -->
			<div class="customer-container">
				<div class="customer-wrap">
					<!-- 이름/연락처 -->
					<div class="customer-title">주문고객</div>
					<div class="customer-body">
						<div class="name-con">
							<span class ="name-tit">이름</span>
							<input name="name" class="input_info" type="text" placeholder="이름">
							
						</div>
						<div class="name-con">
							<span class ="phone-tit">연락처</span>
							<input name="phone" class="input_info" type="text" data-parsley-required="" data-parsley-minlength="8" data-parsley-maxlength="12" data-parsley-pattern="^01([0|1|6|7|8|9]?)-?([0-9]{3,4})-?([0-9]{4})$" data-parsley-type="digits" data-parsley-minlength-message="입력값이 너무 짧습니다." data-parsley-type-message="숫자만 입력 가능합니다." data-parsley-pattern-message="올바른 휴대폰 번호를 입력해주세요." data-parsley-required-message="필수 입력 항목입니다." data-parsley-maxlength-message="입력값이 너무 깁니다." id="phoneNumber" name="phoneNumber" placeholder="-없이 입력">
						</div>
					</div>
				</div>
				<!-- 배송지 -->
				<div class="customer-wrap">
					<div class="shipping-title">배송지 정보</div>
					<div class="shipping-body">
						<div class="shipping-con">
							<span class ="shipping-tit">받으시는 분</span>
							<input class="input_info" name="oname" type="text">
						</div>
						<div class="shipping-con">
							<span class ="shipping-tit">연락처</span>
							<input class="input_info" name="ophone" type="text">
						</div>
						<div class="shipping-con">
							<span class ="shipping-tit">배송주소</span>
							<div class="post-wrap">
								<div id="temp-wrap">
								<input class="input_info" type="text" name="opost" id="opost" placeholder="우편번호">
								<input class="input_info" type="button" onclick="sample6_execDaumPostcode()" value="우편번호 찾기" id ="btn_post"><br>
								</div>
								
								<input class="input_info" type="text" name ="address" id="address" placeholder="주소"><br>
								<input class="input_info" type="text" name ="addressDetail" id="addressDetail" placeholder="상세주소">
								<input class="input_info" type="text" name ="addressExtra" id="addressExtra" placeholder="참고항목">

								<input type="hidden" name="oaddress">
								<script src="https://t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
								<script>
								    function sample6_execDaumPostcode() {
								    	new daum.Postcode({
								            oncomplete: function(data) {
								                // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.
								
								                // 각 주소의 노출 규칙에 따라 주소를 조합한다.
								                // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
								                var addr = ''; // 주소 변수
								                var extraAddr = ''; // 참고항목 변수
								
								                //사용자가 선택한 주소 타입에 따라 해당 주소 값을 가져온다.
								                if (data.userSelectedType === 'R') { // 사용자가 도로명 주소를 선택했을 경우
								                    addr = data.roadAddress;
								                } else { // 사용자가 지번 주소를 선택했을 경우(J)
								                    addr = data.jibunAddress;
								                }
								
								                // 사용자가 선택한 주소가 도로명 타입일때 참고항목을 조합한다.
								                if(data.userSelectedType === 'R'){
								                    // 법정동명이 있을 경우 추가한다. (법정리는 제외)
								                    // 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
								                    if(data.bname !== '' && /[동|로|가]$/g.test(data.bname)){
								                        extraAddr += data.bname;
								                    }
								                    // 건물명이 있고, 공동주택일 경우 추가한다.
								                    if(data.buildingName !== '' && data.apartment === 'Y'){
								                        extraAddr += (extraAddr !== '' ? ', ' + data.buildingName : data.buildingName);
								                    }
								                    // 표시할 참고항목이 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
								                    if(extraAddr !== ''){
								                        extraAddr = ' (' + extraAddr + ')';
								                    }
								                    // 조합된 참고항목을 해당 필드에 넣는다.
								                    document.getElementById("addressExtra").value = extraAddr;
								                
								                } else {
								                    document.getElementById("addressExtra").value = '';
								                }
								
								                // 우편번호와 주소 정보를 해당 필드에 넣는다.
								                document.getElementById('opost').value = data.zonecode;
								                document.getElementById("address").value = addr;
								                // 커서를 상세주소 필드로 이동한다.
								                document.getElementById("addressDetail").focus();
								            }
								        }).open();
								    }
								</script>
							</div>
								
						<div class="shipping-con">
							<select class="sel_pay" name="selectPersonalMessage" data-parsley-required="" data-parsley-required-message="필수 선택 항목입니다.">
	                   				<option value="">배송 메모를 선택해주세요.</option>
	                                <option value="dt_3">배송 시 연락 부탁드립니다.</option>
	                                <option value="dt_2">빠른 배송 부탁드립니다.</option>
	                                <option value="dt_1">직접입력</option>     
	                        </select>
						</div>
					</div>
				</div>
				<!-- 결제수단 선택 -->
				<div class="customer-wrap">
					<div class="payment-title">결제수단 선택</div>
						<select class="sel_pay" name="opayment" data-parsley-required="" data-parsley-required-message="필수 선택 항목입니다.">
	                                <option value="3">카카오페이</option>
	                                <option value="2">신용카드 : 추후 업데이트 예정</option>
	                                <option value="1">실시간계좌이체 : 추후 업데이트 예정</option>     
	                    </select>
	                    
	                    
<!-- 							<div class="payment-method-list">
								<div class="payment-method-tit">
									<img id="kakao" style=" vertical-align: sub;" alt="카카오페이" src="https://static-breeze.nike.co.kr/kr/ko_kr/cmsstatic/theme/c-commerce/assets/images/icon_kakaopay_100.png"> 카카오페이</div>
								<div class="payment-method-tit">신용카드</div>
								<div class="payment-method-tit">실시간계좌이체</div>
							</div> -->
					<div class="order-checklist">
						<span class="checklist">*네이버 페이 현금결제 시 현금영수증은 자동 발행됩니다.</span>
						<span class="checklist">*일부 선택된 제품에 한 해 간편 결제 서비스가 제한 될 수 있습니다.</span>
						<span class="checklist">*상품 준비에 에러사항이 있거나, 발송지연이 불가피할 경우 고객께 안내연락을 드립니다.</span>
					</div>
				</div>
				<!-- 결제버튼 --> 
				<button id="btn-atlast" type="submit">모두 동의하고 결제하기</button>
			</div>
		</div>
		</div>
	</div>
</form>
<c:import url="../footer.jsp" />