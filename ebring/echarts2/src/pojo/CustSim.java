package pojo;

public class CustSim {
	private String custNo;
	private String custName;
	private String prodId;
	private String sim;
	
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
	public String getProdId() {
		return prodId;
	}
	public void setProdId(String prodId) {
		this.prodId = prodId;
	}
	public String getSim() {
		return sim;
	}
	public void setSim(String sim) {
		this.sim = sim;
	}
	
	@Override
	public String toString() {
		return "CustSim [custNo=" + custNo + ", custName=" + custName + ", prodId=" + prodId + ", sim=" + sim + "]";
	}

}
