package kr.or.ddit.post.repository;

import java.util.List;

import org.springframework.stereotype.Repository;

import kr.or.ddit.common.model.Page;
import kr.or.ddit.post.model.Post;

@Repository
public interface IPostDao {
	
	int insertPost(Post bpost);
	int insertReplyPost(Post bpost);
	int updatePost(Post bpost);
	int deletePost(int postseq);
	List<Post> getPostList(Page page);
	int getPostTotalCnt(int boardseq);
	Post getPost(int postseq);
	int dropPost(int postseq);
	int getMaxPostNum();
}
