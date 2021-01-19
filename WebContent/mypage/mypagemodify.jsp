 <%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %> 
<c:import url="../menu.jsp"/>

<meta charset="UTF-8">
<title>Insert title here</title>

<style>
table.type02 th {
  width: 25%;
  background: #eee;
  color: #000;
}
.tbl_head01 thead th, .tbl_head01 tbody th {
	border:1px solid #ccc;
}
table td {
	border: 1px solid #ccc;
}
</style>

<br>
<br>
<br>
<br>
<br>
<h1 style="margin-bottom: 10px; font-size: 1em;">마이페이지수정</h1>
<form id="target" name="memberModifyForm" method="post" action="/oop/memberModify.do">
	<div class="tbl_head01">
		<table class="type02" style="width:auto; height:600px; margin:auto;">
		   <tr>
		      <th>회원아이디</th>
		      <td><input type="text" name="id" size="50" value="${logOK.getMid()}" readonly></td>
		   </tr>
		   <tr>
		      <th>비밀번호</th>
		      <td>
		      	<input id="join_pass" type="password" name="pw" size="50" placeholder="영문/숫자/특수문자 조합8~16자리(괄호 사용 불가)" maxlength="20"/>
		      </td>
		      
		   </tr> 
		   <tr>
		      <th>비밀번호확인</th>
		      <td>
			      <input id="chk_pass" type="password" name="chk_pass" size="50" placeholder="패스워드를 다시 입력해주세요" maxlength="20"/>
			      <p id="warning_chk_pass" class="warning"></p>
		      </td>
		   </tr>  
		   <tr>
		      <th>회원이름</th>
		      <td><input type="text" name="name" size="50" value="${logOK.getMname()}"></td>
		   </tr>  
		   <tr>
		      <th>주소</th>
		      <td><input type="text" name="addr" size="50" value="${logOK.getMaddress()}"></td>
		   </tr>
		   <tr>
		      <th>우편번호</th>
		      <td><input type="text" name="post" size="50" value="${logOK.getMpost()}"></td>
		   </tr>
		   <tr>
		      <th>전화번호</th>
		      <td><input type="text" name="phone" size="50" value="${logOK.getMphone()}"></td>
		   </tr>
		   <tr>
		   		<td><input type="hidden" name="ad" value="${logOK.getMadmin()}"></td>
		   </tr>
		   <tr>
		      <td colspan="2" align="center">
		      	<div class="btn_list01">
			      <input id="btn_modifychk" type="button" value="수정완료" style="margin-left: 20px;"><!-- onclick="submit()" -->
			      <input type="reset" value="다시작성" style="margin-left: 20px;">
				  <input type="button" value="회원탈퇴" style="margin-left: 20px;" onclick="if(confirm('회원탈퇴하시겠습니까?')){location.href='/oop/memberDrop.do?id=${logOK.getMid()}'}">
			    </div>
		      </td>
		   </tr>
		</table>
	</div>
</form>

<c:import url="../footer.jsp" />