package poly.dto;

import java.util.List;

public class ProgramInsertDTO{

	private String agency;
	private String date;
	private String ptcProgram;
	private String sex;
	private String age;
	private String residence;
	private String job;
	private String programName;
	private String teacher;
	private String place;
	private List<String> scoreList;
	
	private List<ProgramInsertDTO> programDtoList;

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
	public String getProgramName() {
		return programName;
	}
	public void setProgramName(String programName) {
		this.programName = programName;
	}
	public String getTeacher() {
		return teacher;
	}
	public void setTeacher(String teacher) {
		this.teacher = teacher;
	}
	public String getPlace() {
		return place;
	}
	public void setPlace(String place) {
		this.place = place;
	}
	public List<ProgramInsertDTO> getProgramDtoList() {
		
		return programDtoList;
	}
	public void setProgramDtoList(List<ProgramInsertDTO> programDtoList) {
		this.programDtoList = programDtoList;
	}
	public List<String> getScoreList() {
		return scoreList;
	}
	public void setScoreList(List<String> scoreList) {
		this.scoreList = scoreList;
	}
	
	
}
