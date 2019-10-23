package org.zerock.domain;

import java.util.Date;
import java.util.List;

import lombok.Data;

@Data
public class BoardVO {
	private Long board_index;
	private Long user_index;
	private String user_id;
	private Date board_regdate, board_updatedate;
	private String board_title, board_content;
	private int board_special;
	
	private List<BoardAttachVO> attachList;
}
