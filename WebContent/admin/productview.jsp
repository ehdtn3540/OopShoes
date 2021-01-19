<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%> 
<c:import url="../mymenu.jsp"/>
<<style>
.tbl_head01 tr td {
	width: 35%;
}
</style>
<h2>제품상세페이지</h2>
<div class="tbl_head01">
	<table>
		<tr>
			<th>상품코드</th>
			<td align="center">${param.id}</td>
			<th>이미지1</th>
			<td align="center"><img src="/oop/img/shoes/${param.image1}" width="50" height="50" border="0"></td>
		</tr>
		<tr>
			<th>상품이름</th>
			<td align="center">
			${param.name}</td>
			<th>이미지2</th>
			<td align="center">
			<img src="/oop/img/shoes/${param.image2}" width="50" height="50" border="0"></td>
		</tr>
		<tr>
			<th>브랜드</th>
			<td align="center">${param.brand}</td>
			<th>이미지3</th>
			<td align="center"><img src="/oop/img/shoes/${param.image3}" width="50" height="50" border="0"></td>
		</tr>
		<tr>
			<th>가격</th>
			<td align="center">${param.price}</td>
			<th>상품상세설명</th>
			<td align="center">${param.detail}</td>
		</tr>
		<tr>
			<th>할인율</th>
			<td align="center">${param.discount}</td>
			<th>등록일</th>
			<td align="center">${param.rdate}</td>
		</tr>
		<tr>
			<th>재고</th>
			<td align="center">${param.stock}</td>
			<th>판매수량</th>
			<td align="center">${param.sell}</td>
		</tr>
	</table>
</div><br>
<div class="btn_list01">		
	<input type="button" style="margin-left:10px; float:right;" value="삭제" onclick="if(confirm('삭제하시겠습니까?')){location.href='/oop/productDelete.do?id=${param.id}'}">
	<a style="float:right;" href="productmodify.jsp?id=${param.id}
												&name=${param.name}
												&brand=${param.brand}
												&price=${param.price}
												&discount=${param.discount}
												&stock=${param.stock}
												&image1=${param.image1}
												&image2=${param.image2}
												&image3=${param.image3}
												&detail=${param.detail}
												&rdate=${param.rdate}
												&sell=${param.sell}">수정</a>
</div>
</body>
</html>