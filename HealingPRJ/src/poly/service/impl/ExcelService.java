package poly.service.impl;

import java.io.IOException;

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
import poly.dto.serviceInsertVO;
import poly.service.IExcelService;
import poly.util.CmmUtil;

@Service("ExcelService")
public class ExcelService implements IExcelService {

	private Logger log = Logger.getLogger(this.getClass());

	@Override
	public XSSFWorkbook excelDownload(serviceInsertVO servList) throws IOException {

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

		int scoreCount = servList.getServiceInsertList().get(0).getScore().size();
		for (int i = 0; i < scoreCount; i++) {
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

		for (serviceInsertDTO pDTO : servList.getServiceInsertList()) {

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

				for (int j = 0; j < pDTO.getScore().size(); j++) {
					cell = row.createCell(j + 8);
					cell.setCellStyle(bodyStyle);
					cell.setCellValue(Integer.valueOf(pDTO.getScore().get(j).toString()));
					
				}

				// 문항시작 ( 변형을 해서 코드를 줄일 필요있음 ) getscore"1" ?
				/*
				 * cell = row.createCell(8); cell.setCellStyle(bodyStyle);
				 * cell.setCellValue(pDTO.getScore1());
				 */

				listNm++;
			}
		}
		return wb;
	}
}
