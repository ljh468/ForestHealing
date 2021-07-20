package poly.persistance.mapper;

import config.Mapper;
import poly.dto.BasicInfoDTO;
import poly.dto.InOutDTO;
import poly.dto.ProgramInOutDTO;

@Mapper("IOperateMapper")
public interface IOperateMapper {
	public int insertOperateResultProc(BasicInfoDTO bDTO) throws Exception;

	public int insertProgramList(ProgramInOutDTO prDTO);
}
