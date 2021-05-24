package poly.dto;

import java.util.List;

public class ServiceInsertDTO {
	
	private String agency;
	private String date;
	private String ptcProgram;
	private String sex;
	private String age;
	private String residence;
	private String job;
	private List<String> scoreList;
	
	private List<ServiceInsertDTO> serviceDtoList;
	
	public List<ServiceInsertDTO> getServiceDtoList() {
		return serviceDtoList;
	}
	public void setServiceDtoList(List<ServiceInsertDTO> serviceDtoList) {
		this.serviceDtoList = serviceDtoList;
	}
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
	public String getPtcProgram() {
		return ptcProgram;
	}
	public void setPtcProgram(String ptcProgram) {
		this.ptcProgram = ptcProgram;
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
	public List<String> getScoreList() {
		return scoreList;
	}
	public void setScoreList(List<String> scoreList) {
		this.scoreList = scoreList;
	}

}
