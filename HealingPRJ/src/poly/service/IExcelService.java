package poly.service;

import java.io.IOException;

import org.apache.poi.xssf.usermodel.XSSFWorkbook;

import poly.dto.ProgramInsertDTO;
import poly.dto.ReceiptInsertDTO;
import poly.dto.ServiceInsertDTO;
import poly.dto.ServiceInsertVO;

public interface IExcelService {

	XSSFWorkbook excelDownload(ServiceInsertDTO serviceDtoList) throws IOException;

	XSSFWorkbook excelDownload(ProgramInsertDTO programDtoList) throws IOException;

	XSSFWorkbook excelDownload(ReceiptInsertDTO receiptDtoList) throws IOException;

}
