package poly.persistance.mapper;

import config.Mapper;
import poly.dto.HealingInsertDTO;
import poly.dto.PreventInsertDTO;
import poly.dto.ProgramInsertDTO;
import poly.dto.ReceiptInsertDTO;
import poly.dto.ServiceInsertDTO;

@Mapper("InsertDataMapper")
public interface IInsertDataMapper {
	
	public int serviceInsertData(ServiceInsertDTO serviceDtoList) throws Exception;
	
	public int programInsertData(ProgramInsertDTO programDtoList) throws Exception;

	public int preventInsertData(PreventInsertDTO preventDtoList) throws Exception;
	
	public int healingInsertData(HealingInsertDTO healingDtoList) throws Exception;

	public int receiptInsertData(ReceiptInsertDTO receiptDtoList) throws Exception;
}
