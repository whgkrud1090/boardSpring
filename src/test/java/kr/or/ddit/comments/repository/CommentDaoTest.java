package kr.or.ddit.comments.repository;

import static org.junit.Assert.*;

import java.util.List;

import javax.annotation.Resource;

import org.junit.Test;

import kr.or.ddit.comments.model.Comments;
import kr.or.ddit.config.test.WebTestConfig;

public class CommentDaoTest extends WebTestConfig{

	@Resource(name = "commentsDao")
	private ICommentsDao commentsDao;
	
	@Test
	public void insertCommTest() {
		/***Given***/
		Comments comm = new Comments();
		comm.setCommcont("댓글insert.");
		comm.setCommwriter("sally");
		comm.setPostseq(14);

		/***When***/
		int insertCnt = commentsDao.insertComm(comm);

		/***Then***/
		assertEquals(1, insertCnt);
	}
	
	@Test
	public void updateCommTest() {
		/***Given***/
		Comments comm = new Comments();
		comm.setCommcont("댓글 update");
		comm.setCommwriter("sally");
		comm.setPostseq(14);
		comm.setCommseq(4);

		/***When***/
		int updateCnt = commentsDao.updateComm(comm);

		/***Then***/
		assertEquals(1, updateCnt);
	}
	
	@Test
	public void deleteCommTest() {
		/***Given***/
		Comments comm = new Comments();
		comm.setCommcont("댓글delete");
		comm.setCommwriter("sally");
		comm.setPostseq(1);
		comm.setCommseq(4);

		/***When***/
		int deleteCnt = commentsDao.deleteComm(comm);

		/***Then***/
		assertEquals(1, deleteCnt);
	}
	
	@Test
	public void getCommList() {
		/***Given***/
		int postseq = 14;

		/***When***/
		List<Comments> commList = commentsDao.getCommList(postseq);

		/***Then***/
		assertNotNull(commList);
	}

}
