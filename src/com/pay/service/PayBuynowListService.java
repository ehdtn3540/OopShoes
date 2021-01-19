package com.pay.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.cart.dao.CartDAO;
import com.cart.dto.CartDTO;

import controller.CommandAction;

public class PayBuynowListService implements CommandAction {

	@Override 
	public String requestPro(HttpServletRequest request, HttpServletResponse response) throws Throwable {
		request.setCharacterEncoding("UTF-8");
		
		System.out.println("PayBuynowListService");
		System.out.println(request.getParameter("mid")+":buynowlist");
		
	//1.장바구니 넣기
		System.out.println("buynow1_inputcart");

//		int cid= 0; //테이블에서 생성
		String mid = request.getParameter("mid");
		int pid=Integer.parseInt(request.getParameter("pid"));
		String pimage1 = request.getParameter("pimage1");
		String pname = request.getParameter("pname");
		int pprice = Integer.parseInt(request.getParameter("pprice"));
		int odsize= Integer.parseInt(request.getParameter("odsize"));
		int odqty= Integer.parseInt(request.getParameter("odqty"));
		
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
		
		//비회원일경우 로그인페이지로
		if(mid == "") {
			return "login/login.jsp";
		}
		
		// insert DB
		CartDAO cartDao = new CartDAO();
		int n = cartDao.cartInput(dto);
			
		request.setAttribute("n", n);
		
	//2. 장바구니 리스트 가져오기
		System.out.println("buynow2_cartlist");
		
		Map<String, String>map=new HashMap<>();
		map.put("mid", mid);
		
		CartDAO dao2 = new CartDAO();
		List<CartDTO> list = dao2.getCartList(map);
		
		request.setAttribute("list", list);
		request.setAttribute("mid", mid);
		
		return "pay/pay.jsp";
	}
}
