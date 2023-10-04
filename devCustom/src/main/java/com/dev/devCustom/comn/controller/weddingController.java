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

import com.dev.devCustom.comn.mapper.ComnMap;
import com.dev.devCustom.comn.service.ComnService;
import com.dev.devCustom.utils.Utils;
import com.google.gson.Gson;

@Controller
public class weddingController {

	@Autowired
	private ComnService comnService;

	@RequestMapping("/cmmn/weddingBorder")
	public String weddingBorder(Model model, HttpServletRequest request, HttpServletResponse respose) throws Exception {
		return "wedding/border";
	}

	@RequestMapping("/cmmn/weddingBorder/confirm/deleteConfirm")
	public String deleteConfirm(Model model, HttpServletRequest request, HttpServletResponse response)
			throws Exception {
		model.addAttribute("borderSn", request.getParameter("borderSn"));

		return "wedding/deleteConfirm";
	}

	@RequestMapping("/cmmn/weddingBorder/list")
	@ResponseBody
	public String weddingBorderlist(Model model, HttpServletRequest request, HttpServletResponse respose)
			throws Exception {
		Gson gson = new Gson();
		List<HashMap<String, Object>> borderList = comnService.selectList("comnMapper.weddingBorderList", null);

		String json = gson.toJson(borderList);
		return json;
	}

	@RequestMapping("/cmmn/weddingBorder/data/{type}")
	@ResponseBody
	public String weddingBorderData(@PathVariable String type, Model model, HttpServletRequest request,
			HttpServletResponse respose) throws Exception {
		Gson gson = new Gson();

		HashMap<String, Object> comnMap = new HashMap<String, Object>();
		comnMap = Utils.hashMapConvert(request);
		comnMap.put("creatorIp", Utils.getClientIpAddress(request));
		comnMap.put("updateIp", Utils.getClientIpAddress(request));

		Map<String, Object> response = new HashMap<>();
		if (type.equals("insert")) {
			comnService.insert("comnMapper.weddingBorderInsert", comnMap);
			response.put("status", "success");
		} else if (type.equals("update")) {
			comnService.update("comnMapper.weddingBorderUpdate", comnMap);
		} else if (type.equals("delete")) {
			int borderCheckCount = 0;
			comnMap.put("borderSn", request.getParameter("borderSn"));
			comnMap.put("borderPw", request.getParameter("borderPw"));

			borderCheckCount = Integer
					.parseInt(comnService.selectOne("comnMapper.weddingBorderPassWordCheck", comnMap).get("count")
							.toString());

			if (borderCheckCount > 0) {
				comnService.delete("comnMapper.weddingBorderDelete", comnMap);
				response.put("status", "success");
			} else {
				response.put("status", "notDelete");
			}
		}

		String json = gson.toJson(response);
		return json;
	}
}
