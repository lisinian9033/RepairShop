package com.jbit.controller;

import java.util.List;
import javax.annotation.Resource;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
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
	public String staffList(Model model){
		List<StaffList> slist=staffListService.getStaffList();
		model.addAttribute("slist", slist);
		return "pages/staff_List";
	}
	
	/**
	 * 跳转到添加员工页面
	 */
	@RequestMapping(value = "toAddStaff")
	public String toAddStaff(Model model){
		List<StaffList> status=staffListService.findStatus();
		List<StaffList> career=staffListService.findCareer();
		model.addAttribute("status", status);//状态
		model.addAttribute("career", career);//岗位
		return "pages/add_Staff";
	}
	/**
	 *添加员工
	 */
	@RequestMapping(value = "addStaff")
	public String addStaff(StaffList staffList){
		int res=staffListService.addStaff(staffList);
		if(res>0){
			//添加成功
			return "redirect:/staffList";
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
	/**
	 *通过状态查询员工信息
	 */
	@RequestMapping(value = "selectByStatus",method=RequestMethod.POST)
	public String selectByStatus(String staffStatus,Model model){
		List<StaffList> ss=staffListService.findAllByStatus(staffStatus);
		model.addAttribute("ss",ss);
		return "pages/staff_List";
	}
	
	/**
	 *通过员工编号查询员工信息
	 */
	@RequestMapping(value = "selectByStatusNo")
	public String selectByStatusNo(Integer staffNo,Model model){
		System.out.println("--->staffNo"+staffNo);
		StaffList staff=staffListService.getStaffByNo(staffNo);
		List<StaffList> status=staffListService.findStatus();
		List<StaffList> career=staffListService.findCareer();
		model.addAttribute("status", status);//状态
		model.addAttribute("career", career);//岗位
		model.addAttribute("staff",staff);//员工
		System.out.println("---><---");
		return "pages/edit_Staff";
	}
}
