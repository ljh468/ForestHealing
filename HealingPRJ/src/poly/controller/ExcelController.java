package poly.controller;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.log4j.Logger;
import org.apache.poi.hssf.usermodel.HSSFWorkbook;
import org.apache.poi.hssf.util.HSSFColor.HSSFColorPredefined;
import org.apache.poi.ss.usermodel.BorderStyle;
import org.apache.poi.ss.usermodel.Cell;
import org.apache.poi.ss.usermodel.CellStyle;
import org.apache.poi.ss.usermodel.FillPatternType;
import org.apache.poi.ss.usermodel.HorizontalAlignment;
import org.apache.poi.ss.usermodel.Row;
import org.apache.poi.ss.usermodel.Sheet;
import org.apache.poi.ss.usermodel.Workbook;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import poly.dto.StudentDTO;
import poly.util.ExcelManager;

@Controller
public class ExcelController {

	private Logger log = Logger.getLogger(this.getClass());
	
	
	/**
	 * TEST용 Eecel 다운로드 예제
	 */
	@RequestMapping(value = "/excelDown")

	public void excelDown(HttpServletResponse response) throws Exception {

		// List 예제
		log.info("excelDown start");
		List<StudentDTO> rlist = new ArrayList<StudentDTO>();
		StudentDTO rDTO = new StudentDTO();

		rDTO.setId("ljh468");
		rDTO.setAge("30");
		rDTO.setJob("학생");

		rlist.add(rDTO);
		rDTO = null;

		rDTO = new StudentDTO();
		rDTO.setId("lsy468");
		rDTO.setAge("31");
		rDTO.setJob("공무원");
		rlist.add(rDTO);

		// 워크북 생성

		Workbook wb = new HSSFWorkbook();

		Sheet sheet = wb.createSheet("프로그램만족도");

		Row row = null;
		Cell cell = null;

		int rowNo = 0;

		// 테이블 헤더용 스타일

		CellStyle headStyle = wb.createCellStyle();

		// 가는 경계선을 가집니다.

		headStyle.setBorderTop(BorderStyle.THIN);

		headStyle.setBorderBottom(BorderStyle.THIN);

		headStyle.setBorderLeft(BorderStyle.THIN);

		headStyle.setBorderRight(BorderStyle.THIN);

		// 배경색은 노란색입니다.

		headStyle.setFillForegroundColor(HSSFColorPredefined.YELLOW.getIndex());

		headStyle.setFillPattern(FillPatternType.SOLID_FOREGROUND);

		// 데이터는 가운데 정렬합니다.

		headStyle.setAlignment(HorizontalAlignment.CENTER);

		// 데이터용 경계 스타일 테두리만 지정

		CellStyle bodyStyle = wb.createCellStyle();

		bodyStyle.setBorderTop(BorderStyle.THIN);

		bodyStyle.setBorderBottom(BorderStyle.THIN);

		bodyStyle.setBorderLeft(BorderStyle.THIN);

		bodyStyle.setBorderRight(BorderStyle.THIN);

		// 헤더 생성

		row = sheet.createRow(rowNo++);

		cell = row.createCell(0);
		cell.setCellStyle(headStyle);
		cell.setCellValue("번호");

		cell = row.createCell(1);
		cell.setCellStyle(headStyle);
		cell.setCellValue("실시일자");

		cell = row.createCell(2);
		cell.setCellStyle(headStyle);
		cell.setCellValue("기관명");

		cell = row.createCell(3);
		cell.setCellStyle(headStyle);
		cell.setCellValue("참여프로그램");

		cell = row.createCell(4);
		cell.setCellStyle(headStyle);
		cell.setCellValue("성별");

		cell = row.createCell(5);
		cell.setCellStyle(headStyle);
		cell.setCellValue("연령");

		cell = row.createCell(6);
		cell.setCellStyle(headStyle);
		cell.setCellValue("거주지");

		cell = row.createCell(7);
		cell.setCellStyle(headStyle);
		cell.setCellValue("직업");

		cell = row.createCell(8);
		cell.setCellStyle(headStyle);
		cell.setCellValue("프로그램명");

		cell = row.createCell(9);
		cell.setCellStyle(headStyle);
		cell.setCellValue("강사명");

		cell = row.createCell(10);
		cell.setCellStyle(headStyle);
		cell.setCellValue("장소");

		for (int i = 0; i <= 10; i++) {
			cell = row.createCell(i + 11);
			cell.setCellStyle(headStyle);
			cell.setCellValue("문항" + (i + 1));
		}

		cell = row.createCell(21);
		cell.setCellStyle(headStyle);
		cell.setCellValue("강사 평균");

		cell = row.createCell(22);
		cell.setCellStyle(headStyle);
		cell.setCellValue("구성/품질 평균");

		cell = row.createCell(23);
		cell.setCellStyle(headStyle);
		cell.setCellValue("효과성 평균");

		// 데이터 부분 생성

		for (StudentDTO pDTO : rlist) {

			row = sheet.createRow(rowNo++);

			cell = row.createCell(0);

			cell.setCellStyle(bodyStyle);

			cell.setCellValue(pDTO.getId());

			cell = row.createCell(1);

			cell.setCellStyle(bodyStyle);

			cell.setCellValue(pDTO.getAge());

			cell = row.createCell(2);

			cell.setCellStyle(bodyStyle);

			cell.setCellValue(pDTO.getJob());

		}

		// 컨텐츠 타입과 파일명 지정

		response.setContentType("ms-vnd/excel");

		response.setHeader("Content-Disposition", "attachment;filename=].xlsx");

		// 엑셀 출력

		wb.write(response.getOutputStream());

		wb.close();
		log.info("excelDown end");
	}
	
	
	/**
	 * Excel Upload 예제
	 */
	@RequestMapping(value = "/excelUpload")
	@ResponseBody
	public String excelUpload(HttpServletRequest request, HttpServletResponse response) throws Exception {

		List<StudentDTO> rList = new ArrayList<StudentDTO>();

		rList = ExcelManager.getStudentList();
		System.out.println(rList.size());
		Iterator<StudentDTO> it = rList.iterator();
		while (it.hasNext()) {
			StudentDTO id = it.next();
			System.out.print("id : " + id.getId() + "name : " + id.getName() + "sex : " + id.getSex() + "age : "
					+ id.getAge() + "residence : " + id.getResidence() + "job : " + id.getJob() + "programs_count : "
					+ id.getPrograms_count() + "stress : " + id.getStress() + "eval : " + id.getEval());
			System.out.println();
		}

		return "success";
	}
}
