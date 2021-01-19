package com.order.service;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.order.dao.OrderDAO;
import com.order.dto.OrderDTO;
import com.order.dto.OrderdetailDTO;

import controller.CommandAction;

public class OrderViewService implements CommandAction{

	@Override
	public String requestPro(HttpServletRequest request, HttpServletResponse response) throws Throwable {
		request.setCharacterEncoding("UTF-8");
		
		int oid = Integer.parseInt(request.getParameter("oid"));
		String mid = request.getParameter("mid");
		
		OrderDTO dto = new OrderDTO();
		dto.setOid(oid);
		dto.setMid(mid);
		
		OrderDAO orderDao = new OrderDAO();
		List<OrderdetailDTO> view = orderDao.orderView(dto);
		
		request.setAttribute("view", view);
		
		return "ad_order/orderview.jsp";
	}

}
