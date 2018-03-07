package pojo;

public class CustMost {
	private String prodId;
	private String openArea;
	private String ageLvl;
	private String censusRegister;
	private String eduLvl;
	private String occuTyp;
	private String custClas;
	private String depLvl;
	private String loanLvl;
	private String monFlow;
	public String getProdId() {
		return prodId;
	}
	public void setProdId(String prodId) {
		this.prodId = prodId;
	}
	public String getOpenArea() {
		return openArea;
	}
	public void setOpenArea(String openArea) {
		this.openArea = openArea;
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
		return "CustMost [prodId=" + prodId + ", openArea=" + openArea + ", ageLvl=" + ageLvl + ", censusRegister="
				+ censusRegister + ", eduLvl=" + eduLvl + ", occuTyp=" + occuTyp + ", custClas=" + custClas
				+ ", depLvl=" + depLvl + ", loanLvl=" + loanLvl + ", monFlow=" + monFlow + "]";
	}

}
