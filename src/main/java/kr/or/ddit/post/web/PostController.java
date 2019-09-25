package kr.or.ddit.post.web;

import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.ServletException;
import javax.servlet.ServletOutputStream;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RequestPart;
import org.springframework.web.multipart.MultipartFile;

import kr.or.ddit.attafile.model.AttaFile;
import kr.or.ddit.attafile.service.IAttaFileService;
import kr.or.ddit.board.service.IBoardService;
import kr.or.ddit.comments.model.Comments;
import kr.or.ddit.comments.service.ICommentsService;
import kr.or.ddit.post.model.Post;
import kr.or.ddit.post.service.IPostService;
import kr.or.ddit.user.model.User;
import kr.or.ddit.user.service.IUserService;
import kr.or.ddit.util.FileUtil;
import kr.or.ddit.util.model.FileInfo;

@RequestMapping("post")
@Controller
public class PostController {
	@Resource(name="postService")
	private IPostService postService;
	
	@Resource(name="userService")
	private IUserService userService;
	
	@Resource(name="boardService")
	private IBoardService boardService;
	
	@Resource(name="attaFileService")
	private IAttaFileService attaFileService;
	
	@Resource(name="commentsService")
	private ICommentsService commentsService;
	
	private static final Logger logger = LoggerFactory.getLogger(PostController.class);
	
	@RequestMapping(path = "readPost", method = RequestMethod.GET)
	public String readPostView(Model model, int postseq, HttpSession session) {
		logger.debug("user : {}", session.getAttribute("S_USERVO"));
		
		model.addAttribute("post", postService.getPost(postseq));
		model.addAttribute("commList", commentsService.getCommList(postseq));
		model.addAttribute("attaList", attaFileService.getAttaFileList(postseq));
		model.addAttribute("boardList", boardService.getPostBoardList());
		model.addAttribute("S_USERVO", session.getAttribute("S_USERVO"));
		
		return "post/readPost"; 
	}
	
	@RequestMapping(path = "readPost", method = RequestMethod.POST)
	public String readPost(Model model, String commcont, int postseq, int commseq, HttpSession session, String mode) {
		User user = (User) session.getAttribute("S_USERVO");
		if(mode.equals("postdel")) {
		}else if(mode.equals("commdel")) {
			
			Comments comm = new Comments();
			comm.setCommseq(commseq);
			commentsService.deleteComm(comm);
			
		}else if(mode.equals("incomm")) {
			
			String commwriter = user.getUserId();
			Comments comm = new Comments();
			comm.setCommwriter(commwriter);
			comm.setCommcont(commcont);
			comm.setPostseq(postseq);
			
			commentsService.insertComm(comm);
		}
		model.addAttribute("post", postService.getPost(postseq));
		model.addAttribute("commList", commentsService.getCommList(postseq));
		model.addAttribute("attaList", attaFileService.getAttaFileList(postseq));
		model.addAttribute("boardList", boardService.getPostBoardList());
		model.addAttribute("S_USERVO", session.getAttribute("S_USERVO"));
		
		return "post/readPost"; 
	}
	
	@RequestMapping("postPicture")
	public void postPicture(int postseq, HttpServletResponse response, HttpServletRequest request) throws IOException {
		postseq = Integer.parseInt(request.getParameter("postseq"));
		AttaFile atta = (AttaFile) attaFileService.getAttaFileList(postseq);
		
		ServletOutputStream sos = response.getOutputStream();
		
		File picture = new File(atta.getAttarealfilename());
		FileInputStream fis = new FileInputStream(picture);
		
		byte[] buff = new byte[512];
		int len = 0;
		while((len = fis.read(buff, 0, 512)) != -1) {
			sos.write(buff, 0, len);
		}
		fis.close();
	}
	
