package com.product.service;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.product.dao.ProductDAO;
import com.product.dto.ProductDTO;

import controller.CommandAction;

public class BrandsListService implements CommandAction {

	@Override
	public String requestPro(HttpServletRequest request, HttpServletResponse response) throws Throwable {
		// 데이터 가져오기_ "/oop/brandsList.do?pg=메뉴명"에서 pg로 보낸걸 받음
		String pg = request.getParameter("pg");
		List<ProductDTO> list;
		ProductDAO dao = new ProductDAO();
		if (pg.equals("new")) {
			list = dao.getNewList(pg);
		}else if(pg.equals("best")) {
			list = dao.getBestList(pg);
		}else if(pg.equals("event")) {
			list = dao.getEventList(pg);
		}else {
			list = dao.getBrandsList(pg);
		}
		request.setAttribute("list", list);
		request.setAttribute("pg", pg);
//		List<ProductDTO> list = dao.getBrandsList(pg);
		// 세션설정은 페이지가 꺼질때까지 유지된다(혹은 세션을 종료할때까지)
//		HttpSession session = request.getSession();
//		session.setAttribute("list", list);
		
//		if(list != null) {
//			System.out.println("list OK");
//		}else {
//			System.out.println("list empty");
//		}

		return "brandsList.jsp";
	}

}
