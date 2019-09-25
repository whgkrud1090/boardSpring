package kr.or.ddit.user.repository;

import kr.or.ddit.user.model.User;

public interface IUserDao {
	
	User getUser(String userId);
}
