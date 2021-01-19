package com.cart.service;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.cart.dao.CartDAO;
import com.cart.dto.CartDTO;

import controller.CommandAction;

public class CartDeleteAllService implements CommandAction {

	@Override 
	public String requestPro(HttpServletRequest request, HttpServletResponse response) throws Throwable {
		HttpSession session = request.getSession();
		
		System.out.println("delete all");
		System.out.println(request.getParameter("id"));
		String id = request.getParameter("id").trim();
		
		CartDAO dao = new CartDAO();
		dao.cartDeleteAll(id);
		
		session.setAttribute("all", id);
		
		return "cart/cartDeleteAllResult.jsp";
	}
}
