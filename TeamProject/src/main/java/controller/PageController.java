package controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import dao.BoardDao;
import dao.QABoardDao;

@Controller
public class PageController {
	@Autowired
	private BoardDao publicDao;
	@Autowired
	private QABoardDao qaDao;

	@RequestMapping(value = "/main", method = RequestMethod.GET)
	public String home(Model model, HttpSession session) {
		String usernum = (String) session.getAttribute("usernum");

		List publicBoard = publicDao.getRecentList();
		List qaBoard = qaDao.getRecentList();
		model.addAttribute("publicBoard", publicBoard);
		model.addAttribute("qaBoard", qaBoard);
		model.addAttribute("bottom", "pizzaMain.jsp");
		model.addAttribute("usernum", usernum);

		return "main";

	}

	@RequestMapping(value = "/pizzaOne", method = RequestMethod.GET)
	public String pizzaOne(Model model) {
		model.addAttribute("bottom", "pizzaOne.jsp");
		return "main";
	}

	@RequestMapping(value = "/pizzaSet", method = RequestMethod.GET)
	public String pizzaSet(Model model) {
		model.addAttribute("bottom", "pizzaSet.jsp");
		return "main";
	}

	@RequestMapping(value = "/side", method = RequestMethod.GET)
	public String side(Model model) {
		model.addAttribute("bottom", "side.jsp");
		return "main";
	}

	@RequestMapping(value = "/drink", method = RequestMethod.GET)
	public String drink(Model model) {
		model.addAttribute("bottom", "drink.jsp");
		return "main";
	}

}
