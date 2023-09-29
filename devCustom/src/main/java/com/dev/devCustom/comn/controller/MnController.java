package com.dev.devCustom.comn.controller;

import java.util.HashMap;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.dev.devCustom.comn.service.ComnService;


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
		model.addAttribute("content", "views/slec/system/" + system + ".jsp");
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
	
	@RequestMapping("/test") public String test(Model model) throws Exception{
	HashMap<String, Object> map = new HashMap<String, Object>();
	List<HashMap<String, Object>> test =
	comnService.selectList("comnMapper.selectTest", map);
	model.addAttribute("list", test); return "test"; }
	
}


