package kr.or.ddit.user.service;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import kr.or.ddit.user.model.User;
import kr.or.ddit.user.repository.IUserDao;

@Service
public class UserService implements IUserService{
	
	@Resource(name="userDao")
	private IUserDao userDao;
	
	public UserService(IUserDao userDao) {
		this.userDao = userDao;
	}
	public UserService() {
	}
	@Override
	public User getUser(String userId) {
		return userDao.getUser(userId);
	}
}
