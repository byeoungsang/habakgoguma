package com.soccerman.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;


import com.soccerman.common.DBManager;
import com.soccerman.dto.ProductDTO;
import com.soccerman.mybatis.SqlMapConfig;


	
	
	public class ProductDAO {
		SqlSessionFactory sqlSessionFactory = SqlMapConfig.getSqlSession();
		
		//mapper에 접근하기위한  sqlSession
		SqlSession sqlSession;
		
		//싱글톤으로 NEW 없이 사용하기 때문에 
		//다른곳에 NEW객체 생성 못하게 private으로 막음
		private ProductDAO() {}
		
		//싱글톤 패턴 - 객체 생성 1회 실시 후  공유해서 사용
		//객체 생성1차
		private static ProductDAO instance= new ProductDAO();	
		
		//외부에서 getInstance를 활용하여 1회실시간 객체를 공유 
		public static ProductDAO getInstance() {
			return instance;
		}
		
		//실제 동작들 ../
		//best상품목록 출력 (Index 페이지)
		public List<ProductDTO> bestView(){
			sqlSession = sqlSessionFactory.openSession();
			List<ProductDTO> bestList = null;
			
			try {
				bestList = sqlSession.selectList("bestView");
				
			} catch (Exception e) {
				e.printStackTrace();
			}finally {
				sqlSession.close();
			}
			
			return bestList;
		}
		/*Connection conn = null;                                                                                                                                                                                            
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		ArrayList<ProductDTO> list = new ArrayList<>();
		int result = 0;
		public ArrayList<ProductDTO> bestView(){
			try {
				conn = DBManager.getConnenction();
				String sql = "SELECT * FROM best_pro_view";
				pstmt = conn.prepareStatement(sql);
				rs = pstmt.executeQuery();
				
				while(rs.next()) {
					String p_code = rs.getString("p_code");
					String p_name = rs.getString("p_name");
					int p_price = rs.getInt("p_price");
					String p_img = rs.getString("p_img");
					Date p_indate = rs.getDate("p_indate");
					ProductDTO pDto = new ProductDTO(p_code, p_name, p_price, p_img, p_indate);
					list.add(pDto);
				}
				
			} catch (Exception e) {
				e.printStackTrace();
			}finally {
				DBManager.close(conn, pstmt, rs);
			}
		return list;
		}*/
	}

/*	// MyBatis 셋팅값 호출
	
		SqlSessionFactory sqlSessionFactory = SqlMapConfig.getSqlSession();
		
		// mapper에 접근하기 위한 sqlSession
		SqlSession sqlSession;
		
		
		// 싱글톤으로 new 없이 사용하기 때문에
		// 다른곳에 new 로 객체생성 못하게 private으로 막음
		private ProductDAO() {}
		
		// 싱글톤 패턴 - 객체생성 1회 실시 후 공유해서 사용
		// 객체생성 1회 실시
		private static ProductDAO instance =new ProductDAO();
	
	// 외부에서 getInstance() 를 활용하여 1회 실시한 객체를 공유
		public static ProductDAO getInstance() {
			return instance;
		}
	
	
		// 실제 동작들...
		
		// Best 상품목록 출력(Index 페이지)
	
		public List<ProductDTO> bestView() {
			sqlSession = sqlSessionFactory.openSession();
			List<ProductDTO> bestList = null;
			
			try {

				bestList = sqlSession.selectList("bestView");
				
				
				
			} catch (Exception e) {
				e.printStackTrace();
			}finally {
				sqlSession.close();
			}
			
			
			
			return bestList;
		}
	
}*/
	// ==============================================================================================
	// Mybatis 사용하기전 DBManager 와 prepareStatement 방식으로 구현한 DAO객체
/*	Connection conn = null;
	PreparedStatement pstmt = null;
	ResultSet rs = null;
	ArrayList<ProductDTO> list = new ArrayList<>();
	int result = 0;
	
	public ArrayList<ProductDTO> bestView() {
		try {
			conn = DBManager.getConnenction();
			String sql = "SELECT * FROM best_pro_view ";
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			
			while(rs.next()) {
				String p_code = rs.getString("p_code");
				String p_name = rs.getString("p_name");
				int p_price = rs.getInt("p_price");
				String p_img = rs.getString("p_img");
				Date p_indate = rs.getDate("p_indate");
				
				ProductDTO pDto = new ProductDTO(p_code, p_name, p_price, p_img, p_indate);
				list.add(pDto);
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBManager.close(conn, pstmt, rs);
	
		}
			return list;
	}
	
              		
}*/
