package com.jbit.controller;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.jbit.entity.OrderList;
import com.jbit.service.OrderListService;

@Controller
public class OrderListController {

	@Resource
	private OrderListService orderListService;
	
	@RequestMapping(value="OrList")
	public String OrList(Model model,String orderUser) throws Exception{
		String user = null;
		if(orderUser!=null){
			 user=new String(orderUser.getBytes("ISO-8859-1"),"UTF-8");
		}
		List<OrderList> ol=orderListService.getAllOrder(user);
		model.addAttribute("ol", ol);
		if(ol.isEmpty()){
			model.addAttribute("msg", "没有相关数据...");
		}
		return "pages/order_List";
	}
}
