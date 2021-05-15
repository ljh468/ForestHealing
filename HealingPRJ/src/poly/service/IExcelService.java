package poly.service;

import java.io.IOException;
import java.util.List;

import org.apache.poi.xssf.usermodel.XSSFWorkbook;

import poly.dto.serviceInsertDTO;

public interface IExcelService {

	XSSFWorkbook excelDownload(List<serviceInsertDTO> serviceDtoList) throws IOException;

}
