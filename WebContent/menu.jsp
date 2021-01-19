<%@page import="com.login.dao.LoginDAO"%>
<%@page import="com.login.dto.LoginDTO"%> 
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%> 
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="UTF-8">
    <title>Oopshoes</title>
    <script src="http://code.jquery.com/jquery-3.4.1.min.js"></script>
    <script src='http://ajax.googleapis.com/ajax/libs/jqueryui/1.8.5/jquery-ui.min.js'></script>
    <script src="/oop/js/script.js"></script>
    <link rel="stylesheet" href="/oop/css/style.css" type="text/css" />
    <link rel="stylesheet" href="/oop/css/reset.css" type="text/css" />
    <!-- cartCss -->
	<link rel="stylesheet" href="/oop/css/cartCss.css" type="text/css">
	<!-- PayCss -->
	<link rel="stylesheet" href="/oop/css/payCss.css" type="text/css">
  </head>
  <body>
  	<%
    Cookie[] cookies = request.getCookies();
    if(cookies !=null){
        for(Cookie tempCookie : cookies){
            if(tempCookie.getName().equals("cid")){
                //쿠키값으로 대신 로그인 처리함
                String id=tempCookie.getValue();
                LoginDAO dao=new LoginDAO();
                LoginDTO entity= dao.getAutoLoginUser(id);
                session.setAttribute("logOK", entity);
            }
        }
    }  	
  	%>
    <!-- wrap -->
    <div id="wrap">
      <!-- header -->
      <header>
        <div class="menu">
          <div class="navi">
            <li>
              <a href="#">☰</a>
              <!-- 햄버거 메뉴 -->
              <ul class="submenu">
                <c:if test="${empty logOK}">
                  <li><a href="/oop/login/login.jsp">로그인</a></li>
                  <li><a href="/oop/login/join.jsp">회원가입</a></li>
                  <!-- <li><a href="#">장바구니</a></li> -->
                </c:if>
                <c:if test="${!empty logOK }">
                <li><a href="orderList.do?pg=my&id=${logOK.getMid()}">${logOK.getMname()}님</a></li>
                  <li><a href="/oop/logout.do">로그아웃</a></li>
                  <!-- <li><a href="#">찜목록</a></li> -->
                  <li><a href="/oop/cartList.do?mid=${logOK.getMid()}">장바구니</a></li>
                  <c:if test="${logOK.getMadmin() == 1}">
                    <li><a href="/oop/adminindex.jsp">관리자 페이지</a></li>
                  </c:if>
                </c:if>
              </ul>
            </li>
          </div>
          <!-- 로고 링크 -->
          <a href="/oop/index.jsp">
            <img src="/oop/img/Oopshoes.png" alt="logo" id="logo" />
          </a>
          <!-- 검색 -->
          <div class="search_all">
            <form action="/oop/productSearch.do" method="post">
              <input id="search" type="text" name="search" placeholder="검색"/>
              <button type="submit" id="btn_search">
                <img src="/oop/img/search.png" alt="search" id="search_img" />
              </button>
            </form>
          </div>
        </div>
        <div class="product_menu">
          <a href="/oop/brandsList.do?pg=new">New</a>
          <a href="/oop/brandsList.do?pg=best">Best</a>
          <a href="/oop/brandsList.do?pg=event">Event</a>
          <a href="/oop/brandsList.do?pg=나이키">Nike</a>
          <a href="/oop/brandsList.do?pg=리복">Reebok</a>
          <a href="/oop/brandsList.do?pg=반스">Vans</a>
          <a href="/oop/brandsList.do?pg=아디다스">Adidas</a>
        </div>
      </header>
      <!-- 아래파일 삭제 -->