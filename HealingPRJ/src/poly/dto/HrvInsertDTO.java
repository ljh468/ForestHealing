package poly.dto;

import java.util.List;

public class HrvInsertDTO {
	private String agency;
	public String equipment;
	public String id;
	public String name;
	public String jumin;
	public String sex;
	public String age;
	private String date;
	public String num8;
	private List<String> scoreList;
	private List<HrvInsertDTO> hrvDtoList;
	
	public String getNum8() {
		return num8;
	}
	public void setNum8(String num8) {
		this.num8 = num8;
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
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getJumin() {
		return jumin;
	}
	public void setJumin(String jumin) {
		this.jumin = jumin;
	}
	public String getEquipment() {
		return equipment;
	}
	public void setEquipment(String equipment) {
		this.equipment = equipment;
	}
	public List<String> getScoreList() {
		return scoreList;
	}
	public void setScoreList(List<String> scoreList) {
		this.scoreList = scoreList;
	}
	public List<HrvInsertDTO> getHrvDtoList() {
		return hrvDtoList;
	}
	public void setHrvDtoList(List<HrvInsertDTO> hrvDtoList) {
		this.hrvDtoList = hrvDtoList;
	}
	
	
}
