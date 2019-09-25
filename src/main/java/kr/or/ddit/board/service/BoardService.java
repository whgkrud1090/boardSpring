package kr.or.ddit.board.service;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import kr.or.ddit.board.model.Board;
import kr.or.ddit.board.repository.IBoardDao;

@Service
public class BoardService implements IBoardService{
	@Resource(name="boardDao")
	private IBoardDao boardDao;

	public BoardService() {
	}
	
	@Override
	public int insertPostBoard(Board board) {
		return boardDao.insertPostBoard(board);
	}

	@Override
	public int updatePostBoard(Board board) {
		return boardDao.updatePostBoard(board);
	}

	@Override
	public int deletePostBoard(int boardseq) {
		return boardDao.deletePostBoard(boardseq);
	}

	@Override
	public List<Board> getPostBoardList() {
		return boardDao.getPostBoardList();
	}

	@Override
	public Board getPostBoard(int boardseq) {
		return boardDao.getPostBoard(boardseq);
	}
	
}
