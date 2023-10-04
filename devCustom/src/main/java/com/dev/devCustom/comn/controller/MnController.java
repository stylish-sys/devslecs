package com.dev.devCustom.comn.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.dev.devCustom.comn.service.ComnService;

@Controller
public class MnController {

	@RequestMapping("/")
	public String Main(HttpServletRequest request, HttpServletResponse respose) throws Exception {
		return "index";
	}

	@RequestMapping("/{system}")
	public String comnWedding(@PathVariable String system, Model model, HttpServletRequest request,
			HttpServletResponse respose) throws Exception {
		if (!system.contains("favicon")) {
			model.addAttribute("contents", "system/" + system + ".jsp");
		}
		return "layout/layout";
	}

	@RequestMapping("/cmmn/header")
	public String comnHeader(HttpServletRequest request, HttpServletResponse respose) throws Exception {
		return "layout/header";
	}

	@RequestMapping("/cmmn/menu")
	public String comnMenu(HttpServletRequest request, HttpServletResponse respose) throws Exception {
		return "layout/menu";
	}

	@RequestMapping("/cmmn/left")
	public String comnLeft(HttpServletRequest request, HttpServletResponse respose) throws Exception {
		return "layout/left";
	}

	@RequestMapping("/cmmn/footer")
	public String comnFooter(HttpServletRequest request, HttpServletResponse respose) throws Exception {
		return "layout/footer";
	}
}
