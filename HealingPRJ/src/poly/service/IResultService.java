package poly.service;

import java.util.List;

import poly.dto.BasicInfoDTO;

public interface IResultService {

	 List<BasicInfoDTO> getBasiclist(BasicInfoDTO bDTO) throws Exception;

	List<BasicInfoDTO> getProgrmaList(BasicInfoDTO bDTO)throws Exception;


}
