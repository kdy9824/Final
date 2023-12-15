package com.smhrd.bigdata.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DataIntegrityViolationException;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import java.util.List;

import com.smhrd.bigdata.entity.Member;
import com.smhrd.bigdata.entity.Storage;
import com.smhrd.bigdata.mapper.MemberMapper;

@Controller
public class MemberController {
	
	@Autowired
	MemberMapper mapper;
	
	@GetMapping("/")
	public String intro() {
		
		return "login";
		
	}
	
	@PostMapping("/main")
	public String login(Member member, HttpSession session, Model model) {
		
		Member result = mapper.login(member);
		
		if(result == null) { // t_uesr에 입력한 회원 정보가 없어 로그인에 실패
			System.out.println("로그인 실패");
			return "redirect:/"; // 로그인 페이지로 다시 이동
		} else {
			session.setAttribute("loginMember", result); // 세션에 로그인한 계정의 정보를 저장, 해당 정보는 session.invalidate()나 브라우저를 종료하기 전까지 유효함
			Member loginMember = (Member)session.getAttribute("loginMember"); // boardcontent.jsp에서 로그인한 사용자 정보를 사용해야 함
			String memberId = loginMember.getId(); // 로그인한 사용자의 Id를 memberId에 할당
			System.out.println(memberId);
			System.out.println(loginMember.getEmail().substring(loginMember.getEmail().length()-9));
			
			
			List<Storage> result_storage = mapper.videoList(memberId);
			session.setAttribute("result_storage", result_storage);
			
			
			return "main";
		
			}

	}
	
	@PostMapping("/join")
	public String join(@ModelAttribute Member member) {

		try {
			mapper.join(member); // 입력한 회원 정보를 t_user 테이블에 삽입
			
			System.out.println("회원가입 성공");
			System.out.println(member.getId());
			return "redirect:/";
		} catch(DataIntegrityViolationException e) { // MySQL WorkBench에서는 PrimaryKey가 중복되어 user 테이블에 데이터를 삽입할 수 없으면 에러가 떠서 예외처리를 하였음
			System.out.println("회원가입 실패");
			return "redirect:/"; // 회원가입에 실패하면 다시 회원가입 페이지로 이동
		}
		
	}
	
	@PostMapping("/sendemail")
	public String sendEmail(HttpSession session) {
		
		Member member = (Member)session.getAttribute("loginMember");
		List<Storage> result_storage = (List<Storage>)session.getAttribute("result_storage");
		
        String to = member.getEmail();
        String subject = member.getId();
        String text = member.getPw();
        
        if(to.substring(to.length()-9).equals("naver.com")) {
    		
    		NaverEmailService.sendEmail(to, subject, text);
    		
    		return "main";
    		
        } else if(to.substring(to.length()-9).equals("gmail.com")) {
    		
    		GoogleEmailService.sendEmail(to, subject, text);
    		
    		return "main";
        }
        
        return null;
		
	}
}