	@RequestMapping(path = "newPost", method = RequestMethod.GET)
	public String newPost(Model model, int boardseq, HttpSession session) {
		session.setAttribute("S_POSTBOARDVO", boardService.getPostBoard(boardseq));
		model.addAttribute("S_USERVO", session.getAttribute("S_USERVO"));
		model.addAttribute("boardList", boardService.getPostBoardList());
		model.addAttribute("S_POSTBOARDVO", session.getAttribute("S_POSTBOARDVO"));
		return "post/newPost";
	}
	
	@RequestMapping(path = "replyForm", method = RequestMethod.GET)
	public String replyForm(Model model,HttpSession session, int postseq, int boardseq) {
		Post post = postService.getPost(postseq);
		model.addAttribute("S_USERVO", session.getAttribute("S_USERVO"));
		session.setAttribute("S_POSTBOARDVO", boardService.getPostBoard(boardseq));
		
		model.addAttribute("post", post);
		model.addAttribute("boardList", boardService.getPostBoardList());
		model.addAttribute("S_POSTBOARDVO", session.getAttribute("S_POSTBOARDVO"));
		return "post/replyForm";
	}
	
	@RequestMapping(path = "newPost", method = RequestMethod.POST)
	public String newPost(int boardseq, Model model, @RequestParam(name = "smarteditor", defaultValue = "")String postcont
			, String posttitle,
					@RequestPart("picture") List<MultipartFile> pictures, HttpSession session, HttpServletRequest request) throws IOException, ServletException {
		model.addAttribute("S_POSTBOARDVO", session.getAttribute("S_POSTBOARDVO"));
		User userVo = (User) session.getAttribute("S_USERVO");

		logger.debug("user : {}", userVo);
		logger.debug("user : {}", userVo.getUserId());
		
		logger.debug("{}",boardseq);
		
		
		String userid = userVo.getUserId();
		String postdel = "Y";
		
		Post post = new Post(boardseq, posttitle, postcont, userid, postdel);
		post.setBoardseq(boardseq);
		post.setPostcont(postcont);
		post.setPostdel(postdel);
		post.setPosttitle(posttitle);
		post.setUserid(userid);
		
		logger.debug("{}",post);
		
		List<AttaFile> attaList = new ArrayList<AttaFile>();
		
		for(MultipartFile picture : pictures) {
			
			FileInfo fileInfo = FileUtil.getFileInfo(picture.getOriginalFilename());
			AttaFile attaFile = new AttaFile();

			if(picture.getSize() > 0) {
				try {
					picture.transferTo(fileInfo.getFile());
					attaFile.setAttafilename(fileInfo.getOriginalFileName());
					attaFile.setAttarealfilename(fileInfo.getFile().getPath());
					attaList.add(attaFile);
					//attaFileService.insertAttaFile(attaFile);
				} catch (IllegalStateException | IOException e) {
					e.printStackTrace();
				}

			}
		}
		
		
		logger.debug("{} {}", post, attaList);
		postService.insertPost(post, attaList);
		model.addAttribute("S_USERVO", session.getAttribute("S_USERVO"));
		int nextSeq = postService.getMaxPostNum();
		
		return readPost(model, "", nextSeq, -1, session, "");
	}
	
