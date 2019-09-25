package kr.or.ddit.board.controller;

import static org.springframework.test.web.servlet.request.MockMvcRequestBuilders.get;
import static org.springframework.test.web.servlet.request.MockMvcRequestBuilders.post;
import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.model;
import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.view;

import org.junit.Test;
import org.springframework.mock.web.MockHttpSession;

import kr.or.ddit.board.model.Board;
import kr.or.ddit.config.test.WebTestConfig;
import kr.or.ddit.user.model.User;

public class BoardControllerTest extends WebTestConfig{

	@Test
	public void boardViewTest() throws Exception {
		mockMvc.perform(get("/board/board")).andExpect(view().name("board/board"));
	}
	@Test
	public void postListTest() throws Exception {
		mockMvc.perform(get("/board/postList").param("boardseq", "3"))
		.andExpect(model().attributeExists("boardNm"))
		.andExpect(model().attributeExists("pageVo"))
		.andExpect(model().attributeExists("postList"))
		.andExpect(model().attributeExists("boardList"))
		.andExpect(model().attributeExists("paginationSize"))
		.andExpect(view().name("board/postList"));
	}
	@Test
	public void boardInsertTest() throws Exception {
		
		MockHttpSession session = new MockHttpSession();
		
		User user = new User();
		user.setUserId("sally");
		Board board = new Board();
		board.setBoardnm("테스트");
		
		board.getBoardusage();
		
		session.setAttribute("S_USERVO", user);
			mockMvc.perform(post("/board/board").param("userid",user.getUserId())
					.param("boardFunc", "inse")
					.param("boardnm", "테스트")
					.param("boardusage", "Y")
					.param("boardseq", "3")
					.session(session)
					)
			.andExpect(view().name("board/board"));
			
	}
	@Test
	public void boardupdateTest() throws Exception {
		
		MockHttpSession session = new MockHttpSession();
		
		User user = new User();
		user.setUserId("sally");
		Board board = new Board();
		board.setBoardnm("테스트");
		
		board.getBoardusage();
		
		session.setAttribute("S_USERVO", user);
		mockMvc.perform(post("/board/board").param("userid","sally")
				.param("boardFunc", "modi")
				.param("boardnm", "테스트수정")
				.param("boardusage", "Y")
				.param("boardseq", "3")
				.session(session)
				)
		.andExpect(view().name("board/board"));
		
	}
	@Test
	public void delPostListTest() throws Exception {
		mockMvc.perform(post("/board/delPostList").param("postseq", "16").param("boardseq", "4"))
		.andExpect(model().attributeExists("pageVo"))
		.andExpect(model().attributeExists("postList"))
		.andExpect(model().attributeExists("boardList"))
		.andExpect(model().attributeExists("paginationSize"))
		.andExpect(view().name("board/delPostList"));
	}
	

}
