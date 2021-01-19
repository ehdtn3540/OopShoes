package com.member.dao;

import java.io.IOException;
import java.io.Reader;
import java.util.List;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

import com.member.dto.MemberDTO;
import com.order.dao.OrderDAO;
import com.product.dto.ProductDTO;

public class MemberDAO {
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
	//멤버리스트 가져오기------------------------------------------------
	public List<MemberDTO> getMemberList() {
		SqlSession session = factory.openSession();
		List<MemberDTO> list = session.selectList("mybatis.MemberMapper.getMemberList");
		session.close();
		return list;
	}
	// 개인정보수정 -----------------------------------------------------------------
	public int memberModify(MemberDTO dto) {
		SqlSession session = factory.openSession();
		int n = 0;
		try {
			n = session.update("mybatis.MemberMapper.memberModify", dto);
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
	// 회원탈퇴 -----------------------------------------------------------------
	public int memberDrop(String id) {
		SqlSession session = factory.openSession();
		int n = 0;
		try {
			n = session.update("mybatis.MemberMapper.memberDrop", id);
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
}
