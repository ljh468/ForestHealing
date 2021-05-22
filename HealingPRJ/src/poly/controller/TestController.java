package poly.controller;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import poly.dto.HealingInsertDTO;
import poly.dto.PreventSerivceDTO;
import poly.dto.ProgramInsertDTO;
import poly.dto.ReceiptInsertDTO;
import poly.dto.ServiceInsertDTO;
import poly.service.ITestService;

@Controller
public class TestController {

	private Logger log = Logger.getLogger(this.getClass());
	
	@Resource(name = "TestService")
	private ITestService testService;
		
	
//서비스 만족도 시작.~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~`
	//서비스 만족도 컨트롤러
	@RequestMapping(value="insertForm/serviceInsertForm")
	public String index(HttpServletRequest request, HttpServletResponse reponse) { 
		
		log.info("hi");
		return "/insertForm/serviceInsertForm";
	}
	
	@RequestMapping(value = "insertForm/serviceInsertForm/insertData")
    @ResponseBody
    public String serviceInsertData(@ModelAttribute ServiceInsertDTO serviceDtoList, HttpServletResponse response) throws Exception{
      
		log.info("insertForm/serviceInsertForm/insertData start");
       
		//log 찍어보기
		for(int i = 0 ; i<serviceDtoList.getServiceDtoList().size();i++) {
          log.info("agency : " + serviceDtoList.getServiceDtoList().get(i).getAgency() + " | date : " + serviceDtoList.getServiceDtoList().get(i).getDate() + 
        		  " | ptcProgram : " + serviceDtoList.getServiceDtoList().get(i).getPtcProgram() + " | sex : " + serviceDtoList.getServiceDtoList().get(i).getSex() + 
        		  " | age : " + serviceDtoList.getServiceDtoList().get(i).getAge() + " | residence" + serviceDtoList.getServiceDtoList().get(i).getResidence() +
        		  " | job : " + serviceDtoList.getServiceDtoList().get(i).getJob() + " | scoreList : " + serviceDtoList.getServiceDtoList().get(i).getScoreList());
       }
//       log.info("excelService.excelDownload start!");
//       XSSFWorkbook wb = excelService.excelDownload(serviceDtoList);
//       log.info("excelService.excelDownload end!");
//       
//       // 컨텐츠 타입과 파일명 지정
//
//       response.setContentType("ms-vnd/excel");
//       response.setHeader("Content-Disposition", "attachment;filename=].xlsx");
//
//       // 엑셀 출력
//       String projectPath = System.getProperty("user.home");
//       log.info(projectPath);
//       String name = "_서비스환경만족도";
//       String date = DateUtil.getDateTime();
//       log.info(date);
//       // 21.05.13_폴리텍
//       
//       FileOutputStream output = new FileOutputStream("C:\\excel\\"+File.separator+date+"_"+agency+name+".xlsx");
//
//       log.info(output);
//       wb.write(output);
//       wb.close();
       
       log.info("insertForm/serviceInsertForm/insertData end");
       return "succees";
    }
//서비스 만족도 끝. ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~	
	
	
//프로그램 만족도 시작.~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~`
	//프로그램 만족도 컨트롤러
	@RequestMapping(value="insertForm/programInsertForm")
	public String programInsertForm(HttpServletRequest request, HttpServletResponse reponse) { 
		
		log.info(this.getClass().getName() + ".programInsertForm");
		
		return "/insertForm/programInsertForm";
	}
	
	@RequestMapping(value = "insertForm/programInsertForm/insertData")
	@ResponseBody
	public String programInsertData(@ModelAttribute ProgramInsertDTO programDtoList, HttpServletResponse response)
			throws Exception {

		log.info("insertForm/programInsertForm/insertData start");
		// log 찍어보기
		for (int i = 0; i < programDtoList.getProgramDtoList().size(); i++) {
			log.info("agency : " + programDtoList.getProgramDtoList().get(i).getAgency() + " | date : "
					+ programDtoList.getProgramDtoList().get(i).getDate() + " | ptcProgram : "
					+ programDtoList.getProgramDtoList().get(i).getPtcProgram() + " | sex : "
					+ programDtoList.getProgramDtoList().get(i).getSex() + " | age : "
					+ programDtoList.getProgramDtoList().get(i).getAge() + " | residence"
					+ programDtoList.getProgramDtoList().get(i).getResidence() + " | job : "
					+ programDtoList.getProgramDtoList().get(i).getJob() + " | scoreList : "
					+ programDtoList.getProgramDtoList().get(i).getScoreList());
			
		}

//       log.info("excelService.excelDownload start!");
//       XSSFWorkbook wb = excelService.excelDownload(serviceDtoList);
//       log.info("excelService.excelDownload end!");
//       
//       // 컨텐츠 타입과 파일명 지정
//
//       response.setContentType("ms-vnd/excel");
//       response.setHeader("Content-Disposition", "attachment;filename=].xlsx");
//
//       // 엑셀 출력
//       String projectPath = System.getProperty("user.home");
//       log.info(projectPath);
//       String name = "_서비스환경만족도";
//       String date = DateUtil.getDateTime();
//       log.info(date);
//       // 21.05.13_폴리텍
//       
//       FileOutputStream output = new FileOutputStream("C:\\excel\\"+File.separator+date+"_"+agency+name+".xlsx");
//
//       log.info(output);
//       wb.write(output);
//       wb.close();
       
       log.info("insertForm/serviceInsertForm/insertData end");
       return "succees";
    }
//프로그램 만족도 끝.~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~`
	
	
//상담&치유 접수면접 서비스 효과평가 시작. ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~	
	//상담&치유 서비스 중 접수면접 Sheet 컨트롤러
	@RequestMapping(value="insertForm/receiptInsertForm")
	public String receiptInsertForm(HttpServletRequest request, HttpServletResponse reponse) { 
		
		log.info(this.getClass().getName() + ".receiptInsertForm");
		
		return "/insertForm/receiptInsertForm";
	}
	
