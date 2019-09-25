package kr.or.ddit.post.web;

import static org.springframework.test.web.servlet.request.MockMvcRequestBuilders.fileUpload;
import static org.springframework.test.web.servlet.request.MockMvcRequestBuilders.get;
import static org.springframework.test.web.servlet.request.MockMvcRequestBuilders.post;
import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.status;
import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.view;

import java.io.File;
import java.io.FileInputStream;

import org.junit.BeforeClass;
import org.junit.Test;
import org.springframework.mock.web.MockHttpSession;
import org.springframework.mock.web.MockMultipartFile;

import kr.or.ddit.config.test.WebTestConfig;
import kr.or.ddit.user.model.User;

public class PostControllerTest extends WebTestConfig{

	@BeforeClass
	public static void setUpBeforeClass() throws Exception {
	}

	@Test
	public void readPostViewTest() throws Exception {
		MockHttpSession session = new MockHttpSession();
		User user = new User();
		user.setUserId("sally");
		
		session.setAttribute("S_USERVO", user);
		
		mockMvc.perform(get("/post/readPost")
				.param("postseq", "15").session(session)).andExpect(view().name("post/readPost"));
	}
	@Test
	public void readPostTest() throws Exception {
		MockHttpSession session = new MockHttpSession();
		User user = new User();
		user.setUserId("sally");
		
		session.setAttribute("S_USERVO", user);
		
		mockMvc.perform(post("/post/readPost")
				.param("postseq", "15")
				.param("mode", "commdel")
				.param("commcont", "댓글")
				.param("commseq", "80")
				.session(session))
		.andExpect(view().name("post/readPost"));
	}
	
	@Test
	public void readPostinsetCommTest() throws Exception {
		MockHttpSession session = new MockHttpSession();
		User user = new User();
		user.setUserId("sally");
		
		session.setAttribute("S_USERVO", user);
		
		mockMvc.perform(post("/post/readPost")
				.param("mode", "incomm")
				.param("postseq", "17")
				.param("commcont", "댓글")
				.param("commseq", "80")
				.session(session))
		.andExpect(view().name("post/readPost"));
	}
	
	@Test
	public void newPostViewTest() throws Exception {
		MockHttpSession session = new MockHttpSession();
		User user = new User();
		user.setUserId("sally");
		
		mockMvc.perform(get("/post/newPost").session(session).param("boardseq", "4")).andExpect(view().name("post/newPost"));
	}
	@Test
	public void postModifyFormViewTest() throws Exception {
		mockMvc.perform(get("/post/postModifyForm").param("postseq", "16")).andExpect(view().name("post/postModifyForm"));
	}
	@Test
	public void newPostTest() throws Exception {
		MockHttpSession session = new MockHttpSession();
		User user = new User();
		user.setUserId("sally");
		
		session.setAttribute("S_USERVO", user);
		
		File f = new File("src/test/resources/kr/or/ddit/test/sally.png");
		FileInputStream fis = new FileInputStream(f);
		MockMultipartFile file = new MockMultipartFile("picture", "sally.png", "", fis);
		
		mockMvc.perform(fileUpload("/post/newPost").file(file)
				.session(session)
				.param("boardseq", "4")
				.param("smarteditor", "4")
				.param("posttitle", "4")
				)
		.andExpect(view().name("post/readPost"));
	}
	@Test
	public void postModifyFormTest() throws Exception {
		MockHttpSession session = new MockHttpSession();
		User user = new User();
		user.setUserId("sally");
		
		session.setAttribute("S_USERVO", user);
		
		File f = new File("src/test/resources/kr/or/ddit/test/sally.png");
		FileInputStream fis = new FileInputStream(f);
		MockMultipartFile file = new MockMultipartFile("picture", "sally.png", "", fis);
		
		mockMvc.perform(fileUpload("/post/postModifyForm").file(file)
				.session(session)
				.param("mode", "fileDel")
				.param("boardseq", "4")
				.param("postseq", "16")
				.param("attaseq", "5")
				.param("smarteditor", "4")
				.param("posttitle", "4")
				)
		.andExpect(view().name("post/readPost"));
	}
	
	@Test
	public void ModifyFormTest() throws Exception {
		MockHttpSession session = new MockHttpSession();
		User user = new User();
		user.setUserId("sally");
		
		session.setAttribute("S_USERVO", user);
		
		File f = new File("src/test/resources/kr/or/ddit/test/sally.png");
		FileInputStream fis = new FileInputStream(f);
		MockMultipartFile file = new MockMultipartFile("picture", "sally.png", "", fis);
		
		mockMvc.perform(fileUpload("/post/postModifyForm").file(file)
				.session(session)
				.param("mode", "modifyPost")
				.param("boardseq", "4")
				.param("postseq", "16")
				.param("attaseq", "5")
				.param("smarteditor", "4")
				.param("posttitle", "4")
				)
		.andExpect(view().name("post/readPost"));
	}
	@Test
	public void replyFormTest() throws Exception {
		MockHttpSession session = new MockHttpSession();
		User user = new User();
		user.setUserId("sally");
		
		session.setAttribute("S_USERVO", user);
		
		File f = new File("src/test/resources/kr/or/ddit/test/sally.png");
		FileInputStream fis = new FileInputStream(f);
		MockMultipartFile file = new MockMultipartFile("picture", "sally.png", "", fis);
		
		mockMvc.perform(fileUpload("/post/replyForm").file(file)
				.session(session)
				.param("gn", "4")
				.param("boardseq", "4")
				.param("postseq", "16")
				.param("smarteditor", "4")
				.param("posttitle", "4")
				)
		.andExpect(view().name("post/readPost"));
	}
	@Test
	public void userFormTest() throws Exception {
		
		File f = new File("src/test/resources/kr/or/ddit/test/sally.png");
		FileInputStream fis = new FileInputStream(f);
		MockMultipartFile file = new MockMultipartFile("picture", "sally.png", "", fis);
		
		mockMvc.perform(fileUpload("/user/postPicture").file(file).param("userId", "brownTest").param("userNm", "브라운").param("alias", "곰테스트").param("addr1", "대전광역시 중구 중앙로 76").param("addr2", "DDIT").param("reg_dt", "2019-08-08").param("zipcode", "34940").param("pass", "brownTest1234"))
		.andExpect(status().is(200)); //.andExpect(view().name("redirecr:user/user"));
	}
	@Test
	public void replyFormViewTest() throws Exception {
		MockHttpSession session = new MockHttpSession();
		User user = new User();
		user.setUserId("sally");
		
		mockMvc.perform(get("/post/replyForm").session(session).param("boardseq", "4").param("postseq", "12")).andExpect(view().name("post/replyForm"));
	}

}
