package kr.or.ddit.post.model;

import java.text.SimpleDateFormat;
import java.util.Date;

import org.springframework.format.annotation.DateTimeFormat;

public class Post {
	private int postseq;
	private int boardseq;
	private String posttitle;
	private String postcont;
	private String userid;
	
	@DateTimeFormat(pattern = "yyyy-MM-dd")
	private Date post_dt;
	
	private String postdel;
	private int parentseq;
	private int gn;
	public Post() {
		
	}
	public Post(int boardseq, String posttitle, String postcont, String userid, String postdel) {
		this.boardseq = boardseq;
		this.posttitle = posttitle;
		this.postcont = postcont;
		this.userid = userid;
		this.postdel = postdel;
	}
	
	public Post(int boardseq, String posttitle, String postcont, String userid, String postdel, int parentseq, int gn) {
		this.boardseq = boardseq;
		this.posttitle = posttitle;
		this.postcont = postcont;
		this.userid = userid;
		this.postdel = postdel;
		this.parentseq = parentseq;
		this.gn = gn;
	}
	public Post(String posttitle, String postcont, int postseq) {
		this.postseq = postseq;
		this.posttitle = posttitle;
		this.postcont = postcont;
	}
	public int getPostseq() {
		return postseq;
	}
	public void setPostseq(int postseq) {
		this.postseq = postseq;
	}
	public int getBoardseq() {
		return boardseq;
	}
	public void setBoardseq(int boardseq) {
		this.boardseq = boardseq;
	}
	public String getPosttitle() {
		return posttitle;
	}
	public void setPosttitle(String posttitle) {
		this.posttitle = posttitle;
	}
	public String getPostcont() {
		return postcont;
	}
	public void setPostcont(String postcont) {
		this.postcont = postcont;
	}
	public String getUserid() {
		return userid;
	}
	public void setUserid(String userid) {
		this.userid = userid;
	}
	public Date getPost_dt() {
		return post_dt;
	}
	public void setPost_dt(Date post_dt) {
		this.post_dt = post_dt;
	}
	public String getPost_dt_fmt() {
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
		return sdf.format(post_dt);
	}
	public String getPostdel() {
		return postdel;
	}
	public void setPostdel(String postdel) {
		this.postdel = postdel;
	}
	public int getParentseq() {
		return parentseq;
	}
	public void setParentseq(int parentseq) {
		this.parentseq = parentseq;
	}
	public int getGn() {
		return gn;
	}
	public void setGn(int gn) {
		this.gn = gn;
	}
	@Override
	public String toString() {
		return "Post [postseq=" + postseq + ", boardseq=" + boardseq + ", posttitle=" + posttitle + ", postcont="
				+ postcont + ", userid=" + userid + ", post_dt=" + post_dt + ", postdel=" + postdel + ", parentseq="
				+ parentseq + ", gn=" + gn + "]";
	}
}
