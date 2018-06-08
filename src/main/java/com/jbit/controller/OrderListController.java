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
	public String OrList(Model model){
		List<OrderList> ol=orderListService.getAllOrder();
		model.addAttribute("ol", ol);
		return "pages/order_List";
	}
}
