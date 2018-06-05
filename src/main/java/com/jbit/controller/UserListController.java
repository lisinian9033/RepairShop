package com.jbit.controller;

import java.util.List;

import javax.annotation.Resource;

import org.junit.runner.Request;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

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
			return "pages/user_List";//添加成功返回用户列表
		}
		return "pages/add_User";
	}
}
