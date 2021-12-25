package poly.service.impl;

import java.util.ArrayList;
import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import poly.dto.BasicInfoDTO;
import poly.dto.ExpenseDTO;
import poly.dto.HrvInsertDTO;
import poly.dto.IncomeDTO;
import poly.dto.ProgramOperationDTO;
import poly.dto.ResidenceDTO;
import poly.dto.SearchDTO;
import poly.dto.ServiceInsertDTO;
import poly.dto.YearResultDTO;
import poly.persistance.mapper.IYearResultMapper;
import poly.service.IYearResultService;
import poly.service.comm.AbstractService;

@Service("YearResultService")
public class YearResultService extends AbstractService implements IYearResultService {

	@Resource(name = "YearResultMapper")
	private IYearResultMapper yrMapper;

	@Override
	public int[][] getPartList(YearResultDTO yrDTO) throws Exception {
		log.info("참가자 유형 리스트 가져오기");
		List<YearResultDTO> rList = yrMapper.getPartList(yrDTO);
		List<YearResultDTO> handcap = yrMapper.getHandCapCount(yrDTO);
		List<YearResultDTO> lowmoney = yrMapper.getLowMoneyCount(yrDTO);
		List<YearResultDTO> family = yrMapper.getFamilyCount(yrDTO);
		List<YearResultDTO> addict = yrMapper.getAddictCount(yrDTO);
		List<YearResultDTO> teacher = yrMapper.getTeacherCount(yrDTO);
		List<YearResultDTO> etc = yrMapper.getEtcCount(yrDTO);
		List<YearResultDTO> sum = yrMapper.getSumCount(yrDTO);
		log.info("건수");
		int[][] part = new int[2][7];
		part[0][0] = Integer.parseInt(rList.get(0).getPart_handcap());
		part[0][1] = Integer.parseInt(rList.get(0).getPart_lowmoney());
		part[0][2] = Integer.parseInt(rList.get(0).getPart_family());
		part[0][3] = Integer.parseInt(rList.get(0).getPart_addict());
		part[0][4] = Integer.parseInt(rList.get(0).getPart_teacher());
		part[0][5] = Integer.parseInt(rList.get(0).getPart_etc());
		part[0][6] = Integer.parseInt(rList.get(0).getPart_handcap())
				+ Integer.parseInt(rList.get(0).getPart_lowmoney()) + Integer.parseInt(rList.get(0).getPart_family())
				+ Integer.parseInt(rList.get(0).getPart_teacher()) + Integer.parseInt(rList.get(0).getPart_addict())
				+ Integer.parseInt(rList.get(0).getPart_etc());
		log.info("합계");
		part[1][0] = Integer.parseInt(handcap.get(0).getPart_handcap());
		part[1][1] = Integer.parseInt(lowmoney.get(0).getPart_lowmoney());
		part[1][2] = Integer.parseInt(family.get(0).getPart_family());
		part[1][3] = Integer.parseInt(addict.get(0).getPart_addict());
		part[1][4] = Integer.parseInt(teacher.get(0).getPart_teacher());
		part[1][5] = Integer.parseInt(etc.get(0).getPart_etc());
		part[1][6] = Integer.parseInt(handcap.get(0).getPart_handcap())
				+ Integer.parseInt(lowmoney.get(0).getPart_lowmoney())
				+ Integer.parseInt(family.get(0).getPart_family()) + Integer.parseInt(teacher.get(0).getPart_teacher())
				+ Integer.parseInt(addict.get(0).getPart_addict()) + Integer.parseInt(etc.get(0).getPart_etc());
		return part;
	}

	@Override
	public int[][] getAgeList(YearResultDTO yrDTO) throws Exception {
		List<YearResultDTO> rList = yrMapper.getAgeList(yrDTO);
		List<YearResultDTO> kid = yrMapper.getKidCount(yrDTO);
		List<YearResultDTO> boy = yrMapper.getBoyCount(yrDTO);
		List<YearResultDTO> adult = yrMapper.getAdultCount(yrDTO);
		List<YearResultDTO> old = yrMapper.getOldCount(yrDTO);
		List<YearResultDTO> sum = yrMapper.getSumCount(yrDTO);

		int[][] age = new int[2][5];
		age[0][0] = Integer.parseInt(rList.get(0).getPart_kid());
		age[0][1] = Integer.parseInt(rList.get(0).getPart_boy());
		age[0][2] = Integer.parseInt(rList.get(0).getPart_adult());
		age[0][3] = Integer.parseInt(rList.get(0).getPart_old());
		age[0][4] = Integer.parseInt(rList.get(0).getPart_kid()) + Integer.parseInt(rList.get(0).getPart_boy())
				+ Integer.parseInt(rList.get(0).getPart_adult()) + Integer.parseInt(rList.get(0).getPart_old());

		age[1][0] = Integer.parseInt(kid.get(0).getPart_kid());
		age[1][1] = Integer.parseInt(boy.get(0).getPart_boy());
		age[1][2] = Integer.parseInt(adult.get(0).getPart_adult());
		age[1][3] = Integer.parseInt(old.get(0).getPart_old());
		age[1][4] = Integer.parseInt(kid.get(0).getPart_kid()) + Integer.parseInt(boy.get(0).getPart_boy())
				+ Integer.parseInt(adult.get(0).getPart_adult()) + Integer.parseInt(old.get(0).getPart_old());

		for (int i = 0; i < 5; i++) {
			log.info("age" + "[0]" + "[" + i + "] :" + age[0][i]);
			log.info("age" + "[1]" + "[" + i + "] :" + age[1][i]);
		}
		return age;
	}

	@Override
	public int[][] getIncomeList(YearResultDTO yrDTO) throws Exception {
		log.info("수익 서비스 시작");
		List<YearResultDTO> rList = yrMapper.getIncomeList(yrDTO);
		List<YearResultDTO> green = yrMapper.getGreen(yrDTO);
		List<YearResultDTO> voucher = yrMapper.getVoucher(yrDTO);
		List<YearResultDTO> etc = yrMapper.getEtc(yrDTO);
		List<YearResultDTO> sum = yrMapper.getSumCount(yrDTO);
		log.info(etc.get(0).getBiz_etc());
		int[][] income = new int[2][4];
		income[0][0] = Integer.parseInt(rList.get(0).getBiz_green());
		income[0][1] = Integer.parseInt(rList.get(0).getBiz_voucher());
		income[0][2] = Integer.parseInt(rList.get(0).getBiz_etc());
		income[0][3] = Integer.parseInt(rList.get(0).getBiz_green()) + Integer.parseInt(rList.get(0).getBiz_voucher())
				+ Integer.parseInt(rList.get(0).getBiz_etc());

		income[1][0] = Integer.parseInt(green.get(0).getBiz_green());
		income[1][1] = Integer.parseInt(voucher.get(0).getBiz_voucher());
		income[1][2] = Integer.parseInt(etc.get(0).getBiz_etc());
		income[1][3] = Integer.parseInt(green.get(0).getBiz_green()) + Integer.parseInt(voucher.get(0).getBiz_voucher())
				+ Integer.parseInt(etc.get(0).getBiz_etc());
		log.info("수익 서비스 종료");
		return income;
	}

	@Override
	public List<BasicInfoDTO> getRoomList(BasicInfoDTO bDTO) throws Exception {
		List<BasicInfoDTO> rList = yrMapper.getRoomList(bDTO);
		return rList;
	}

