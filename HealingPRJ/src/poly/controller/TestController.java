package poly.controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.fasterxml.jackson.core.type.TypeReference;
import com.fasterxml.jackson.databind.ObjectMapper;

import poly.dto.StudentDTO;
import poly.dto.serviceInsertDTO;
import poly.service.ITestService;
import poly.util.CmmUtil;
import poly.util.ExcelManager;

@Controller
public class TestController {

	private Logger log = Logger.getLogger(this.getClass());
	
	@Resource(name = "TestService")
	private ITestService testService;
	
	//서비스 만족도 컨트롤러
		@RequestMapping(value="insertForm/serviceInsertForm")
		public String serviceInsertForm(HttpServletRequest request, HttpServletResponse reponse) { 
			
			log.info("hi");
			return "/insertForm/serviceInsertForm";
		}
	
	@RequestMapping(value = "insertForm/serviceInsertForm/insertData")
	@ResponseBody
	public String insertData(@RequestParam Map params, HttpServletResponse response, HttpServletRequest request) throws Exception{
		
		log.info("insertForm/serviceInsertForm/insertData start!!");
		String formagency = CmmUtil.nvl(request.getParameter("form-agency"));
		String formdate = CmmUtil.nvl(request.getParameter("form-date"));
		String formptcProgram = CmmUtil.nvl(request.getParameter("form-ptcProgram"));
		String formsex = CmmUtil.nvl(request.getParameter("form-sex"));
		String formscore18 = CmmUtil.nvl(request.getParameter("form-score18"));
		
		log.info("form-agency : " + formagency);
		log.info("form-date : " + formdate);
		log.info("form-ptcProgram : " + formptcProgram);
		log.info("form-sex : " + formsex);
		log.info("form-score18 : " + formscore18);
		
		/*
		 * //json 변수에 프론트에서 온 데이터 넣기 String json = params.get("list").toString();
		 * ObjectMapper mapper = new ObjectMapper();
		 * 
		 * //List형태로 변환 List<Map<String, Object>> list = mapper.readValue(json, new
		 * TypeReference<List<Map<String, Object>>>(){});
		 * 
		 * //List형의 DTO 담기 위해 선언 List<serviceInsertDTO> serviceDtoList = new
		 * ArrayList<serviceInsertDTO>();
		 * 
		 * //DTO에 넣기 for(int i=0; i<list.size(); i++) {
		 * 
		 * //빈값들어오면 더이상 for문 안돌게 // + 이 구조로 간다하면 for문안에 jsp 알러트 창 띄울예정
		 * if(CmmUtil.nvl(list.get(i).get("sex").toString()).equals("")) { break; } else
		 * {
		 * 
		 * serviceInsertDTO sDTO = new serviceInsertDTO();
		 * sDTO.setAgency(CmmUtil.nvl(list.get(i).get("agency").toString()));
		 * sDTO.setDate(CmmUtil.nvl(list.get(i).get("date").toString()));
		 * sDTO.setPtcProgram(CmmUtil.nvl(list.get(i).get("ptcProgram").toString()));
		 * sDTO.setSex(CmmUtil.nvl(list.get(i).get("sex").toString()));
		 * sDTO.setAge(CmmUtil.nvl(list.get(i).get("age").toString()));
		 * sDTO.setResidence(CmmUtil.nvl(list.get(i).get("residence").toString()));
		 * sDTO.setJob(CmmUtil.nvl(list.get(i).get("job").toString()));
		 * sDTO.setScore1(CmmUtil.nvl(list.get(i).get("score1").toString()));
		 * sDTO.setScore2(CmmUtil.nvl(list.get(i).get("score2").toString()));
		 * sDTO.setScore3(CmmUtil.nvl(list.get(i).get("score3").toString()));
		 * sDTO.setScore4(CmmUtil.nvl(list.get(i).get("score4").toString()));
		 * sDTO.setScore5(CmmUtil.nvl(list.get(i).get("score5").toString()));
		 * sDTO.setScore6(CmmUtil.nvl(list.get(i).get("score6").toString()));
		 * sDTO.setScore7(CmmUtil.nvl(list.get(i).get("score7").toString()));
		 * sDTO.setScore8(CmmUtil.nvl(list.get(i).get("score8").toString()));
		 * sDTO.setScore9(CmmUtil.nvl(list.get(i).get("score9").toString()));
		 * sDTO.setScore10(CmmUtil.nvl(list.get(i).get("score10").toString()));
		 * sDTO.setScore11(CmmUtil.nvl(list.get(i).get("score11").toString()));
		 * sDTO.setScore12(CmmUtil.nvl(list.get(i).get("score12").toString()));
		 * sDTO.setScore13(CmmUtil.nvl(list.get(i).get("score13").toString()));
		 * sDTO.setScore14(CmmUtil.nvl(list.get(i).get("score14").toString()));
		 * sDTO.setScore15(CmmUtil.nvl(list.get(i).get("score15").toString()));
		 * sDTO.setScore16(CmmUtil.nvl(list.get(i).get("score16").toString()));
		 * sDTO.setScore17(CmmUtil.nvl(list.get(i).get("score17").toString()));
		 * sDTO.setScore18(CmmUtil.nvl(list.get(i).get("score18").toString()));
		 * 
		 * //List에 DTO 넣기 serviceDtoList.add(sDTO);
		 * 
		 * 
		 * } }
		 * 
		 * for (serviceInsertDTO rDTO : serviceDtoList) { log.info("serviceDtoList : " +
		 * rDTO.getAge()); log.info("serviceDtoList : " + rDTO.getAgency());
		 * log.info("serviceDtoList : " + rDTO.getDate()); log.info("serviceDtoList : "
		 * + rDTO.getJob()); log.info("serviceDtoList : " + rDTO.getPtcProgram());
		 * log.info("serviceDtoList : " + rDTO.getResidence()); log.info("socore1 : " +
		 * rDTO.getScore1()); log.info("socore2 : " + rDTO.getScore2());
		 * log.info("socore18 : " + rDTO.getScore18()); }
		 */
		log.info("insertForm/serviceInsertForm/insertData end!!");
		
		//반환 페이지 작성예정
		return "success";
	}
	
