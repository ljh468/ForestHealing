package poly.service.impl;

import java.io.IOException;
import java.util.ArrayList;

import org.apache.log4j.Logger;
import org.apache.poi.hssf.util.HSSFColor.HSSFColorPredefined;
import org.apache.poi.ss.usermodel.BorderStyle;
import org.apache.poi.ss.usermodel.Cell;
import org.apache.poi.ss.usermodel.CellStyle;
import org.apache.poi.ss.usermodel.FillPatternType;
import org.apache.poi.ss.usermodel.HorizontalAlignment;
import org.apache.poi.ss.usermodel.Row;
import org.apache.poi.ss.usermodel.Sheet;
import org.apache.poi.xssf.usermodel.XSSFWorkbook;
import org.springframework.stereotype.Service;

import poly.dto.ProgramInsertDTO;
import poly.dto.ReceiptInsertDTO;
import poly.dto.ServiceInsertDTO;
import poly.service.IExcelService;
import poly.util.CmmUtil;

@Service("ExcelService")
public class ExcelService implements IExcelService {

	private Logger log = Logger.getLogger(this.getClass());
	
	/**
	 * 서비스환경 만족도 엑셀 다운로드
	 */
	@Override
	public XSSFWorkbook excelDownload(ServiceInsertDTO serviceDtoList) throws IOException {
		
		log.info(log.getClass().getName() + "service excelDownload start");
		/* int res = 0; */
		// 워크북 생성
		
		XSSFWorkbook wb = new XSSFWorkbook();

		Sheet sheet = wb.createSheet("서비스환경만족도");

		Row row = null;
		Cell cell = null;

		int rowNo = 0;

		// 테이블 헤더용 스타일

		CellStyle headStyle = wb.createCellStyle();

		// 가는 경계선

		headStyle.setBorderTop(BorderStyle.THIN);

		headStyle.setBorderBottom(BorderStyle.THIN);

		headStyle.setBorderLeft(BorderStyle.THIN);

		headStyle.setBorderRight(BorderStyle.THIN);

		// 배경색은 노란색입니다.

		headStyle.setFillForegroundColor(HSSFColorPredefined.LEMON_CHIFFON.getIndex());

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
		cell.setCellValue("기관명");

		cell = row.createCell(2);
		cell.setCellStyle(headStyle);
		cell.setCellValue("실시일자");

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

		int scoreCount = serviceDtoList.getServiceDtoList().get(0).getScoreList().size();
		int questionCnt = 0;
		for (int i = 0; i < scoreCount; i++) {
			cell = row.createCell(i + 8);
			cell.setCellStyle(headStyle);
			
				if(i == 10 || i == 17) {
					cell.setCellValue("기타의견");
					questionCnt = 0;
				}else {
					cell.setCellValue("문항" + (questionCnt + 1));
				}
		}

		cell = row.createCell(28);
		cell.setCellStyle(headStyle);
		cell.setCellValue("숙소 평균");

		cell = row.createCell(29);
		cell.setCellStyle(headStyle);
		cell.setCellValue("식당 평균");

		cell = row.createCell(30);
		cell.setCellStyle(headStyle);
		cell.setCellValue("프로그램장소 평균");
		
		cell = row.createCell(31);
		cell.setCellStyle(headStyle);
		cell.setCellValue("숲(야외) 평균");
		
		cell = row.createCell(32);
		cell.setCellStyle(headStyle);
		cell.setCellValue("운영 평균");
		
		cell = row.createCell(33);
		cell.setCellStyle(headStyle);
		cell.setCellValue("식사 평균");
		
		cell = row.createCell(34);
		cell.setCellStyle(headStyle);
		cell.setCellValue("잠재적 관광수요 평균");
		

		// 데이터 부분 생성
		int listNm = 0;

		for (ServiceInsertDTO pDTO : serviceDtoList.getServiceDtoList()) {

			row = sheet.createRow(rowNo++);

			// 빈값들어오면 더이상 for문 안돌게
//            // + 이 구조로 간다하면 for문안에 jsp 알러트 창 띄울예정
//            if(CmmUtil.nvl(list.get(i).get("sex").toString()).equals("")) {
//               break;
//            }
			if (pDTO.getSex().toString().equals("")) {
				log.info("pDTO.getsex == null ? : " + pDTO.getSex() == null);
				return wb;
			} else {

				cell = row.createCell(0);
				cell.setCellStyle(bodyStyle);
				cell.setCellValue(listNm);

				cell = row.createCell(1);
				cell.setCellStyle(bodyStyle);
				cell.setCellValue(CmmUtil.nvl(pDTO.getAgency()));

				cell = row.createCell(2);
				cell.setCellStyle(bodyStyle);
				cell.setCellValue(pDTO.getDate());

				cell = row.createCell(3);
				cell.setCellStyle(bodyStyle);
				cell.setCellValue(CmmUtil.nvl(pDTO.getPtcProgram()));

				int sexNm = Integer.valueOf(pDTO.getSex().toString());
				log.info("sexNm : " + sexNm);
				cell = row.createCell(4);
				cell.setCellStyle(bodyStyle);
				cell.setCellValue(sexNm);

				int age = Integer.parseInt(pDTO.getAge());
				log.info("age : " + age);
				cell = row.createCell(5);
				cell.setCellStyle(bodyStyle);
				cell.setCellValue(age);

				cell = row.createCell(6);
				cell.setCellStyle(bodyStyle);
				cell.setCellValue(CmmUtil.nvl(pDTO.getResidence()));

				cell = row.createCell(7);
				cell.setCellStyle(bodyStyle);
				cell.setCellValue(CmmUtil.nvl(pDTO.getJob()));

				for (int j = 0; j < pDTO.getScoreList().size(); j++) {
					cell = row.createCell(j + 8);
					cell.setCellStyle(bodyStyle);
					cell.setCellValue(pDTO.getScoreList().get(j).toString());
					
				}
				
				cell = row.createCell(28);
				cell.setCellStyle(headStyle);
				cell.setCellValue("숙소 평균");

				cell = row.createCell(29);
				cell.setCellStyle(headStyle);
				cell.setCellValue("식당 평균");

				cell = row.createCell(30);
				cell.setCellStyle(headStyle);
				cell.setCellValue("프로그램장소 평균");
				
				cell = row.createCell(31);
				cell.setCellStyle(headStyle);
				cell.setCellValue("숲(야외) 평균");
				
				cell = row.createCell(32);
				cell.setCellStyle(headStyle);
				cell.setCellValue("운영 평균");
				
				cell = row.createCell(33);
				cell.setCellStyle(headStyle);
				cell.setCellValue("식사 평균");
				
				cell = row.createCell(34);
				cell.setCellStyle(headStyle);
				cell.setCellValue("잠재적 관광수요 평균");
				
				listNm++;
			}
		}
		log.info(log.getClass().getName() + "service excelDownload end");
		return wb;
	}
	