	@Override
	public int[] getOp_program(ProgramOperationDTO poDTO) throws Exception {
		log.info("프로그램 운영");
		int[] array = new int[39];
		for (int i = 0; i < 39; i++) {
			array[i] = 0;
		}
		List<ProgramOperationDTO> operationList = yrMapper.getoperationList(poDTO);
		int a = 5;
		for (int i = 0; i < operationList.size(); i++) {
			for (int j = 0; j < operationList.get(i).getProgram_in_out2().size() / 5; j++) {
				int k = a * j;
				if (operationList.get(i).getProgram_in_out2().get(k + 1).equals("인문")) {
					array[0]++;
					array[1] = array[1] + Integer.parseInt(operationList.get(i).getProgram_in_out2().get(k + 3));
					array[2] = array[2] + Integer.parseInt(operationList.get(i).getProgram_in_out2().get(k + 4));

				} else if (operationList.get(i).getProgram_in_out2().get(k + 1).equals("음악")) {
					array[3]++;
					array[4] = array[4] + Integer.parseInt(operationList.get(i).getProgram_in_out2().get(k + 3));
					array[5] = array[5] + Integer.parseInt(operationList.get(i).getProgram_in_out2().get(k + 4));

				} else if (operationList.get(i).getProgram_in_out2().get(k + 1).equals("미술")) {
					array[6]++;
					array[7] = array[7] + Integer.parseInt(operationList.get(i).getProgram_in_out2().get(k + 3));
					array[8] = array[8] + Integer.parseInt(operationList.get(i).getProgram_in_out2().get(k + 4));

				} else if (operationList.get(i).getProgram_in_out2().get(k + 1).equals("요가명상")) {
					array[9]++;
					array[10] = array[10] + Integer.parseInt(operationList.get(i).getProgram_in_out2().get(k + 3));
					array[11] = array[11] + Integer.parseInt(operationList.get(i).getProgram_in_out2().get(k + 4));

				} else if (operationList.get(i).getProgram_in_out2().get(k + 1).equals("동작")) {
					array[12]++;
					array[13] = array[13] + Integer.parseInt(operationList.get(i).getProgram_in_out2().get(k + 3));
					array[14] = array[14] + Integer.parseInt(operationList.get(i).getProgram_in_out2().get(k + 4));

				} else if (operationList.get(i).getProgram_in_out2().get(k + 1).equals("자연치유")) {
					array[15]++;
					array[16] = array[16] + Integer.parseInt(operationList.get(i).getProgram_in_out2().get(k + 3));
					array[17] = array[17] + Integer.parseInt(operationList.get(i).getProgram_in_out2().get(k + 4));

				} else if (operationList.get(i).getProgram_in_out2().get(k + 1).equals("예방교육")) {
					array[18]++;
					array[19] = array[19] + Integer.parseInt(operationList.get(i).getProgram_in_out2().get(k + 3));
					array[20] = array[20] + Integer.parseInt(operationList.get(i).getProgram_in_out2().get(k + 4));

				} else if (operationList.get(i).getProgram_in_out2().get(k + 1).equals("산림교육")) {
					array[21]++;
					array[22] = array[22] + Integer.parseInt(operationList.get(i).getProgram_in_out2().get(k + 3));
					array[23] = array[23] + Integer.parseInt(operationList.get(i).getProgram_in_out2().get(k + 4));

				} else if (operationList.get(i).getProgram_in_out2().get(k + 1).equals("산림치유")) {
					array[24]++;
					array[25] = array[25] + Integer.parseInt(operationList.get(i).getProgram_in_out2().get(k + 3));
					array[26] = array[26] + Integer.parseInt(operationList.get(i).getProgram_in_out2().get(k + 4));

				} else if (operationList.get(i).getProgram_in_out2().get(k + 1).equals("이벤트")) {
					array[27]++;
					array[28] = array[28] + Integer.parseInt(operationList.get(i).getProgram_in_out2().get(k + 3));
					array[29] = array[29] + Integer.parseInt(operationList.get(i).getProgram_in_out2().get(k + 4));

				} else if (operationList.get(i).getProgram_in_out2().get(k + 1).equals("지역")) {
					array[30]++;
					array[31] = array[31] + Integer.parseInt(operationList.get(i).getProgram_in_out2().get(k + 3));
					array[32] = array[32] + Integer.parseInt(operationList.get(i).getProgram_in_out2().get(k + 4));

				} else if (operationList.get(i).getProgram_in_out2().get(k + 1).equals("신규")) {
					array[33]++;
					array[34] = array[34] + Integer.parseInt(operationList.get(i).getProgram_in_out2().get(k + 3));
					array[35] = array[35] + Integer.parseInt(operationList.get(i).getProgram_in_out2().get(k + 4));

				} else if (operationList.get(i).getProgram_in_out2().get(k + 1).equals("기타")) {
					array[36]++;
					array[37] = array[37] + Integer.parseInt(operationList.get(i).getProgram_in_out2().get(k + 3));
					array[38] = array[38] + Integer.parseInt(operationList.get(i).getProgram_in_out2().get(k + 4));
				}
			}
		}
		return array;
	}

	@Override
	public List<ServiceInsertDTO> getSerList(ServiceInsertDTO siDTO) throws Exception {
		List<ServiceInsertDTO> rList = yrMapper.getSerList(siDTO);
		Double count = 0.0, sum = 0.0;
		String avg;
		if (rList.get(0).getScore1() != null) {
			if (Double.parseDouble(rList.get(0).getScore1()) > 0) {
				count++;
				sum = sum + Double.parseDouble(rList.get(0).getScore1());
			}
		} else {
			rList.get(0).setScore1("0");
		}

		if (rList.get(0).getScore2() != null) {
			if (Double.parseDouble(rList.get(0).getScore2()) > 0) {
				count++;
				sum = sum + Double.parseDouble(rList.get(0).getScore2());
			}
		} else {
			rList.get(0).setScore2("0");
		}

		if (rList.get(0).getScore3() != null) {
			if (Double.parseDouble(rList.get(0).getScore3()) > 0) {
				count++;
				sum = sum + Double.parseDouble(rList.get(0).getScore3());
			}
		} else {
			rList.get(0).setScore3("0");
		}

		if (rList.get(0).getScore4() != null) {
			if (Double.parseDouble(rList.get(0).getScore4()) > 0) {
				count++;
				sum = sum + Double.parseDouble(rList.get(0).getScore4());
			}
		} else {
			rList.get(0).setScore4("0");
		}
		if (rList.get(0).getScore5() != null) {
			if (Double.parseDouble(rList.get(0).getScore5()) > 0) {
				count++;
				sum = sum + Double.parseDouble(rList.get(0).getScore5());
			}
		} else {
			rList.get(0).setScore5("0");
		}
		if (rList.get(0).getScore6() != null) {
			if (Double.parseDouble(rList.get(0).getScore6()) > 0) {
				count++;
				sum = sum + Double.parseDouble(rList.get(0).getScore6());
			}
		} else {
			rList.get(0).setScore6("0");
		}
		if (rList.get(0).getScore7() != null) {
			if (Double.parseDouble(rList.get(0).getScore7()) > 0) {
				count++;
				sum = sum + Double.parseDouble(rList.get(0).getScore7());
			}
		} else {
			rList.get(0).setScore7("0");
		}
		if (rList.get(0).getScore8() != null) {
			if (Double.parseDouble(rList.get(0).getScore8()) > 0) {
				count++;
				sum = sum + Double.parseDouble(rList.get(0).getScore8());
			}
		} else {
			rList.get(0).setScore8("0");
		}
		if (rList.get(0).getScore9() != null) {
			if (Double.parseDouble(rList.get(0).getScore9()) > 0) {
				count++;
				sum = sum + Double.parseDouble(rList.get(0).getScore9());
			}
		} else {
			rList.get(0).setScore9("0");
		}
		if (rList.get(0).getScore10() != null) {
			if (Double.parseDouble(rList.get(0).getScore10()) > 0) {
				count++;
				sum = sum + Double.parseDouble(rList.get(0).getScore10());
			}
		} else {
			rList.get(0).setScore10("0");
		}
		if (rList.get(0).getScore11() != null) {
			if (Double.parseDouble(rList.get(0).getScore11()) > 0) {
				count++;
				sum = sum + Double.parseDouble(rList.get(0).getScore11());
			}
		} else {
			rList.get(0).setScore11("0");
		}
		if (rList.get(0).getScore12() != null) {
			if (Double.parseDouble(rList.get(0).getScore12()) > 0) {
				count++;
				sum = sum + Double.parseDouble(rList.get(0).getScore12());
			}
		} else {
			rList.get(0).setScore12("0");
		}
		if (rList.get(0).getScore13() != null) {
			if (Double.parseDouble(rList.get(0).getScore13()) > 0) {
				count++;
				sum = sum + Double.parseDouble(rList.get(0).getScore13());
			}
		} else {
			rList.get(0).setScore13("0");
		}
		if (rList.get(0).getScore14() != null) {
			if (Double.parseDouble(rList.get(0).getScore14()) > 0) {
				count++;
				sum = sum + Double.parseDouble(rList.get(0).getScore14());
			}
		} else {
			rList.get(0).setScore14("0");
		}
		if (rList.get(0).getScore15() != null) {
			if (Double.parseDouble(rList.get(0).getScore15()) > 0) {
				count++;
				sum = sum + Double.parseDouble(rList.get(0).getScore15());
			}
		} else {
			rList.get(0).setScore15("0");
		}
		if (rList.get(0).getScore16() != null) {
			if (Double.parseDouble(rList.get(0).getScore16()) > 0) {
				count++;
				sum = sum + Double.parseDouble(rList.get(0).getScore16());
			}
		} else {
			rList.get(0).setScore16("0");
		}

		avg = Double.toString(Math.round(sum / count * 100) / 100.0);
		log.info(avg);
		rList.get(0).setAvg(avg);
		return rList;
	}

	@Override
	public int[] getBizList(YearResultDTO yrDTO) throws Exception {
		log.info("사업 서비스 시작");
		List<YearResultDTO> rList = yrMapper.getBizList(yrDTO);
		log.info(rList.size());
		List<YearResultDTO> sum = yrMapper.getSumCount(yrDTO);
		log.info(sum.size());
		List<YearResultDTO> benefit = yrMapper.getBenefitList(yrDTO);
		log.info(benefit.size());
		List<YearResultDTO> society = yrMapper.getSocietyList(yrDTO);
		int[] biz = new int[6];
		biz[0] = Integer.parseInt(rList.get(0).getBiz_society());
		biz[1] = Integer.parseInt(rList.get(0).getBiz_benefit());
		biz[2] = biz[0] + biz[1];
		biz[3] = Integer.parseInt(society.get(0).getBiz_society());
		biz[4] = Integer.parseInt(benefit.get(0).getBiz_benefit());
		biz[5] = biz[3] + biz[4];
		log.info(biz[3]);
		log.info("사업 서비스 종료");
		return biz;
	}

