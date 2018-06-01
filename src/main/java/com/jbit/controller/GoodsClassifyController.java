package com.jbit.controller;

import java.util.List;

import javax.annotation.Resource;


import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.jbit.entity.GoodsClassify;
import com.jbit.service.GoodsClassifyService;


@Controller
public class GoodsClassifyController {

	@Resource
	private GoodsClassifyService goodsClassifyService;
	
	@RequestMapping(value = "/goodsClassifylist")
	public String goodsClassifylist(Model model){
		List<GoodsClassify> glist=goodsClassifyService.getGoodsClassifylist();
		model.addAttribute("glist", glist);
		return "pages/goods_CLassify";
	}
}
 