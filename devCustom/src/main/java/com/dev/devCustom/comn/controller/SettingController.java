package com.dev.devCustom.comn.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class SettingController {

	@RequestMapping("/setting/{system}")
	public String comnWedding(@PathVariable String system, Model model, HttpServletRequest request,
			HttpServletResponse respose) throws Exception {
		if (!system.contains("favicon")) {
			if(system.equals("wedding")) {
				model.addAttribute("contents", "/system/list");
			}
		}
		return "setting/layout";
	}

	@RequestMapping("/setting/header")
	public String comnHeader(HttpServletRequest request, HttpServletResponse respose) throws Exception {
		return "setting/header";
	}

	@RequestMapping("/setting/menu")
	public String comnMenu(HttpServletRequest request, HttpServletResponse respose) throws Exception {
		return "setting/menu";
	}

	@RequestMapping("/setting/left")
	public String comnLeft(HttpServletRequest request, HttpServletResponse respose) throws Exception {
		return "setting/left";
	}

	@RequestMapping("/setting/footer")
	public String comnFooter(HttpServletRequest request, HttpServletResponse respose) throws Exception {
		return "setting/footer";
	}
}
