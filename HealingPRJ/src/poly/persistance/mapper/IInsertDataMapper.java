package poly.persistance.mapper;

import java.util.List;

import config.Mapper;
import poly.dto.HealingInsertDTO;
import poly.dto.HrvInsertDTO;
import poly.dto.PreventInsertDTO;
import poly.dto.ProgramInsertDTO;
import poly.dto.ReceiptInsertDTO;
import poly.dto.ServiceInsertDTO;
import poly.dto.VibraInsertDTO;

@Mapper("InsertDataMapper")
public interface IInsertDataMapper {
	
	public int serviceInsertData(ServiceInsertDTO serviceDtoList) throws Exception;
	
	public int programInsertData(ProgramInsertDTO programDtoList) throws Exception;

	public int preventInsertData(PreventInsertDTO preventDtoList) throws Exception;
	
	public int healingInsertData(HealingInsertDTO healingDtoList) throws Exception;

	public int receiptInsertData(ReceiptInsertDTO receiptDtoList) throws Exception;
	
	public int hrvInsertData(HrvInsertDTO hrvDtoList) throws Exception;

	public int hasAgencyStartDate(HealingInsertDTO hiDTO) throws Exception;
	
	public List<HealingInsertDTO> getPreviousList(HealingInsertDTO hiDTO) throws Exception;

	public int vibraInsertData(VibraInsertDTO vibraDtoList) throws Exception;
	
}
