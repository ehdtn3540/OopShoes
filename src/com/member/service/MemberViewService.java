package com.member.service;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.member.dao.MemberDAO;
import com.member.dto.MemberDTO;

import controller.CommandAction;

public class MemberViewService implements CommandAction{

	@Override
	public String requestPro(HttpServletRequest request, HttpServletResponse response) throws Throwable {
		MemberDAO memberDao = new MemberDAO();
		List<MemberDTO> list = memberDao.getMemberList();
		
		request.setAttribute("list", list);
		
		return "ad_member/memberlist.jsp";
	}

}
