package com.smhrd.bigdata.controller;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class MainController {
			
	@GetMapping("/s")
	public String intro() {
		
		return "intro";
		
		// 동엽 1
	}

//도훈 커밋
//도훈 커밋2
}