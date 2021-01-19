<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%> 
<c:import url="../mymenu.jsp"/>

<script>
	function checkProductWrite(){
	   if(document.productInputForm.id.value=="") {
	       alert("제품코드를 입력하세요");
	       boardWriteForm.id.focus();
	   }else if(document.productInputForm.name.value==""){ 
	       alert("제품이름을 입력하세요");
	       boardWriteForm.name.focus();
	   }else if(document.productInputForm.brand.value==""){ 
	       alert("브랜드를 입력하세요");
	       boardWriteForm.brand.focus();
	   }else if(document.productInputForm.price.value==""){ 
		   alert("가격을 입력하세요");
		   boardWriteForm.price.focus();
	   }else if(document.productInputForm.discount.value==""){
		   alert("할인율을 입력하세요");
		   boardWriteForm.discount.focus();
	   }else if(document.productInputForm.stock.value==""){ 
		   alert("재고를 입력하세요");
		   boardWriteForm.stock.focus();
	   }else if(document.productInputForm.image1.value==""){ 
		   alert("이미지1을 입력하세요");
		   boardWriteForm.image1.focus();
	   }else if(document.productInputForm.image2.value==""){ 
		   alert("이미지2를 입력하세요");
		   boardWriteForm.image2.focus();
	   }else if(document.productInputForm.image3.value==""){ 
		   alert("이미지3을 입력하세요");
		   boardWriteForm.image3.focus();
	   }else if(document.productInputForm.detail.value==""){ 
		   alert("상세설명을 입력하세요");
		   boardWriteForm.detail.focus();
	   }else if(document.productInputForm.sell.value==""){ 
		   alert("판매수량을 입력하세요");
		   boardWriteForm.sell.focus();
	   }else{
	   	  document.productInputForm.submit(); 
	   }
	}
</script>

<h2>상품수정페이지</h2>
<form name="productInputForm" method="post" action="/oop/productUpdate.do">
	<div class="tbl_head01">
		<table>
		   <tr>
		      <td>제품코드</td>
		      <td><input type="text" name="id" size="50" value="${param.id}" readonly></td>
		   </tr>
		   <tr>
		      <td>제품이름</td>
		      <td><input type="text" name="name" size="50" value="${param.name}"></td>
		   </tr>  
		   <tr>
		      <td>브랜드</td>
		      <td><input type="text" name="brand" size="50" value="${param.brand}"></td>
		   </tr>  
		   <tr>
		      <td>가격</td>
		      <td><input type="text" name="price" size="50" value="${param.price}"></td>
		   </tr>
		   <tr>
		      <td>할인율</td>
		      <td><input type="text" name="discount" size="50" value="${param.discount}"></td>
		   </tr>
		   <tr>
		      <td>재고</td>
		      <td><input type="text" name="stock" size="50" value="${param.stock}"></td>
		   </tr>
		   <tr>
		      <td>이미지1</td>
		      <td><input type="text" name="image1" size="50" value="${param.image1}"></td>
		   </tr>
		   <tr>
		      <td>이미지2</td>
		      <td><input type="text" name="image2" size="50" value="${param.image2}"></td>
		   </tr>
		   <tr>
		      <td>이미지3</td>
		      <td><input type="text" name="image3" size="50" value="${param.image3}"></td>
		   </tr>
		   <tr>
		      <td>상세설명</td>
		      <td><input type="text" name="detail" size="50" value="${param.detail}"></td>
		   </tr>
		   <tr>
		      <td>판매수량</td>
		      <td><input type="text" name="sell" size="50" value="${param.sell}"></td>
		   </tr>
		   
		   <tr>
		      <td colspan="2" align="center">
		      	<div class="btn_list01">
			      <input type="button" value="수정완료" onclick="checkProductWrite()">
			      <input type="reset" value="다시작성">
			     </div>
		      </td>
		   </tr>
		</table>
	</div>
</form>
</body>
</html>