	@Override
	public int[][] getResidenceList(ResidenceDTO uDTO) throws Exception {
		log.info("지역 시작");
		List<ResidenceDTO> rList = yrMapper.getResidenceList(uDTO);
		List<ResidenceDTO> seoul = yrMapper.getSeoul(uDTO);
		List<ResidenceDTO> busan = yrMapper.getBusan(uDTO);
		List<ResidenceDTO> daegu = yrMapper.getDaegu(uDTO);
		List<ResidenceDTO> incheon = yrMapper.getIncheon(uDTO);
		List<ResidenceDTO> dajeon = yrMapper.getDajeon(uDTO);
		List<ResidenceDTO> gwangju = yrMapper.getGwamgju(uDTO);
		List<ResidenceDTO> ulsan = yrMapper.getUlsan(uDTO);
		List<ResidenceDTO> keongi = yrMapper.getKeongi(uDTO);
		List<ResidenceDTO> gangwon = yrMapper.getGangwon(uDTO);
		List<ResidenceDTO> mine = yrMapper.getMine(uDTO);
		List<ResidenceDTO> chungbuk = yrMapper.getChungbuk(uDTO);
		List<ResidenceDTO> chungnam = yrMapper.getChungnam(uDTO);
		List<ResidenceDTO> geongbuk = yrMapper.getGeongbuk(uDTO);
		List<ResidenceDTO> geongnam = yrMapper.getGeongnam(uDTO);
		List<ResidenceDTO> jeonbuk = yrMapper.getJeonbuk(uDTO);
		List<ResidenceDTO> jeonnam = yrMapper.getJeonnam(uDTO);
		List<ResidenceDTO> jeju = yrMapper.getjeju(uDTO);
		List<ResidenceDTO> sejong = yrMapper.getsejong(uDTO);
		List<ResidenceDTO> sum = yrMapper.getSumRes(uDTO);
		int[][] residence = new int[2][19];
		for (int i = 0; i < 2; i++) {
			for (int j = 0; j < 18; j++) {
				residence[i][j] = 0;
			}
		}
		residence[0][0] = Integer.parseInt(rList.get(0).getSeoul());
		residence[0][1] = Integer.parseInt(rList.get(0).getBusan());
		residence[0][2] = Integer.parseInt(rList.get(0).getDaegu());
		residence[0][3] = Integer.parseInt(rList.get(0).getIncheon());
		residence[0][4] = Integer.parseInt(rList.get(0).getDajeon());
		residence[0][5] = Integer.parseInt(rList.get(0).getGwangju());
		residence[0][6] = Integer.parseInt(rList.get(0).getUlsan());
		residence[0][7] = Integer.parseInt(rList.get(0).getKeongi());
		residence[0][8] = Integer.parseInt(rList.get(0).getGangwon());
		residence[0][9] = Integer.parseInt(rList.get(0).getMine());
		residence[0][10] = Integer.parseInt(rList.get(0).getChungbuk());
		residence[0][11] = Integer.parseInt(rList.get(0).getChungnam());
		residence[0][12] = Integer.parseInt(rList.get(0).getSejong());
		residence[0][13] = Integer.parseInt(rList.get(0).getGeongbuk());
		residence[0][14] = Integer.parseInt(rList.get(0).getGeongnam());
		residence[0][15] = Integer.parseInt(rList.get(0).getJeonbuk());
		residence[0][16] = Integer.parseInt(rList.get(0).getJeonnam());
		residence[0][17] = Integer.parseInt(rList.get(0).getJeju());
		residence[0][18] = Integer.parseInt(rList.get(0).getSum());

		residence[1][0] = Integer.parseInt(seoul.get(0).getSeoul());
		residence[1][1] = Integer.parseInt(busan.get(0).getBusan());
		residence[1][2] = Integer.parseInt(daegu.get(0).getDaegu());
		residence[1][3] = Integer.parseInt(incheon.get(0).getIncheon());
		residence[1][4] = Integer.parseInt(dajeon.get(0).getDajeon());
		residence[1][5] = Integer.parseInt(gwangju.get(0).getGwangju());
		residence[1][6] = Integer.parseInt(ulsan.get(0).getUlsan());
		residence[1][7] = Integer.parseInt(keongi.get(0).getKeongi());
		residence[1][8] = Integer.parseInt(gangwon.get(0).getGangwon());
		residence[1][9] = Integer.parseInt(mine.get(0).getMine());
		residence[1][10] = Integer.parseInt(chungbuk.get(0).getChungbuk());
		residence[1][11] = Integer.parseInt(chungnam.get(0).getChungnam());
		residence[1][12] = Integer.parseInt(sejong.get(0).getSejong());
		residence[1][13] = Integer.parseInt(geongbuk.get(0).getGeongbuk());
		residence[1][14] = Integer.parseInt(geongnam.get(0).getGeongnam());
		residence[1][15] = Integer.parseInt(jeonbuk.get(0).getJeonbuk());
		residence[1][16] = Integer.parseInt(jeonnam.get(0).getJeonnam());
		residence[1][17] = Integer.parseInt(jeju.get(0).getJeju());
		residence[1][18] = Integer.parseInt(sum.get(0).getSum());
		log.info("지역 종료");
		return residence;
	}

	@Override
	public int[][] getSupportList(YearResultDTO yrDTO) throws Exception {
		List<YearResultDTO> benefitList = yrMapper.getSupBenefit(yrDTO);
		List<YearResultDTO> societyfitList = yrMapper.getSupSociety(yrDTO);
		int[][] support = new int[3][4];
		for (int i = 0; i < benefitList.size(); i++) {
			for (int j = 0; j < benefitList.get(i).getSupport1().size(); j++) {
				log.info("for문 돔");
				if (benefitList.get(i).getSupport1().get(j).equals("프로그램")) {
					support[0][0]++;
					log.info("프로그램 1개추가");
				} else if (benefitList.get(i).getSupport1().get(j).equals("숙박")) {
					support[0][1]++;
					log.info("숙박 1개추가");
				} else if (benefitList.get(i).getSupport1().get(j).equals("식사")) {
					support[0][2]++;
					log.info("식사 1개추가");
				} else if (benefitList.get(i).getSupport1().get(j).equals("기타")) {
					support[0][3]++;
					log.info("기타 1개추가");
				}
			}
		}

		for (int i = 0; i < societyfitList.size(); i++) {
			for (int j = 0; j < societyfitList.get(i).getSupport1().size(); j++) {
				log.info("for문 돔");
				if (societyfitList.get(i).getSupport1().get(j).equals("프로그램")) {
					support[1][0]++;
					log.info("프로그램 1개추가");
				} else if (societyfitList.get(i).getSupport1().get(j).equals("숙박")) {
					support[1][1]++;
					log.info("숙박 1개추가");
				} else if (societyfitList.get(i).getSupport1().get(j).equals("식사")) {
					support[1][2]++;
					log.info("식사 1개추가");
				} else if (societyfitList.get(i).getSupport1().get(j).equals("기타")) {
					support[1][3]++;
					log.info("기타 1개추가");
				}
			}
		}
		support[2][0] = support[0][0] + support[1][0];
		support[2][1] = support[0][1] + support[1][1];
		support[2][2] = support[0][2] + support[1][2];
		support[2][3] = support[0][3] + support[1][3];

		return support;
	}

	@Override
	public int[][] getServiceType(YearResultDTO yrDTO) throws Exception {
		log.info("서비스 유형 시작");
		List<YearResultDTO> benefitList = yrMapper.getSerBenefit(yrDTO);
		List<YearResultDTO> societyList = yrMapper.getSerSociety(yrDTO);

		int[][] array = new int[3][6];

		array[0][0] = Integer.parseInt(benefitList.get(0).getForest_edu());
		array[0][1] = Integer.parseInt(benefitList.get(0).getForest_healing());
		array[0][2] = Integer.parseInt(benefitList.get(0).getAddict_healing());
		array[0][3] = Integer.parseInt(benefitList.get(0).getAddict_prevent());
		array[0][4] = Integer.parseInt(benefitList.get(0).getHealing());
		array[0][5] = Integer.parseInt(benefitList.get(0).getSer_etc());

		array[1][0] = Integer.parseInt(societyList.get(0).getForest_edu());
		array[1][1] = Integer.parseInt(societyList.get(0).getForest_healing());
		array[1][2] = Integer.parseInt(societyList.get(0).getAddict_healing());
		array[1][3] = Integer.parseInt(societyList.get(0).getAddict_prevent());
		array[1][4] = Integer.parseInt(societyList.get(0).getHealing());
		array[1][5] = Integer.parseInt(societyList.get(0).getSer_etc());

		array[2][0] = Integer.parseInt(societyList.get(0).getForest_edu())
				+ Integer.parseInt(benefitList.get(0).getForest_edu());
		array[2][1] = Integer.parseInt(societyList.get(0).getForest_healing())
				+ Integer.parseInt(benefitList.get(0).getForest_healing());
		array[2][2] = Integer.parseInt(societyList.get(0).getAddict_healing())
				+ Integer.parseInt(benefitList.get(0).getAddict_healing());
		array[2][3] = Integer.parseInt(societyList.get(0).getAddict_prevent())
				+ Integer.parseInt(benefitList.get(0).getAddict_prevent());
		array[2][4] = Integer.parseInt(societyList.get(0).getHealing())
				+ Integer.parseInt(benefitList.get(0).getHealing());
		array[2][5] = Integer.parseInt(societyList.get(0).getSer_etc())
				+ Integer.parseInt(benefitList.get(0).getSer_etc());
		log.info("서비스 유형 종료");
		return array;
	}

