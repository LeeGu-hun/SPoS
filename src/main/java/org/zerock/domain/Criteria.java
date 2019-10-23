package org.zerock.domain;

import org.springframework.web.util.UriComponentsBuilder;

import lombok.Data;

@Data
public class Criteria {
	private int pageNum, amount;
	private String type, keyword;

	public Criteria() {
		this.pageNum = 1;
		this.amount = 6;
	}

	public Criteria(int pageNum, int amount) {
		this.pageNum = pageNum;
		this.amount = amount;
		this.type = "";
		this.keyword ="";
	}

	public Criteria(int pageNum, int amount, String type, String keyword) {
		super();
		this.pageNum = pageNum;
		this.amount = amount;
		this.type = type;
		this.keyword = keyword;
	}

	public String[] getTypeArr() {
		return type==null?new String[] {} : type.split("");
	}

	public String getListLink() {
		UriComponentsBuilder builder = UriComponentsBuilder.fromPath("")
				.queryParam("pageNum", this.pageNum)
				.queryParam("amount", this.getAmount())
				.queryParam("type", this.getType())
				.queryParam("keyword", this.getKeyword());
		return builder.toUriString();
	}
}
