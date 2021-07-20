package poly.service.impl;

import javax.annotation.Resource;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Service;

import poly.dto.BasicInfoDTO;
import poly.dto.InOutDTO;
import poly.dto.ProgramInOutDTO;
import poly.persistance.mapper.IOperateMapper;
import poly.service.IOperateService;

@Service("OperateService")
public class OperateService implements IOperateService {
	
	private Logger log = Logger.getLogger(this.getClass());
	
	@Resource(name = "IOperateMapper")
	private IOperateMapper operateMapper;
	
	@Override
	public int insertOperateResultProc(BasicInfoDTO bDTO) throws Exception {
		log.info(this.getClass()+"------in");
		new BasicInfoDTO().getAll(bDTO);
		log.info(this.getClass()+"------out");
		return operateMapper.insertOperateResultProc(bDTO);
	}
	
	// PROGRAM_INFO 테이블 만들면 프로그램저장 _210720 이재훈
	@Override
	public int insertProgramList(ProgramInOutDTO prDTO) {
		return operateMapper.insertProgramList(prDTO);
	}

}