	/**
	 * 프로그램만족도 엑셀 다운로드
	 */
	@Override
	public XSSFWorkbook excelDownload(ProgramInsertDTO programDtoList) throws IOException {

		log.info(log.getClass().getName() + "program excelDownload start");
		/* int res = 0; */
		// 워크북 생성
		
		XSSFWorkbook wb = new XSSFWorkbook();

		Sheet sheet = wb.createSheet("서비스환경만족도");

		Row row = null;
		Cell cell = null;

		int rowNo = 0;

		// 테이블 헤더용 스타일

		CellStyle headStyle = wb.createCellStyle();

		// 가는 경계선

		headStyle.setBorderTop(BorderStyle.THIN);

		headStyle.setBorderBottom(BorderStyle.THIN);

		headStyle.setBorderLeft(BorderStyle.THIN);

		headStyle.setBorderRight(BorderStyle.THIN);

		// 배경색은 노란색입니다.

		headStyle.setFillForegroundColor(HSSFColorPredefined.LEMON_CHIFFON.getIndex());

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
		cell.setCellValue("기관명");

		cell = row.createCell(2);
		cell.setCellStyle(headStyle);
		cell.setCellValue("실시일자");

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
		

		int scoreCount = programDtoList.getProgramDtoList().get(0).getScoreList().size();
		int questionCnt = 0;
		for (int i = 0; i < scoreCount; i++) {
			cell = row.createCell(i + 11);
			cell.setCellStyle(headStyle);
			
				if(i == 9) {
					cell.setCellValue("기타의견");
					questionCnt = 0;
				}else {
					cell.setCellValue("문항" + (questionCnt + 1));
				}
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
		int listNm = 0;

		for (ProgramInsertDTO pDTO : programDtoList.getProgramDtoList()) {

			row = sheet.createRow(rowNo++);

			if (pDTO.getSex().toString().equals("")) {
				log.info("pDTO.getsex == null ? : " + pDTO.getSex() == null);
				return wb;
			} else {

				cell = row.createCell(0);
				cell.setCellStyle(bodyStyle);
				cell.setCellValue(listNm);

				cell = row.createCell(1);
				cell.setCellStyle(bodyStyle);
				cell.setCellValue(CmmUtil.nvl(pDTO.getAgency()));

				cell = row.createCell(2);
				cell.setCellStyle(bodyStyle);
				cell.setCellValue(pDTO.getDate());

				cell = row.createCell(3);
				cell.setCellStyle(bodyStyle);
				cell.setCellValue(CmmUtil.nvl(pDTO.getPtcProgram()));

				int sexNm = Integer.valueOf(pDTO.getSex().toString());
				log.info("sexNm : " + sexNm);
				cell = row.createCell(4);
				cell.setCellStyle(bodyStyle);
				cell.setCellValue(sexNm);

				int age = Integer.parseInt(pDTO.getAge());
				log.info("age : " + age);
				cell = row.createCell(5);
				cell.setCellStyle(bodyStyle);
				cell.setCellValue(age);

				cell = row.createCell(6);
				cell.setCellStyle(bodyStyle);
				cell.setCellValue(CmmUtil.nvl(pDTO.getResidence()));

				cell = row.createCell(7);
				cell.setCellStyle(bodyStyle);
				cell.setCellValue(CmmUtil.nvl(pDTO.getJob()));
				
				cell = row.createCell(8);
				cell.setCellStyle(bodyStyle);
				cell.setCellValue(CmmUtil.nvl(pDTO.getProgramName()));
				
				cell = row.createCell(9);
				cell.setCellStyle(bodyStyle);
				cell.setCellValue(CmmUtil.nvl(pDTO.getTeacher()));
				
				cell = row.createCell(10);
				cell.setCellStyle(bodyStyle);
				cell.setCellValue(CmmUtil.nvl(pDTO.getPlace()));
				
				
				
				for (int j = 0; j < pDTO.getScoreList().size(); j++) {
					cell = row.createCell(j + 11);
					cell.setCellStyle(bodyStyle);
					cell.setCellValue(pDTO.getScoreList().get(j).toString());
					
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
				
				listNm++;
			}
		}
		log.info(log.getClass().getName() + "program excelDownload end");
		return wb;
	}
	
	/**
	 * 상담치유 서비스 엑셀다운로드
	 */
	@Override
	public XSSFWorkbook excelDownload(ReceiptInsertDTO receiptDtoList) throws IOException {
		log.info(log.getClass().getName() + "program excelDownload start");
		/* int res = 0; */
		// 워크북 생성
		
		XSSFWorkbook wb = new XSSFWorkbook();

		Sheet sheet = wb.createSheet("상담치유서비스효과평가");

		Row row = null;
		Cell cell = null;

		int rowNo = 0;

		// 테이블 헤더용 스타일

		CellStyle headStyle = wb.createCellStyle();

		// 가는 경계선

		headStyle.setBorderTop(BorderStyle.THIN);

		headStyle.setBorderBottom(BorderStyle.THIN);
 
		headStyle.setBorderLeft(BorderStyle.THIN);

		headStyle.setBorderRight(BorderStyle.THIN);

		// 배경색은 노란색입니다.

		headStyle.setFillForegroundColor(HSSFColorPredefined.LEMON_CHIFFON.getIndex());

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
		cell.setCellValue("기관명");

		cell = row.createCell(2);
		cell.setCellStyle(headStyle);
		cell.setCellValue("실시일자");

		cell = row.createCell(3);
		cell.setCellStyle(headStyle);
		cell.setCellValue("성명");

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
		cell.setCellValue("과거 상담/치유 서비스 경험 유무");
		
		cell = row.createCell(9);
		cell.setCellStyle(headStyle);
		cell.setCellValue("콘텐츠 종류");
		
		cell = row.createCell(10);
		cell.setCellStyle(headStyle);
		cell.setCellValue("회기");
		
		cell = row.createCell(11);
		cell.setCellStyle(headStyle);
		cell.setCellValue("회당시간");
		
		cell = row.createCell(12);
		cell.setCellStyle(headStyle);
		cell.setCellValue("월사용료 ");
		
		ArrayList<String> pList = new ArrayList<>();
		pList.add("변화동기");
		pList.add("신뢰(라포)");
		pList.add("서비스이해");
		pList.add("조절실패");
		pList.add("현저성");
		pList.add("문제적결과");
		pList.add("낮은자기조절력");
		pList.add("부정정서");
		pList.add("편향된신념");
		pList.add("역기능적자기도식");
		pList.add("대인관계기술부족");
		pList.add("대인민감성");
		pList.add("관계/유능욕구충족");
		pList.add("긍정정서");
		pList.add("삶의만족");
		pList.add("자기이해");
		pList.add("자기수용");
		pList.add("마음관리기술/기회");
		pList.add("스마트폰활용역량");
		
		int questionCnt = 0;

		for (String question : pList) {
			String report = "사전";

			for (int j = 0; j < 3; j++) {
					cell = row.createCell(questionCnt + j + 13);
					cell.setCellStyle(headStyle);
					cell.setCellValue(report + question);
					// 사전, 중간, 사후 순환로직	
					if(report.equals("사전")) {
						report = "중간";
					}else if(report.equals("중간")){
						report = "사후";
					}else {
						report = "사전";
					}
			}
			questionCnt = questionCnt + 3;
		}
		
		// 데이터 부분 생성
		int listNm = 0;
		for (ReceiptInsertDTO pDTO : receiptDtoList.getReceiptDtoList()) {

			row = sheet.createRow(rowNo++);

			if (pDTO.getSex().toString().equals("")) {
				log.info("pDTO.getsex == null ? : " + pDTO.getSex() == null);
				return wb;
			} else {

				cell = row.createCell(0);
				cell.setCellStyle(bodyStyle);
				cell.setCellValue(listNm);

				cell = row.createCell(1);
				cell.setCellStyle(bodyStyle);
				cell.setCellValue(CmmUtil.nvl(pDTO.getAgency()));

				cell = row.createCell(2);
				cell.setCellStyle(bodyStyle);
				cell.setCellValue(pDTO.getDate());

				cell = row.createCell(3);
				cell.setCellStyle(bodyStyle);
				cell.setCellValue(CmmUtil.nvl(pDTO.getName()));

				int sexNm = Integer.valueOf(pDTO.getSex().toString());
				log.info("sexNm : " + sexNm);
				cell = row.createCell(4);
				cell.setCellStyle(bodyStyle);
				cell.setCellValue(sexNm);

				int age = Integer.parseInt(pDTO.getAge());
				log.info("age : " + age);
				cell = row.createCell(5);
				cell.setCellStyle(bodyStyle);
				cell.setCellValue(age);

				cell = row.createCell(6);
				cell.setCellStyle(bodyStyle);
				cell.setCellValue(CmmUtil.nvl(pDTO.getResidence()));

				cell = row.createCell(7);
				cell.setCellStyle(bodyStyle);
				cell.setCellValue(CmmUtil.nvl(pDTO.getJob()));
				
				cell = row.createCell(8);
				cell.setCellStyle(bodyStyle);
				cell.setCellValue(CmmUtil.nvl(pDTO.getPastExp()));
				
				cell = row.createCell(9);
				cell.setCellStyle(bodyStyle);
				cell.setCellValue(CmmUtil.nvl(pDTO.getContents()));
				
				// 사전 중간 종결 데이터는  1/1/1형태로 되어있음
				// 데이터를 잘라서 넣어줌
				String session[] = pDTO.getSession().split("/"); 

				cell = row.createCell(10);
				cell.setCellStyle(bodyStyle);
				cell.setCellValue(CmmUtil.nvl(session[0]));
				
				cell = row.createCell(11);
				cell.setCellStyle(bodyStyle);
				cell.setCellValue(CmmUtil.nvl(session[1]));
				
				cell = row.createCell(12);
				cell.setCellStyle(bodyStyle);
				cell.setCellValue(CmmUtil.nvl(session[2]));
				
				
				for (int k = 0; k < pDTO.getScoreList().size(); k++) {
					cell = row.createCell(k + 13);
					cell.setCellStyle(bodyStyle);
					cell.setCellValue(pDTO.getScoreList().get(k).toString());
					
				}

				listNm++;
			}
		}
		log.info(log.getClass().getName() + "program excelDownload end");
		return wb;
	}
	
	/**
	 * 예방 서비스 엑셀다운로드
	 */
	
}

