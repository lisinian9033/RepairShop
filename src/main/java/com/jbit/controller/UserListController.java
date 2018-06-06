package com.jbit.controller;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.jbit.entity.JsonResult;
import com.jbit.entity.UserList;
import com.jbit.service.UserListService;

@Controller
public class UserListController {

	@Resource
	private UserListService userListService;
	
	/**
	 * 显示会员列表
	 * @return 页面
	 */
	@RequestMapping(value="userList")
	public String userList(Model model){
		List<UserList> userList=userListService.findAll();
		model.addAttribute("userList", userList);
		return "pages/user_List";
	}
	/**
	 * 会员添加
	 * @return 页面
	 */
	@RequestMapping(value="addUser",method=RequestMethod.POST)
	public String toAddUser(UserList userList,Model model){
		int res=userListService.addUser(userList);
		if(res>0){
			List<UserList> list=userListService.findAll();
			model.addAttribute("userList", list);
			return "pages/user_List";//添加成功返回用户列表
		}
		return "pages/add_User";
	}
	
	/**
	 * 删除会员
	 * @return JsonResult
	 */
	@RequestMapping(value="delUser")
	@ResponseBody
	public JsonResult delUser(Integer userNo){
		JsonResult result=new JsonResult("删除失败！！");
		int res=userListService.delUser(userNo);
		if(res!=0){
			result=new JsonResult(true,"删除成功！！");
		}
		return result;
	}
	
}
