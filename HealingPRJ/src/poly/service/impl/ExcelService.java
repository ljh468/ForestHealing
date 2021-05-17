package poly.service.impl;

import java.io.IOException;
import java.util.List;

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

import poly.dto.serviceInsertDTO;
import poly.service.IExcelService;

@Service("ExcelService")
public class ExcelService implements IExcelService {

	private Logger log = Logger.getLogger(this.getClass());

	@Override
	public XSSFWorkbook excelDownload(List<serviceInsertDTO> serviceDtoList) throws IOException {
		
		int res = 0;
		// 워크북 생성

		XSSFWorkbook wb = new XSSFWorkbook();

		Sheet sheet = wb.createSheet("프로그램만족도");

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

		for (int i = 0; i <= 17; i++) {
			cell = row.createCell(i + 8);
			cell.setCellStyle(headStyle);
			cell.setCellValue("문항" + (i + 1));
		}

		cell = row.createCell(26);
		cell.setCellStyle(headStyle);
		cell.setCellValue("강사 평균");

		cell = row.createCell(27);
		cell.setCellStyle(headStyle);
		cell.setCellValue("구성/품질 평균");

		cell = row.createCell(28);
		cell.setCellStyle(headStyle);
		cell.setCellValue("효과성 평균");

		// 데이터 부분 생성
		int listNm = 0;
		int count = serviceDtoList.size();

		for (serviceInsertDTO pDTO : serviceDtoList) {

			row = sheet.createRow(rowNo++);

			cell = row.createCell(0);
			cell.setCellStyle(bodyStyle);
			cell.setCellValue(listNm);

			cell = row.createCell(1);
			cell.setCellStyle(bodyStyle);
			cell.setCellValue(pDTO.getAgency());

			cell = row.createCell(2);
			cell.setCellStyle(bodyStyle);
			cell.setCellValue(pDTO.getDate());
			
			cell = row.createCell(3);
			cell.setCellStyle(bodyStyle);
			cell.setCellValue(pDTO.getPtcProgram());

			cell = row.createCell(4);
			cell.setCellStyle(bodyStyle);
			cell.setCellValue(pDTO.getSex());

			cell = row.createCell(5);
			cell.setCellStyle(bodyStyle);
			cell.setCellValue(pDTO.getAge());

			cell = row.createCell(6);
			cell.setCellStyle(bodyStyle);
			cell.setCellValue(pDTO.getResidence());

			cell = row.createCell(7);
			cell.setCellStyle(bodyStyle);
			cell.setCellValue(pDTO.getJob());
			
			// 문항시작 ( 변형을 해서 코드를 줄일 필요있음 ) getscore"1" ?
			/*
			cell = row.createCell(8);
			cell.setCellStyle(bodyStyle);
			cell.setCellValue(pDTO.getScore().get(0));
			
			cell = row.createCell(9);
			cell.setCellStyle(bodyStyle);
			cell.setCellValue(pDTO.getScore2());
			
			cell = row.createCell(10);
			cell.setCellStyle(bodyStyle);
			cell.setCellValue(pDTO.getScore3());
			
			cell = row.createCell(11);
			cell.setCellStyle(bodyStyle);
			cell.setCellValue(pDTO.getScore4());
			
			cell = row.createCell(12);
			cell.setCellStyle(bodyStyle);
			cell.setCellValue(pDTO.getScore5());
			
			cell = row.createCell(13);
			cell.setCellStyle(bodyStyle);
			cell.setCellValue(pDTO.getScore6());
			
			cell = row.createCell(14);
			cell.setCellStyle(bodyStyle);
			cell.setCellValue(pDTO.getScore7());
			
			cell = row.createCell(15);
			cell.setCellStyle(bodyStyle);
			cell.setCellValue(pDTO.getScore8());
			
			cell = row.createCell(16);
			cell.setCellStyle(bodyStyle);
			cell.setCellValue(pDTO.getScore9());
			
			cell = row.createCell(17);
			cell.setCellStyle(bodyStyle);
			cell.setCellValue(pDTO.getScore10());
			
			cell = row.createCell(18);
			cell.setCellStyle(bodyStyle);
			cell.setCellValue(pDTO.getScore11());
			
			cell = row.createCell(19);
			cell.setCellStyle(bodyStyle);
			cell.setCellValue(pDTO.getScore12());
			
			cell = row.createCell(20);
			cell.setCellStyle(bodyStyle);
			cell.setCellValue(pDTO.getScore13());
			
			cell = row.createCell(21);
			cell.setCellStyle(bodyStyle);
			cell.setCellValue(pDTO.getScore14());
			
			cell = row.createCell(22);
			cell.setCellStyle(bodyStyle);
			cell.setCellValue(pDTO.getScore15());
			
			cell = row.createCell(23);
			cell.setCellStyle(bodyStyle);
			cell.setCellValue(pDTO.getScore16());
			
			cell = row.createCell(24);
			cell.setCellStyle(bodyStyle);
			cell.setCellValue(pDTO.getScore17());
			
			cell = row.createCell(25);
			cell.setCellStyle(bodyStyle);
			cell.setCellValue(pDTO.getScore18());*/
			
			listNm ++;
		}

		return wb;
	}
}
