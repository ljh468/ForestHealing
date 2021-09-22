package poly.dto;

import java.util.Arrays;
import java.util.List;

public class HealingInsertDTO {
	private String agency;
	private String openday;
	private String name;
	private String sex;
	private String age;
	private String residence;
	private String job;
	private String ptcProgram;
	private String past_stress_experience;
	private String pv;
	private List<String> scoreList;
	private List<String> scoreString2List;
	private List<HealingInsertDTO> healingDtoList;
	
	public String getAgency() {
		return agency;
	}
	public void setAgency(String agency) {
		this.agency = agency;
	}
	public String getOpenday() {
		return openday;
	}
	public void setOpenday(String openday) {
		this.openday = openday;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getSex() {
		return sex;
	}
	public void setSex(String sex) {
		this.sex = sex;
	}
	public String getAge() {
		return age;
	}
	public void setAge(String age) {
		this.age = age;
	}
	public String getResidence() {
		return residence;
	}
	public void setResidence(String residence) {
		this.residence = residence;
	}
	public String getJob() {
		return job;
	}
	public void setJob(String job) {
		this.job = job;
	}
	public String getPtcProgram() {
		return ptcProgram;
	}
	public void setPtcProgram(String ptcProgram) {
		this.ptcProgram = ptcProgram;
	}
	public String getPast_stress_experience() {
		return past_stress_experience;
	}
	public void setPast_stress_experience(String past_stress_experience) {
		this.past_stress_experience = past_stress_experience;
	}
	public List<HealingInsertDTO> getHealingDtoList() {
		return healingDtoList;
	}
	public void setHealingDtoList(List<HealingInsertDTO> healingDtoList) {
		this.healingDtoList = healingDtoList;
	}
	public String getPv() {
		return pv;
	}
	public void setPv(String pv) {
		this.pv = pv;
	}
	public List<String> getScoreList() {
		return scoreList;
	}
	public void setScoreList(List<String> scoreList) {
		this.scoreList = scoreList;
	}
	public List<String> getScoreString2List() {
		return scoreString2List;
	}
	public void setScoreString2List(String scoreString2List) {
		this.scoreString2List = Arrays.asList(scoreString2List.split(","));
	}
	
	
}
