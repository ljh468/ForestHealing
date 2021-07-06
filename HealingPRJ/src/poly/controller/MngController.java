package poly.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;


@Controller
public class MngController {

	private Logger log = Logger.getLogger(this.getClass());
	
	/*@Resource(name = "MngService")
	private IMngService mngService;*/
	
	@RequestMapping(value="mng/mngGetUserList")
	public String mngGetUserList(HttpServletRequest request) throws Exception { 
		log.info(this.getClass()+"--- in");
		
		log.info(this.getClass()+"--- out");
		return "/mng/mngUserList";
	}
	
	@RequestMapping(value="mng/mngGetUserHist")
	public String mngGetUserHist(HttpServletRequest request, HttpServletResponse reponse) throws Exception { 
		log.info(this.getClass()+"--- in");
		
		log.info(this.getClass()+"--- out");
		return "/mng/mngUserHist";
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
