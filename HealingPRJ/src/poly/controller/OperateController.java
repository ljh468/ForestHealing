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
import poly.dto.InOutDTO;
import poly.dto.ProgramInOutDTO;
import poly.service.IOperateService;

@Controller
public class OperateController {

	private Logger log = Logger.getLogger(this.getClass());

	@Resource(name = "OperateService")
	private IOperateService operateService;

	@RequestMapping(value = "insertOperateResult")
	public String insertOperateResult(HttpServletRequest request, HttpServletResponse reponse) throws Exception {
		log.info(this.getClass() + "--- in");
		log.info(this.getClass() + "--- out");
		return "/operate/index";
	}

	@RequestMapping(value = "/insertOperateResultProc")
	public @ResponseBody String insertOperateResultProc(@ModelAttribute BasicInfoDTO bDTO, HttpServletRequest request,
			HttpServletResponse reponse, Model model) throws Exception {
		String msg, url;
		log.info(this.getClass() + "--- in");

		String agency = bDTO.getAgency();
		log.info("agency : " + agency);
		String openday = bDTO.getOpenday();
		log.info("openday : " + openday);

		/**
		 * program_info테이블은 단체명, 시작일자, 프로그램명, intutor, oututor로 이루어짐 현재 단체명, 시작일자로 외래키로 잡음
		 * 변경해도 됨 _0720이재훈
		 */
		int res2 = 0;
		log.info("in_out_size : " + bDTO.getProgram_in_out().size());
		for (int i = 0; i < bDTO.getProgram_in_out().size(); i++) {
			String program_name = bDTO.getProgram_in_out().get(i).getProgram();
			String in_tutor = bDTO.getProgram_in_out().get(i).getIn_tutor();
			String out_tutor = bDTO.getProgram_in_out().get(i).getOut_tutor();

			ProgramInOutDTO prDTO = new ProgramInOutDTO();
			prDTO.setAgency(agency);
			prDTO.setOpenday(openday);
			prDTO.setProgram(program_name);
			prDTO.setIn_tutor(in_tutor);
			prDTO.setOut_tutor(out_tutor);

			// 프로그램 리스트 저장
			res2 = operateService.insertProgramList(prDTO);
			prDTO = null;
		}

		int res = operateService.insertOperateResultProc(bDTO);
		if (res != 0 && res2 !=0) {
			msg = "입력이 정상적으로 처리되었습니다.";
			url = "operate/insertOperateResult.do";
		} else {
			msg = "입력 처리에 실패했습니다.";
			url = "operate/insertOperateResult.do";
		}
		model.addAttribute("msg", msg);
		model.addAttribute("url", url);
		log.info(this.getClass() + "--- out");
		return "/redirect";
	}

}
