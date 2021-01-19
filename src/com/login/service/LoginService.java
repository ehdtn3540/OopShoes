package com.login.service;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.login.dao.LoginDAO;
import com.login.dto.LoginDTO;

import controller.CommandAction;

public class LoginService implements CommandAction{

	@Override
	public String requestPro(HttpServletRequest request, HttpServletResponse response) throws Throwable {
		HttpSession session=request.getSession();
		
		String id=request.getParameter("id");
		String pass=request.getParameter("pass");
		
		// 자동로그인 변수
		String loginChk=request.getParameter("autologin");
		
		LoginDAO dao=new LoginDAO();
		LoginDTO entity=dao.getLoginUser(id,pass);
		
		//회원탈퇴시 로그인불가
		if(entity != null) {
			if(entity.getMdrop() == 1) {
				entity = null;	
			}
		}
		
		if (entity != null) {
			// 세션설정
			session.setAttribute("logOK", entity);
			
			//로그인 유지처리
            if(loginChk != null){
                Cookie cookie = new Cookie("cid", id);
                cookie.setMaxAge(60);
                cookie.setPath("/");
                response.addCookie(cookie);
            }
			return "index.jsp";
		}else {
			session.setAttribute("logFail","아이디 혹은 패스워드를 잘못 입력되었습니다");
			return "login/login.jsp";
		}
	}
}
