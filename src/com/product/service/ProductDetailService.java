package com.product.service;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.product.dao.ProductDAO;
import com.product.dto.ProductDTO;

import controller.CommandAction;

public class ProductDetailService implements CommandAction{

	@Override
	public String requestPro(HttpServletRequest request, HttpServletResponse response) throws Throwable {
				//데이터얻어오기
				int pg = Integer.parseInt(request.getParameter("pg")); // 수정후/ 또는 목록으로 갔을때 되돌아갈 페이지
				//Select DB
				ProductDAO dao = new ProductDAO(); 
				
				ProductDTO dto= dao.getProductDetail(pg);
				request.setAttribute("dto", dto);
				
				return "productdetail.jsp";
			}
		}