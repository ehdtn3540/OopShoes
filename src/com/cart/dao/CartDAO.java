package com.cart.dao;

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

public class CartDAO {
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
	//장바구니 집어넣기
	public int cartInput(CartDTO dto) {
		SqlSession session = factory.openSession();
		int n = 0;
		try {
			n = session.insert("mybatis.CartMapper.cartInsert", dto);
			if(n>0)
				session.commit();
		}catch(Exception e) {
			e.printStackTrace();
			session.rollback();
		}finally {
			session.close();
		}
		return n;
	}	
	//장바구니 리스트 가져오기 멤버 아이디로 검색
	public List<CartDTO> getCartList(Map<String, String> map){
		SqlSession session = factory.openSession();
		List<CartDTO> list = session.selectList("mybatis.CartMapper.getCartList", map);
		session.close();
		return list;	
	}
	//장바구니 비우기 
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
	//장바구니 아이템 하나씩 삭제 //카트 아이디로 삭제
	public void cartDeleteEach(int id) {
		SqlSession session = factory.openSession();
		int n=0;
		try{
			n=session.delete("mybatis.CartMapper.cartDeleteEach",id);
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
