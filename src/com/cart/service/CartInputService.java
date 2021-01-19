package com.cart.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.cart.dao.CartDAO;
import com.cart.dto.CartDTO;

import controller.CommandAction;

public class CartInputService implements CommandAction {

	@Override 
	public String requestPro(HttpServletRequest request, HttpServletResponse response) throws Throwable {
		request.setCharacterEncoding("UTF-8");
		
		System.out.println("CartInputService mid:"+ request.getParameter("mid"));
		
//		int cid= 0; //테이블에서 생성
		String mid = request.getParameter("mid");	
		int pid=Integer.parseInt(request.getParameter("pid"));
		String pimage1 = request.getParameter("pimage1");
		String pname = request.getParameter("pname");
		int pprice = Integer.parseInt(request.getParameter("pprice"));
		int odsize= Integer.parseInt(request.getParameter("odsize"));
		int odqty= Integer.parseInt(request.getParameter("odqty"));
		int pdiscount = Integer.parseInt(request.getParameter("pdiscount"));
		
		// 데이터 저장
		CartDTO dto = new CartDTO();
//		dto.setCid(cid);
		dto.setMid(mid);
		dto.setPid(pid);
		dto.setPimage1(pimage1);
		dto.setPname(pname);
		dto.setPprice(pprice);
		dto.setOdsize(odsize);
		dto.setOdqty(odqty);
		dto.setPdiscount(pdiscount);
		
		//비회원일경우 로그인페이지로
		if(mid == "") {
			return "login/login.jsp";
		}
		
		// insert DB
		CartDAO cartDao = new CartDAO();
		int n = cartDao.cartInput(dto);
			
		request.setAttribute("n", n);
		/* request.setAttribute("mid", mid); */
		
		// list보여주기
		Map<String, String>map=new HashMap<>();
		map.put("mid", mid);
		
		CartDAO dao = new CartDAO();
		List<CartDTO> list = dao.getCartList(map);
		
		request.setAttribute("list", list);
		request.setAttribute("mid", mid);
		
		return "cart/cart.jsp";		
	}
}
