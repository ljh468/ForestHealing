package poly.controller;

import java.io.IOException;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import poly.dto.UserDTO;
import poly.service.IUserService;
import poly.util.CmmUtil;

@Controller
public class UserController {

	private Logger log = Logger.getLogger(this.getClass());
	
	@Resource(name = "UserService")
	private IUserService userService;
	
	@RequestMapping(value = "login")
	public String login(HttpServletRequest request, HttpServletResponse reponse) throws IOException {
		
		return "/user/login";
	}
	
	@RequestMapping(value = "user/loginProc")
	public String loginProc(HttpServletRequest request, HttpServletResponse reponse, HttpSession session) throws Exception {
		log.info(this.getClass().getName() + ".loginProc Start !!");
		
		UserDTO uDTO = new UserDTO();
		uDTO.setUser_id(CmmUtil.nvl(request.getParameter("id")));
		uDTO.setUser_pwd(CmmUtil.nvl(request.getParameter("pwd")));
		
		
		UserDTO result = userService.loginProc(uDTO);
		
		if(result != null) {
			log.info("login success");
			session.setAttribute("user_id", result.getUser_id());
			session.setAttribute("user_name", result.getUser_name());
			log.info("user_id : " + result.getUser_id() + " | user_name : " + result.getUser_name());
			request.setAttribute("msg", "로그인 성공");
			request.setAttribute("url", "/insertForm/serviceInsertForm.do");
			log.info(this.getClass().getName() + ".loginProc End !!");
			return "redirect";
		} else {
			log.info("login fail");
			request.setAttribute("msg", "로그인 실패");
			request.setAttribute("url", "/");
			log.info(this.getClass().getName() + ".loginProc End !!");
			return "redirect";
		}
	}
}
