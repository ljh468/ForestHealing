package poly.dto;

import java.util.List;

public class ReceiptInsertDTO {
	private String agency;
	private String date;
	private String contents;
	private String session;
	private String name;
	private String sex;
	private String age;
	private String residence;
	private String job;
	private String pastExp;
	private List<List<String>> scoreList;
	
	private List<ReceiptInsertDTO> receiptDtoList;
	
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
	public String getContents() {
		return contents;
	}
	public void setContents(String contents) {
		this.contents = contents;
	}
	public String getSession() {
		return session;
	}
	public void setSession(String session) {
		this.session = session;
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
	public String getPastExp() {
		return pastExp;
	}
	public void setPastExp(String pastExp) {
		this.pastExp = pastExp;
	}
	public List<List<String>> getScoreList() {
		return scoreList;
	}
	public void setScoreList(List<List<String>> scoreList) {
		this.scoreList = scoreList;
	}
	public List<ReceiptInsertDTO> getReceiptDtoList() {
		return receiptDtoList;
	}
	public void setReceiptDtoList(List<ReceiptInsertDTO> receiptDtoList) {
		this.receiptDtoList = receiptDtoList;
	}

}
