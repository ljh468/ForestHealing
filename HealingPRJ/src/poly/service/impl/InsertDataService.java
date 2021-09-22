package poly.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Service;

import poly.dto.HealingInsertDTO;
import poly.dto.HrvInsertDTO;
import poly.dto.PreventInsertDTO;
import poly.dto.ProgramInsertDTO;
import poly.dto.ReceiptInsertDTO;
import poly.dto.ServiceInsertDTO;
import poly.dto.VibraInsertDTO;
import poly.persistance.mapper.IInsertDataMapper;
import poly.service.IInsertDataService;

@Service("InsertDataService")
public class InsertDataService implements IInsertDataService {
	
	private Logger log = Logger.getLogger(this.getClass());
	
	@Resource(name = "InsertDataMapper")
	private IInsertDataMapper insertDataMapper;

	@Override
	public int serviceInsertData(ServiceInsertDTO serviceDtoList) throws Exception {
		log.info(this.getClass().getName() + "serviceInsertData Start !!");
		int result = insertDataMapper.serviceInsertData(serviceDtoList);
		log.info(this.getClass().getName() + "serviceInsertData End !!");
		return result;
	}

	@Override
	public int programInsertData(ProgramInsertDTO programDtoList) throws Exception {
		log.info(this.getClass().getName() + "programInsertData Start !!");
		int result = insertDataMapper.programInsertData(programDtoList);
		log.info(this.getClass().getName() + "programInsertData End !!");
		return result;
	}

	@Override
	public int preventInsertData(PreventInsertDTO preventDtoList) throws Exception {
		log.info(this.getClass().getName() + "preventInsertData Start !!");
		int result = insertDataMapper.preventInsertData(preventDtoList);
		log.info(this.getClass().getName() + "preventInsertData End !!");
		return result;
	}

	@Override
	public int healingInsertData(HealingInsertDTO healingDtoList) throws Exception {
		log.info(this.getClass().getName() + "healingInsertData Start !!");
		int result = insertDataMapper.healingInsertData(healingDtoList);
		log.info(this.getClass().getName() + "healingInsertData End !!");
		return result;
	} 
	
	@Override
	public int receiptInsertData(ReceiptInsertDTO receiptDtoList) throws Exception {
		log.info(this.getClass().getName() + ".receiptInsertData Start !!");
		int result = insertDataMapper.receiptInsertData(receiptDtoList);
		log.info(this.getClass().getName() + ".receiptInsertData End !!");
		return result;
	} 
	
	@Override
	public int hrvInsertData(HrvInsertDTO hrvDtoList) throws Exception {
		log.info(this.getClass().getName() + ".hrvInsertData Start !!");
		int result = insertDataMapper.hrvInsertData(hrvDtoList);
		log.info(this.getClass().getName() + ".hrvInsertData End !!");
		return result;
	}

	@Override
	public int hasAgencyStartDate(HealingInsertDTO hiDTO) throws Exception {
		log.info(this.getClass().getName() + ".hasAgencyStartDate Service Start !!");
		int result = insertDataMapper.hasAgencyStartDate(hiDTO);
		log.info(this.getClass().getName() + ".hasAgencyStartDate Service End !!");
		return result;
	}

	@Override
	public List<HealingInsertDTO> getPreviousList(HealingInsertDTO hiDTO) throws Exception {
		log.info(this.getClass().getName() + ".getPreviousList Service Start !!");
		List<HealingInsertDTO> hList = insertDataMapper.getPreviousList(hiDTO);
		log.info(this.getClass().getName() + ".getPreviousList Service End !!");
		return hList;
	} 

	@Override
	public int vibraInsertData(VibraInsertDTO vibraDtoList) throws Exception {
		log.info(this.getClass().getName() + ".vibraInsertData Start !!");
		int result = insertDataMapper.vibraInsertData(vibraDtoList);
		log.info(this.getClass().getName() + ".vibraInsertData End !!");
		return result;
	} 

}
