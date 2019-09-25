package kr.or.ddit.board.service;

import java.util.List;

import kr.or.ddit.board.model.Board;

public interface IBoardService {
	public int insertPostBoard(Board board);
	
	public int updatePostBoard(Board board);
	
	public int deletePostBoard(int boardseq);
	
	public List<Board> getPostBoardList();
	
	public Board getPostBoard(int boardseq);
}
