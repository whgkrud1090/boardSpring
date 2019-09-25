package kr.or.ddit.board.repository;

import static org.junit.Assert.assertEquals;
import static org.junit.Assert.assertTrue;

import java.text.ParseException;
import java.util.List;

import javax.annotation.Resource;

import org.junit.Test;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import kr.or.ddit.board.model.Board;
import kr.or.ddit.config.test.RootTestConfig;

public class BoardDaoTest extends RootTestConfig{

	private static final Logger logger = LoggerFactory.getLogger(BoardDaoTest.class);
	private int boardseq = 1;
	
	@Resource(name="boardDao")
	private BoardDao boardDao;
	
	@Test
	public void getPostBoardListTest() {
		/***Given***/

		/***When***/
		List<Board> boardList = boardDao.getPostBoardList();
		logger.debug("boardList : {}", boardList);
		
		/***Then***/
		assertTrue(boardList.size() > 2);
	}
	@Test
	public void getPostBoardTest() {
		/***Given***/
		
		/***When***/
		Board board = boardDao.getPostBoard(boardseq);
		
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
		int insertBoard = boardDao.insertPostBoard(board);
		
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
		int updateBoard = boardDao.updatePostBoard(board);
		
		/***Then***/
		assertEquals(1, updateBoard);
	}
	
	@Test
	public void deletePostBoardTest() throws ParseException {
		/***Given***/
		
		/***When***/
		int deleteBaord = boardDao.deletePostBoard(boardseq);
		
		/***Then***/
		assertEquals(1, deleteBaord);
	}

}
