package com.soccerman.test;

import static org.junit.Assert.*;

import org.junit.Test;

import com.soccerman.dao.MemberDAO;

public class IdCheckTest {
	String userid = "sentilemon02";
	@Test
	public void testConfirmID() {
		MemberDAO mDao = MemberDAO.getInstance();
		
		mDao.confirmID(userid);
	}

}
