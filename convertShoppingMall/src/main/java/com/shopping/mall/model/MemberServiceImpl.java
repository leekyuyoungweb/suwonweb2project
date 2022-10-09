package com.shopping.mall.model;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.shopping.mall.dao.MemberDao;
import com.shopping.mall.vo.MemberVO;

@Service
public class MemberServiceImpl implements MemberService {

	@Autowired
	private MemberDao dao;
	
	@Override
	public List<MemberVO> list(String search) {
		return dao.list(search);
	}

}
