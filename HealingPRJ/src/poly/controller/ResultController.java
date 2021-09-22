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
	
	// =========================================================연월 프로그램 결과 ===================================================================================
	@RequestMapping(value ="result/YearMonthResult")
	public String resultProgram(HttpServletRequest request, HttpServletResponse response) throws Exception {
		log.info("연월 프로그램 결과");
		return "result/YearMonthResult";
	}
	
	@RequestMapping(value ="result/YearMonthResult_chart")
	public String YearMonthResult_chart(BasicInfoDTO bDTO, HttpServletResponse response) throws Exception {
		log.info("연월 프로그램 차트 실행");
		log.info(bDTO.getOpenday());
		log.info(bDTO.getEndday());
		List<BasicInfoDTO> BasicInfoList = resultService.getProgrmaList(bDTO);
		log.info(BasicInfoList.size());
		
		log.info("연월 프로그램 차트 실행 종료");
		return "result/YearMonthResult_chart";
	}
	// =========================================================단체별 프로그램 결과 ===================================================================================
	@RequestMapping(value ="result/ProgramResult")
	public String ProgramResult(HttpServletRequest request, HttpServletResponse response) throws Exception {
		
		log.info("프로그램 결과");
		return "result/ProgramResult";
	}
	@RequestMapping(value ="result/ProgramResult_chart")
	public String ProgramResult_chart(BasicInfoDTO bDTO, HttpServletResponse response,Model model) throws Exception {
		log.info("프로그램 차트 실행");
		log.info("참여단체 : " + bDTO.getAgency());
		log.info("참여일자 : "+ bDTO.getOpenday());
		log.info("시설서비스 만족도 평가 시작");
		List<BasicInfoDTO> basicList = resultService.getBasiclist(bDTO);
		log.info("basicList : " + basicList.get(0).getAgency());
		model.addAttribute("basicList", basicList);
		log.info("시설서비스 만족도 평가 종료");
		log.info("프로그램 차트 종료");
		return "result/ProgramResult_chart";
	}
	@RequestMapping(value ="result/ProgramResult_chart1")
	public String ProgramResult_chart1(BasicInfoDTO bDTO, HttpServletResponse response,Model model) throws Exception {
		
		return "result/ProgramResult_chart";
	}
	// =========================================================주제어 별 프로그램 결과 ===================================================================================
	@RequestMapping(value ="result/SearchResult")
	public String SearchResult(HttpServletRequest request, HttpServletResponse response) throws Exception {
		log.info("주제어별 결과");
		return "result/SearchResult";
	}
	@RequestMapping(value ="result/SearchResult_chart")
	public String SearchResult_chart(HttpServletRequest request, HttpServletResponse response) throws Exception {
		
		log.info("주제어별 결과");
		return "result/SearchResult_chart";
	}
	@RequestMapping(value ="result/insertAgencyInfo")
	public String insertAgencyInfo(HttpServletRequest request, HttpServletResponse response) throws Exception {
		
		log.info("주제어별 결과");
		return "result/SearchResulta_chart";
	}
	// =========================================================프로그램 리스트  ===================================================================================
	
	@RequestMapping(value ="result/ProgramList")
	public String ProgramList(HttpServletRequest request, HttpServletResponse response) throws Exception {
		log.info("연월 프로그램 결과");
		return "result/ProgramList";
	}
	
	@RequestMapping(value ="result/ProgramList_chart")
	public String ProgramList_chart(BasicInfoDTO bDTO, Model model) throws Exception {
		log.info("프로그램 리스트 시작");
		log.info("프로그램 시작일 : "  + bDTO.getOpenday());
		log.info("프로그램 종료일 : "  + bDTO.getEndday());
		List<BasicInfoDTO> rList = resultService.getProgrmaList(bDTO);
		log.info(rList.size());
		model.addAttribute("rList", rList);
		log.info("프로그램 차트 종료");
		return "result/ProgramList_chart";
	}
	@RequestMapping(value ="result/ProgramList_chart1")
	public String ProgramList_chart1(BasicInfoDTO bDTO, Model model) throws Exception {
		
		return "result/ProgramList_chart";
	}
} 