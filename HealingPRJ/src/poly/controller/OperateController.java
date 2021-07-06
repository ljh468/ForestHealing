package poly.controller;


import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import poly.dto.BasicInfoDTO;
import poly.service.IOperateService;

@Controller
public class OperateController {

	private Logger log = Logger.getLogger(this.getClass());
	
	@Resource(name = "OperateService")
	private IOperateService operateService;
	
	@RequestMapping(value="insertOperateResult")
	public String insertOperateResult(HttpServletRequest request, HttpServletResponse reponse) throws Exception { 
		log.info(this.getClass()+"--- in");
		log.info(this.getClass()+"--- out");
		return "/operate/index";
	}
	
	@RequestMapping(value="/insertOperateResultProc")
	public @ResponseBody String insertOperateResultProc(@ModelAttribute BasicInfoDTO bDTO, HttpServletRequest request, HttpServletResponse reponse, Model model) throws Exception { 
		String msg, url;
		log.info(this.getClass()+"--- in");
		
		int res = operateService.insertOperateResultProc(bDTO);
		if(res != 0) {
			msg="입력이 정상적으로 처리되었습니다.";
			url="operate/insertOperateResult.do";
		} else {
			msg="입력 처리에 실패했습니다.";
			url="operate/insertOperateResult.do";
		}
		model.addAttribute("msg", msg);
		model.addAttribute("url", url);
		log.info(this.getClass()+"--- out");
		return "/redirect";
	}
	
	
	
}
