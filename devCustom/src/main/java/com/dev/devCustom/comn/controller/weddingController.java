package com.dev.devCustom.comn.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.dev.devCustom.comn.service.ComnService;
import com.dev.devCustom.utils.Utils;
import com.google.gson.Gson;


@Controller
public class weddingController {
	
	@Autowired
	private ComnService comnService;
	
	@RequestMapping("/cmmn/weddingBorder")
	public String weddingBorder(Model model, HttpServletRequest request, HttpServletResponse respose) throws Exception{
		return "wedding/border";
	}
	
	@RequestMapping("/cmmn/weddingBorder/list")
	@ResponseBody
	public String weddingBorderlist(Model model, HttpServletRequest request, HttpServletResponse respose) throws Exception{
		Gson gson = new Gson();
		List<HashMap<String, Object>> borderList = comnService.selectList("comnMapper.weddingBorderList", null);
		
		String json = gson.toJson(borderList);
		return json;
	}
	
	
	@RequestMapping("/cmmn/weddingBorder/{type}")
	@ResponseBody
	public String weddingBorderData(@PathVariable String type, Model model, HttpServletRequest request, HttpServletResponse respose) throws Exception{
		Gson gson = new Gson();
		
		HashMap<String, Object> hashMap = Utils.hashMapConvert(request);
		hashMap.put("creatorIp", Utils.getClientIpAddress(request));
		hashMap.put("updateIp", Utils.getClientIpAddress(request));
		
		if(type.equals("insert")) {
			comnService.insert("comnMapper.weddingBorderInsert", hashMap);
		}else if(type.equals("update")) {
			comnService.update("comnMapper.weddingBorderUpdate", hashMap);
		}else {
			comnService.delete("comnMapper.weddingBorderDelete", hashMap);
		}
		
		Map<String, Object> response = new HashMap<>();
		response.put("status", "success");
		String json = gson.toJson(response);
		return json;
	}
}


