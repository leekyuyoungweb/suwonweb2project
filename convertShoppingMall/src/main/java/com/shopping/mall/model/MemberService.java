package com.shopping.mall.model;

import java.util.List;

import com.shopping.mall.vo.MemberVO;

public interface MemberService {

	public List<MemberVO> list(String search);
}
