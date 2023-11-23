package com.dev.devCustom.comn.mapper;

import lombok.Data;

@Data
public class ComnVo {
	private String userId;
	private String userPw;

	int borderSn;
	String borderName;
	String borderPw;
	String borderContents;
	String creatorIp;
	String creatorDt;
	String updateIp;
	String updateDt;
	
	String sysSn;
	String sysId;
	String sysName;
	String sysCnt;
	String createdt;
	
	String systemSeq;
	String systemSeqId;

	int count;
}