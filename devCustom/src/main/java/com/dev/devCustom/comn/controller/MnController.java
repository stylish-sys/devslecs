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
public class MnController {
	
	@Autowired
	private ComnService comnService;
	
	@RequestMapping("/")	
	public String Main(HttpServletRequest request, HttpServletResponse respose) throws Exception{
		return "index";
	}
	
	@RequestMapping("/{system}")
	public String comnWedding(@PathVariable String system, Model model, HttpServletRequest request, HttpServletResponse respose) throws Exception{
		if(!system.contains("favicon")) {
			model.addAttribute("contents", "system/" + system + ".jsp");
		}
		return "layout/layout";
	}
	
	@RequestMapping("/cmmn/header")
	public String comnHeader(HttpServletRequest request, HttpServletResponse respose) throws Exception{
		return "layout/header";
	}
	
	@RequestMapping("/cmmn/menu")
	public String comnMenu(HttpServletRequest request, HttpServletResponse respose) throws Exception{
		return "layout/menu";
	}
	
	@RequestMapping("/cmmn/left")
	public String comnLeft(HttpServletRequest request, HttpServletResponse respose) throws Exception{
		return "layout/left";
	}
	
	@RequestMapping("/cmmn/footer")
	public String comnFooter(HttpServletRequest request, HttpServletResponse respose) throws Exception{
		return "layout/footer";
	}
}


