package com.product.service;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.product.dao.ProductDAO;
import com.product.dto.ProductDTO;

import controller.CommandAction;

public class ProductInputService implements CommandAction {

	@Override
	public String requestPro(HttpServletRequest request, HttpServletResponse response) throws Throwable {
		request.setCharacterEncoding("UTF-8");
		
//		int id = Integer.parseInt(request.getParameter("id"));
		String name = request.getParameter("name");
		String brands=request.getParameter("brands");
		int price = Integer.parseInt(request.getParameter("price"));
		int stock = Integer.parseInt(request.getParameter("stock"));
		String image1 = request.getParameter("image1");
		String image2 = request.getParameter("image2");
		String image3 = request.getParameter("image3");
		String detail = request.getParameter("detail");
		
		// 데이터 저장
		ProductDTO dto = new ProductDTO();
//		dto.setPid(id);
		dto.setPname(name);
		dto.setPbrand(brands);
		dto.setPprice(price);
		dto.setPstock(stock);
		dto.setPimage1(image1);
		dto.setPimage2(image2);
		dto.setPimage3(image3);
		dto.setPdetail(detail);
		
		System.out.println("브랜드: "+dto.getPbrand());
		// insert DB
		ProductDAO productDao = new ProductDAO();
		int n = productDao.productInsert(dto);
		
		request.setAttribute("n", n);
		return "admin/productinputresult.jsp";
	}

}
