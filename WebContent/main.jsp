<%@page import="com.product.dto.ProductDTO"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:import url="menu.jsp" />

<article>
	<!-- img slider -->
	<div class="slideshow">
		<div class="slideshow_slides">
			<a href="#"><img src="img/201209_jd_p2_bg.jpg" alt="slide1"></a>
			<a href="#"><img src="img/6cc554bd18c54ad58b12698519a665b5_1209102856.jpg" alt="slide2"></a> 
			<a href="#"><img src="img/73be104887264acd8d6c84b09a8fa66a_1119105350.jpg" alt="slide3"></a>
		</div>
		<!-- //slideshow_slides-->
		<!-- <div class="slideshow_nav">
				<a href="#" class="prev">prev</a>
				<a href="#" class="next">next</a>
			</div>//slideshow_nav -->
		<div class="indicator">
			<!-- js로 넣어줌 -->
		</div>
		<!-- //indicator -->
	</div>
	<!-- //slideshow -->
	<!-- end img slider -->
</article>
<section>
	<!-- 상품 메인페이지 -->
	<div class="product">
		<c:if test="${!empty list}">
			<c:forEach items="${list}" var="ob">
			<div class="img_product">
			<button id="btn_product" type="button"onclick="location.href='productDetail.do?pg=${ob.getPid()}'">
			<img src="/oop/img/shoes/${ob.getPimage1() }" alt="${ob.getPname() }">
			</button>
			</div>
		</c:forEach>
		</c:if>
	</div>
</section>
<%-- end section --%>

<!-- 이거슨 깃테스트를 위한 주석입니다 -->
<!-- 그러니깐 제발 깃이 됐으면 하는 염원에서 손을 들어주세요 -->

<c:import url="footer.jsp" />