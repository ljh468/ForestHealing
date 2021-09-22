/*
 * package poly.controller;
 * 
 * import java.io.IOException;
 * 
 * import javax.annotation.Resource; import
 * javax.servlet.http.HttpServletRequest; import
 * javax.servlet.http.HttpServletResponse;
 * 
 * import org.apache.log4j.Logger; import
 * org.springframework.stereotype.Controller; import
 * org.springframework.web.bind.annotation.RequestMapping;
 * 
 * import poly.service.IExcelService; import poly.service.IInsertDataService;
 * import poly.service.ITestService; import poly.util.CmmUtil;
 * 
 * @Controller public class TestController {
 * 
 * private Logger log = Logger.getLogger(this.getClass());
 * 
 * @Resource(name = "InsertDataService") private IInsertDataService
 * insertDataService;
 * 
 * @Resource(name = "ExcelService") private IExcelService excelService;
 * 
 * @Resource(name = "TestService") private ITestService testService;
 * 
 * 
 * @RequestMapping(value = "old_index") public String
 * old_index(HttpServletRequest request, HttpServletResponse reponse) throws
 * IOException { log.info("hi");
 * 
 * return "/old_index"; }
 * 
 * // 만족도및 효과평가 이재훈
 * 
 * @RequestMapping(value = "old_index2") public String
 * old_index2(HttpServletRequest request, HttpServletResponse reponse) {
 * 
 * log.info("hi"); return "/old_index2"; }
 * 
 * @RequestMapping(value = "old_index3") public String
 * old_index3(HttpServletRequest request, HttpServletResponse reponse) {
 * 
 * log.info("hi"); return "/old_index3"; }
 * 
 * 
 * 
 * @RequestMapping(value = "seBy/seBygroup") public String
 * seBygroup(HttpServletRequest request, HttpServletResponse reponse) {
 * 
 * log.info("seBygroup"); return "/seBy/seBygroup"; }
 * 
 * @RequestMapping(value = "seBy/seBysubject") public String
 * seBysubject(HttpServletRequest request, HttpServletResponse reponse) {
 * 
 * log.info("seBysubject"); return "/seBy/seBysubject"; }
 * 
 * @RequestMapping(value = "seBy/seBysubject2") public String
 * seBysubject2(HttpServletRequest request, HttpServletResponse reponse) {
 * 
 * log.info("seBysubject2"); return "/seBy/seBysubject2"; }
 * 
 * // 운영결과 페이지 호출 _ 유연준
 * 
 * @RequestMapping(value = "yearMonth/YearMonthResult") public String
 * resultProgram(HttpServletRequest request, HttpServletResponse response)
 * throws Exception {
 * 
 * log.info("프로그램 결과"); return "/YearMonthResult"; }
 * 
 * @RequestMapping(value = "yearMonth/YearMonthResult2") public String
 * resultProgram2(HttpServletRequest request, HttpServletResponse response)
 * throws Exception {
 * 
 * log.info("프로그램 결과"); return "/YearMonthResult2"; }
 * 
 * @RequestMapping(value = "yearMonth/YearMonthResult3") public String
 * resultProgram3(HttpServletRequest request, HttpServletResponse response)
 * throws Exception {
 * 
 * log.info("프로그램 결과"); return "/YearMonthResult3"; }
 * 
 * @RequestMapping(value = "aa") public String fadsam(HttpServletRequest
 * request, HttpServletResponse response) throws Exception {
 * 
 * log.info("프로그램 결과"); return "/resProgram_chart"; }
 * 
 * // 운영결과 페이지 차트 호출 _ 유연준
 * 
 * @RequestMapping(value = "resProgram_chart") public String
 * resultProgram_chart(HttpServletRequest request, HttpServletResponse response)
 * throws Exception { String name = CmmUtil.nvl(request.getParameter("name"));
 * 
 * log.info("프로그램 차트 가기"); log.info(name); return "/resProgram_chart"; }
 * 
 * }
 */