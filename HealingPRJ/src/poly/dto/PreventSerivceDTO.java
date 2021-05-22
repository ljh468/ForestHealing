package poly.dto;

import java.util.List;

public class PreventSerivceDTO {
	private String agency;
	private String date;
	public String name;
	public String sex;
	public String age;
	public String residence;
	public String job;
	public String ptcProgram;
	public String pastStress;
	private List<List<String>> scoreList;
	private List<PreventSerivceDTO> preventDtoList;
	
	
	public String getAgency() {
		return agency;
	}
	public void setAgency(String agency) {
		this.agency = agency;
	}
	public String getDate() {
		return date;
	}
	public void setDate(String date) {
		this.date = date;
	}
	public List<PreventSerivceDTO> getPreventDtoList() {
		return preventDtoList;
	}
	public void setPreventDtoList(List<PreventSerivceDTO> preventDtoList) {
		this.preventDtoList = preventDtoList;
	}
	public List<List<String>> getScoreList() {
		return scoreList;
	}
	public void setScoreList(List<List<String>> scoreList) {
		this.scoreList = scoreList;
	}

	public String getSex() {
		return sex;
	}
	public void setSex(String sex) {
		this.sex = sex;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
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
	public String getPastStress() {
		return pastStress;
	}
	public void setPastStress(String pastStress) {
		this.pastStress = pastStress;
	}

}
