package com.product.service;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.product.dao.ProductDAO;
import com.product.dto.ProductDTO;

import controller.CommandAction;

public class ProductSortService implements CommandAction{

	@Override
	public String requestPro(HttpServletRequest request, HttpServletResponse response) throws Throwable {
		request.setCharacterEncoding("UTF-8");
		
		String brand = request.getParameter("brand").trim();
		
		List<ProductDTO> list = null;
		
		if(brand.equals("전체보기")) {
			ProductDAO dao = new ProductDAO();
			list = dao.getProductList();			
		}else {
			ProductDTO dto = new ProductDTO();
			dto.setPbrand(brand);
			
			ProductDAO dao = new ProductDAO();
			list = dao.getProductSort(dto); 			
		}
		
		
		request.setAttribute("list", list);
		
		return "admin/productlist.jsp";
	}

}
