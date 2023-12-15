package com.smhrd.bigdata.entity;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class Storage {
	
	private int idx;
	private String id;
	private String cctv_port;
	private String record_start;
	private String record_end;
	private String video_path;
	private String section;
	
}