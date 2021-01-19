<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%> 
<c:import url="../mymenu.jsp"/>

<h2>주문리스트</h2>
<%-- <div class="tbl_head01">
	<div class="tbl_head01">
		<table>
			<tr>
				<th align="center">주문번호</th>
				<th align="center">주문아이디</th>
				<th align="center">상품아이디</th>
				<th align="center">상품이미지</th>
				<th align="center">상품사이즈</th>
				<th align="center">상품구매수량</th>
			</tr>
			<c:if test="${!empty list}">
				<c:forEach items="${list}" var="ob">					
					<tr>
						<td align="center">${ob.getOdid()}</td>
						<td align="center"><a href="/oop/orderView.do?mid=${ob.getMid()}">${ob.getMid()}</a></td>
						<td align="center"><a href="/oop/productDetail.do?pg=${ob.getPid()}">${ob.getPname()}</a></td>
						<td align="center"><img src="/oop/img/shoes/${ob.getPimage1()}" width="50" height="50"></td>
						<td align="center">${ob.getOdsize()}</td>
						<td align="center">${ob.getOdqty()}</td>
					</tr>
				</c:forEach>
			</c:if>
		</table>
	</div>
</div> --%>
<c:if test="${!empty list}">
	<c:forEach items="${list}" var="ob">
		<div class="tbl_head01">
					<table>
						<tr>
							<th>주문번호</th>
							<td align="center"><a href="/oop/orderView.do?oid=${ob.getOid()}&mid=${ob.getMid()}&pid=${ob.getMid()}">${ob.getOid()}</a></td>
							<th>우편번호</th>
							<td align="center">${ob.getOpost()}</td>
						</tr>
						<tr>
							<th>고객아이디</th>
							<td align="center">${ob.getMid()}</td>
							<th>총금액</th>
							<td align="center">${ob.getOamount()}</td>
						</tr>
						<tr>
							<th>주문일</th>
							<td align="center">${ob.getOrdate()}</td>
							<th>결제수단</th>
							<td align="center">${ob.getOpayment()}</td>
						</tr>
						<tr>
							<th>수령자</th>
							<td align="center">${ob.getOname()}</td>
							<th>송장번호</th>
							<td align="center">${ob.getOinvoice()}</td>
						</tr>
						<tr>
							<th>연락처</th>
							<td align="center">${ob.getOphone()}</td>
							<th>배송비</th>
							<td align="center">${ob.getOdelivery()}</td>
						</tr>
						<tr>
							<th>주소</th>
							<td align="center">${ob.getOaddress()}</td>
							<th></th>
							<td align="center"></td>
						</tr>
					</table>
		</div><br>
	</c:forEach>
</c:if>
</body>
</html>