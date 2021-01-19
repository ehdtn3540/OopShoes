package com.member.dto;

public class MemberDTO {
	private String mid;
	private String mpw;
	private String mname;
	private String maddress;
	private String mpost;
	private String mphone;
	private String mrdate;
	private int mdrop;
	private int madmin;
	
	public MemberDTO() {
		super();
		// TODO Auto-generated constructor stub
	}
	public MemberDTO(String mid, String mpw, String mname, String maddress, String mpost, String mphone, String mrdate,
			int mdrop, int madmin) {
		super();
		this.mid = mid;
		this.mpw = mpw;
		this.mname = mname;
		this.maddress = maddress;
		this.mpost = mpost;
		this.mphone = mphone;
		this.mrdate = mrdate;
		this.mdrop = mdrop;
		this.madmin = madmin;
	}
	public String getMid() {
		return mid;
	}
	public void setMid(String mid) {
		this.mid = mid;
	}
	public String getMpw() {
		return mpw;
	}
	public void setMpw(String mpw) {
		this.mpw = mpw;
	}
	public String getMname() {
		return mname;
	}
	public void setMname(String mname) {
		this.mname = mname;
	}
	public String getMaddress() {
		return maddress;
	}
	public void setMaddress(String maddress) {
		this.maddress = maddress;
	}
	public String getMpost() {
		return mpost;
	}
	public void setMpost(String mpost) {
		this.mpost = mpost;
	}
	public String getMphone() {
		return mphone;
	}
	public void setMphone(String mphone) {
		this.mphone = mphone;
	}
	public String getMrdate() {
		return mrdate;
	}
	public void setMrdate(String mrdate) {
		this.mrdate = mrdate;
	}
	public int getMdrop() {
		return mdrop;
	}
	public void setMdrop(int mdrop) {
		this.mdrop = mdrop;
	}
	public int getMadmin() {
		return madmin;
	}
	public void setMadmin(int madmin) {
		this.madmin = madmin;
	}
	
	
	
	
}
