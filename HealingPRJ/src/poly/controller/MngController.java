package poly.controller;

import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import poly.dto.HistoryDTO;
import poly.service.IHistoryService;


@Controller
public class MngController {

	private Logger log = Logger.getLogger(this.getClass());
	
	@Resource(name = "HistoryService")
	private IHistoryService historyService;
	
	
	@RequestMapping(value="mng/mngGetUserList")
	public String mngGetUserList(HttpServletRequest request) throws Exception { 
		log.info(this.getClass()+"--- in");
		
		log.info(this.getClass()+"--- out");
		return "/mng/mngUserList";
	}
	
	@RequestMapping(value="mng/mngGetUserHist")
	public String mngGetUserHist(HttpServletRequest request, HttpServletResponse reponse, ModelMap model) throws Exception { 
		log.info(this.getClass()+"--- in");
		
		List<HistoryDTO> hList = historyService.getHistory();
		for(HistoryDTO hDTO : hList) { 
			log.info(hDTO.toString());
		}
		
		model.addAttribute("hList", hList);
		
		hList = null;
		
		log.info(this.getClass()+"--- out");
		return "/mng/mngUserHist";
	}
	//검색해서 리스트 가져오기
	@RequestMapping(value="mng/mngGetUserHist/searchList")
	@ResponseBody
	public List<HistoryDTO> mngGetUserHistSearchList(HttpServletRequest request) throws Exception {
		log.info(this.getClass().getName() + ".mngGetUserHistSearchList Start !!");
		String reg_id = request.getParameter("reg_id");
		log.info("reg_id : " + reg_id);
		
		HistoryDTO hDTO = new HistoryDTO();
		hDTO.setReg_id(reg_id);
		
		log.info(this.getClass().getName() + ".mngGetUserHistSearchList End !!");
		return historyService.getHistory(hDTO);
	}
	
	@RequestMapping(value="mng/mngGetUserDetail")
	public String mngGetUserDetail(HttpServletRequest request, HttpServletResponse reponse, Model model) throws Exception { 
		log.info(this.getClass()+"--- in");
		String userNo = request.getParameter("userNo");
		log.info("userNo : " + userNo);
		model.addAttribute("userNo", userNo);
		log.info(this.getClass()+"--- out");
		return "/mng/mngUserDetail";
	}
	
	@RequestMapping(value="mng/mngCreateUser")
	public String mngCreateUser(HttpServletRequest request, HttpServletResponse reponse, Model model) throws Exception { 
		log.info(this.getClass()+"--- in");
		
		
		log.info(this.getClass()+"--- out");
		return "/mng/mngCreateUser";
	}
	
	
}
