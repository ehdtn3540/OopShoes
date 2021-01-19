
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!-- 세자리마다 콤마(,) 찍기 -->
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<c:import url="menu.jsp" />
<link rel="preconnect" href="https://fonts.gstatic.com">
<link rel="stylesheet" href="/oop/css/productdetail.css" type="text/css">

<script>
	function cartIn() {
		form = document.form1;
		form.action = "/oop/cartInput.do";
		form.submit();
	}
	function buyNow() {
		form = document.form1;
		form.action = "/oop/payBuynowList.do";
		form.submit();
	}
</script>

<div class="contents">
	<div class="product_detail">
		<h2>[${dto.pbrand}] ${dto.pname}</h2>

		<!-- 이미지 영역 -->
		<div class="detail_img">
			<img src="/oop/img/shoes/${dto.getPimage1()}" width="250"
				height="250"> <img src="/oop/img/shoes/${dto.getPimage2()}"
				width="250" height="250"> <img
				src="/oop/img/shoes/${dto.getPimage3()}" width="250" height="250">
		</div>

		<!-- 가격 표시 -->
		<div class="detail_table" style="width: 600px">
			<h2 style="margin-top: 10px; margin-bottom: 20px;">
				<fmt:formatNumber value="${dto.getPprice()}" pattern="#,### 원" />
			</h2>

			<!-- 상품 상세설명 -->
			<h6 style="margin-bottom: 10px; text-align: left;">${dto.pdetail}</h6>
			<br>

			<!-- 상품 수량 및 사이즈 선택란 -->
			<form name="form1" method="post" action="$/oop/cart/insert.do">
				<%-- 				<input type="hidden" name="productId" value="${dto.pid}"> --%>
				<select name="odqty" style="margin-bottom: 10px">
					<%-- 					<c:forEach begin="1" end="10" var="i"> --%>
					<option value="1">1</option>
					<option value="2">2</option>
					<option value="3">3</option>
					<option value="4">4</option>
					<option value="5">5</option>
					<option value="6">6</option>
					<option value="7">7</option>
					<option value="8">8</option>
					<option value="9">9</option>
					<option value="10">10</option>
					<%-- 					</c:forEach> --%>
				</select>&nbsp;개<br>SIZE <select class="size" name="odsize"
					data-parsley-required=""
					data-parsley-required-message="필수 선택 항목입니다.">
					<option value="230">230</option>
					<option value="235">235</option>
					<option value="240">240</option>
					<option value="245">245</option>
					<option value="250">250</option>
					<option value="255">255</option>
					<option value="260">260</option>
					<option value="265">265</option>
					<option value="270">270</option>
					<option value="275">275</option>
					<option value="280">280</option>
					<option value="285">285</option>
					<option value="290">290</option>
				</select>
				
				<!-- 넘겨줄 파라메터값들 -->
				<input type="hidden" name="mid" value="${logOK.getMid()}"> <input
					type="hidden" name="pid" value="${dto.pid}"> <input
					type="hidden" name="pimage1" value="${dto.getPimage1()}"> <input
					type="hidden" name="pname" value="${dto.pname}"> <input
					type="hidden" name="pprice" value="${dto.getPprice()}"><input 
					type="hidden" name="pdiscount" value="${dto.getPdiscount()}"> 
			
				<div class="detail_table">
					<input type="button" class="btn" value="ADD TO CART"
						onclick="cartIn()"> <input type="button" class="btn"
						value="BUY NOW" onclick="buyNow()">
				</div>
			</form>
			</div>
		</div>
	</div>

	<%-- end section --%>
	<c:import url="footer.jsp" />
	