package com.pay.dao;

import java.io.IOException;
import java.io.Reader;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

import com.cart.dao.CartDAO;
import com.cart.dto.CartDTO;
import com.order.dto.OrderdetailDTO;
import com.pay.dto.PayDTO;

public class PayDAO {
	private static SqlSessionFactory factory;
	private static CartDAO instance;
	
	static {
		try {
			System.out.println("DAO start");
			String resource="mybatis/mybatis-config.xml";
			Reader reader=Resources.getResourceAsReader(resource);
			factory=new SqlSessionFactoryBuilder().build(reader);
		}catch(IOException e) {
			e.printStackTrace();
			System.out.println("DAO 오류");
		}
	}
	//BUY NOW 바로 리스트 가져오기 (카트 안거치고 바로 pay)
	public List<CartDTO> getBuynowList(Map<String, String> map){
		SqlSession session = factory.openSession();
		List<CartDTO> list = session.selectList("mybatis.CartMapper.getCartList", map);
		session.close();
		return list;
	}
	//결제페이지에 장바구니 리스트 가져오기 멤버 아이디로 검색
	public List<CartDTO> getCartList(Map<String, String> map){
		SqlSession session = factory.openSession();
		List<CartDTO> list = session.selectList("mybatis.CartMapper.getCartList", map);
		session.close();
		return list;	
	}
	//orders 주문정보 입력하기
	public int payInput(PayDTO dto) {
		SqlSession session = factory.openSession();
		int n1 = 0;
		
		try {
			n1 = session.insert("mybatis.PayMapper.payInput", dto);
			if(n1>0)
				System.out.println("payInput n1:" + n1);
				session.commit();
		}catch(Exception e) {
			e.printStackTrace();
			
			session.rollback();
		}finally {
			session.close();
		}
		return n1;
	}
	//orders_detail 주문 상세정보 입력하기
	public int payInput_detail(PayDTO dto) {
		SqlSession session = factory.openSession();
		int n2 = 0;
		
		try {
			n2 = session.insert("mybatis.PayMapper.payInput_Detail", dto);
			if(n2>0)
				System.out.println("payInputDetail n2:" + n2);
				session.commit();
		}catch(Exception e) {
			e.printStackTrace();
			
			session.rollback();
		}finally {
			session.close();
		}
		return n2;
	}
	//결제 완료시 장바구니 비우기
	public void cartDeleteAll(String id) {
		SqlSession session = factory.openSession();
		int n=0;
		try{
			n=session.delete("mybatis.CartMapper.cartDeleteAll", id);
			if(n > 0)
				session.commit();
		}catch(Exception e) {
			e.printStackTrace();
			session.rollback();
		}finally {
			session.close();
		}
	}
}
