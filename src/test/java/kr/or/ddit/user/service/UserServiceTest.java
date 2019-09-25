package kr.or.ddit.user.service;

import static org.junit.Assert.assertEquals;

import javax.annotation.Resource;

import org.junit.Test;

import kr.or.ddit.config.test.RootTestConfig;
import kr.or.ddit.user.model.User;


public class UserServiceTest extends RootTestConfig{

	@Resource(name="userService")
	private IUserService userService;
	
	
	@Test
	public void getUser() {
		/*** Given ***/
		String userId = "sally";
		
		/***When***/
		User userVo = userService.getUser(userId);
		
		/***Then***/
		assertEquals(userVo.getUserNm(), "샐리");
		assertEquals("c6347b73d5b1f7c77f8be828ee3e871c819578f23779c7d5e082ae2b36a44", userVo.getPass());
	}
}
