<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%> 
<c:import url="../mymenu.jsp"/>

<script>
	function checkProductWrite(){
	   if(document.productInputForm.name.value=="") {
	      alert("제품이름을 입력하세요");
	      boardWriteForm.id.focus();
	   }else if(document.productInputForm.brands.value==""){ 
	      alert("브랜드을 입력하세요");
	      boardWriteForm.name.focus();
	   }else if(document.productInputForm.price.value==""){ 
		   alert("가격을 입력하세요");
		      boardWriteForm.price.focus();
	   }else if(document.productInputForm.stock.value==""){ 
		   alert("재고를 입력하세요");
		      boardWriteForm.stock.focus();
	   }else if(document.productInputForm.image1.value==""){ 
		   alert("이미지1을 입력하세요");
		      boardWriteForm.image1.focus();
	   }else if(document.productInputForm.detail.value==""){ 
		   alert("상세설명을 입력하세요");
		      boardWriteForm.detail.focus();
	   }else{
	   	  document.productInputForm.submit(); 
	   }
	}
</script>

<h2>제품등록</h2>
<form name="productInputForm" method="post" action="/oop/productInput.do">
	<div class="tbl_head01">
		<table>
		<!-- 진혁 수정 -->
		   <!-- 시퀀스로 대처
		   <td>제품코드</td>
		      <td><input type="text" name="id" size="50"></td>
		   </tr> 
		   -->
		   <tr>
		      <td>제품이름</td>
		      <td><input type="text" name="name"></td>
		   </tr>   
		   <tr>
		      <td>브랜드</td>
		      <td><input type="text" name="brands"></td>
		   </tr>
		   <tr>
		      <td>가격</td>
		      <td><input type="text" name="price"></td>
		   </tr>
		   <tr>
		      <td>재고</td>
		      <td><input type="text" name="stock"></td>
		   </tr>
		   <tr>
		      <td>메인 이미지</td>
		      <td><input type="file" name="image1"></td>
		   </tr>
		   <tr>
		      <td>상세 이미지1</td>
		      <td><input type="file" name="image2"></td>
		   </tr>
		   <tr>
		      <td>상세 이미지2</td>
		      <td><input type="file" name="image3"></td>
		   </tr>
		   <tr>
		      <td>상세설명</td>
		      <td>
		      <textarea rows="12" cols="40" name="detail" style="resize: none;"></textarea>
		      </td>
		   </tr>
		   <tr>
		      <td colspan="2" align="center">
			      <div class="btn_list01">
				      <input type="button" value="등록" onclick="checkProductWrite()">
				      <input type="button" value="취소" onclick="location.href='/oop/productList.do'">
				  </div>
		      </td>
		   </tr>
		      <!-- <td>제품코드</td>
		      <td><input type="text" name="id" size="50"></td>
		   </tr>
		   <tr>
		      <td>제품이름</td>
		      <td><input type="text" name="name" size="50"></td>
		   </tr>   
		   <tr>
		      <td>가격</td>
		      <td><input type="text" name="price" size="50"></td>
		   </tr>
		   <tr>
		      <td>재고</td>
		      <td><input type="text" name="stock" size="50"></td>
		   </tr>
		   <tr>
		      <td>이미지1</td>
		      <td><input type="text" name="image1" size="50"></td>
		   </tr>
		   <tr>
		      <td>이미지2</td>
		      <td><input type="text" name="image2" size="50"></td>
		   </tr>
		   <tr>
		      <td>이미지3</td>
		      <td><input type="text" name="image3" size="50"></td>
		   </tr>
		   <tr>
		      <td>상세설명</td>
		      <td><input type="text" name="detail" size="50"></td>
		   </tr> 
		   <tr>
		      <td colspan="2" align="center">
			      <div class="btn_list01">
				      <input type="button" value="등록" onclick="checkProductWrite()">
				      <input type="reset" value="다시작성">
				  </div>
		      </td>
		   </tr>-->
		</table>
	</div>
</form>
</body>
</html>