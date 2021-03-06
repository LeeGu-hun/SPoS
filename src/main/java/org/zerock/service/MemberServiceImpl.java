package org.zerock.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;
import org.zerock.domain.MemberVO;
import org.zerock.mapper.MemberMapper;

import lombok.Setter;
import lombok.extern.log4j.Log4j;
@Log4j
@Service
public class MemberServiceImpl implements MemberService{
	@Setter(onMethod_ = @Autowired)
	private MemberMapper mapper;
	
	public void join_member(MemberVO vo) {
		BCryptPasswordEncoder passwordEncoder = new BCryptPasswordEncoder();
	    vo.setUser_pw(passwordEncoder.encode(vo.getUser_pw()));
		log.info("join_member......" + vo);
		mapper.join_member(vo);
		
	}
	
	public void updateMember(MemberVO vo) {
		BCryptPasswordEncoder passwordEncoder = new BCryptPasswordEncoder();
	    vo.setUser_pw(passwordEncoder.encode(vo.getUser_pw()));
		log.info("updateMember...."+vo);
		mapper.updateMember(vo);
	}
	
}
