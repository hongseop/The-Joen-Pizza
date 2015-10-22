package dao;

import java.util.List;

import vo.BoardVo;

public interface BoardDao {
	public List boardList();
	public void boainse(BoardVo vo);
	public BoardVo Boadetail(int boanum);
	public void boaUp(BoardVo vo);
	public void boadel(int boanum);
	public void Hit(int boanum); 
	public int getRows();
	public List getRecentList();
	public List getArticleList(int start, int end);
	public List search(String sch);
	public BoardVo Titlenext(int seq);
	public BoardVo Titleprev(int seq);

}
