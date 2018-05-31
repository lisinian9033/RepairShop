package com.jbit.controller;

import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.jbit.entity.StaffList;
import com.jbit.service.StaffListService;

@Controller
public class StaffListController {

	@Resource
	private StaffListService staffListService;
	
	@RequestMapping(value = "/staffList")
	public String staffList(HttpSession session){
		List<StaffList> slist=staffListService.getStaffList();
		session.setAttribute("slist", slist);
		return "pages/staff_List";
	}
}
