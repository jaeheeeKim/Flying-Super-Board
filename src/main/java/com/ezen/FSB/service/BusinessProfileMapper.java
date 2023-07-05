package com.ezen.FSB.service;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ezen.FSB.dto.BusinessProfileDTO;

@Service
public class BusinessProfileMapper {

	@Autowired
	private SqlSession sqlSession;
	
	public BusinessProfileDTO getBP(int mem_num) {
		return sqlSession.selectOne("getBP",mem_num);
	}
}
