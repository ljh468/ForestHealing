package poly.controller;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.log4j.Logger;
import org.apache.poi.xssf.usermodel.XSSFWorkbook;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.fasterxml.jackson.core.type.TypeReference;
import com.fasterxml.jackson.databind.ObjectMapper;

import poly.dto.StudentDTO;
import poly.dto.serviceInsertDTO;
import poly.service.IExcelService;
import poly.service.ITestService;
import poly.util.CmmUtil;
import poly.util.DateUtil;
import poly.util.ExcelManager;

@Controller
public class TestController {

	private Logger log = Logger.getLogger(this.getClass());
	
	@Resource(name = "TestService")
	private ITestService testService;
	
	@Resource(name = "ExcelService")
	private IExcelService excelService;
	
	//서비스 만족도 컨트롤러
		@RequestMapping(value="insertForm/serviceInsertForm")
		public String serviceInsertForm(HttpServletRequest request, HttpServletResponse reponse) { 
			
			log.info("serviceInsertForm start");
			log.info("serviceInsertForm end");
			
			return "/insertForm/serviceInsertForm";
		}
		
		@RequestMapping(value = "insertForm/serviceInsertForm/insertData")
		@ResponseBody
		public String insertData(@RequestParam Map params, HttpServletResponse response) throws Exception{
			
			log.info("insertForm/serviceInsertForm/insertData start");
			
			//json 변수에 프론트에서 온 데이터 넣기
			String json = params.get("list").toString();
			log.info("json : " + json);
			ObjectMapper mapper = new ObjectMapper();
			
			//List형태로 변환
			List<Map<String, Object>> list = mapper.readValue(json, new TypeReference<List<Map<String, Object>>>(){}); 
			
			String agency = CmmUtil.nvl(list.get(0).get("agency").toString());
			
			//List형의 DTO 담기 위해 선언
			List<serviceInsertDTO> serviceDtoList = new ArrayList<serviceInsertDTO>();
			
			//DTO에 넣기
			for(int i=0; i<list.size(); i++) { 
				
				//빈값들어오면 더이상 for문 안돌게
				// + 이 구조로 간다하면 for문안에 jsp 알러트 창 띄울예정
				if(CmmUtil.nvl(list.get(i).get("sex").toString()).equals("")) {
					break;
				} else {
					
					serviceInsertDTO pDTO = new serviceInsertDTO();
					pDTO.setAgency(CmmUtil.nvl(list.get(i).get("agency").toString()));
					pDTO.setDate(CmmUtil.nvl(list.get(i).get("date").toString()));
					pDTO.setPtcProgram(CmmUtil.nvl(list.get(i).get("ptcProgram").toString()));
					pDTO.setSex(CmmUtil.nvl(list.get(i).get("sex").toString()));
					pDTO.setAge(CmmUtil.nvl(list.get(i).get("age").toString()));
					pDTO.setResidence(CmmUtil.nvl(list.get(i).get("residence").toString()));
					pDTO.setJob(CmmUtil.nvl(list.get(i).get("job").toString()));
					pDTO.setScore1(CmmUtil.nvl(list.get(i).get("score1").toString()));
					pDTO.setScore2(CmmUtil.nvl(list.get(i).get("score2").toString()));
					pDTO.setScore3(CmmUtil.nvl(list.get(i).get("score3").toString()));
					pDTO.setScore4(CmmUtil.nvl(list.get(i).get("score4").toString()));
					pDTO.setScore5(CmmUtil.nvl(list.get(i).get("score5").toString()));
					pDTO.setScore6(CmmUtil.nvl(list.get(i).get("score6").toString()));
					pDTO.setScore7(CmmUtil.nvl(list.get(i).get("score7").toString()));
					pDTO.setScore8(CmmUtil.nvl(list.get(i).get("score8").toString()));
					pDTO.setScore9(CmmUtil.nvl(list.get(i).get("score9").toString()));
					pDTO.setScore10(CmmUtil.nvl(list.get(i).get("score10").toString()));
					pDTO.setScore11(CmmUtil.nvl(list.get(i).get("score11").toString()));
					pDTO.setScore12(CmmUtil.nvl(list.get(i).get("score12").toString()));
					pDTO.setScore13(CmmUtil.nvl(list.get(i).get("score13").toString()));
					pDTO.setScore14(CmmUtil.nvl(list.get(i).get("score14").toString()));
					pDTO.setScore15(CmmUtil.nvl(list.get(i).get("score15").toString()));
					pDTO.setScore16(CmmUtil.nvl(list.get(i).get("score16").toString()));
					pDTO.setScore17(CmmUtil.nvl(list.get(i).get("score17").toString()));
					pDTO.setScore18(CmmUtil.nvl(list.get(i).get("score18").toString()));
					
					//List에 DTO 넣기
					serviceDtoList.add(pDTO);
					pDTO = null;
				}
			}
			
			log.info("excelService.excelDownload start!");
			XSSFWorkbook wb = excelService.excelDownload(serviceDtoList);
			log.info("excelService.excelDownload end!");
			
			// 컨텐츠 타입과 파일명 지정

			response.setContentType("ms-vnd/excel");
			response.setHeader("Content-Disposition", "attachment;filename=].xlsx");

			// 엑셀 출력
			String projectPath = System.getProperty("user.home");
			log.info(projectPath);
			String name = "_서비스환경만족도";
			String date = DateUtil.getDateTime();
			log.info(date);
			// 21.05.13_폴리텍
			
			FileOutputStream output = new FileOutputStream("C:\\excel\\"+File.separator+date+"_"+agency+name+".xlsx");

			log.info(output);
			wb.write(output);
			wb.close();
			
			log.info("insertForm/serviceInsertForm/insertData end");
			return "succees";
		}
		
		//재훈이형 여기입니다.~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
	
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
