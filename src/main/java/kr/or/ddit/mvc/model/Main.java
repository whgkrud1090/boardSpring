package kr.or.ddit.mvc.model;

import java.util.List;

public class Main{
	private List<String> userId;

	public List<String> getUserId() {
		return userId;
	}

	public void setUserId(List<String> userId) {
		this.userId = userId;
	}

	@Override
	public String toString() {
		return "Main [userId=" + userId + "]";
	}

}
