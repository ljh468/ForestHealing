package poly.controller;

import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import poly.dto.BasicInfoDTO;
import poly.service.IResultService;

@Controller
public class ResultController {

	private Logger log = Logger.getLogger(this.getClass());
	
	@Resource(name = "ResultService")
	private IResultService resultService;
	
	//운영결과 페이지 호출 _ 유연준
	@RequestMapping(value ="result/YearMonthResult")
	public String resultProgram(HttpServletRequest request, HttpServletResponse response) throws Exception {
		log.info("연월 프로그램 결과");
		return "result/YearMonthResult";
	}
	
	@RequestMapping(value ="result/YearMonthResult_chart")
	public String YearMonthResult_chart(BasicInfoDTO uDTO, HttpServletResponse response) throws Exception {
		log.info("연월 프로그램 차트 실행");
		log.info(uDTO.getOpenday());
		log.info(uDTO.getEndday());
		
		log.info("연월 프로그램 차트 실행 종료");
		return "result/YearMonthResult_chart";
	}
	@RequestMapping(value ="result/ProgramResult")
	public String ProgramResult(HttpServletRequest request, HttpServletResponse response) throws Exception {
		
		log.info("프로그램 결과");
		return "result/ProgramResult";
	}
	@RequestMapping(value ="result/ProgramResult_chart")
	public String ProgramResult_chart(BasicInfoDTO bDTO, HttpServletResponse response,Model model) throws Exception {
		log.info("프로그램 차트 실행");
		log.info("bDTO.getOpenday() : "+ bDTO.getOpenday());
		log.info("bDTO.getAgency() : " + bDTO.getAgency());
		log.info("시설서비스 만족도 평가 시작");
		//List<ServiceSaf_avgDTO> Service_env_satList = testService.getServiceSaf(uDTO);
		/*
		 * if(Service_env_satList == null) { log.info("null값임"); }else {
		 * model.addAttribute("Service_env_satList", Service_env_satList); }
		 */
		List<BasicInfoDTO> basicList = resultService.getBasiclist(bDTO);
		log.info("basicList : " + basicList.get(0).getAgency());
		model.addAttribute("basicList", basicList);
		log.info("시설서비스 만족도 평가 종료");
		log.info("프로그램 차트 종료");
		return "result/ProgramResult_chart";
	}

	@RequestMapping(value ="result/SearchResult")
	public String SearchResult(HttpServletRequest request, HttpServletResponse response) throws Exception {
		log.info("주제어별 결과");
		return "result/SearchResult";
	}
	@RequestMapping(value ="result/SearchResult_chart")
	public String SearchResult_chart(HttpServletRequest request, HttpServletResponse response) throws Exception {
		
		log.info("주제어별 결과");
		return "result/SearchResulta_chart";
	}
	@RequestMapping(value ="result/insertAgencyInfo")
	public String insertAgencyInfo(HttpServletRequest request, HttpServletResponse response) throws Exception {
		
		log.info("주제어별 결과");
		return "result/SearchResulta_chart";
	}
} 