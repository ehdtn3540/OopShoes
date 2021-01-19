package com.product.service;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.product.dao.ProductDAO;
import com.product.dto.ProductDTO;

import controller.CommandAction;

public class ProductUpdateService implements CommandAction{

	@Override
	public String requestPro(HttpServletRequest request, HttpServletResponse response) throws Throwable {
		request.setCharacterEncoding("UTF-8");
		
		int id = Integer.parseInt(request.getParameter("id").trim());
		String name = request.getParameter("name").trim();
		String brand = request.getParameter("brand").trim();
		int price = Integer.parseInt(request.getParameter("price").trim());
		int discount = Integer.parseInt(request.getParameter("discount").trim());
		int stock = Integer.parseInt(request.getParameter("stock").trim());
		String image1 = request.getParameter("image1").trim();
		String image2 = request.getParameter("image2").trim();
		String image3 = request.getParameter("image3").trim();
		String detail = request.getParameter("detail").trim();
		int sell = Integer.parseInt(request.getParameter("sell").trim());
		
		ProductDTO dto = new ProductDTO();
		dto.setPid(id);
		dto.setPname(name);
		dto.setPbrand(brand);
		dto.setPprice(price);
		dto.setPdiscount(discount);
		dto.setPstock(stock);
		dto.setPimage1(image1);
		dto.setPimage2(image2);
		dto.setPimage3(image3);
		dto.setPdetail(detail);
		dto.setPsell(sell);
		
		ProductDAO productDao = new ProductDAO();
		int n = productDao.productUpdate(dto);
		
		request.setAttribute("n", n);
		
		return "admin/productmodifyresult.jsp";
	}

}
