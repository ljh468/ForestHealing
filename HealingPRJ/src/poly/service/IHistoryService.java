package poly.service;

import java.util.List;

import poly.dto.HistoryDTO;

public interface IHistoryService {
	
	public int InsertHistory(HistoryDTO hDTO) throws Exception;
	
	public List<HistoryDTO> getHistory() throws Exception;
	
	public List<HistoryDTO> getHistory(HistoryDTO hDTO) throws Exception;
}
