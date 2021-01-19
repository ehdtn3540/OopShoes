<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%> 
<c:import url="../mymenu.jsp"/>

<h2>회원리스트</h2>
<div class="tbl_head01">
	<table>
		<tr>
			<th align="center">고객아이디</th>
			<th align="center">이름</th>
			<th align="center">주소</th>
			<th align="center">우편번호</th>
			<th align="center">전화번호</th>
			<th align="center">가입일</th>
		</tr>
		<c:if test="${!empty list}">
			<c:forEach items="${list}" var="ob">					
				<tr>
					<td align="center">${ob.getMid()}</td>
					<td align="center">
						<a href="ad_member/memberview.jsp?id=${ob.getMid()}
													  &name=${ob.getMname()}
													  &address=${ob.getMaddress()}
													  &post=${ob.getMpost()}
													  &phone=${ob.getMphone()}
													  &rdate=${ob.getMrdate()}
													  &drop=${ob.getMdrop()}">
							${ob.getMname()}
						</a>
					</td>
					<td align="center">${ob.getMaddress()}</td>
					<td align="center">${ob.getMpost()}</td>
					<td align="center">${ob.getMphone()}</td>
					<td align="center">${ob.getMrdate()}</td>
				</tr>
			</c:forEach>
		</c:if>
	</table><br>
</div>
</body>
</html>