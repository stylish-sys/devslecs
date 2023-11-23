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

import com.dev.devCustom.comn.mapper.ComnVo;
import com.dev.devCustom.comn.service.ComnService;
import com.dev.devCustom.utils.Utils;
import com.google.gson.Gson;

@Controller
public class weddingSystemController {

	@Autowired
	private ComnService comnService;

	@RequestMapping("/system/list")
	public String weddingBorder(Model model, HttpServletRequest request, HttpServletResponse respose) throws Exception {
		return "wedding/system/list";
	}


	@RequestMapping("/system/data/{type}")
	@ResponseBody
	public String weddingBorderData(@PathVariable String type, Model model, HttpServletRequest request,
			HttpServletResponse respose) throws Exception {
		Gson gson = new Gson();

		HashMap<String, Object> comnMap = new HashMap<String, Object>();
		comnMap = Utils.hashMapConvert(request);
		comnMap.put("createdt", Utils.getClientIpAddress(request));

		Map<String, Object> response = new HashMap<>();
		
		if (type.equals("insert")) {
			comnMap.put("systemSeqId", "wedding_system");
			comnService.update("comnMapper.systemSeqUpdate", comnMap);
			ComnVo ImsiMap = comnService.selectComnVoOne("comnMapper.systemSeqSelect", comnMap);

			String sysSn = ImsiMap.getSystemSeq();
			comnMap.put("sysSn", sysSn);
			
			comnService.insert("comnMapper.weddingSystemInsert", comnMap);
			response.put("status", "success");
		} else if (type.equals("update")) {
			comnService.update("comnMapper.weddingSystemUpdate", comnMap);
		} else if (type.equals("delete")) {
			comnService.delete("comnMapper.weddingSystemDelete", comnMap);
		}

		String json = gson.toJson(response);
		return json;
	}
	

	@RequestMapping("/system/data/list")
	@ResponseBody
	public String weddingBorderlist(Model model, HttpServletRequest request, HttpServletResponse respose)
			throws Exception {
		Gson gson = new Gson();
		List<HashMap<String, Object>> list = comnService.selectList("comnMapper.weddingSystemList", null);
		String json = gson.toJson(list);
		return json;
	}
	

	@RequestMapping("/wedding/system/{type}")
	public String comnFooter(@PathVariable String type, HttpServletRequest request, Model model, HttpServletResponse respose) throws Exception {
		HashMap<String, Object> comnMap = new HashMap<String, Object>();
		comnMap = Utils.hashMapConvert(request);
		String returnUrl = "wedding/system/view";
		if("".equals(type)) {
			returnUrl = "wedding/system/default";
		}else {
			comnMap.put("sysId", type);
			ComnVo map = comnService.selectComnVoOne("comnMapper.weddingSystemSysId", comnMap);
			model.addAttribute("result", map);
		}
		
		return returnUrl;
	}
}
