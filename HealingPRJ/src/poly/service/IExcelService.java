package poly.service;

import java.io.IOException;

import org.apache.poi.xssf.usermodel.XSSFWorkbook;

import poly.dto.ServiceInsertDTO;
import poly.dto.ServiceInsertVO;

public interface IExcelService {

	XSSFWorkbook excelDownload(ServiceInsertDTO serviceDtoList) throws IOException;

}
