package org.zerock.domain;

import java.util.Date;

import lombok.Data;

@Data
public class ReplyVO {
	private Long reply_index;
	private Long board_index;
	private Long user_index;
	private Date reply_regdate;
	private String reply_content;
	private int reply_special;
}
