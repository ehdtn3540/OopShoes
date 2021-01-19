package com.order.dao;

import java.io.IOException;
import java.io.Reader;
import java.util.List;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

import com.order.dto.OrderDTO;
import com.order.dto.OrderdetailDTO;

public class OrderDAO {
	private static SqlSessionFactory factory;
	private static OrderDAO instance;
	
	static {
		try {
			String resource="mybatis/mybatis-config.xml";
			Reader reader=Resources.getResourceAsReader(resource);
			factory=new SqlSessionFactoryBuilder().build(reader);
		}catch(IOException e) {
			e.printStackTrace();
		}
	}
	//주문리스트 가져오기------------------------------------------------
	public List<OrderDTO> getOrderList() {
		SqlSession session = factory.openSession();
		List<OrderDTO> list = session.selectList("mybatis.OrderMapper.getOrderList");
		session.close();
		return list;
	}
	//주문리스트 가져오기------------------------------------------------
	public List<OrderdetailDTO> getOrderList(String id) {
		SqlSession session = factory.openSession();
		List<OrderdetailDTO> list = session.selectList("mybatis.OrderMapper.getMyOrderList", id);
		session.close();
		return list;
	}
	//상세보기------------------------------------------------
	public List<OrderdetailDTO> orderView(OrderDTO dto) {
		SqlSession session = factory.openSession();
		List<OrderdetailDTO> view = session.selectList("mybatis.OrderMapper.getOrderView", dto);
		session.close();
		return view;
	}

}
