package com.jbit.controller;

import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.jbit.entity.JsonResult;
import com.jbit.entity.StaffList;
import com.jbit.service.StaffListService;

@Controller
public class StaffListController {

	@Resource
	private StaffListService staffListService;
	
	/**
	 * 显示员工列表信息
	 */
	@RequestMapping(value = "staffList")
	public String staffList(HttpSession session){
		List<StaffList> slist=staffListService.getStaffList();
		session.setAttribute("slist", slist);
		return "pages/staff_List";
	}
	
	/**
	 *添加员工
	 */
	@RequestMapping(value = "addStaff")
	public String addStaff(StaffList staffList){
		int res=staffListService.addStaff(staffList);
		if(res>0){
			//添加成功
			return "redirect:/list";
		}
		return "pages/add_Staff.jsp";
	}
	
	/**
	 *删除员工
	 */
	@RequestMapping(value = "delStaff",method=RequestMethod.GET)
	@ResponseBody
	public JsonResult delStaff(int staffNo){
		JsonResult result = new JsonResult("删除失败！！");
		int res=staffListService.delapp(staffNo);
		if(res!=0){
			//删除成功
			result = new JsonResult(true,"删除成功！！");
		}
		return result;
	
	}
}
