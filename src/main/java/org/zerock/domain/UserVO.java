package org.zerock.domain;

import java.util.List;

import lombok.Data;

@Data
public class UserVO {
	private String user_id;
	private String user_pw;
	private String user_name;
	private String user_email;
	private int user_phonenum;

	private List<AuthVO> authList;
}
