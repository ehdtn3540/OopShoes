package com.product.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.product.dao.ProductDAO;
import com.product.dto.ProductDTO;

import controller.CommandAction;

public class ProductSearchListService implements CommandAction {

	@Override
	public String requestPro(HttpServletRequest request, HttpServletResponse response) throws Throwable {
		request.setCharacterEncoding("UTF-8");
		String name=request.getParameter("search");
		System.out.println("입력값: "+name);
		
		// Map객체를 각각 필드의 key와 value를 저장
		Map<String,Object> map=new HashMap<>();
		map.put("pname", "%"+name+"%");
		
		ProductDAO dao = new ProductDAO();
		List<ProductDTO> list = dao.getProductSearchList(map);  
    	
		request.setAttribute("list", list);
			
		return "main.jsp";
		
	}

}
