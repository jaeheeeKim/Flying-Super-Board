package com.ezen.FSB;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.ezen.FSB.dto.BusinessProfileDTO;
import com.ezen.FSB.service.BusinessProfileMapper;

@Controller
public class BusinessProfileController {
		@Autowired
		private BusinessProfileMapper bpMapper;
		

		@Resource(name = "uploadPath")
		private String upPath;
	
	@RequestMapping("/b_mypage.do")
	public ModelAndView b_mypage(HttpServletRequest req) {
		ModelAndView mav = new ModelAndView("Bfeed/b_mypage");
		//이미지 저장 경로 등록
		HttpSession session = req.getSession();
		session.setAttribute("upPath", session.getServletContext().getRealPath("/resources/img"));
		BusinessProfileDTO dto = new BusinessProfileDTO();
		 dto = bpMapper.getBP((int)session.getAttribute("mem_num"));
		
		mav.addObject("dto", dto);
		return mav;
	}
	
	@RequestMapping("/b_feed.do")
	public ModelAndView b_feed(HttpServletRequest req) {
		ModelAndView mav = new ModelAndView("Bfeed/b_timeLine");
		//이미지 저장 경로 등록
				HttpSession session = req.getSession();
				session.setAttribute("upPath", session.getServletContext().getRealPath("/resources/img"));
				return mav;
	}
	@RequestMapping(value="/b_mypage_update.do", method = RequestMethod.GET)
	public ModelAndView b_mypage_update(HttpServletRequest req) {
		ModelAndView mav = new ModelAndView("Bfeed/profileUpdate");
		HttpSession session = req.getSession();
		session.setAttribute("upPath", session.getServletContext().getRealPath("/resources/img"));
		BusinessProfileDTO dto = bpMapper.getBP((int)session.getAttribute("mem_num"));
		return mav;
	}
	
	@RequestMapping(value="/b_mypage_update.do",method = RequestMethod.POST)
	public ModelAndView b_mypage_update_pro(HttpServletRequest req) {
		ModelAndView mav = new ModelAndView("Bfeed/b_mypage");
		HttpSession session = req.getSession();
		session.setAttribute("upPath", session.getServletContext().getRealPath("/resources/img"));
		return mav;
	}
}