	@RequestMapping(path = "replyForm", method = RequestMethod.POST)
	public String replyForm(int gn, int boardseq,int postseq, Model model, @RequestParam(name = "smarteditor", defaultValue = "")String postcont, String posttitle,
							@RequestPart("picture") List<MultipartFile> pictures, HttpSession session, HttpServletRequest request) throws IOException, ServletException {
		model.addAttribute("S_POSTBOARDVO", session.getAttribute("S_POSTBOARDVO"));
		User userVo = (User) session.getAttribute("S_USERVO");
		
		String userid = userVo.getUserId();
		String postdel = "Y";
		
		Post post = new Post(boardseq, posttitle, postcont, userid, postdel, postseq, gn);
		post.setBoardseq(boardseq);
		post.setPostcont(postcont);
		post.setPostdel(postdel);
		post.setPosttitle(posttitle);
		post.setUserid(userid);
		
		logger.debug("{}",post);
		
		List<AttaFile> attaList = new ArrayList<AttaFile>();
		
		
		for(MultipartFile picture : pictures) {
			FileInfo fileInfo = FileUtil.getFileInfo(picture.getOriginalFilename());
			AttaFile attaFile = new AttaFile();
			
			if(picture.getSize() > 0) {
			
				try {
					picture.transferTo(fileInfo.getFile());
					attaFile.setAttafilename(fileInfo.getOriginalFileName());
					attaFile.setAttarealfilename(fileInfo.getFile().getPath());
					attaList.add(attaFile);
					
				} catch (IllegalStateException | IOException e) {
					e.printStackTrace();
				}
			}
			
		}
		
		model.addAttribute("S_USERVO", session.getAttribute("S_USERVO"));
		logger.debug("{} {}", post, attaList);
		postService.insertReplyPost(post, attaList);
		
		int nextSeq = postService.getMaxPostNum();
		
		return readPost(model, "", nextSeq, -1, session, "");
	}
	
	@RequestMapping(path = "postModifyForm", method = RequestMethod.GET)
	public String postModifyFormView(int postseq, Model model,HttpSession session) throws IOException, ServletException {
		model.addAttribute("S_POSTBOARDVO", session.getAttribute("S_POSTBOARDVO"));
		model.addAttribute("post", postService.getPost(postseq));
		model.addAttribute("commList", commentsService.getCommList(postseq));
		model.addAttribute("attaList", attaFileService.getAttaFileList(postseq));
		model.addAttribute("boardList", boardService.getPostBoardList());
		model.addAttribute("S_USERVO", session.getAttribute("S_USERVO"));
		
		return "post/postModifyForm";
	}
	@RequestMapping(path = "postModifyForm", method = RequestMethod.POST)
	public String postModifyForm(int boardseq, @RequestParam(defaultValue = "0")int attaseq,String mode, 
			int postseq, Model model, @RequestParam(name = "smarteditor", defaultValue = "")String postcont, 
			String posttitle, @RequestPart("picture") List<MultipartFile> pictures, HttpSession session, 
			HttpServletRequest request) throws IOException, ServletException {
		if(mode.equals("fileDel")) {
			attaFileService.deleteAttaFile(attaseq);
		}else if(mode.equals("modifyPost")) {
			List<AttaFile> attaList = new ArrayList<AttaFile>();

			Post post = new Post(posttitle, postcont, postseq);
			post.setPostcont(postcont);
			post.setPosttitle(posttitle);
			post.setPostseq(postseq);
			postService.updatePost(post);

			for(MultipartFile picture : pictures) {
				FileInfo fileInfo = FileUtil.getFileInfo(picture.getOriginalFilename());
				AttaFile attaFile = new AttaFile();
				attaFile.setPostseq(postseq);
				
				if(picture.getSize() > 0) {
				
					try {
						picture.transferTo(fileInfo.getFile());
						attaFile.setAttafilename(fileInfo.getOriginalFileName());
						attaFile.setAttarealfilename(fileInfo.getFile().getPath());
						attaList.add(attaFile);
						attaFileService.insertAttaFile(attaFile);
					} catch (IllegalStateException | IOException e) {
						e.printStackTrace();
					}
				}
			}
		}
		return readPost(model, "", postseq, -1, session, "");
	}
	
	@RequestMapping(path = "attaFileDown")
	public String upload(HttpSession session, Model model, int attaseq, int postseq) {
		
		AttaFile attaFile = attaFileService.getAttaFile(attaseq);
		
		logger.debug("attaFilereal : {}", attaFile.getAttarealfilename());
		logger.debug("attaFile : {}", attaFile.getAttafilename());
		
		model.addAttribute("attaPath", attaFile.getAttarealfilename());
		model.addAttribute("filename", attaFile.getAttafilename());
		return "BoardFileDownload";
	}
}
