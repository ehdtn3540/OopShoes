<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:import url="../menu.jsp"/>
      <!-- //header -->
      <!-- section -->
      <section>
        <div class="login">
          <!-- section_header -->
          <div class="section_header">
            <h2>로그인</h2>
          </div>
          <!-- //section_header -->
          <form action="/oop/login.do" method="POST">
            <div class="input_group">
              <input id="id" type="text" name="id"
                placeholder="E-mail을 입력해주세요" maxlength="20"/><br>
              <input id="pass" type="password" name="pass"
                placeholder="패스워드를 입력해 주세요" maxlength="20"/>
            </div>
            <!-- 로그인 실패시 문구등장 -->
            <c:if test="${!empty logFail}">
              <p class="warning">${logFail}</p>
              <%
              	session.removeAttribute("logFail");
              %>
            </c:if>
            <!-- 양쪽정렬 성공 -->
            <div class="log_fk">
              <div class="log_keep">
                <label><input type="checkbox" name="autologin"/> 로그인 유지하기</label>
              </div><!-- end log_keep -->
              <div class="log_find">
                <a href="findaccount.jsp" class="find-log">아이디/패스워드 찾기</a>
              </div><!-- end log_find -->
            </div><!-- end log_fk -->
            <div id="btn">
              <button class="btn-log" type="submit">로그인</button>
            </div><!-- end btn -->
          </form>
          <!-- //form -->
          <div class="join_line">
            <span>회원이 아니신가요?</span>
            <a href="/oop/login/join.jsp">회원가입</a>
          </div>
          <!-- <div class="search_line">
            <a href="#">비회원 주문 조회</a>
          </div> -->
      </div>
      </section>
      <!-- //section -->
      <!-- footer -->
      <!-- <footer>회사 정보 넣을 자리</footer> -->
      <!-- //footer -->
    </div>
  </body>
</html>

