package org.zerock.domain;

import java.util.Date;

import org.springframework.web.multipart.MultipartFile;

import lombok.AllArgsConstructor;
import lombok.Data;

@Data
@AllArgsConstructor
public class ProdVO {
	private int PROD_INFO_INDEX; // 상품번호
	private String prod_name; // 상품이름
	private int prod_price; // 상품가격
	private int prod_kcal; // 칼로리
	private String prod_manufact; //제조사
	private String prod_desc; // 상품 상세정보
	private String prod_url; // 상품이미지 경로
	private MultipartFile prod_photo; // 상품이미지파일
	private String prod_cate;	//카테고리
	private String detail_cate;	//상세카테고리
	private Date prod_regdate;
	private Date prod_update;
	
}
