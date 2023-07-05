package com.ezen.FSB;

import javax.annotation.Resource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.ezen.FSB.service.MapMapper;


@Controller
public class MapController {
	
	@Autowired
	MapMapper mapMapper;
	
	@Resource(name = "uploadPath")
	private String upPath;
	
	@RequestMapping("/map.do")
	public ModelAndView mapdisp() {
		ModelAndView mav = new ModelAndView("map/map");
		return mav;
	}
}
