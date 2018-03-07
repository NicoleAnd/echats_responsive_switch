package pojo;

public class CustInfo {
	
	private String custNo;
	private String custName;
	private String custTyp;
	private String openArea;
	private String gender;
	private String race;
	private String ageLvl;
	private String censusRegister;
	private String eduLvl;
	private String occuTyp;
	private String custClas;
	private String depLvl;
	private String loanLvl;
	private String monFlow;
	
	
	public String getCustNo() {
		return custNo;
	}
	public void setCustNo(String custNo) {
		this.custNo = custNo;
	}
	public String getCustName() {
		return custName;
	}
	public void setCustName(String custName) {
		this.custName = custName;
	}
	public String getCustTyp() {
		return custTyp;
	}
	public void setCustTyp(String custTyp) {
		this.custTyp = custTyp;
	}
	public String getOpenArea() {
		return openArea;
	}
	public void setOpenArea(String openArea) {
		this.openArea = openArea;
	}
	
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	public String getRace() {
		return race;
	}
	public void setRace(String race) {
		this.race = race;
	}
	public String getAgeLvl() {
		return ageLvl;
	}
	public void setAgeLvl(String ageLvl) {
		this.ageLvl = ageLvl;
	}
	public String getCensusRegister() {
		return censusRegister;
	}
	public void setCensusRegister(String censusRegister) {
		this.censusRegister = censusRegister;
	}
	public String getEduLvl() {
		return eduLvl;
	}
	public void setEduLvl(String eduLvl) {
		this.eduLvl = eduLvl;
	}
	public String getOccuTyp() {
		return occuTyp;
	}
	public void setOccuTyp(String occuTyp) {
		this.occuTyp = occuTyp;
	}
	public String getCustClas() {
		return custClas;
	}
	public void setCustClas(String custClas) {
		this.custClas = custClas;
	}
	public String getDepLvl() {
		return depLvl;
	}
	public void setDepLvl(String depLvl) {
		this.depLvl = depLvl;
	}
	public String getLoanLvl() {
		return loanLvl;
	}
	public void setLoanLvl(String loanLvl) {
		this.loanLvl = loanLvl;
	}
	public String getMonFlow() {
		return monFlow;
	}
	public void setMonFlow(String monFlow) {
		this.monFlow = monFlow;
	}
	
	@Override
	public String toString() {
		return "CustInfo [custNo=" + custNo + ", custName=" + custName + ", custTyp=" + custTyp + ", openArea="
				+ openArea + ", gender=" + gender + ", race=" + race + ", ageLvl=" + ageLvl + ", censusRegister="
				+ censusRegister + ", eduLvl=" + eduLvl + ", occuTyp=" + occuTyp + ", custClas=" + custClas
				+ ", depLvl=" + depLvl + ", loanLvl=" + loanLvl + ", monFlow=" + monFlow + "]";
	}

}
