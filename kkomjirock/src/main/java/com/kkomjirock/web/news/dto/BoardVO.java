package com.kkomjirock.web.news.dto;

import lombok.Data;

@Data //Getters & Setters & toString
// 이후 SQL 쿼리 만들기 위해 Mapping
public class BoardVO {
	

	public int bid;
	public String cate_cd;
	public String title;
	public String content;
	public String tag;
	public int view_cnt;
	public String reg_id;
	public String reg_dt;
	public String edit_dt;

}
