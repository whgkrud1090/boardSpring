package kr.or.ddit.board.repository;

import java.util.List;

import javax.annotation.Resource;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import kr.or.ddit.board.model.Board;

@Repository
public class BoardDao implements IBoardDao {
	
	@Resource(name="sqlSessionTemplate")
	private SqlSessionTemplate sqlSession;
	
	@Override
	public int insertPostBoard(Board board) {
		return sqlSession.insert("postboard.insertPostBoard", board);
	}
	@Override
	public int updatePostBoard(Board board) {
		return sqlSession.update("postboard.updatePostBoard", board);
	}
	@Override
	public int deletePostBoard(int boardseq) {
		return sqlSession.delete("postboard.deletePostBoard", boardseq);
	}
	@Override
	public List<Board> getPostBoardList() {
		return sqlSession.selectList("postboard.getPostBoardList");
	}
	@Override
	public Board getPostBoard(int boardseq) {
		return sqlSession.selectOne("postboard.getPostBoard", boardseq);
	}
}
