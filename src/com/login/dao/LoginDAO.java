package com.login.dao;

import java.io.IOException;
import java.io.Reader;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

import com.login.dto.LoginDTO;
import com.product.dao.ProductDAO;

public class LoginDAO {
	private static SqlSessionFactory factory;
	
	static {
		try {
			String resource="mybatis/mybatis-config.xml";
			Reader reader=Resources.getResourceAsReader(resource);
			factory=new SqlSessionFactoryBuilder().build(reader);
		}catch(IOException e) {
			e.printStackTrace();
		}
	}
//----------------------------------------------------------------------------
	// 로그인 ------------------------------------------------------------------
	public LoginDTO getLoginUser(String id, String pass) {
		SqlSession session=factory.openSession();
		LoginDTO dto=new LoginDTO(id,pass);
		LoginDTO entity=session.selectOne("mybatis.LoginMapper.getLoginUser", dto);
		session.close();
		
		return entity;
	}
	// 로그인 ------------------------------------------------------------------
		public LoginDTO getAutoLoginUser(String id) {
			SqlSession session=factory.openSession();
			LoginDTO entity=session.selectOne("mybatis.LoginMapper.getAutoLoginUser", id);
			session.close();
			
			return entity;
		}
	// 회원가입 -----------------------------------------------------------------
	public int registration(LoginDTO dto) {
		SqlSession session=factory.openSession();
		System.out.println("dao.registration에 들어옴");
		int n = 0;
		try {
			n = session.insert("mybatis.LoginMapper.registration", dto);
			System.out.println("registration_n: "+ n);
			if (n > 0)
				session.commit();
		} catch (Exception e) {
			e.printStackTrace();
			session.rollback();
		} finally {
			session.close();
		}
		
		return n;
	}
	
}
