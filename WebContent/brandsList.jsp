<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:import url="menu.jsp" />
<section>
<!-- 브랜드별 상품 페이지 -->
<article>
<h1 style="font-size: 30px; padding-top: 50px">${pg}</h1>
</article>
	<div class="product">
		<c:if test="${!empty list}">
			<c:forEach items="${list}" var="ob">
			<div class="img_product">
			<button id="btn_product" type="button" onclick="location.href='productDetail.do?pg=${ob.getPid()}'">
			<img src="/oop/img/shoes/${ob.getPimage1() }" alt="${ob.getPname() }">
			</button>
			</div>
		</c:forEach>
		</c:if>
	</div>
</section>
<c:import url="footer.jsp" />