package com.dev.devCustom.utils;

import java.lang.reflect.Field;
import java.util.HashMap;

import javax.servlet.http.HttpServletRequest;

import com.dev.devCustom.comn.mapper.ComnVo;

public class Utils {

	public static ComnVo comnVoConvert(HttpServletRequest request) {
		ComnVo comnVo = new ComnVo();
		Field[] fields = ComnVo.class.getDeclaredFields();

		for (Field field : fields) {
			try {
				field.setAccessible(true);
				String paramName = field.getName();
				String paramValue = request.getParameter(paramName);
				field.set(comnVo, paramValue);
			} catch (Exception e) {
				// 예외 처리 필요
			}
		}

		return comnVo;
	}

	public static HashMap<String, Object> hashMapConvert(HttpServletRequest request) {
		HashMap<String, Object> paramMap = new HashMap<>();
		request.getParameterMap().forEach((key, values) -> paramMap.put(key, values[0]));
		return paramMap;
	}
	
	public static String getClientIpAddress(HttpServletRequest request) {
	    String clientIp = request.getHeader("X-Forwarded-For"); // 프록시 서버를 통한 경우
	    if (clientIp == null || clientIp.length() == 0 || "unknown".equalsIgnoreCase(clientIp)) {
	        clientIp = request.getHeader("Proxy-Client-IP");
	    }
	    if (clientIp == null || clientIp.length() == 0 || "unknown".equalsIgnoreCase(clientIp)) {
	        clientIp = request.getHeader("WL-Proxy-Client-IP");
	    }
	    if (clientIp == null || clientIp.length() == 0 || "unknown".equalsIgnoreCase(clientIp)) {
	        clientIp = request.getHeader("HTTP_X_FORWARDED_FOR");
	    }
	    if (clientIp == null || clientIp.length() == 0 || "unknown".equalsIgnoreCase(clientIp)) {
	        clientIp = request.getHeader("HTTP_X_FORWARDED");
	    }
	    if (clientIp == null || clientIp.length() == 0 || "unknown".equalsIgnoreCase(clientIp)) {
	        clientIp = request.getHeader("HTTP_X_CLUSTER_CLIENT_IP");
	    }
	    if (clientIp == null || clientIp.length() == 0 || "unknown".equalsIgnoreCase(clientIp)) {
	        clientIp = request.getHeader("HTTP_CLIENT_IP");
	    }
	    if (clientIp == null || clientIp.length() == 0 || "unknown".equalsIgnoreCase(clientIp)) {
	        clientIp = request.getHeader("REMOTE_ADDR");
	    }
	    return clientIp;
	}

}