	@Override
	public int[][] getPeapleCount(YearResultDTO yrDTO) throws Exception {
		int[][] array = new int[3][8];
		List<YearResultDTO> benefitList = yrMapper.getPartBenefit(yrDTO);
		List<YearResultDTO> societyList = yrMapper.getPartSociety(yrDTO);
		List<YearResultDTO> benefit_dayList = yrMapper.getBene_List(yrDTO);
		List<YearResultDTO> society_dayList = yrMapper.getSoc_List(yrDTO);
		int be_year_peple = 0;
		int so_year_peple = 0;
		for (int i = 0; i < benefit_dayList.size(); i++) {
			be_year_peple = be_year_peple + (Integer.parseInt(benefit_dayList.get(i).getPart_man())
					+ Integer.parseInt(benefit_dayList.get(i).getPart_woman())
					+ Integer.parseInt(benefit_dayList.get(i).getLead_man())
					+ Integer.parseInt(benefit_dayList.get(i).getLead_woman()))
					* Integer.parseInt(benefit_dayList.get(i).getDays_to_stay());
		}
		for (int i = 0; i < society_dayList.size(); i++) {
			so_year_peple = so_year_peple + (Integer.parseInt(society_dayList.get(i).getPart_man())
					+ Integer.parseInt(society_dayList.get(i).getPart_woman())
					+ Integer.parseInt(society_dayList.get(i).getLead_man())
					+ Integer.parseInt(society_dayList.get(i).getLead_woman()))
					* Integer.parseInt(society_dayList.get(i).getDays_to_stay());
		}

		array[0][0] = Integer.parseInt(benefitList.get(0).getPart_man());
		array[0][1] = Integer.parseInt(benefitList.get(0).getPart_woman());
		array[0][2] = Integer.parseInt(benefitList.get(0).getPart_man())
				+ Integer.parseInt(benefitList.get(0).getPart_woman());
		array[0][3] = Integer.parseInt(benefitList.get(0).getLead_man());
		array[0][4] = Integer.parseInt(benefitList.get(0).getLead_woman());
		array[0][5] = Integer.parseInt(benefitList.get(0).getLead_man())
				+ Integer.parseInt(benefitList.get(0).getLead_woman());
		array[0][6] = Integer.parseInt(benefitList.get(0).getPart_man())
				+ Integer.parseInt(benefitList.get(0).getPart_woman())
				+ Integer.parseInt(benefitList.get(0).getLead_man())
				+ Integer.parseInt(benefitList.get(0).getLead_woman());
		array[0][7] = be_year_peple;

		array[1][0] = Integer.parseInt(societyList.get(0).getPart_man());
		array[1][1] = Integer.parseInt(societyList.get(0).getPart_woman());
		array[1][2] = Integer.parseInt(societyList.get(0).getPart_man())
				+ Integer.parseInt(societyList.get(0).getPart_woman());
		array[1][3] = Integer.parseInt(societyList.get(0).getLead_man());
		array[1][4] = Integer.parseInt(societyList.get(0).getLead_woman());
		array[1][5] = Integer.parseInt(societyList.get(0).getLead_man())
				+ Integer.parseInt(societyList.get(0).getLead_woman());
		array[1][6] = Integer.parseInt(societyList.get(0).getPart_man())
				+ Integer.parseInt(societyList.get(0).getPart_woman())
				+ Integer.parseInt(societyList.get(0).getLead_man())
				+ Integer.parseInt(societyList.get(0).getLead_woman());
		array[1][7] = so_year_peple;

		array[2][0] = Integer.parseInt(benefitList.get(0).getPart_man())
				+ Integer.parseInt(societyList.get(0).getPart_man());
		array[2][1] = Integer.parseInt(benefitList.get(0).getPart_woman())
				+ Integer.parseInt(societyList.get(0).getPart_woman());
		array[2][2] = Integer.parseInt(benefitList.get(0).getPart_man())
				+ Integer.parseInt(benefitList.get(0).getPart_woman())
				+ Integer.parseInt(societyList.get(0).getPart_man())
				+ Integer.parseInt(societyList.get(0).getPart_woman());
		array[2][3] = Integer.parseInt(benefitList.get(0).getLead_man())
				+ Integer.parseInt(societyList.get(0).getLead_man());
		array[2][4] = Integer.parseInt(benefitList.get(0).getLead_woman())
				+ Integer.parseInt(societyList.get(0).getLead_woman());
		array[2][5] = Integer.parseInt(benefitList.get(0).getLead_man())
				+ Integer.parseInt(benefitList.get(0).getLead_woman())
				+ Integer.parseInt(societyList.get(0).getLead_man())
				+ Integer.parseInt(societyList.get(0).getLead_woman());
		array[2][6] = Integer.parseInt(benefitList.get(0).getPart_man())
				+ Integer.parseInt(benefitList.get(0).getPart_woman())
				+ Integer.parseInt(benefitList.get(0).getLead_man())
				+ Integer.parseInt(benefitList.get(0).getLead_woman())
				+ Integer.parseInt(societyList.get(0).getPart_man())
				+ Integer.parseInt(societyList.get(0).getPart_woman())
				+ Integer.parseInt(societyList.get(0).getLead_man())
				+ Integer.parseInt(societyList.get(0).getLead_woman());
		array[2][7] = be_year_peple + so_year_peple;

		return array;
	}

	@Override
	public ArrayList<String> getProgramEffect(SearchDTO sDTO) throws Exception {

		ArrayList<String> rlist = new ArrayList<String>();
		List<SearchDTO> Pre_PreList = yrMapper.getPre_PreList(sDTO);
		List<SearchDTO> Af_PreList = yrMapper.getAf_PreList(sDTO);
		List<SearchDTO> Pre_CounselList = yrMapper.getPre_CounselList(sDTO);
		List<SearchDTO> Af_CounselList = yrMapper.getAf_CounselList(sDTO);
		List<SearchDTO> Pre_HealingList = yrMapper.getPre_HealingList(sDTO);
		List<SearchDTO> Af_HealingList = yrMapper.getAf_HealingList(sDTO);
		rlist.add(Pre_PreList.get(0).getSum1());
		rlist.add(Af_PreList.get(0).getSum2());
		rlist.add(Pre_PreList.get(0).getAvg1());
		rlist.add(Af_PreList.get(0).getAvg2());
		rlist.add(Pre_CounselList.get(0).getSum1());
		rlist.add(Af_CounselList.get(0).getSum2());
		rlist.add(Pre_CounselList.get(0).getAvg1());
		rlist.add(Af_CounselList.get(0).getAvg2());
		rlist.add(Pre_HealingList.get(0).getSum1());
		rlist.add(Af_HealingList.get(0).getSum2());
		rlist.add(Pre_HealingList.get(0).getAvg1());
		rlist.add(Af_HealingList.get(0).getAvg2());

		return rlist;
	}

