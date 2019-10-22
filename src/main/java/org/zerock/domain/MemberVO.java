package org.zerock.domain;

import java.util.List;

import lombok.Data;

@Data
public class MemberVO {
	private String user_id, user_pw, user_name, user_email;
	private int user_phonenum, user_index;
	private List<AuthVO> authList;
}
