package com.dev.devCustom.comn.service;

import java.util.HashMap;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class ComnService {
	
	@Autowired
    protected SqlSessionTemplate sqlSession;
	
	public String selectOne(String sqlId, HashMap<String,Object> map) throws Exception{
		return sqlSession.selectOne(sqlId, map);
	}
	
	public List<HashMap<String, Object>> selectList(String sqlId, HashMap<String,Object> map) throws Exception{
		return sqlSession.selectList(sqlId, map);
	}
	
	public int insert(String sqlId, HashMap<String,Object> map) throws Exception{
		return sqlSession.insert(sqlId, map);
	}
	
	public int update(String sqlId, HashMap<String,Object> map) throws Exception{
		return sqlSession.update(sqlId, map);
	}
	
	public int delete(String sqlId, HashMap<String,Object> map) throws Exception{
		return sqlSession.delete(sqlId, map);
	}
}