	@RequestMapping(value = "insertForm/receiptInsertForm/insertData", method = RequestMethod.POST)
	@ResponseBody
	public String receiptInsertData(@ModelAttribute ReceiptInsertDTO receiptDtoList, HttpServletResponse response)
			throws Exception {

		log.info("insertForm/receiptInsertForm/insertData start");
		// log 찍어보기
		for (int i = 0; i < receiptDtoList.getReceiptDtoList().size(); i++) {
			log.info("agency : " + receiptDtoList.getReceiptDtoList().get(i).getAgency() + " | date : "
					+ receiptDtoList.getReceiptDtoList().get(i).getDate() + " | contents : "
					+ receiptDtoList.getReceiptDtoList().get(i).getContents() + " | session : "
					+ receiptDtoList.getReceiptDtoList().get(i).getSession() + " | name : "
					+ receiptDtoList.getReceiptDtoList().get(i).getName() + " | sex : " 
					+ receiptDtoList.getReceiptDtoList().get(i).getSex() + " | age : "
					+ receiptDtoList.getReceiptDtoList().get(i).getAge() + " | residence"
					+ receiptDtoList.getReceiptDtoList().get(i).getResidence() + " | job : "
					+ receiptDtoList.getReceiptDtoList().get(i).getJob() + " | pastExp : "
					+ receiptDtoList.getReceiptDtoList().get(i).getPastExp() + " | scoreList : "
				    + receiptDtoList.getReceiptDtoList().get(i).getScoreList());
			
		}
		

		

//       log.info("excelService.excelDownload start!");
//       XSSFWorkbook wb = excelService.excelDownload(serviceDtoList);
//       log.info("excelService.excelDownload end!");
//       
//       // 컨텐츠 타입과 파일명 지정
//
//       response.setContentType("ms-vnd/excel");
//       response.setHeader("Content-Disposition", "attachment;filename=].xlsx");
//
//       // 엑셀 출력
//       String projectPath = System.getProperty("user.home");
//       log.info(projectPath);
//       String name = "_서비스환경만족도";
//       String date = DateUtil.getDateTime();
//       log.info(date);
//       // 21.05.13_폴리텍
//       
//       FileOutputStream output = new FileOutputStream("C:\\excel\\"+File.separator+date+"_"+agency+name+".xlsx");
//
//       log.info(output);
//       wb.write(output);
//       wb.close();
       
       log.info("insertForm/receiptInsertForm/insertData end");
       return "succees";
    }
	
//상담&치유 접수면접 서비스 효과평가 끝 ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~	

	
//예방 서비스 효과평가 시작 ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~	
	//예방서비스 효과평가 컨트롤로
	@RequestMapping(value="insertForm/preventInsertForm")
	public String preventInsertForm(HttpServletRequest request, HttpServletResponse reponse) { 
		
		log.info(this.getClass().getName() + ".preventInsertForm");
		
		return "/insertForm/preventInsertForm";
	}
	
