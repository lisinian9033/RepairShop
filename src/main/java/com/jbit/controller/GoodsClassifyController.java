package com.jbit.controller;

import java.util.List;

import javax.annotation.Resource;


import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.jbit.entity.GoodsClassify;
import com.jbit.entity.JsonResult;
import com.jbit.service.GoodsClassifyService;


@Controller
public class GoodsClassifyController {

	@Resource
	private GoodsClassifyService goodsClassifyService;
	
	/**
	 * 显示商品管理
	 * @param model
	 * @return
	 */
	@RequestMapping(value = "/goodsClassifylist")
	public String goodsClassifylist(Model model){
		List<GoodsClassify> glist=goodsClassifyService.getGoodsClassifylist();
		model.addAttribute("glist", glist);
		return "pages/goods_CLassify";
	}
	
	
	/**
	 * 添加商品分类
	 * @param goodsClassify
	 * @param model
	 * @return
	 */
	@RequestMapping(value = "/insertGoodsClassify")
	public String insertGoodsClassify(GoodsClassify goodsClassify,Model model){
		int num=goodsClassifyService.insertGoodsClassify(goodsClassify);
		if(num>0){
			model.addAttribute("close", "<script>window.close();</script>");
			return "redirect:/goodsClassifylist";
		}
		return "pages/add_Classify";
	}
	
	/**
	 *删除员工
	 */
	@RequestMapping(value = "deleteGoodsClassify",method=RequestMethod.GET)
	@ResponseBody
	public JsonResult deleteGoodsClassify(int classifyNo){
		JsonResult result = new JsonResult("删除失败！！");
		int res=goodsClassifyService.deleteGoodsClassify(classifyNo);
		if(res!=0){
			//删除成功
			result = new JsonResult(true,"删除成功！！");
		}
		return result;
	
	}
}
 