package com.product.dao;

import java.io.IOException;
import java.io.Reader;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

import com.product.dto.ProductDTO;

public class ProductDAO {
	private static SqlSessionFactory factory;
	private static ProductDAO instance;

	static {
		try {
			String resource = "mybatis/mybatis-config.xml";
			Reader reader = Resources.getResourceAsReader(resource);
			factory = new SqlSessionFactoryBuilder().build(reader);
		} catch (IOException e) {
			e.printStackTrace();
		}
	}

	// 상품 등록하기-----------------------------------------------------
	public int productInsert(ProductDTO dto) {
		SqlSession session = factory.openSession();
		int n = 0;
		try {
			n = session.insert("mybatis.ProductMapper.productInsert", dto);
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

	// 상품 수정하기-----------------------------------------------------
	public int productUpdate(ProductDTO dto) {
		SqlSession session = factory.openSession();
		int n = 0;
		try {
			n = session.update("mybatis.ProductMapper.productUpdate", dto);
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

	// 상품 삭제하기-----------------------------------------------------
	public void productDelete(int id) {
		SqlSession session = factory.openSession();
		int n = 0;
		try {
			n = session.update("mybatis.ProductMapper.productDelete", id);
			if (n > 0)
				session.commit();
		} catch (Exception e) {
			e.printStackTrace();
			session.rollback();
		} finally {
			session.close();
		}
	}

	// 메인페이지 상품 정렬하기-----------------------------------------------------
	public List<ProductDTO> getProductSort(ProductDTO dto) {
		SqlSession session = factory.openSession();
		List<ProductDTO> list = session.selectList("mybatis.ProductMapper.getProductSort", dto);
		session.close();
		return list;
	}

	// 상품 페이지 출력 ===========================================================
	// 메인페이지 상품 리스트 가져오기------------------------------------------------
	public List<ProductDTO> getProductList() {
		SqlSession session = factory.openSession();
		List<ProductDTO> list = session.selectList("mybatis.ProductMapper.getProductList");
		session.close();
		return list;
	}

	// 상품 페이지 정렬하기 ----------------------------------------
	public List<ProductDTO> getBrandsList(String pg) {
		SqlSession session = factory.openSession();
		List<ProductDTO> list = session.selectList("mybatis.ProductMapper.getBrandsList", pg);
		session.close();
		return list;
	}

	// 신상품페이지 상품 정렬하기-----------------------------------------------------
	public List<ProductDTO> getNewList(String pg) {
		SqlSession session = factory.openSession();
		List<ProductDTO> list = session.selectList("mybatis.ProductMapper.getNewList", pg);
		session.close();
		return list;
	}

	// 베스트페이지 상품 정렬하기-----------------------------------------------------
	public List<ProductDTO> getBestList(String pg) {
		SqlSession session = factory.openSession();
		List<ProductDTO> list = session.selectList("mybatis.ProductMapper.getBestList", pg);
		session.close();
		return list;
	}

	// 이벤트페이지 상품 정렬하기-----------------------------------------------------
	public List<ProductDTO> getEventList(String pg) {
		SqlSession session = factory.openSession();
		List<ProductDTO> list = session.selectList("mybatis.ProductMapper.getEventList", pg);
		session.close();
		return list;
	}
	// =====================================================================

	// 상품 상세 페이지 ----------------------------------------
	public ProductDTO getProductDetail(int pg) {
		SqlSession session = factory.openSession();
		ProductDTO dto = session.selectOne("mybatis.ProductMapper.getProductDetail", pg);
		session.close();
		return dto;
	}

	// 상품검색 -------------------------------------------------
	public List<ProductDTO> getProductSearchList(Map<String, Object> map) {
		SqlSession session = factory.openSession();
		List<ProductDTO> list = session.selectList("mybatis.ProductMapper.getProductSearchList", map);
		session.close();

		return list;
	}

}
