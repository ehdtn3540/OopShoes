package com.order.service;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.order.dao.OrderDAO;
import com.order.dto.OrderDTO;
import com.order.dto.OrderdetailDTO;

import controller.CommandAction;

public class OrderListService implements CommandAction{

	@Override
	public String requestPro(HttpServletRequest request, HttpServletResponse response) throws Throwable {
		request.setCharacterEncoding("UTF-8");
		
		String pg = request.getParameter("pg");
		String id = request.getParameter("id");
		
		if(pg.equals("my")) {
			OrderDAO dao = new OrderDAO();
			List<OrderdetailDTO> list = dao.getOrderList(id);  
			
			request.setAttribute("list", list);
			
			return "mypage/mypage.jsp";			
		}else { // else if(pg.equals("ad"))
			OrderDAO dao = new OrderDAO();
			List<OrderDTO> list = dao.getOrderList();  
			
			request.setAttribute("list", list);
			
			return "ad_order/orderlist.jsp";			
		}
		
	}

}
