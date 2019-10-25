package org.zerock.service;

import org.zerock.domain.MemberVO;


public interface MemberService {
	public void join_member(MemberVO vo);
	
	public void updateMember(MemberVO v);
	
}
