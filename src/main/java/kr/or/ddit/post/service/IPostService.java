package kr.or.ddit.post.service;

import java.util.List;
import java.util.Map;

import kr.or.ddit.attafile.model.AttaFile;
import kr.or.ddit.common.model.Page;
import kr.or.ddit.post.model.Post;

public interface IPostService {
	int insertPost(Post bpost, List<AttaFile> attaList);
	
	int insertReplyPost(Post bpost, List<AttaFile> attaList);
	
	int updatePost(Post bpost);
	
	int deletePost(int postseq);
	
	Map<String, Object> getPostList(Page page);
	
	Post getPost(int postseq);
	
	int getMaxPostNum();
}
