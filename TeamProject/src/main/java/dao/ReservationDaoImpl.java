package dao;

import java.util.List;

import mybatis.ReservationManager;

import org.springframework.stereotype.Component;

import vo.ReservationVo;

@Component
public class ReservationDaoImpl implements ReservationDao {
	
	@Override
	public ReservationVo getmenu(int menuNum) {
		ReservationVo vo = ReservationManager.getmenu(menuNum);
		return vo;
	}
	
	@Override
	public List reservationList() {
		List list = ReservationManager.getResList();
		return list;
	}

	@Override
	public List resList() {
		List list = ReservationManager.getList();
		return list;
	}

	@Override
	public void resUpdate(ReservationVo vo) {
		ReservationManager.resUpdate(vo);		
	}
	
	@Override
	public void resInsert(ReservationVo vo) {
		ReservationManager.resInsert(vo);		
	}

	@Override
	public ReservationVo resInfo(int resNum) {
		ReservationVo vo = ReservationManager.getRes(resNum);
		return vo;
	}

	@Override
	public List myResList(int userNum) {
		List list = ReservationManager.myResList(userNum);
		return list;
	}

	@Override
	public void resDel(int resNum) {
		ReservationManager.resDel(resNum);		
	}

}
