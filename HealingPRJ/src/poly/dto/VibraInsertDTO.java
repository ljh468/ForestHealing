package poly.dto;

import java.util.List;

public class VibraInsertDTO {

	private String agency;
	private String equipment;
	private String id;
	private String name;
	private String jumin;
	private String sex;
	private String age;
	private String date;
	private List<String> scoreList;
	private List<VibraInsertDTO> vibraDtoList;
	
	public String getAgency() {
		return agency;
	}
	public void setAgency(String agency) {
		this.agency = agency;
	}
	public String getEquipment() {
		return equipment;
	}
	public void setEquipment(String equipment) {
		this.equipment = equipment;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getJumin() {
		return jumin;
	}
	public void setJumin(String jumin) {
		this.jumin = jumin;
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
	public String getDate() {
		return date;
	}
	public void setDate(String date) {
		this.date = date;
	}
	public List<String> getScoreList() {
		return scoreList;
	}
	public void setScoreList(List<String> scoreList) {
		this.scoreList = scoreList;
	}
	public List<VibraInsertDTO> getVibraDtoList() {
		return vibraDtoList;
	}
	public void setVibraDtoList(List<VibraInsertDTO> vibraDtoList) {
		this.vibraDtoList = vibraDtoList;
	}
	
}
