package com.shopping.mall.vo;

import lombok.Data;

// 테이블과 1:1 로 매핑되는 데이터 객체  POJO  순수한 데이터 클래스
@Data
public class MemberVO {
	private String address;
	private String birth;
	private String gender;
	private String id;
	private String mail;
	private String name;
	private String passwd;
	private String phone;
	private String regist_day;
	
	@Override
	public String toString() {
		return "MemberVO [address=" + address + ", birth=" + birth + ", gender=" + gender + ", id=" + id + ", mail="
				+ mail + ", name=" + name + ", passwd=" + passwd + ", phone=" + phone + ", regist_day=" + regist_day
				+ "]";
	}
	
	
}