	@Override
	public double[][] getProgramList(SearchDTO sDTO) throws Exception {
		log.info("프로그램 리스트 시작");
		List<SearchDTO> HumanList_p = yrMapper.getHumanList_p(sDTO);
		List<SearchDTO> HumanList_l = yrMapper.getHumanList_l(sDTO);
		List<SearchDTO> MusicList_p = yrMapper.getMusicList_p(sDTO);
		List<SearchDTO> MusicList_l = yrMapper.getMusicList_l(sDTO);
		List<SearchDTO> ArtList_p = yrMapper.getArtList_p(sDTO);
		List<SearchDTO> ArtList_l = yrMapper.getArtList_l(sDTO);
		List<SearchDTO> YogaList_p = yrMapper.getYogaList_p(sDTO);
		List<SearchDTO> YogaList_l = yrMapper.getYogaList_l(sDTO);
		List<SearchDTO> MoveList_p = yrMapper.getMoveList_p(sDTO);
		List<SearchDTO> MoveList_l = yrMapper.getMoveList_l(sDTO);
		List<SearchDTO> NatureList_p = yrMapper.getNatureList_p(sDTO);
		List<SearchDTO> NatureList_l = yrMapper.getNatureList_l(sDTO);
		List<SearchDTO> PreventList_p = yrMapper.getPreventList_p(sDTO);
		List<SearchDTO> PreventList_l = yrMapper.getPreventList_l(sDTO);
		List<SearchDTO> For_eduList_p = yrMapper.getFor_eduList_p(sDTO);
		List<SearchDTO> For_eduList_l = yrMapper.getFor_eduList_l(sDTO);
		List<SearchDTO> For_healList_p = yrMapper.getFor_healList_p(sDTO);
		List<SearchDTO> For_healList_l = yrMapper.getFor_healList_l(sDTO);
		List<SearchDTO> EventList_p = yrMapper.getEventList_p(sDTO);
		List<SearchDTO> EventList_l = yrMapper.getEventList_l(sDTO);
		List<SearchDTO> ResidenceList_p = yrMapper.getResList_p(sDTO);
		List<SearchDTO> ResidenceList_l = yrMapper.getResList_l(sDTO);
		List<SearchDTO> NewList_p = yrMapper.getNewList_p(sDTO);
		List<SearchDTO> NewList_l = yrMapper.getNewList_l(sDTO);
		List<SearchDTO> EtcList_p = yrMapper.getEtcList_p(sDTO);
		List<SearchDTO> EtcList_l = yrMapper.getEtcList_l(sDTO);

		double[][] array = new double[4][17];
		// 인문 분야 평균
		if (HumanList_l.get(0).getProgram().equals("0") || HumanList_l.get(0).getProgram().equals("0.00")) {
			array[0][0] = Double.parseDouble(HumanList_p.get(0).getProgram());
		} else {
			array[0][0] = Math
					.round((Double.parseDouble(HumanList_p.get(0).getProgram()) * HumanList_p.get(0).getCount()
							+ Double.parseDouble(HumanList_l.get(0).getProgram()) * HumanList_l.get(0).getCount())
							/ (HumanList_p.get(0).getCount() + HumanList_l.get(0).getCount()) * 100)
					/ 100.0;
		}

		if (HumanList_l.get(0).getContent().equals("0") || HumanList_l.get(0).getContent().equals("0.00")) {
			array[1][0] = Double.parseDouble(HumanList_p.get(0).getContent());
		} else {
			array[1][0] = Math
					.round((Double.parseDouble(HumanList_p.get(0).getContent()) * HumanList_p.get(0).getCount()
							+ Double.parseDouble(HumanList_l.get(0).getContent()) * HumanList_l.get(0).getCount())
							/ (HumanList_p.get(0).getCount() + HumanList_l.get(0).getCount()) * 100)
					/ 100.0;
		}

		if (HumanList_l.get(0).getEffect().equals("0") || HumanList_l.get(0).getEffect().equals("0.00")) {
			array[2][0] = Double.parseDouble(HumanList_p.get(0).getEffect());
		} else {
			array[2][0] = Math.round((Double.parseDouble(HumanList_p.get(0).getEffect()) * HumanList_p.get(0).getCount()
					+ Double.parseDouble(HumanList_l.get(0).getEffect()) * HumanList_l.get(0).getCount())
					/ (HumanList_p.get(0).getCount() + HumanList_l.get(0).getCount()) * 100) / 100.0;
		}
		array[3][0] = Math.round((array[0][0] + array[1][0] + array[2][0]) / 3 * 100) / 100.0;

		// 음악분야 평균
		if (MusicList_l.get(0).getProgram().equals("0") || MusicList_l.get(0).getProgram().equals("0.00")) {
			array[0][1] = Double.parseDouble(MusicList_p.get(0).getProgram());
		} else {
			array[0][1] = Math
					.round((Double.parseDouble(MusicList_p.get(0).getProgram()) * MusicList_p.get(0).getCount()
							+ Double.parseDouble(MusicList_l.get(0).getProgram()) * MusicList_l.get(0).getCount())
							/ (MusicList_p.get(0).getCount() + MusicList_l.get(0).getCount()) * 100)
					/ 100.0;
		}

		if (MusicList_l.get(0).getContent().equals("0") || MusicList_l.get(0).getContent().equals("0.00")) {
			array[1][1] = Double.parseDouble(MusicList_p.get(0).getContent());
		} else {
			array[1][1] = Math
					.round((Double.parseDouble(MusicList_p.get(0).getContent()) * MusicList_p.get(0).getCount()
							+ Double.parseDouble(MusicList_l.get(0).getContent()) * MusicList_l.get(0).getCount())
							/ (MusicList_p.get(0).getCount() + MusicList_l.get(0).getCount()) * 100)
					/ 100.0;
		}

		if (MusicList_l.get(0).getEffect().equals("0") || MusicList_l.get(0).getEffect().equals("0.00")) {
			array[2][1] = Double.parseDouble(MusicList_p.get(0).getEffect());
		} else {
			array[2][1] = Math.round((Double.parseDouble(MusicList_p.get(0).getEffect()) * MusicList_p.get(0).getCount()
					+ Double.parseDouble(MusicList_l.get(0).getEffect()) * MusicList_l.get(0).getCount())
					/ (MusicList_p.get(0).getCount() + MusicList_l.get(0).getCount()) * 100) / 100.0;
		}
		array[3][1] = Math.round((array[0][1] + array[1][1] + array[2][1]) / 3 * 100) / 100.0;

		// 미술분야 평균
		if (ArtList_l.get(0).getProgram().equals("0") || ArtList_l.get(0).getProgram().equals("0.00")) {
			array[0][2] = Double.parseDouble(ArtList_p.get(0).getProgram());
		} else {
			array[0][2] = Math.round((Double.parseDouble(ArtList_p.get(0).getProgram()) * ArtList_p.get(0).getCount()
					+ Double.parseDouble(ArtList_l.get(0).getProgram()) * ArtList_l.get(0).getCount())
					/ (ArtList_p.get(0).getCount() + ArtList_l.get(0).getCount()) * 100) / 100.0;
		}

		if (ArtList_l.get(0).getContent().equals("0") || ArtList_l.get(0).getContent().equals("0.00")) {
			array[1][2] = Double.parseDouble(ArtList_p.get(0).getContent());
		} else {
			array[1][2] = Math.round((Double.parseDouble(ArtList_p.get(0).getContent()) * ArtList_p.get(0).getCount()
					+ Double.parseDouble(ArtList_l.get(0).getContent()) * ArtList_l.get(0).getCount())
					/ (ArtList_p.get(0).getCount() + ArtList_l.get(0).getCount()) * 100) / 100.0;
		}

		if (ArtList_l.get(0).getEffect().equals("0") || ArtList_l.get(0).getEffect().equals("0.00")) {
			array[2][2] = Double.parseDouble(ArtList_p.get(0).getEffect());
		} else {
			array[2][2] = Math.round((Double.parseDouble(ArtList_p.get(0).getEffect()) * ArtList_p.get(0).getCount()
					+ Double.parseDouble(ArtList_l.get(0).getEffect()) * ArtList_l.get(0).getCount())
					/ (ArtList_p.get(0).getCount() + ArtList_l.get(0).getCount()) * 100) / 100.0;
		}
		array[3][2] = Math.round((array[0][2] + array[1][2] + array[2][2]) / 3 * 100) / 100.0;

		// 요가명상 평균
		if (YogaList_l.get(0).getProgram().equals("0") || YogaList_l.get(0).getProgram().equals("0.00")) {
			array[0][3] = Double.parseDouble(YogaList_p.get(0).getProgram());
		} else {
			array[0][3] = Math.round((Double.parseDouble(YogaList_p.get(0).getProgram()) * YogaList_p.get(0).getCount()
					+ Double.parseDouble(YogaList_l.get(0).getProgram()) * YogaList_l.get(0).getCount())
					/ (YogaList_p.get(0).getCount() + YogaList_l.get(0).getCount()) * 100) / 100.0;
		}

		if (YogaList_l.get(0).getContent().equals("0") || YogaList_l.get(0).getContent().equals("0.00")) {
			array[1][3] = Double.parseDouble(YogaList_p.get(0).getContent());
		} else {
			array[1][3] = Math.round((Double.parseDouble(YogaList_p.get(0).getContent()) * YogaList_p.get(0).getCount()
					+ Double.parseDouble(YogaList_l.get(0).getContent()) * YogaList_l.get(0).getCount())
					/ (YogaList_p.get(0).getCount() + YogaList_l.get(0).getCount()) * 100) / 100.0;
		}

		if (YogaList_l.get(0).getEffect().equals("0") || YogaList_l.get(0).getEffect().equals("0.00")) {
			array[2][3] = Double.parseDouble(YogaList_p.get(0).getEffect());
		} else {
			array[2][3] = Math.round((Double.parseDouble(YogaList_p.get(0).getEffect()) * YogaList_p.get(0).getCount()
					+ Double.parseDouble(YogaList_l.get(0).getEffect()) * YogaList_l.get(0).getCount())
					/ (YogaList_p.get(0).getCount() + YogaList_l.get(0).getCount()) * 100) / 100.0;
		}
		array[3][3] = Math.round((array[0][3] + array[1][3] + array[2][3]) / 3 * 100) / 100.0;

		// 동작 평균
		if (MoveList_l.get(0).getProgram().equals("0") || MoveList_l.get(0).getProgram().equals("0.00")) {
			array[0][4] = Double.parseDouble(MoveList_p.get(0).getProgram());
		} else {
			array[0][4] = Math.round((Double.parseDouble(MoveList_p.get(0).getProgram()) * MoveList_p.get(0).getCount()
					+ Double.parseDouble(MoveList_l.get(0).getProgram()) * MoveList_l.get(0).getCount())
					/ (MoveList_p.get(0).getCount() + MoveList_l.get(0).getCount()) * 100) / 100.0;
		}

		if (MoveList_l.get(0).getContent().equals("0") || MoveList_l.get(0).getContent().equals("0.00")) {
			array[1][4] = Double.parseDouble(MoveList_p.get(0).getContent());
		} else {
			array[1][4] = Math.round((Double.parseDouble(MoveList_p.get(0).getContent()) * MoveList_p.get(0).getCount()
					+ Double.parseDouble(MoveList_l.get(0).getContent()) * MoveList_l.get(0).getCount())
					/ (MoveList_p.get(0).getCount() + MoveList_l.get(0).getCount()) * 100) / 100.0;
		}

		if (MoveList_l.get(0).getEffect().equals("0") || MoveList_l.get(0).getEffect().equals("0.00")) {
			array[2][4] = Double.parseDouble(MoveList_p.get(0).getEffect());
		} else {
			array[2][4] = Math.round((Double.parseDouble(MoveList_p.get(0).getEffect()) * MoveList_p.get(0).getCount()
					+ Double.parseDouble(MoveList_l.get(0).getEffect()) * MoveList_l.get(0).getCount())
					/ (MoveList_p.get(0).getCount() + MoveList_l.get(0).getCount()) * 100) / 100.0;
		}
		array[3][4] = Math.round((array[0][4] + array[1][4] + array[2][4]) / 3 * 100) / 100.0;

		// 자연 평균
		if (NatureList_l.get(0).getProgram().equals("0") || NatureList_l.get(0).getProgram().equals("0.00")) {
			array[0][5] = Double.parseDouble(NatureList_p.get(0).getProgram());
		} else {
			array[0][5] = Math
					.round((Double.parseDouble(NatureList_p.get(0).getProgram()) * NatureList_p.get(0).getCount()
							+ Double.parseDouble(NatureList_l.get(0).getProgram()) * NatureList_l.get(0).getCount())
							/ (NatureList_p.get(0).getCount() + NatureList_l.get(0).getCount()) * 100)
					/ 100.0;
		}

		if (NatureList_l.get(0).getContent().equals("0") || NatureList_l.get(0).getContent().equals("0.00")) {
			array[1][5] = Double.parseDouble(NatureList_p.get(0).getContent());
		} else {
			array[1][5] = Math
					.round((Double.parseDouble(NatureList_p.get(0).getContent()) * NatureList_p.get(0).getCount()
							+ Double.parseDouble(NatureList_l.get(0).getContent()) * NatureList_l.get(0).getCount())
							/ (NatureList_p.get(0).getCount() + NatureList_l.get(0).getCount()) * 100)
					/ 100.0;
		}

		if (NatureList_l.get(0).getEffect().equals("0") || NatureList_l.get(0).getEffect().equals("0.00")) {
			array[2][5] = Double.parseDouble(NatureList_p.get(0).getEffect());
		} else {
			array[2][5] = Math
					.round((Double.parseDouble(NatureList_p.get(0).getEffect()) * NatureList_p.get(0).getCount()
							+ Double.parseDouble(NatureList_l.get(0).getEffect()) * NatureList_l.get(0).getCount())
							/ (NatureList_p.get(0).getCount() + NatureList_l.get(0).getCount()) * 100)
					/ 100.0;
		}
		array[3][5] = Math.round((array[0][5] + array[1][5] + array[2][5]) / 3 * 100) / 100.0;

		// 예방교육 평균
		if (PreventList_l.get(0).getProgram().equals("0") || PreventList_l.get(0).getProgram().equals("0.00")) {
			array[0][6] = Double.parseDouble(PreventList_p.get(0).getProgram());
		} else {
			array[0][6] = Math
					.round((Double.parseDouble(PreventList_p.get(0).getProgram()) * PreventList_p.get(0).getCount()
							+ Double.parseDouble(PreventList_l.get(0).getProgram()) * PreventList_l.get(0).getCount())
							/ (PreventList_p.get(0).getCount() + PreventList_l.get(0).getCount()) * 100)
					/ 100.0;
		}

		if (PreventList_l.get(0).getContent().equals("0") || PreventList_l.get(0).getContent().equals("0.00")) {
			array[1][6] = Double.parseDouble(PreventList_p.get(0).getContent());
		} else {
			array[1][6] = Math
					.round((Double.parseDouble(PreventList_p.get(0).getContent()) * PreventList_p.get(0).getCount()
							+ Double.parseDouble(PreventList_l.get(0).getContent()) * PreventList_l.get(0).getCount())
							/ (PreventList_p.get(0).getCount() + PreventList_l.get(0).getCount()) * 100)
					/ 100.0;
		}

		if (PreventList_l.get(0).getEffect().equals("0") || PreventList_l.get(0).getEffect().equals("0.00")) {
			array[2][6] = Double.parseDouble(PreventList_p.get(0).getEffect());
		} else {
			array[2][6] = Math
					.round((Double.parseDouble(PreventList_p.get(0).getEffect()) * PreventList_p.get(0).getCount()
							+ Double.parseDouble(PreventList_l.get(0).getEffect()) * PreventList_l.get(0).getCount())
							/ (PreventList_p.get(0).getCount() + PreventList_l.get(0).getCount()) * 100)
					/ 100.0;
		}
		array[3][6] = Math.round((array[0][6] + array[1][6] + array[2][6]) / 3 * 100) / 100.0;
		int size_1 = 0;
		for (int i = 0; i < 7; i++) {
			if (array[0][i] > 0) {
				array[0][7] = array[0][7] + array[0][i];
				array[1][7] = array[1][7] + array[1][i];
				array[2][7] = array[2][7] + array[2][i];
				array[3][7] = array[3][7] + array[3][i];
				size_1++;
			}
		}
		array[0][7] = Math.round(array[0][7] / size_1 * 100.0) / 100.0;
		array[1][7] = Math.round(array[1][7] / size_1 * 100.0) / 100.0;
		array[2][7] = Math.round(array[2][7] / size_1 * 100.0) / 100.0;
		array[3][7] = Math.round(array[3][7] / size_1 * 100.0) / 100.0;

		// 산림교육 평균
		if (For_eduList_l.get(0).getProgram().equals("0") || For_eduList_l.get(0).getProgram().equals("0.00")) {
			array[0][8] = Double.parseDouble(For_eduList_p.get(0).getProgram());
		} else {
			array[0][8] = Math
					.round((Double.parseDouble(For_eduList_p.get(0).getProgram()) * For_eduList_p.get(0).getCount()
							+ Double.parseDouble(For_eduList_l.get(0).getProgram()) * For_eduList_l.get(0).getCount())
							/ (For_eduList_p.get(0).getCount() + For_eduList_l.get(0).getCount()) * 100)
					/ 100.0;
		}

		if (For_eduList_l.get(0).getContent().equals("0") || For_eduList_l.get(0).getContent().equals("0.00")) {
			array[1][8] = Double.parseDouble(For_eduList_p.get(0).getContent());
		} else {
			array[1][8] = Math
					.round((Double.parseDouble(For_eduList_p.get(0).getContent()) * For_eduList_p.get(0).getCount()
							+ Double.parseDouble(For_eduList_l.get(0).getContent()) * For_eduList_l.get(0).getCount())
							/ (For_eduList_p.get(0).getCount() + For_eduList_l.get(0).getCount()) * 100)
					/ 100.0;
		}

		if (For_eduList_l.get(0).getEffect().equals("0") || For_eduList_l.get(0).getEffect().equals("0.00")) {
			array[2][8] = Double.parseDouble(For_eduList_p.get(0).getEffect());
		} else {
			array[2][8] = Math
					.round((Double.parseDouble(For_eduList_p.get(0).getEffect()) * For_eduList_p.get(0).getCount()
							+ Double.parseDouble(For_eduList_l.get(0).getEffect()) * For_eduList_l.get(0).getCount())
							/ (For_eduList_p.get(0).getCount() + For_eduList_l.get(0).getCount()) * 100)
					/ 100.0;
		}
		array[3][8] = Math.round((array[0][8] + array[1][8] + array[2][8]) / 3 * 100) / 100.0;
		// 산림치유
		if (For_healList_l.get(0).getProgram().equals("0") || For_healList_l.get(0).getProgram().equals("0.00")) {
			array[0][9] = Double.parseDouble(For_healList_p.get(0).getProgram());
		} else {
			array[0][9] = Math
					.round((Double.parseDouble(For_healList_p.get(0).getProgram()) * For_healList_p.get(0).getCount()
							+ Double.parseDouble(For_healList_l.get(0).getProgram()) * For_healList_l.get(0).getCount())
							/ (For_healList_p.get(0).getCount() + For_healList_l.get(0).getCount()) * 100)
					/ 100.0;
		}

		if (For_healList_l.get(0).getContent().equals("0") || For_healList_l.get(0).getContent().equals("0.00")) {
			array[1][9] = Double.parseDouble(For_healList_p.get(0).getContent());
		} else {
			array[1][9] = Math
					.round((Double.parseDouble(For_healList_p.get(0).getContent()) * For_healList_p.get(0).getCount()
							+ Double.parseDouble(For_healList_l.get(0).getContent()) * For_healList_l.get(0).getCount())
							/ (For_healList_p.get(0).getCount() + For_healList_l.get(0).getCount()) * 100)
					/ 100.0;
		}

		if (For_healList_l.get(0).getEffect().equals("0") || For_healList_l.get(0).getEffect().equals("0.00")) {
			array[2][9] = Double.parseDouble(For_healList_p.get(0).getEffect());
		} else {
			array[2][9] = Math
					.round((Double.parseDouble(For_healList_p.get(0).getEffect()) * For_healList_p.get(0).getCount()
							+ Double.parseDouble(For_healList_l.get(0).getEffect()) * For_healList_l.get(0).getCount())
							/ (For_healList_p.get(0).getCount() + For_healList_l.get(0).getCount()) * 100)
					/ 100.0;
		}
		array[3][9] = Math.round((array[0][9] + array[1][9] + array[2][9]) / 3 * 100) / 100.0;

		int size_2 = 0;
		for (int i = 8; i < 10; i++) {
			if (array[0][i] > 0) {
				array[0][10] = array[0][10] + array[0][i];
				array[1][10] = array[1][10] + array[1][i];
				array[2][10] = array[2][10] + array[2][i];
				array[3][10] = array[3][10] + array[3][i];
				size_2++;
			}
		}
		array[0][10] = Math.round(array[0][10] / size_2 * 100.0) / 100.0;
		array[1][10] = Math.round(array[1][10] / size_2 * 100.0) / 100.0;
		array[2][10] = Math.round(array[2][10] / size_2 * 100.0) / 100.0;
		array[3][10] = Math.round(array[3][10] / size_2 * 100.0) / 100.0;
		// 이벤트 평균
		if (EventList_l.get(0).getProgram().equals("0") || EventList_l.get(0).getProgram().equals("0.00")) {
			array[0][11] = Double.parseDouble(EventList_p.get(0).getProgram());
		} else {
			array[0][11] = Math
					.round((Double.parseDouble(EventList_p.get(0).getProgram()) * EventList_p.get(0).getCount()
							+ Double.parseDouble(EventList_l.get(0).getProgram()) * EventList_l.get(0).getCount())
							/ (EventList_p.get(0).getCount() + EventList_l.get(0).getCount()) * 100)
					/ 100.0;
		}

		if (EventList_l.get(0).getContent().equals("0") || EventList_l.get(0).getContent().equals("0.00")) {
			array[1][11] = Double.parseDouble(EventList_p.get(0).getContent());
		} else {
			array[1][11] = Math
					.round((Double.parseDouble(EventList_p.get(0).getContent()) * EventList_p.get(0).getCount()
							+ Double.parseDouble(EventList_l.get(0).getContent()) * EventList_l.get(0).getCount())
							/ (EventList_p.get(0).getCount() + EventList_l.get(0).getCount()) * 100)
					/ 100.0;
		}

		if (EventList_l.get(0).getEffect().equals("0") || EventList_l.get(0).getEffect().equals("0.00")) {
			array[2][11] = Double.parseDouble(EventList_p.get(0).getEffect());
		} else {
			array[2][11] = Math
					.round((Double.parseDouble(EventList_p.get(0).getEffect()) * EventList_p.get(0).getCount()
							+ Double.parseDouble(EventList_l.get(0).getEffect()) * EventList_l.get(0).getCount())
							/ (EventList_p.get(0).getCount() + EventList_l.get(0).getCount()) * 100)
					/ 100.0;
		}
		array[3][11] = Math.round((array[0][11] + array[1][11] + array[2][11]) / 3 * 100) / 100.0;
		// 지역 평균
		if (ResidenceList_l.get(0).getProgram().equals("0") || ResidenceList_l.get(0).getProgram().equals("0.00")) {
			array[0][12] = Double.parseDouble(ResidenceList_p.get(0).getProgram());
		} else {
			array[0][12] = Math.round((Double.parseDouble(ResidenceList_p.get(0).getProgram())
					* ResidenceList_p.get(0).getCount()
					+ Double.parseDouble(ResidenceList_l.get(0).getProgram()) * ResidenceList_l.get(0).getCount())
					/ (ResidenceList_p.get(0).getCount() + ResidenceList_l.get(0).getCount()) * 100) / 100.0;
		}

		if (ResidenceList_l.get(0).getContent().equals("0") || ResidenceList_l.get(0).getContent().equals("0.00")) {
			array[1][12] = Double.parseDouble(ResidenceList_p.get(0).getContent());
		} else {
			array[1][12] = Math.round((Double.parseDouble(ResidenceList_p.get(0).getContent())
					* ResidenceList_p.get(0).getCount()
					+ Double.parseDouble(ResidenceList_l.get(0).getContent()) * ResidenceList_l.get(0).getCount())
					/ (ResidenceList_p.get(0).getCount() + ResidenceList_l.get(0).getCount()) * 100) / 100.0;
		}

		if (ResidenceList_l.get(0).getEffect().equals("0") || ResidenceList_l.get(0).getEffect().equals("0.00")) {
			array[2][12] = Double.parseDouble(ResidenceList_p.get(0).getEffect());
		} else {
			array[2][12] = Math.round((Double.parseDouble(ResidenceList_p.get(0).getEffect())
					* ResidenceList_p.get(0).getCount()
					+ Double.parseDouble(ResidenceList_l.get(0).getEffect()) * ResidenceList_l.get(0).getCount())
					/ (ResidenceList_p.get(0).getCount() + ResidenceList_l.get(0).getCount()) * 100) / 100.0;
		}
		array[3][12] = Math.round((array[0][12] + array[1][12] + array[2][12]) / 3 * 100) / 100.0;

		// 신규 평균
		if (NewList_l.get(0).getProgram().equals("0") || NewList_l.get(0).getProgram().equals("0.00")) {
			array[0][13] = Double.parseDouble(NewList_p.get(0).getProgram());
		} else {
			array[0][13] = Math.round((Double.parseDouble(NewList_l.get(0).getProgram()) * NewList_l.get(0).getCount()
					+ Double.parseDouble(NewList_l.get(0).getProgram()) * NewList_l.get(0).getCount())
					/ (NewList_l.get(0).getCount() + NewList_l.get(0).getCount()) * 100) / 100.0;
		}

		if (NewList_l.get(0).getContent().equals("0") || NewList_l.get(0).getContent().equals("0.00")) {
			array[1][13] = Double.parseDouble(NewList_p.get(0).getContent());
		} else {
			array[1][13] = Math.round((Double.parseDouble(NewList_l.get(0).getContent()) * NewList_l.get(0).getCount()
					+ Double.parseDouble(NewList_l.get(0).getContent()) * NewList_l.get(0).getCount())
					/ (NewList_l.get(0).getCount() + NewList_l.get(0).getCount()) * 100) / 100.0;
		}

		if (NewList_l.get(0).getEffect().equals("0") || NewList_l.get(0).getContent().equals("0.00")) {
			array[2][13] = Double.parseDouble(NewList_p.get(0).getEffect());
		} else {
			array[2][13] = Math.round((Double.parseDouble(NewList_l.get(0).getEffect()) * NewList_l.get(0).getCount()
					+ Double.parseDouble(NewList_l.get(0).getEffect()) * NewList_l.get(0).getCount())
					/ (NewList_l.get(0).getCount() + NewList_l.get(0).getCount()) * 100) / 100.0;
		}
		array[3][13] = Math.round((array[0][13] + array[1][13] + array[2][13]) / 3 * 100) / 100.0;

		int size_3 = 0;
		for (int i = 11; i < 14; i++) {
			if (array[0][i] > 0) {
				array[0][14] = array[0][14] + array[0][i];
				array[1][14] = array[1][14] + array[1][i];
				array[2][14] = array[2][14] + array[2][i];
				array[3][14] = array[3][14] + array[3][i];
				size_3++;
			}
		}
		array[0][14] = Math.round(array[0][14] / size_3 * 100.0) / 100.0;
		array[1][14] = Math.round(array[1][14] / size_3 * 100.0) / 100.0;
		array[2][14] = Math.round(array[2][14] / size_3 * 100.0) / 100.0;
		array[3][14] = Math.round(array[3][14] / size_3 * 100.0) / 100.0;
		// 기타 평균
		if (EtcList_l.get(0).getProgram().equals("0") || EtcList_l.get(0).getProgram().equals("0.00")) {
			array[0][15] = Double.parseDouble(EtcList_p.get(0).getProgram());
		} else {
			array[0][15] = Math.round((Double.parseDouble(EtcList_p.get(0).getProgram()) * EtcList_p.get(0).getCount()
					+ Double.parseDouble(EtcList_l.get(0).getProgram()) * EtcList_l.get(0).getCount())
					/ (EtcList_p.get(0).getCount() + EtcList_l.get(0).getCount()) * 100) / 100.0;
		}

		if (EtcList_l.get(0).getContent().equals("0") || EtcList_l.get(0).getContent().equals("0.00")) {
			array[1][15] = Double.parseDouble(EtcList_p.get(0).getContent());
		} else {
			array[1][15] = Math.round((Double.parseDouble(EtcList_p.get(0).getContent()) * EtcList_p.get(0).getCount()
					+ Double.parseDouble(EtcList_l.get(0).getContent()) * EtcList_l.get(0).getCount())
					/ (EtcList_p.get(0).getCount() + EtcList_l.get(0).getCount()) * 100) / 100.0;
		}

		if (EtcList_l.get(0).getEffect().equals("0") || EtcList_l.get(0).getEffect().equals("0.00")) {
			array[2][15] = Double.parseDouble(EtcList_p.get(0).getEffect());
		} else {
			array[2][15] = Math.round((Double.parseDouble(EtcList_p.get(0).getEffect()) * EtcList_p.get(0).getCount()
					+ Double.parseDouble(EtcList_l.get(0).getEffect()) * EtcList_l.get(0).getCount())
					/ (EtcList_p.get(0).getCount() + EtcList_l.get(0).getCount()) * 100) / 100.0;
		}
		array[3][15] = Math.round((array[0][15] + array[1][15] + array[2][15]) / 3 * 100) / 100.0;

		int size_4 = 4;
		if (array[0][7] <= 0) {
			size_4--;
		}
		if (array[0][10] <= 0) {
			size_4--;
		}
		if (array[0][14] <= 0) {
			size_4--;
		}
		if (array[0][15] <= 0) {
			size_4--;
		}

		array[0][16] = Math.round((array[0][7] + array[0][10] + array[0][14] + array[0][15]) / size_4 * 100.0) / 100.0;
		array[1][16] = Math.round((array[1][7] + array[1][10] + array[1][14] + array[1][15]) / size_4 * 100.0) / 100.0;
		array[2][16] = Math.round((array[2][7] + array[2][10] + array[2][14] + array[2][15]) / size_4 * 100.0) / 100.0;
		array[3][16] = Math.round((array[3][7] + array[3][10] + array[3][14] + array[3][15]) / size_4 * 100.0) / 100.0;

		log.info("프로그램 리스트 종료");

		return array;
	}

