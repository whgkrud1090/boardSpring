package kr.or.ddit.board.service;

import static org.junit.Assert.assertEquals;
import static org.junit.Assert.assertTrue;

import java.text.ParseException;
import java.util.List;

import javax.annotation.Resource;

import org.junit.Test;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import kr.or.ddit.board.model.Board;
import kr.or.ddit.board.repository.BoardDaoTest;
import kr.or.ddit.config.test.RootTestConfig;

public class BoardServiceTest extends RootTestConfig{
	private static final Logger logger = LoggerFactory.getLogger(BoardDaoTest.class);
	private int boardseq = 1;
	
	@Resource(name = "boardService")
	private IBoardService boardService;


	@Test
	public void getPostBoardListTest() {
		/***Given***/

		/***When***/
		List<Board> boardList = boardService.getPostBoardList();
		logger.debug("boardList : {}", boardList);
		
		/***Then***/
		assertTrue(boardList.size() > 2);
	}
	@Test
	public void getPostBoardTest() {
		/***Given***/
		
		/***When***/
		Board board = boardService.getPostBoard(boardseq);
		
		/***Then***/
		assertEquals(board.getBoardnm(), "게시판");
		assertEquals(board.getBoardusage(), "N");
	}
	
	@Test
	public void insertPostBoardTest() throws ParseException {
		/***Given***/
		Board board = new Board();
		
		board.setBoardnm("insetTest게시판2");
		board.setBoardusage("N");
		board.setUserid("sally");
		
		/***When***/
		int insertBoard = boardService.insertPostBoard(board);
		
		/***Then***/
		assertEquals(1, insertBoard);
	}
	
	@Test
	public void updatePostBoardTest() throws ParseException {
		/***Given***/
		Board board = new Board();
		
		board.setBoardseq(boardseq);
		board.setBoardnm("updateTest게시판");
		board.setBoardusage("N");
		board.setUserid("sally");
		
		/***When***/
		int updateBoard = boardService.updatePostBoard(board);
		
		/***Then***/
		assertEquals(1, updateBoard);
	}
	
	@Test
	public void deletePostBoardTest() throws ParseException {
		/***Given***/
		
		/***When***/
		int deleteBaord = boardService.deletePostBoard(boardseq);
		
		/***Then***/
		assertEquals(1, deleteBaord);
	}

}
