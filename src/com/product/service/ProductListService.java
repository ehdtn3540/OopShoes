package com.product.service;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.product.dao.ProductDAO;
import com.product.dto.ProductDTO;

import controller.CommandAction;

public class ProductListService implements CommandAction {

	@Override
	public String requestPro(HttpServletRequest request, HttpServletResponse response) throws Throwable {
		ProductDAO dao = new ProductDAO();
		List<ProductDTO> list = dao.getProductList();  
    	
		//세션설정은 페이지가 꺼질때까지 유지된다(혹은 세션을 종료할때까지)
//		HttpSession session = request.getSession();
//		session.setAttribute("list", list);
		request.setAttribute("list", list);
		
		return "admin/productlist.jsp";
	}

}
