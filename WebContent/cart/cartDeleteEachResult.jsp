<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%> 
<%
	String mid = (String)session.getAttribute("all");
	System.out.println("test:"+ mid);
%>
<body onload="location.href='/oop/cartList.do?mid=<%=mid%>'">

</body>
</html>