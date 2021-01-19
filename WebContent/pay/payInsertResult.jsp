<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%> 
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %> 
<c:import url="../menu.jsp" />
<!-- 결제 성공 -->
<div class = "pay_result">
	<div class ="order-wrap">
		<div class = "product-select-all"></div>
			<h2 class="title">주문해주셔서 감사합니다</h2>
			<p id="cart_none">배송이 시작되면 SMS/이메일로 배송이 안내 됩니다</p>
			<button id="btn_home" onclick="location.href='/oop/orderList.do?pg=my&id=${logOK.getMid()}'">주문내역</button>
			<!-- onclick링크는 마이페이지 주문내역으로 연결될 예정입니다. -->
	</div>
</div>
</body>
</html>