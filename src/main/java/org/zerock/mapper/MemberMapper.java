package org.zerock.mapper;

import org.zerock.domain.MemberVO;


public interface MemberMapper {
	
	//join
	public int join_member(MemberVO vo);

	//login
	public MemberVO checkLogin(String id);
	
	//modify
	public int updateMember(MemberVO vo);
	
	
}
