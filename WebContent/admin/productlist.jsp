<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%> 
<c:import url="../mymenu.jsp"/>

<h2>상품리스트</h2>
<div class="tbl_head01">

	<form name="productSortForm" method="post" action="/oop/productSort.do">
		<select id="searchValue" name="brand">
		    <option value="전체보기">전체보기</option>
		    <option value="나이키">나이키</option>
		    <option value="리복">리복</option>
		    <option value="반스">반스</option>
		    <option value="아디다스">아디다스</option>
		</select>
		<div class="btn_list01">
		    <input type="button" value="검색" onclick="submit()">
	    </div>
	</form>
	
	<table>
		<tr>
			<th align="center">상품코드</th>
			<th align="center">상품이름</th>
			<th align="center">대표이미지</th>
			<th align="center">브랜드</th>
			<th align="center">가격</th>
			<th align="center">재고</th>
			<th align="center">작성일</th>
		</tr>
		<c:if test="${!empty list}">
			<c:forEach items="${list}" var="ob">					
				<tr>
					<td align="center">${ob.getPid()}</td>
					<td align="center">
						<a href="admin/productview.jsp?id=${ob.getPid()}
													  &name=${ob.getPname()}
													  &brand=${ob.getPbrand()}
													  &price=${ob.getPprice()}
													  &discount=${ob.getPdiscount()}
													  &stock=${ob.getPstock()}
													  &image1=${ob.getPimage1()}
													  &image2=${ob.getPimage2()}
													  &image3=${ob.getPimage3()}
													  &detail=${ob.getPdetail()}
													  &rdate=${ob.getPrdate()}
													  &sell=${ob.getPsell()}">
							${ob.getPname()}
						</a>
					</td>
					<td align="center">
						<img src="/oop/img/shoes/${ob.getPimage1()}" width="50" height="50" border="0">
					</td>
					<td align="center">${ob.getPbrand()}</td>
					<td align="center">${ob.getPprice()}</td>
					<td align="center">${ob.getPstock()}</td>
					<td align="center">${ob.getPrdate()}</td>
				</tr>
			</c:forEach>
		</c:if>
	</table><br>
</div>	
<div class="btn_list01">
	<button type="button" style="float:right;" onclick="location.href='/oop/admin/productinput.jsp'">상품등록</button>
</div>	
</body>
</html>