package com.soccerman.test;

import static org.junit.Assert.*;

import java.sql.Connection;
import java.sql.DriverManager;

import org.junit.Test;



public class ConnTest  {
	private static Connection conn;
	private final static String DRIVER = "oracle.jdbc.driver.OracleDriver";
	private final static String URL = "jdbc:oracle:thin:@127.0.0.1:1521:XE";
	private final static String USER = "java";
	private final static String PASS = "123456";
	@Test
	public void testGetConnenction() {
			conn = null;
			if(conn ==  null) {
			try {
				Class.forName(DRIVER);
			
				conn = DriverManager.getConnection(URL, USER, PASS);
			} catch (Exception e) {
				e.printStackTrace();
			}	
			
	}

}
}
