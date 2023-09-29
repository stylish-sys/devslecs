package com.dev.devCustom.comn.controller;

import java.util.HashMap;
import java.util.List;

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
	
	@Autowired
	private ComnService comnService;
	
	@RequestMapping("/")	
	public String Main(HttpServletRequest request, HttpServletResponse respose) throws Exception{
		return "index";
	}
	
	@RequestMapping("/{ctx}/cmmn/header")
	public String comnHeader(@PathVariable String system, HttpServletRequest request, HttpServletResponse respose) throws Exception{
		return "layout/header";
	}
	
	@RequestMapping("/{ctx}/cmmn/menu")
	public String comnMenu(@PathVariable String system , HttpServletRequest request, HttpServletResponse respose) throws Exception{
		return "layout/menu";
	}
	
	@RequestMapping("/{ctx}/cmmn/left")
	public String comnLeft(@PathVariable String system, HttpServletRequest request, HttpServletResponse respose) throws Exception{
		return "layout/left";
	}
	
	@RequestMapping("/{ctx}/cmmn/footer")
	public String comnFooter(@PathVariable String system, HttpServletRequest request, HttpServletResponse respose) throws Exception{
		return "layout/footer";
	}
	
	@RequestMapping("/{ctx}/cmmn/layout")
	public String comnLayout(@PathVariable String system, HttpServletRequest request, HttpServletResponse respose) throws Exception{
		return "system/" + system + "layout";
	}
	
	public static String getGubunLayout(String system){
		return "system/" + system + "layout";
	}
	
	
	@RequestMapping("/test") public String test(Model model) throws Exception{
	HashMap<String, Object> map = new HashMap<String, Object>();
	List<HashMap<String, Object>> test =
	comnService.selectList("comnMapper.selectTest", map);
	model.addAttribute("list", test); return "test"; }
	
}


