<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%> 
<c:import url="../mymenu.jsp"/>

<h2>회원상세페이지</h2>
<div class="tbl_head01">
	<table>
		<tr>
			<th>회원아이디</th>
			<td align="center">${param.id}</td>
			<th>전화번호</th>
			<td align="center">${param.phone}</td>
		</tr>
		<tr>
			<th>회원이름</th>
			<td align="center">${param.name}</td>
			<th>가입일</th>
			<td align="center">${param.rdate}</td>
		</tr>
		<tr>
			<th>회원주소</th>
			<td align="center">${param.address}</td>
			<th>탈퇴여부</th>
			<td align="center">${param.drop}</td>
		</tr>
		<tr>
			<th>우편번호</th>
			<td align="center">${param.post}</td>
			<th></th>
			<td align="center"></td>
		</tr>
	</table>
</div><br>
</body>
</html>