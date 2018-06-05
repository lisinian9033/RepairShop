package com.jbit.controller;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

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
}
