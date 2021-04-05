package poly.controller;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import poly.service.ITestService;
import poly.util.CmmUtil;

@Controller
public class TestController {

	private Logger log = Logger.getLogger(this.getClass());
	
	@Resource(name = "TestService")
	private ITestService testService;
	
	@RequestMapping(value="index")
	public String index(HttpServletRequest request, HttpServletResponse reponse) { 
		
		log.info("hi");
		return "/index";
	}
	
	// 만족도및 효과평가 이재훈
	@RequestMapping(value="index2")
	public String index2(HttpServletRequest request, HttpServletResponse reponse) { 
		
		log.info("hi");
		return "/index2";
	}
	
	@RequestMapping(value="seBygroup")
	public String seBygroup(HttpServletRequest request, HttpServletResponse reponse) { 
		
		log.info("seBygroup");
		return "/seBygroup";
	}
	
	@RequestMapping(value="seBysubject")
	public String seBysubject(HttpServletRequest request, HttpServletResponse reponse) { 
		
		log.info("seBysubject");
		return "/seBysubject";
	}
	
	@RequestMapping(value="seBysubject2")
	public String seBysubject2(HttpServletRequest request, HttpServletResponse reponse) { 
		
		log.info("seBysubject2");
		return "/seBysubject2";
	}
	
	//운영결과 페이지 호출 _ 유연준
	@RequestMapping(value ="YearMonthResult")
	public String resultProgram(HttpServletRequest request, HttpServletResponse response) throws Exception {
		
		log.info("프로그램 결과");
		return "/YearMonthResult";
	}
	
	@RequestMapping(value ="YearMonthResult2")
	public String resultProgram2(HttpServletRequest request, HttpServletResponse response) throws Exception {
		
		log.info("프로그램 결과");
		return "/YearMonthResult2";
	}
	
	@RequestMapping(value ="YearMonthResult3")
	public String resultProgram3(HttpServletRequest request, HttpServletResponse response) throws Exception {
		
		log.info("프로그램 결과");
		return "/YearMonthResult3";
	}
	@RequestMapping(value ="aa")
	public String fadsam(HttpServletRequest request, HttpServletResponse response) throws Exception {
		
		log.info("프로그램 결과");
		return "/resProgram_chart";
	}
	
	
	//운영결과 페이지 차트 호출  _ 유연준
	@RequestMapping(value ="resProgram_chart")
	public String resultProgram_chart(HttpServletRequest request, HttpServletResponse response)  throws Exception{
		String name = CmmUtil.nvl(request.getParameter("name"));
		
		log.info("프로그램 차트 가기");
		log.info(name);
		return "/resProgram_chart";
	}
} 