	@Override
	public double[] getExpenseList(ExpenseDTO eDTO) throws Exception {
		log.info("지출액 가져오기");
		List<ExpenseDTO> rList = yrMapper.getExpenseList(eDTO);
		double[] expense = new double[10];
		// 강사비
		for (int i = 0; i < rList.get(4).getPrice1().size(); i++) {
			expense[0] = expense[0] + Double.parseDouble(rList.get(4).getPrice1().get(i));
		}
		// 강사-교통비
		for (int i = 0; i < rList.get(5).getPrice1().size(); i++) {
			expense[1] = expense[1] + Double.parseDouble(rList.get(5).getPrice1().get(i));
		}
		// 보조강사비
		for (int i = 0; i < rList.get(7).getPrice1().size(); i++) {
			expense[2] = expense[2] + Double.parseDouble(rList.get(7).getPrice1().get(i));
		}
		// 강사 식비
		for (int i = 0; i < rList.get(6).getPrice1().size(); i++) {
			expense[3] = expense[3] + Double.parseDouble(rList.get(6).getPrice1().get(i));
		}
		// 참가자 숙박
		for (int i = 0; i < rList.get(13).getPrice1().size(); i++) {
			expense[4] = expense[4] + Double.parseDouble(rList.get(13).getPrice1().get(i));
		}
		// 참가자 식비
		for (int i = 0; i < rList.get(14).getPrice1().size(); i++) {
			expense[5] = expense[5] + Double.parseDouble(rList.get(14).getPrice1().get(i));
		}
		// 참가자 쟤료비
		for (int i = 0; i < rList.get(15).getPrice1().size(); i++) {
			expense[6] = expense[6] + Double.parseDouble(rList.get(15).getPrice1().get(i));
		}
		// 참가자 기타비
		for (int i = 0; i < rList.get(12).getPrice1().size(); i++) {
			expense[7] = expense[7] + Double.parseDouble(rList.get(12).getPrice1().get(i));
		}
		// 참가자 예비비
		for (int i = 0; i < rList.get(0).getPrice1().size(); i++) {
			expense[8] = expense[8] + Double.parseDouble(rList.get(0).getPrice1().get(i));
		}
		for (int i = 0; i < rList.get(1).getPrice1().size(); i++) {
			expense[8] = expense[8] + Double.parseDouble(rList.get(1).getPrice1().get(i));
		}
		for (int i = 0; i < rList.get(2).getPrice1().size(); i++) {
			expense[8] = expense[8] + Double.parseDouble(rList.get(2).getPrice1().get(i));
		}
		for (int i = 0; i < rList.get(3).getPrice1().size(); i++) {
			expense[8] = expense[8] + Double.parseDouble(rList.get(3).getPrice1().get(i));
		}
		for (int i = 0; i < rList.get(8).getPrice1().size(); i++) {
			expense[8] = expense[8] + Double.parseDouble(rList.get(8).getPrice1().get(i));
		}
		for (int i = 0; i < rList.get(9).getPrice1().size(); i++) {
			expense[8] = expense[8] + Double.parseDouble(rList.get(9).getPrice1().get(i));
		}
		for (int i = 0; i < rList.get(10).getPrice1().size(); i++) {
			expense[8] = expense[8] + Double.parseDouble(rList.get(10).getPrice1().get(i));
		}
		for (int i = 0; i < rList.get(11).getPrice1().size(); i++) {
			expense[8] = expense[8] + Double.parseDouble(rList.get(11).getPrice1().get(i));
		}
		// 참가자 예비비
		for (int i = 0; i < 8; i++) {
			expense[9] = expense[9] + expense[i];
		}
		return expense;

	}

