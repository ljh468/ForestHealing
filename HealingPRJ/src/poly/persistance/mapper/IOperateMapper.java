package poly.persistance.mapper;

import config.Mapper;
import poly.dto.BasicInfoDTO;

@Mapper("IOperateMapper")
public interface IOperateMapper {
	public int insertOperateResultProc(BasicInfoDTO bDTO) throws Exception;
}
