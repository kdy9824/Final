package com.smhrd.bigdata.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.smhrd.bigdata.entity.Member;
import com.smhrd.bigdata.entity.Storage;

@Mapper
public interface MemberMapper {
	
	public int join(Member member);
	
	public Member login(Member member);
	
	public List<Storage> videoList(String memberId);

}