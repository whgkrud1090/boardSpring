package kr.or.ddit.board.repository;

import java.util.List;

import kr.or.ddit.board.model.Board;

public interface IBoardDao {
	public int insertPostBoard(Board board);
	
	public int updatePostBoard(Board board);
	
	public int deletePostBoard(int boardseq);
	
	public List<Board> getPostBoardList();
	
	public Board getPostBoard(int boardSeq);
}
