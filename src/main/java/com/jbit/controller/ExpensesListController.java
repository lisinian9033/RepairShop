package com.jbit.controller;

import java.util.List;

import javax.annotation.Resource;


import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.jbit.entity.ExpensesList;
import com.jbit.entity.GoodsClassify;
import com.jbit.service.ExpensesListService;
import com.jbit.service.GoodsClassifyService;


@Controller
public class ExpensesListController {

	@Resource
	private ExpensesListService expensesListService;
	
	@RequestMapping(value = "/getExpensesList")
	public String getExpensesList(Model model){
		List<ExpensesList> elist=expensesListService.getExpensesList();
		model.addAttribute("elist", elist);
		return "pages/Expenses";
	}
}
 