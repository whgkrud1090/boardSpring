package kr.or.ddit.attaFile.repository;

import static org.junit.Assert.assertEquals;

import java.util.List;

import javax.annotation.Resource;

import org.junit.Test;

import kr.or.ddit.attafile.model.AttaFile;
import kr.or.ddit.attafile.repository.IAttaFileDao;
import kr.or.ddit.config.test.WebTestConfig;

public class AttaFileDaoTest extends WebTestConfig{

	private int postseq = 16;
	
	@Resource(name = "attaFileDao")
	private IAttaFileDao attaFileDao;
	
	@Test
	public void insertAttaFileTest() {
		/***Given***/
		AttaFile attaFile = new AttaFile();
		attaFile.setAttafilename("brown.png");
		attaFile.setAttarealfilename("e:\\upload\\2019\\09\\f9ea3b7d-33ff-43a7-b4f7-82f8579d45d8.png");
		attaFile.setPostseq(1);

		/***When***/
		int insertCnt = attaFileDao.insertAttaFile(attaFile);

		/***Then***/
		assertEquals(1, insertCnt);
	}

	@Test
	public void getAttaFileListTest() {
		/***Given***/

		/***When***/
		List<AttaFile> list = attaFileDao.getAttaFileList(postseq);

		/***Then***/
		assertEquals(1, list.size());
	}
	
	@Test
	public void getAttaFileTest() {
		/***Given***/
		int attaseq = 24;

		/***When***/
		AttaFile attaFile = attaFileDao.getAttaFile(attaseq);

		/***Then***/
		assertEquals("noimage.png", attaFile.getAttafilename());
	}
	@Test
	public void deleteFileTest() {
		/***Given***/
		int attaseq = 24;
		
		/***When***/
		int deleteFile = attaFileDao.deleteAttaFile(attaseq);
		
		/***Then***/
		assertEquals(1, deleteFile);
	}

}