	@RequestMapping(value = "insertForm/preventInsertForm/insertData", method = RequestMethod.POST)
	@ResponseBody
	public String preventInsertData(@ModelAttribute PreventSerivceDTO preventDtoList, HttpServletResponse response)
			throws Exception {

		log.info("insertForm/preventInsertData/insertData start");
		// log 찍어보기
		for (int i = 0; i < preventDtoList.getPreventDtoList().size(); i++) {
			log.info("agency : " + preventDtoList.getPreventDtoList().get(i).getAgency() + " | date : "
					+ preventDtoList.getPreventDtoList().get(i).getDate() +  " | name : "
					+ preventDtoList.getPreventDtoList().get(i).getName() + " | sex : " 
					+ preventDtoList.getPreventDtoList().get(i).getSex() + " | age : "
					+ preventDtoList.getPreventDtoList().get(i).getAge() + " | residence"
					+ preventDtoList.getPreventDtoList().get(i).getResidence() + " | job : "
					+ preventDtoList.getPreventDtoList().get(i).getJob() + " | pastStress : "
					+ preventDtoList.getPreventDtoList().get(i).getPastStress() + " | scoreList : "
				    + preventDtoList.getPreventDtoList().get(i).getScoreList());
			
		}
		

		

//       log.info("excelService.excelDownload start!");
//       XSSFWorkbook wb = excelService.excelDownload(serviceDtoList);
//       log.info("excelService.excelDownload end!");
//       
//       // 컨텐츠 타입과 파일명 지정
//
//       response.setContentType("ms-vnd/excel");
//       response.setHeader("Content-Disposition", "attachment;filename=].xlsx");
//
//       // 엑셀 출력
//       String projectPath = System.getProperty("user.home");
//       log.info(projectPath);
//       String name = "_서비스환경만족도";
//       String date = DateUtil.getDateTime();
//       log.info(date);
//       // 21.05.13_폴리텍
//       
//       FileOutputStream output = new FileOutputStream("C:\\excel\\"+File.separator+date+"_"+agency+name+".xlsx");
//
//       log.info(output);
//       wb.write(output);
//       wb.close();
       
       log.info("insertForm/preventInsertData/insertData end");
       return "succees";
    }
//예방 서비스 효과평가 끝 ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~	

	
//힐링 서비스 효과평가 시작 ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~	
	//힐링서비스 효과평가 컨트롤로
	@RequestMapping(value="insertForm/healingInsertForm")
	public String healingInsertForm(HttpServletRequest request, HttpServletResponse reponse) { 
		
		log.info(this.getClass().getName() + ".healingInsertForm");
		
		return "/insertForm/healingInsertForm";
	}
	@RequestMapping(value = "insertForm/healingInsertForm/insertData", method = RequestMethod.POST)
	@ResponseBody
	public String healinInsertData(@ModelAttribute HealingInsertDTO healingDtoList, HttpServletResponse response)
			throws Exception {

		log.info("insertForm/preventInsertData/insertData start");
		// log 찍어보기
		for (int i = 0; i < healingDtoList.getHealingDtoList().size(); i++) {
			log.info("agency : " + healingDtoList.getHealingDtoList().get(i).getAgency() + " | date : "
					+ healingDtoList.getHealingDtoList().get(i).getDate() +  " | name : "
					+ healingDtoList.getHealingDtoList().get(i).getName() + " | sex : " 
					+ healingDtoList.getHealingDtoList().get(i).getSex() + " | age : "
					+ healingDtoList.getHealingDtoList().get(i).getAge() + " | residence"
					+ healingDtoList.getHealingDtoList().get(i).getResidence() + " | job : "
					+ healingDtoList.getHealingDtoList().get(i).getJob() + " | pastStress : "
					+ healingDtoList.getHealingDtoList().get(i).getPastStress() + " | scoreList : "
				    + healingDtoList.getHealingDtoList().get(i).getScoreList());
			
		}
		

		

//       log.info("excelService.excelDownload start!");
//       XSSFWorkbook wb = excelService.excelDownload(serviceDtoList);
//       log.info("excelService.excelDownload end!");
//       
//       // 컨텐츠 타입과 파일명 지정
//
//       response.setContentType("ms-vnd/excel");
//       response.setHeader("Content-Disposition", "attachment;filename=].xlsx");
//
//       // 엑셀 출력
//       String projectPath = System.getProperty("user.home");
//       log.info(projectPath);
//       String name = "_서비스환경만족도";
//       String date = DateUtil.getDateTime();
//       log.info(date);
//       // 21.05.13_폴리텍
//       
//       FileOutputStream output = new FileOutputStream("C:\\excel\\"+File.separator+date+"_"+agency+name+".xlsx");
//
//       log.info(output);
//       wb.write(output);
//       wb.close();
       
       log.info("insertForm/preventInsertData/insertData end");
       return "succees";
    }
	
//힐링 서비스 효과평가 끝 ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~	
	
	/*//POI 예제
	@RequestMapping(value = "excel/testRead")
	public String excelTestRead(HttpServletRequest request, HttpServletResponse reponse) throws Exception {
		log.info(this.getClass().getName() + ".excelTestRead Start !");
		
		InsertPreventExcelUtil test = new InsertPreventExcelUtil();
		
		List<PreventSerivceDTO> sList = test.getPreventExcelData();
		
		PreventSerivceDTO a = new PreventSerivceDTO();
		
		System.out.println(sList.get(0).getId());
		
		a.showAll(sList);
		
		log.info(this.getClass().getName() + ".excelTestRead End !");
		return "success";
	}*/



}
