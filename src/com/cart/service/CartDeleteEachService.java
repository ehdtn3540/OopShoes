package com.cart.service;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.cart.dao.CartDAO;
import com.cart.dto.CartDTO;

import controller.CommandAction;

public class CartDeleteEachService implements CommandAction {

	@Override 
	public String requestPro(HttpServletRequest request, HttpServletResponse response) throws Throwable {
		HttpSession session = request.getSession();
		
		System.out.println("delete each");
		System.out.println(request.getParameter("id"));
		System.out.println(session.getAttribute("all") + "cart del each");
		
		int id = Integer.parseInt(request.getParameter("id").trim());
//		String mid = (String)session.getAttribute("mid");
		
//		System.out.println(mid);
		
		CartDAO dao = new CartDAO();
		dao.cartDeleteEach(id);	

		return "cart/cartDeleteEachResult.jsp";
	}
}
