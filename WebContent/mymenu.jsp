<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" type="text/css" href="/oop/css/admin.css" />
<title>Insert title here</title>
</head>
<body>
	<div class="btn_list01">
		<button type="button" onclick="location.href='/oop/index.jsp'">홈으로</button>
		<h2 style="display: inline;">&nbsp;&nbsp;&nbsp;OOPSHOSE(관리자페이지)</h2><br><br><br>
		
		<button type="button" style="width:200px;" onclick="location.href='/oop/productList.do'">상품관리</button>
		<button type="button" style="width:200px;" onclick="location.href='/oop/orderList.do?pg=ad&id=null'">주문관리</button>
		<button type="button" style="width:200px;" onclick="location.href='/oop/memberList.do'">회원관리</button><br><br>

	</div>