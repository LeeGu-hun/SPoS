package org.zerock.domain;

import java.util.Date;

import org.springframework.web.util.UriComponentsBuilder;

import lombok.Data;
@Data
public class Stand {
	
	private Date dateFrom, dateTo;
	private String selCate, foodIndex ;
	private int pageNum, amount;
	
	public Stand() {	this(1,10); }
	public Stand(int pageNum, int amount) {
		this.pageNum = pageNum;
		this.amount = amount;
	}
	
	public String getListLink() {
		UriComponentsBuilder builder = UriComponentsBuilder.fromPath("")
				.queryParam("pageNum", this.pageNum)
				.queryParam("amount", this.getAmount());
		return builder.toUriString();
	}
}