	@Override
	public int[] getIncomeSumList(IncomeDTO iDTO) throws Exception {
		log.info("수입금액 가져오기");
		List<IncomeDTO> rList = yrMapper.getSumIncomeList(iDTO);
		List<IncomeDTO> finalList = yrMapper.getFinalIncomeList(iDTO);
		log.info(finalList.get(0).getSum());
		int[] income = new int[7];
		// 프로그램
		for (int i = 0; i < rList.get(4).getPrice1().size(); i++) {
			income[0] = income[0] + Integer.parseInt(rList.get(4).getPrice1().get(i));
		}
		// 숙박비
		for (int i = 0; i < rList.get(1).getPrice1().size(); i++) {
			income[1] = income[1] + Integer.parseInt(rList.get(1).getPrice1().get(i));
		}
		// 식사비
		for (int i = 0; i < rList.get(2).getPrice1().size(); i++) {
			income[2] = income[2] + Integer.parseInt(rList.get(2).getPrice1().get(i));
		}
		// 쟤료비
		for (int i = 0; i < rList.get(3).getPrice1().size(); i++) {
			income[3] = income[3] + Integer.parseInt(rList.get(3).getPrice1().get(i));
		}
		// 기타비
		for (int i = 0; i < rList.get(0).getPrice1().size(); i++) {
			income[4] = income[4] + Integer.parseInt(rList.get(0).getPrice1().get(i));
		}

		income[5] = income[0] + income[1] + income[2] + income[3] + income[4];
		// 할인이 들어간 총 합계

		for (int i = 0; i < finalList.size(); i++) {
			income[6] = income[6] + Integer.parseInt(finalList.get(i).getSum());
		}
		return income;

	}

	@Override
	public List<BasicInfoDTO> getBasicList(BasicInfoDTO bDTO) throws Exception {
		List<BasicInfoDTO> rList = yrMapper.getBasicList(bDTO);
		return rList;
	}

	@Override
	public List<HrvInsertDTO> getHrvList(HrvInsertDTO hiDTO) throws Exception {
		List<HrvInsertDTO> PreHrvList = yrMapper.getPreHrvList(hiDTO);
		List<HrvInsertDTO> AftHrvList = yrMapper.getAftHrvList(hiDTO);

		PreHrvList.get(0).setNum6(AftHrvList.get(0).getNum1());
		PreHrvList.get(0).setNum7(AftHrvList.get(0).getNum2());
		PreHrvList.get(0).setNum8(AftHrvList.get(0).getNum3());
		PreHrvList.get(0).setNum9(AftHrvList.get(0).getNum4());
		PreHrvList.get(0).setNum10(AftHrvList.get(0).getNum5());

		return PreHrvList;
	}

}
