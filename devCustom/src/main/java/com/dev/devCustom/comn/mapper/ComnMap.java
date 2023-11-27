package com.dev.devCustom.comn.mapper;

import lombok.Getter;

import java.util.HashMap;
import java.util.Map;
import java.util.Set;

public class ComnMap {
	Map<String, Object> map = new HashMap<String, Object>();

	public Object get(String key) {
		return map.get(key);
	}

	public String getArrToStr(String key) {
		Object objectType = get(key);
		if (objectType == null)
			return null;
		if (objectType instanceof String) {
			return (String) objectType;
		} else if (objectType instanceof String[]) {
			StringBuilder retStr = null;
			String[] strArr = (String[]) objectType;
			if (strArr.length > 0) {
				retStr = new StringBuilder();
			}
			if (retStr == null) {
				return null;
			}
			for (int idx = 0; idx < strArr.length; idx++) {
				if (idx == 0) {
					retStr.append(strArr[idx]);
				} else {
					retStr.append("," + strArr[idx]);
				}
			}
			return retStr.toString();
		}
		return null;
	}

	public void put(String key, Object value) {
		map.put(key, value);
	}

	public Object remove(String key) {
		return map.remove(key);
	}

	public boolean containsKey(String key) {
		return map.containsKey(key);
	}

	public boolean containsValue(Object value) {
		return map.containsValue(value);
	}

	public void clear() {
		map.clear();
	}

	public Set<Map.Entry<String, Object>> entrySet() {
		return map.entrySet();
	}

	public Set<String> keySet() {
		return map.keySet();
	}

	public boolean isEmpty() {
		return map.isEmpty();
	}

	public void putAll(Map<? extends String, ? extends Object> m) {
		map.putAll(m);
	}

}