package kr.or.ddit.comments.service;

import static org.junit.Assert.assertEquals;
import static org.junit.Assert.assertNotNull;

import java.util.List;

import javax.annotation.Resource;

import org.junit.Test;

import kr.or.ddit.comments.model.Comments;
import kr.or.ddit.config.test.WebTestConfig;

public class CommentsServiceTest extends WebTestConfig{

	@Resource(name = "commentsService")
	private ICommentsService commentsService;
	
	@Test
	public void insertCommTest() {
		/***Given***/
		Comments comm = new Comments();
		comm.setCommcont("댓글insert.");
		comm.setCommwriter("sally");
		comm.setPostseq(14);

		/***When***/
		int insertCnt = commentsService.insertComm(comm);

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
		int updateCnt = commentsService.updateComm(comm);

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
		int deleteCnt = commentsService.deleteComm(comm);

		/***Then***/
		assertEquals(1, deleteCnt);
	}
	
	@Test
	public void getCommList() {
		/***Given***/
		int postseq = 14;

		/***When***/
		List<Comments> commList = commentsService.getCommList(postseq);

		/***Then***/
		assertNotNull(commList);
	}

}
