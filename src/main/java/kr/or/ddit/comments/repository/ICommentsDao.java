package kr.or.ddit.comments.repository;

import java.util.List;

import kr.or.ddit.comments.model.Comments;

public interface ICommentsDao {
	int insertComm(Comments comm);
	
	int updateComm(Comments comm);
	
	int deleteComm(Comments comm);
	
	List<Comments> getCommList(int postseq);
}
