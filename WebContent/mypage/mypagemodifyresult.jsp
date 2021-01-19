<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%> 
<c:import url="../mymenu.jsp"/>

<c:if test="${0 < n}">
	<script>
		alert("정상적으로 수정되었습니다\n다시 로그인해주세요");
		location.href="logout.do";	
	</script>
	<%-- <c:redirect url = "logout.do"/> --%>
</c:if>
<c:if test="${0 >= n}">
	저장을 실패하였습니다
</c:if>

</body>
</html>