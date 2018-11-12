package com.soccerman.common;

/*
 ***************************************************************
 * @source: DBManager.java
 * @description: Connection 객체를 취득, 사용이 끝나면 자원을 해제하는 클라스
 * 
 *************************************************************** 
 * DATE                  AUTHOR                 DESCRIPTION
 ***************************************************************
 * 2018/07/16            최초롱                              최초작성
 ***************************************************************
 */

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

// 싱글톤 패턴(디자인 패턴의 한 종류)을 활용한 공유 방법
public class DBManager {
	// 생성자, static 이용
	// 생성자는 객체 생성, static은 자원공유의 개념으로 객체 생성을 하지 않고 바로 메서드 사용
	// 객체생성을 단한번만 실행하고 다른 클라스에서 사용할때는 한번 생성된 객체를 빌려다가 공유
	
	// 인스턴스의 주소를 저장하기 위한 참조 변수
	private static Connection conn;
	
	// Connection 관련 정보 상수
	// 상수의 변수명은 항상 대문자
	private final static String DRIVER = "oracle.jdbc.driver.OracleDriver";
	private final static String URL = "jdbc:oracle:thin:@127.0.0.1:1521:XE";
	private final static String USER = "java";
	private final static String PASS = "1234";
	
	// 생성자를 private으로 만들어 은닉화 시켜 외부에서 인스턴스를 생성하지 못하도록 선언
	// 공유해서 사용하려고 하는데 다른 개발자가 객체생성 해서 사용하면 공유의 의미가 없음
	// 사용자의 실수를 막는 용도
	private DBManager() {
		
	}
	
	// 인스턴스를 생성 또는 기존 인스턴스를 반환하는
	public static Connection getConnenction() {
		conn = null;
		
		if(conn == null) {
			try {
				Class.forName(DRIVER);
				conn = DriverManager.getConnection(URL, USER, PASS);
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
		return conn;
	}
	
	// select 수행 후 자원 해제를 위한 메서드
	public static void close(Connection conn, PreparedStatement pstmt, ResultSet rs) {
		try {
			if(conn != null) {
				try {
					conn.close();
				} catch (Exception e) {
					e.printStackTrace();
				}
			}
			if(pstmt != null) {
				try {
					pstmt.close();
				} catch (Exception e) {
					e.printStackTrace();
				}
			}
			if(rs != null) {
				try {
					rs.close();
				} catch (Exception e) {
					e.printStackTrace();
				}
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	// insert, delete, update 수행 후 자원해제를 위한 메서드
	// 오버로딩
	public static void close(Connection conn, PreparedStatement pstmt) {
		try {
			if(conn != null) {
				try {
					conn.close();
				} catch (Exception e) {
					e.printStackTrace();
				}
			}
			if(pstmt != null) {
				try {
					pstmt.close();
				} catch (Exception e) {
					e.printStackTrace();
				}
			}			
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
}
