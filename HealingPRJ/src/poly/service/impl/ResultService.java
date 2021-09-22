package poly.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Service;

import poly.dto.BasicInfoDTO;
import poly.persistance.mapper.IResultMapper;
import poly.service.IResultService;

@Service("ResultService")
public class ResultService implements IResultService {
	
	private Logger log = Logger.getLogger(this.getClass());
	
	@Resource(name = "ResultMapper")
	private IResultMapper resultMapper;

	@Override
	public List<BasicInfoDTO> getBasiclist(BasicInfoDTO bDTO) throws Exception {
		log.info("시비스 단 실행 시작");
		log.info("서비스 단에서의 기업명  : " + bDTO.getAgency());
		log.info("서비스 단에서의 기업명  : " + bDTO.getOpenday());
		List<BasicInfoDTO> basicInfo = resultMapper.getBasicInfo(bDTO);
		log.info("서비스 단 종료 ");
		return basicInfo;
	}

	@Override
	public List<BasicInfoDTO> getProgrmaList(BasicInfoDTO bDTO) throws Exception {
		log.info("서비스 단 프로그램 리스트 가져오기 시작");
		List<BasicInfoDTO> rList = resultMapper.getProgramList(bDTO);
		return rList;
	}


}
