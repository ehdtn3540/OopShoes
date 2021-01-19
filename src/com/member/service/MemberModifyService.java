package com.member.service;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.member.dao.MemberDAO;
import com.member.dto.MemberDTO;

import controller.CommandAction;

public class MemberModifyService implements CommandAction{

	@Override
	public String requestPro(HttpServletRequest request, HttpServletResponse response) throws Throwable {
		request.setCharacterEncoding("UTF-8");
		
		String id = request.getParameter("id").trim();
		String pw = request.getParameter("pw").trim();
		String name = request.getParameter("name").trim();
		String address = request.getParameter("addr").trim();
		String post = request.getParameter("post").trim();
		String phone = request.getParameter("phone").trim();
		int ad = Integer.parseInt(request.getParameter("ad").trim());
		
		MemberDTO dto = new MemberDTO();
		dto.setMid(id);
		dto.setMpw(pw);
		dto.setMname(name);
		dto.setMaddress(address);
		dto.setMpost(post);
		dto.setMphone(phone);
		dto.setMadmin(ad);
		
		MemberDAO dao = new MemberDAO();
		int n = dao.memberModify(dto);
		
		request.setAttribute("n", n);
		
		return "mypage/mypagemodifyresult.jsp";
	}

}
