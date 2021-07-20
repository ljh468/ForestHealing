package poly.service;

import poly.dto.BasicInfoDTO;
import poly.dto.ProgramInOutDTO;

public interface IOperateService {
	
	public int insertOperateResultProc(BasicInfoDTO bDTO) throws Exception;

	public int insertProgramList(ProgramInOutDTO prDTO);


}
