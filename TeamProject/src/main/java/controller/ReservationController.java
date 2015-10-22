package controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.context.support.HttpRequestHandlerServlet;

import vo.ReservationVo;
import vo.UserVo;
import dao.ReservationDao;
import dao.UserDao;

@Controller
public class ReservationController {
	@Autowired
	private ReservationDao reservationDao;
	@Autowired
	private UserDao userDao;
	
	@RequestMapping(value = "/calendar", method = RequestMethod.GET)
	public String calendar(Model model) {
		List list = reservationDao.reservationList();
		model.addAttribute("list",list);
		System.out.println(list);
		model.addAttribute("bottom", "calendar.jsp");
		return "main";
	}
	@RequestMapping(value = "/resList", method = RequestMethod.GET)
	public String resList(Model model) {
		System.out.println("ReservationContioller - /resList");
		List list = reservationDao.resList();
		model.addAttribute("list",list);
		System.out.println(list);
		model.addAttribute("bottom", "resList.jsp");
		return "main";
	}
	@RequestMapping(value = "/resUpdate", method = RequestMethod.GET)
	public String resUpdate(Model model,ReservationVo vo) {
		System.out.println("ReservationContioller - /resUpdate");
		reservationDao.resUpdate(vo);
		List list = reservationDao.resList();
		model.addAttribute("list",list);
		model.addAttribute("bottom", "resList.jsp");
		return "main";
	}
	@RequestMapping(value = "/resUserUpdate", method = RequestMethod.GET)
	public String resUserUpdate(Model model,ReservationVo vo) {
		System.out.println("ReservationContioller - /resUserUpdate");
		reservationDao.resUpdate(vo);
		ReservationVo db = reservationDao.resInfo(vo.getResNum());
		model.addAttribute("list",db);
		model.addAttribute("message","updateSuccess");
		model.addAttribute("bottom", "resInfo.jsp");
		return "main";
	}
	@RequestMapping(value = "/resInsert", method = RequestMethod.GET)
	public String resInsertAction(Model model, HttpSession session, HttpServletRequest request) {
		System.out.println("ReservationContioller - /resInsert");
		int menuNum=201;
		int userNum=0;
		if(request.getParameter("menuNum")!=null) {
			menuNum=new Integer(request.getParameter("menuNum"));
			ReservationVo menu=reservationDao.getmenu(menuNum);
			model.addAttribute("menu",menu);
		} else {
			menuNum=201;
			ReservationVo menu=reservationDao.getmenu(menuNum);
			model.addAttribute("menu",menu);
		}
		if(session.getAttribute("userNum")!=null) {
			userNum = (Integer)(session.getAttribute("userNum"));
			UserVo user=userDao.UserInfo(userNum);
			model.addAttribute("user",user);
			model.addAttribute("bottom", "reservation.jsp");
		} else {
		
		model.addAttribute("bottom", "loginPage.jsp");
		model.addAttribute("event", "writeFailed");
		}
		
		return "main";
	}
	@RequestMapping(value = "/resInsertAction", method = RequestMethod.POST)
	public String resInsertAction(Model model,ReservationVo vo) {
		System.out.println("ReservationContioller - /resInsertAction");
		reservationDao.resInsert(vo);
		List list = reservationDao.reservationList();
		model.addAttribute("list",list);
		model.addAttribute("bottom", "calendar.jsp");
		return "main";
	}
	@RequestMapping(value = "/resInfo", method = RequestMethod.GET)
	public String resInfo(Model model,HttpServletRequest request,HttpSession session) {
		System.out.println("ReservationContioller - /resInfo");
		int resnum = new Integer(request.getParameter("resNum"));
		ReservationVo vo = reservationDao.resInfo(resnum);
		if(session.getAttribute("userNum")!=null) {
			if(vo.getUserNum()==(Integer)(session.getAttribute("userNum"))) {
				model.addAttribute("list",vo);
				model.addAttribute("bottom", "resInfo.jsp");
			} else {
				model.addAttribute("message","differentUser");
			}
		}
		model.addAttribute("bottom", "resInfo.jsp");
		return "main";
	}
	@RequestMapping(value = "/myResList", method = RequestMethod.GET)
	public String myResList(Model model,HttpSession session) {
		System.out.println("ReservationContioller - /myResList");
		if(session.getAttribute("userNum")!=null) {
			int userNum = (Integer)(session.getAttribute("userNum"));
			List list = reservationDao.myResList(userNum);
			model.addAttribute("list",list);
			model.addAttribute("bottom", "resList.jsp");
		} else {
			model.addAttribute("bottom", "loginPage.jsp");
			model.addAttribute("event","resListFailed");
		}
		
		return "main";
	}
	@RequestMapping(value = "/resDel", method = RequestMethod.GET)
	public String resDel(Model model,HttpServletRequest request,HttpSession session) {
		System.out.println("ReservationContioller - /resDel");
		reservationDao.resDel(new Integer(request.getParameter("resNum")));
		List list = reservationDao.resList();
		model.addAttribute("list",list);
		model.addAttribute("bottom", "resList.jsp");
		return "main";
	}
}
