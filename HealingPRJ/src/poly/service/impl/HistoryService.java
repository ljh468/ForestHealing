package poly.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Service;

import poly.dto.HistoryDTO;
import poly.persistance.mapper.IHistoryMapper;
import poly.service.IHistoryService;

@Service("HistoryService")
public class HistoryService implements IHistoryService{
	
	private Logger log = Logger.getLogger(this.getClass());
	
	@Resource(name = "HistoryMapper")
	private IHistoryMapper historyMapper;
	
	@Override
	public int InsertHistory(HistoryDTO hDTO) throws Exception {
		log.info(this.getClass().getName() + ".InsertHistory Start !!");
		log.info(this.getClass().getName() + ".InsertHistory End !!");
		return historyMapper.insertHistory(hDTO);
	}

	@Override
	public List<HistoryDTO> getHistory() throws Exception {
		log.info(this.getClass().getName() + ".getHistory Start !!");
		log.info(this.getClass().getName() + ".getHistory End !!");
		return historyMapper.getAllHistories();
	}

	@Override
	public List<HistoryDTO> getHistory(HistoryDTO hDTO) throws Exception {
		log.info(this.getClass().getName() + ".getHistory Start !!");
		log.info(this.getClass().getName() + ".getHistory End !!");
		return historyMapper.getHistory(hDTO);
	}

	
	
}
