package poly.service;

import poly.dto.HealingInsertDTO;
import poly.dto.PreventInsertDTO;
import poly.dto.ProgramInsertDTO;
import poly.dto.ReceiptInsertDTO;
import poly.dto.ServiceInsertDTO;

public interface IInsertDataService {
	public int serviceInsertData(ServiceInsertDTO serviceDtoList) throws Exception;

	public int programInsertData(ProgramInsertDTO programDtoList) throws Exception;
	
	public int preventInsertData(PreventInsertDTO preventDtoList) throws Exception;
	
	public int healingInsertData(HealingInsertDTO healingDtoList) throws Exception;
	
	public int receiptInsertData(ReceiptInsertDTO receiptDtoList) throws Exception;
}
