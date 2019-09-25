package kr.or.ddit.post.repository;

import static org.junit.Assert.assertEquals;
import static org.junit.Assert.assertNotNull;

import java.util.List;

import javax.annotation.Resource;

import org.junit.Test;

import kr.or.ddit.attafile.model.AttaFile;
import kr.or.ddit.attafile.repository.IAttaFileDao;
import kr.or.ddit.common.model.Page;
import kr.or.ddit.config.test.RootTestConfig;
import kr.or.ddit.post.model.Post;

public class PostDaoTest extends RootTestConfig {

	@Resource(name = "postDao")
	private IPostDao postDao;

	@Resource(name = "attaFileDao")
	private IAttaFileDao attaFileDao;
	
	@Test
	public void getPostListTest() {
		/***Given***/
		int boardseq = 1;
		Page page = new Page();
		page.setBoardseq(boardseq);
		page.setPage(1);
		page.setPagesize(3);
		
		/***When***/
		List<Post> postList = postDao.getPostList(page);
		
		/***Then***/
		assertNotNull(postList);
	}
	@Test
	public void getPostTest() {
		/***Given***/
		int postseq = 16;
		
		/***When***/
		
		/***Then***/
		assertNotNull(postDao.getPost(postseq));
	}
	@Test
	public void insertPostTest() {
		
		Post post = new Post();
		post.setBoardseq(3);
		post.setPosttitle("insert POST");
		post.setPostcont("CONT");
		post.setUserid("sally");
		post.setPostdel("Y");
		
		AttaFile attaFile = new AttaFile();
		attaFile.setAttafilename("sallyTest.png");
		attaFile.setAttarealfilename("alfjdlskalfkssldfj.png");

		/***When***/
		int insertCnt = postDao.insertPost(post);
		attaFile.setPostseq(post.getPostseq());
		int aInsertCnt = attaFileDao.insertAttaFile(attaFile);

		/***Then***/
		assertEquals(1, insertCnt);
		assertEquals(1, aInsertCnt);
	}
	
	@Test
	public void updatePostTest() {
		/***Given***/
		Post post = new Post();
		post.setPostseq(19);
		post.setPosttitle("update POST");
		post.setPostcont("CONT");
		
		/***When***/
		int updateCnt = postDao.updatePost(post);

		/***Then***/
		assertEquals(1, updateCnt);
	}

	@Test
	public void deletePostTest() {
		/***Given***/
		int postseq = 16;

		/***When***/
		int deleteCnt = postDao.deletePost(postseq);

		/***Then***/
		assertEquals(1, deleteCnt);
	}
	
	@Test
	public void getPostTotalCntTest() {
		/***Given***/
		int boardseq = 4;

		/***When***/
		int totalCnt = postDao.getPostTotalCnt(boardseq);

		/***Then***/
		assertEquals(4, totalCnt);
	}
}
