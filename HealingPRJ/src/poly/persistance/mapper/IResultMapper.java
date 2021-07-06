package poly.persistance.mapper;

import java.util.List;

import config.Mapper;
import poly.dto.BasicInfoDTO;

@Mapper("ResultMapper")

public interface IResultMapper {

	List<BasicInfoDTO> getBasicInfo(BasicInfoDTO bDTO) throws Exception;

	
	
}
