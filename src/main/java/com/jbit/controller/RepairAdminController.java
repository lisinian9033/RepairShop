package com.jbit.controller;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import com.jbit.entity.JsonResult;
import com.jbit.entity.RepairAdmin;
import com.jbit.service.RepairAdminService;

@Controller
public class RepairAdminController {

	@Resource
	private RepairAdminService repairAdminService;
	
	@RequestMapping(value="/AdminLogin",method=RequestMethod.POST)
	@ResponseBody
	public JsonResult AuUserLogin(RepairAdmin user,HttpSession session){
		System.out.println("进入控制类");
		System.out.println(user);
		JsonResult result = new JsonResult("登录失败！！");
		RepairAdmin au= repairAdminService.login(user);
		if(au!=null){
			session.setAttribute("user", au);
			result=new JsonResult(true,"登录成功！！");
		}
		return result;
	}
}
