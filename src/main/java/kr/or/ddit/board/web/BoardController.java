package kr.or.ddit.board.web;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import kr.or.ddit.board.model.Board;
import kr.or.ddit.board.service.IBoardService;
import kr.or.ddit.common.model.Page;
import kr.or.ddit.post.model.Post;
import kr.or.ddit.post.service.IPostService;
import kr.or.ddit.user.model.User;
import kr.or.ddit.user.service.IUserService;

@RequestMapping("board")
@Controller
public class BoardController {
	
	@Resource(name="boardService")
	private IBoardService boardService;
	
	@Resource(name="userService")
	private IUserService userService;
	
	@Resource(name="postService")
	private IPostService postService;

	@RequestMapping(path = "board", method = RequestMethod.GET)
	public String boardListView(Model model, HttpSession session) {
		model.addAttribute("S_USERVO", session.getAttribute("S_USERVO"));
		model.addAttribute("boardList", boardService.getPostBoardList());
		return "board/board";
	}
	
	@RequestMapping(path = "board", method = RequestMethod.POST)
	public String boardInsert(Board board, Model model, String boardseq, HttpSession session, String boardFunc) {
		
		if(boardFunc.equals("inse")) {
			User userVo = (User) session.getAttribute("S_USERVO");
			board.setUserid(userVo.getUserId());
			boardService.insertPostBoard(board);
		}
		else if(boardFunc.equals("modi")) {
			board.setBoardseq(Integer.parseInt(boardseq));
			boardService.updatePostBoard(board);
		}
		
		model.addAttribute("S_USERVO", session.getAttribute("S_USERVO"));
		model.addAttribute("boardseq", boardseq);
		model.addAttribute("boardList", boardService.getPostBoardList());
		
		return "board/board";
	}
	
	@RequestMapping("postList")
	public String postList(Model model, @RequestParam(name = "page", defaultValue = "1")int p, @RequestParam(defaultValue = "10")int pagesize, int boardseq, HttpSession session) {
		
		session.setAttribute("S_POSTBOARDVO", boardService.getPostBoard(boardseq));
		Page page = new Page(p, pagesize, boardseq);
		
		Board board = boardService.getPostBoard(boardseq);
		Map<String, Object> resultMap = postService.getPostList(page);
		List<Post> postList = (List<Post>) resultMap.get("postList");
		int paginationSize = (Integer) resultMap.get("paginationSize");
		session.setAttribute("S_POSTBOARDVO", boardService.getPostBoard(boardseq));
			
		model.addAttribute("boardNm", board.getBoardnm());
		model.addAttribute("S_USERVO", session.getAttribute("S_USERVO"));
		model.addAttribute("pageVo", page);
		model.addAttribute("postList", postList);
		model.addAttribute("boardList", boardService.getPostBoardList());
		model.addAttribute("paginationSize", paginationSize);
		return "board/postList";
 	}
	
	@RequestMapping(path = "delPostList", method = RequestMethod.POST)
	public String delPostList(int postseq, Model model, @RequestParam(name = "page", defaultValue = "1")int p, @RequestParam(defaultValue = "10")int pagesize, int boardseq, HttpSession session) {
		
		postService.deletePost(postseq);
		session.setAttribute("S_POSTBOARDVO", boardService.getPostBoard(boardseq));
		Page page = new Page(p, pagesize, boardseq);
		
		Map<String, Object> resultMap = postService.getPostList(page);
		List<Post> postList = (List<Post>) resultMap.get("postList");
		int paginationSize = (Integer) resultMap.get("paginationSize");
		session.setAttribute("S_POSTBOARDVO", boardService.getPostBoard(boardseq));
		
		model.addAttribute("S_USERVO", session.getAttribute("S_USERVO"));
		model.addAttribute("pageVo", page);
		model.addAttribute("postList", postList);
		model.addAttribute("boardList", boardService.getPostBoardList());
		model.addAttribute("paginationSize", paginationSize);
		model.addAttribute("S_POSTBOARDVO");
		
		return "board/delPostList";
	}
}
