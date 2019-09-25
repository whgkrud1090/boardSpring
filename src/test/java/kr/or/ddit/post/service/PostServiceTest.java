package kr.or.ddit.post.service;

import static org.junit.Assert.assertEquals;
import static org.junit.Assert.assertNotNull;
import static org.junit.Assert.assertTrue;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.junit.Test;

import kr.or.ddit.attafile.model.AttaFile;
import kr.or.ddit.attafile.service.IAttaFileService;
import kr.or.ddit.common.model.Page;
import kr.or.ddit.config.test.RootTestConfig;
import kr.or.ddit.post.model.Post;

public class PostServiceTest extends RootTestConfig{

	@Resource(name = "postService")
	private IPostService postService;
	
	@Resource(name = "attaFileService")
	private IAttaFileService attaFileService;
	
	@Test
	public void getPostListTest() {
		/***Given***/
		int boardseq = 1;
		Page page = new Page();
		page.setBoardseq(boardseq);
		page.setPage(1);
		page.setPagesize(3);
		
		/***When***/
		Map<String, Object> resultMap = postService.getPostList(page);
		List<Post> postList = (List<Post>) resultMap.get("postList");
		
		/***Then***/
		assertNotNull(postList);
	}
	@Test
	public void getPostTest() {
		/***Given***/
		int postseq = 16;
		
		/***When***/
		
		/***Then***/
		assertNotNull(postService.getPost(postseq));
	}
	@Test
	public void insertPostTest() {
		
		Post post = new Post();
		post.setBoardseq(4);
		post.setPosttitle("insert POST");
		post.setPostcont("CONT");
		post.setUserid("sally");
		post.setPostdel("Y");
		
		AttaFile attaFile = new AttaFile();
		attaFile.setAttafilename("sallyTest.png");
		attaFile.setAttarealfilename("alfjdlskalfkssldfj.png");
		
		attaFile.setAttafilename("sallyTest.png");
		attaFile.setAttarealfilename("alfjdlskalfkssldfj.png");
		List<AttaFile> attaList = new ArrayList<AttaFile>();
		attaList.add(attaFile);
		
		attaFileService.insertAttaFile(attaFile);
		/***When***/
		int insertCnt = postService.insertPost(post, attaList);
		attaFile.setPostseq(post.getPostseq());
		int aInsertCnt = attaFileService.insertAttaFile(attaFile);

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
		int updateCnt = postService.updatePost(post);

		/***Then***/
		assertEquals(1, updateCnt);
	}

	@Test
	public void deletePostTest() {
		/***Given***/
		int postseq = 16;

		/***When***/
		int deleteCnt = postService.deletePost(postseq);

		/***Then***/
		assertEquals(1, deleteCnt);
	}
	
	@Test
	public void getMaxPostNumTest() {
		/***Given***/

		/***When***/
		int maxPost = postService.getMaxPostNum();

		/***Then***/
		assertNotNull(maxPost);
	}

}
