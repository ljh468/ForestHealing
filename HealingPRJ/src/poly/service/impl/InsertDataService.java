package poly.service.impl;

import javax.annotation.Resource;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Service;

import poly.dto.HealingInsertDTO;
import poly.dto.PreventInsertDTO;
import poly.dto.ProgramInsertDTO;
import poly.dto.ServiceInsertDTO;
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
		return 0;
	}

	@Override
	public int healingInsertData(HealingInsertDTO healingDtoList) throws Exception {
		log.info(this.getClass().getName() + "healingInsertData Start !!");
		int result = insertDataMapper.healingInsertData(healingDtoList);
		log.info(this.getClass().getName() + "healingInsertData End !!");
		return 0;
	} 
	


}
