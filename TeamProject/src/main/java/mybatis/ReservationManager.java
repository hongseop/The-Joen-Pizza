package mybatis;

import java.io.IOException;
import java.io.Reader;
import java.util.List;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

import vo.ReservationVo;

public class ReservationManager {
	private static SqlSessionFactory sqlMapper;

	static {
		try {
			Reader reader = Resources.getResourceAsReader("mybatis/SqlMapConfig.xml");
			sqlMapper = new SqlSessionFactoryBuilder().build(reader);
			reader.close();
		} catch (IOException e) {
			throw new RuntimeException("Something bad happened while building the SqlMapClient instance." + e, e);
		}
	}

	public static ReservationVo getmenu(int menuNum) {

		SqlSession session = sqlMapper.openSession();
		ReservationVo vo = session.selectOne("getmenu", menuNum);
		session.close();
		return vo;
	}

	public static List getResList() {

		SqlSession session = sqlMapper.openSession();
		List list = session.selectList("getResList");
		session.close();
		return list;
	}

	public static List getList() {

		SqlSession session = sqlMapper.openSession();
		List list = session.selectList("getList");
		session.close();
		return list;
	}

	public static void resUpdate(ReservationVo vo) {
		SqlSession session = sqlMapper.openSession();
		session.update("resUpdate", vo);
		session.commit();
		session.close();
	}

	public static void resInsert(ReservationVo vo) {
		SqlSession session = sqlMapper.openSession();
		session.update("resInsert", vo);
		session.commit();
		session.close();
	}

	public static ReservationVo getRes(int resNum) {
		SqlSession session = sqlMapper.openSession();
		ReservationVo vo = session.selectOne("getRes", resNum);
		session.close();
		return vo;
	}

	public static List myResList(int userNum) {
		SqlSession session = sqlMapper.openSession();
		List list = session.selectList("myResList", userNum);
		session.close();
		return list;
	}

	public static void resDel(int resNum) {
		SqlSession session = sqlMapper.openSession();
		session.update("resDelete", resNum);
		session.commit();
		session.close();
	}

}
