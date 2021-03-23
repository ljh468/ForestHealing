package poly.controller;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import poly.service.ITestService;

@Controller
public class TestController {

	private Logger log = Logger.getLogger(this.getClass());
	
	@Resource(name = "TestService")
	private ITestService testService;
	
	@RequestMapping(value="index")
	public String index(HttpServletRequest request, HttpServletResponse reponse) { 
		
		log.info("hi");
		return "/index";
	}
	
	@RequestMapping(value="index2")
	public String index2(HttpServletRequest request, HttpServletResponse reponse) { 
		
		log.info("hi");
		return "/index2";
	}
	
	
}
