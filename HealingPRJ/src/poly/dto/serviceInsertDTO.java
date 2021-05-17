package poly.dto;

import java.util.List;

public class serviceInsertDTO {
	
	
	
	private String agency;
	private String date;
	private String ptcProgram;
	private String sex;
	private String age;
	private String residence;
	private String job;
	private List<Object> score;
	
	
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
	public List<Object> getScore() {
		return score;
	}
	public void setScore(List<Object> score) {
		this.score = score;
	}
	
}
