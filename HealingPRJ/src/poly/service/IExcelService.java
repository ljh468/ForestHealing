package poly.service;

import java.io.IOException;

import org.apache.poi.xssf.usermodel.XSSFWorkbook;

import poly.dto.serviceInsertVO;

public interface IExcelService {

	XSSFWorkbook excelDownload(serviceInsertVO servList) throws IOException;

}
