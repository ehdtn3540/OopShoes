<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %> 
<c:import url="../menu.jsp"/>

<meta charset="UTF-8">
<title>Insert title here</title>

<style>
/* * {
  margin-right: 100px;
  padding: 0;
  color: #535353;
  font-size: 15px;
} */
table th, td {
  border: 1px solid #ccc;
}
table th {
  background-color: #fff;
}
table.type03 {
  border-collapse: collapse;
  text-align: left;
  line-height: 1.5;
  border-top: 1px solid #ccc;
  border-left: 3px solid #369;
  margin : 20px 10px;
}
table.type03 th {
  width: 147px;
  padding: 10px;
  font-weight: bold;
  vertical-align: top;
  color: #153d73;
  border-right: 1px solid #ccc;
  border-bottom: 1px solid #ccc;

}
table.type03 td {
  width: 349px;
  padding: 10px;
  vertical-align: top;
  border-right: 1px solid #ccc;
  border-bottom: 1px solid #ccc;
} 
</style>

<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<h1 style="margin-bottom: 10px; font-size: 1em;">개인정보</h1>

<table class="type03" style="width: 50%; margin: auto;">
	<tr>
		<th>아이디</th>
		<td>${logOK.getMid()}</td>
	</tr>
	<tr>
		<th>이름</th>
		<td>${logOK.getMname()}</td>
	</tr>
	<tr>
		<th>주소</th>
		<td>${logOK.getMaddress()}</td>
	</tr>
	<tr>
		<th>우편번호</th>
		<td>${logOK.getMpost()}</td>
	</tr>
	<tr>
		<th>전화번호</th>
		<td>${logOK.getMphone()}</td>
	</tr>
	<tr>
		<th>가입일</th>
		<td>${logOK.getMrdate()}</td>
	</tr>
	<tr>
		<th>회원정보수정</th>
		<td><a href="mypage/mypagemodify.jsp">회원정보수정</a></td>
	</tr>
</table>


<br>
<br>
<br>
<br>
<br>
<h1 style="margin-bottom: 10px; font-size: 1em;">주문현황</h1>
<table class="type03" style="width: 50%; margin: auto;">
	<tr>
		<th align="center">주문번호</th>
		<th align="center">주문아이디</th>
		<th align="center">상품이름</th>
		<th align="center">상품이미지</th>
		<th align="center">상품사이즈</th>
		<th align="center">상품구매수량</th>
	</tr>
	<c:if test="${!empty list}">
		<c:forEach items="${list}" var="ob">					
			<tr>
				<td align="center" style="vertical-align:middle;">${ob.getOdid()}</td>
				<td align="center" style="vertical-align:middle;">${ob.getMid()}</td>
				<td align="center" style="vertical-align:middle; width:500px"><a href="/oop/productDetail.do?pg=${ob.getPid()}">${ob.getPname()}</a></td>
				<td align="center" style="vertical-align:middle;"><img src="/oop/img/shoes/${ob.getPimage1()}" width="50" height="50"></td>
				<td align="center" style="vertical-align:middle;">${ob.getOdsize()}</td>
				<td align="center" style="vertical-align:middle;">${ob.getOdqty()}</td>
			</tr>
		</c:forEach>
	</c:if>
	<c:if test="${empty list}">
		주문내역이 없습니다
	</c:if>
</table>

<c:import url="../footer.jsp" />