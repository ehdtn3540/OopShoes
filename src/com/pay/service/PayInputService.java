package com.pay.service;

import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.cart.dao.CartDAO;
import com.cart.dto.CartDTO;
import com.pay.dao.PayDAO;
import com.pay.dto.PayDTO;

import controller.CommandAction;

public class PayInputService implements CommandAction {

	@Override 
	public String requestPro(HttpServletRequest request, HttpServletResponse response) throws Throwable {
		request.setCharacterEncoding("UTF-8");
		
		System.out.println("PayInputService mid:"+ request.getParameter("mid"));
		
		String mid = request.getParameter("mid");
		String oname = request.getParameter("oname");
		String ophone = request.getParameter("ophone");
		String oaddress = request.getParameter("address") + " " 
							+ request.getParameter("addressDetail") + " "
							+ request.getParameter("addressExtra");
		String opost = request.getParameter("opost");
		int oamount = Integer.parseInt(request.getParameter("oamount"));
		int opayment = Integer.parseInt(request.getParameter("opayment"));
		int odelivery = Integer.parseInt(request.getParameter("odelivery"));
//		int oid = Integer.parseInt(request.getParameter("oid"));
		int oid = 0;
		int pid = Integer.parseInt(request.getParameter("pid"));
		int odsize = Integer.parseInt(request.getParameter("odsize"));
		int odqty = Integer.parseInt(request.getParameter("odqty"));
		
		// 데이터 저장
		PayDTO dto = new PayDTO();
		dto.setMid(mid);
		dto.setOname(oname);
		dto.setOphone(ophone);
		dto.setOaddress(oaddress);
		dto.setOpost(opost);
		dto.setOamount(oamount);
		dto.setOpayment(opayment);
		dto.setOdelivery(odelivery);
		dto.setOid(oid);
		dto.setPid(pid);
		dto.setOdsize(odsize);
		dto.setOdqty(odqty);
		
		
		//orders 테이블 넣기
		PayDAO payDao = new PayDAO();
		int n1 = payDao.payInput(dto);
		request.setAttribute("n1", n1);
		
		
		//orders_detail 테이블 넣기
		int n2 = payDao.payInput_detail(dto);
		request.setAttribute("n2", n2);
		
		//orders / orders_detail 넣은 후 카트 삭제
		HttpSession session = request.getSession();
		
		System.out.println("PayInput:delete all");
		
		CartDAO dao = new CartDAO();
		dao.cartDeleteAll(mid);
		
		return "pay/payInsertResult.jsp";
	}
	
}
