package com.login.service;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.login.dao.LoginDAO;
import com.login.dto.LoginDTO;

import controller.CommandAction;

public class JoinService implements CommandAction{

	@Override
	public String requestPro(HttpServletRequest request, HttpServletResponse response) throws Throwable {
		request.setCharacterEncoding("UTF-8");
		
		String id=request.getParameter("id");
		String pass=request.getParameter("join_pass");
		String name=request.getParameter("name");
		String phone=request.getParameter("phone");
		
//		System.out.println(id);
//		System.out.println(pass);
//		System.out.println(name);
//		System.out.println(phone);
		
		// save DATA	
		LoginDTO dto=new LoginDTO();
		dto.setMid(id);
		dto.setMpw(pass);
		dto.setMname(name);
		dto.setMphone(phone);
		
		// insert DB
		LoginDAO dao=new LoginDAO();
		
		// dao 성공 1, 실패 0
		int n=dao.registration(dto);
		request.setAttribute("n", n);
		
		return "index.jsp";
		
//		LoginDTO entity=dao.getLoginUser(id,pass);
////		System.out.println(entity.getPass());
//		HttpSession session=request.getSession();
//		
//		if (entity !=null) {
//			//세션설정
//			session.setAttribute("logOK", entity);
//
//			
//			return "index.jsp";
//		}else {
//			session.setAttribute("logFail","아이디 혹은 패스워드를 잘못 입력되었습니다");
//			
//			return "login/login.jsp";
//		}
	}

}