	//재훈이형 여기입니다.~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~`
	
	//프로그램 만족도 컨트롤러
	@RequestMapping(value="insertForm/programInsertForm")
	public String programInsertForm(HttpServletRequest request, HttpServletResponse reponse) { 
		
		log.info(this.getClass().getName() + ".programInsertForm");
		
		return "/insertForm/programInsertForm";
	}
	
	
	//상담&치유 서비스 중 접수면접 Sheet 컨트롤러
	@RequestMapping(value="insertForm/receiptInsertForm")
	public String receiptInsertForm(HttpServletRequest request, HttpServletResponse reponse) { 
		
		log.info(this.getClass().getName() + ".receiptInsertForm");
		
		return "/insertForm/receiptInsertForm";
	}
	
	//예방서비스 효과평가 컨트롤로
	@RequestMapping(value="insertForm/preventInsertForm")
	public String preventInsertForm(HttpServletRequest request, HttpServletResponse reponse) { 
		
		log.info(this.getClass().getName() + ".preventInsertForm");
		
		return "/insertForm/preventInsertForm";
	}
	//힐링서비스 효과평가 컨트롤로
	@RequestMapping(value="insertForm/healingInsertForm")
	public String healingInsertForm(HttpServletRequest request, HttpServletResponse reponse) { 
		
		log.info(this.getClass().getName() + ".healingInsertForm");
		
		return "/insertForm/healingInsertForm";
	}
	
	
///////////////////////////////////////////////////////////////////////////////////
///////////////////////////////////////////////////////////////////////////////////
	
	@RequestMapping(value="index")
	public String index(HttpServletRequest request, HttpServletResponse reponse) throws IOException { 
		log.info("hi");
		
		List<StudentDTO> rList = new ArrayList<StudentDTO>();
		
		rList = ExcelManager.getStudentList();
		System.out.println(rList.size());
		Iterator<StudentDTO> it = rList.iterator();
		while(it.hasNext()) {
			StudentDTO id = it.next();
			System.out.print("id : " + id.getId() + "name : " + id.getName() 
			+ "sex : " + id.getSex() 
			+ "age : " + id.getAge() 
			+ "residence : " + id.getResidence()
			+ "job : " + id.getJob() 
			+ "programs_count : " + id.getPrograms_count()
			+ "stress : " + id.getStress()
			+ "eval : " + id.getEval());
			System.out.println();
		}
		
		
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
