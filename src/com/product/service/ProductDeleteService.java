package com.product.service;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.product.dao.ProductDAO;

import controller.CommandAction;

public class ProductDeleteService implements CommandAction {

	@Override
	public String requestPro(HttpServletRequest request, HttpServletResponse response) throws Throwable {
		System.out.println("ggggggg");
		System.out.println(request.getParameter("id"));
		int id = Integer.parseInt(request.getParameter("id").trim());
		
		
		ProductDAO dao = new ProductDAO();
		dao.productDelete(id);
		
		return "admin/productdeleteresult.jsp";
	}

}
