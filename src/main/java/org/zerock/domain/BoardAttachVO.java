package org.zerock.domain;

import lombok.Data;

@Data
public class BoardAttachVO {
	private String picture_uuid;
	private String picture_path;
	private String picture_name;
	private Long board_index;
}
