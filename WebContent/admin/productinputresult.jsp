<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%> 
<c:import url="../mymenu.jsp"/>     
    
<c:if test="${0 < n}">
	<c:redirect url = "productList.do"/>
</c:if>
<c:if test="${0 >= n}">
	저장을 실패하였습니다
</c:if>

</body>
</html>