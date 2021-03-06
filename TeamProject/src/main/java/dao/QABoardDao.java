package dao;

import java.util.List;

import vo.QABoardVo;
import vo.QAReplyVo;
import mybatis.BoardManager;


public interface QABoardDao {

	public void QAinsert(QABoardVo vo);
	public List QAlist();
	public QABoardVo QABoarddetail(int QAseq);
	public void QAdelete(int qaSeq);
	public void QAupdate(QABoardVo vo);
	public List getRecentList();
	public List search(String sch);
	public void QACommentInsert(QAReplyVo qr);
	public List QAcommentlist(int QABoaNum);
	public void qahit(int seq);
	public void QACommentDel(int commentseq);
	public List QApagelist(int startRow, int endRow) throws Exception;
	public int QAcountNo() throws Exception;

}
