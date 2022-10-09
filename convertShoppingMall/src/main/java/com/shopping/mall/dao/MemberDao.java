package com.shopping.mall.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.shopping.mall.vo.MemberVO;

// 데이터베이스와 연결하여 데이터를 처리하는 로직
@Repository
public class MemberDao {
	@Autowired 
	private SqlSessionTemplate sqltemplate;
	
	public List<MemberVO> list(String search){
		return sqltemplate.selectList("member.list",search);
	}
}
