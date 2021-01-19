package com.member.service;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.member.dao.MemberDAO;

import controller.CommandAction;

public class MemberDropService implements CommandAction{

	@Override
	public String requestPro(HttpServletRequest request, HttpServletResponse response) throws Throwable {
		request.setCharacterEncoding("UTF-8");
		
		String id = request.getParameter("id").trim();
		
		MemberDAO dao = new MemberDAO();
		int n = dao.memberDrop(id);
		
		request.setAttribute("n", n);
		
		return "mypage/mypagedropresult.jsp";
	}

}
