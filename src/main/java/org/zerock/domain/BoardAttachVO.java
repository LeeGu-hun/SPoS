package org.zerock.domain;

import lombok.Data;

@Data
public class BoardAttachVO {
	private String picture_uuid;
	private Long board_index;
	private String picture_path;
	private String picture_name;
}
