package com.order.dto;

public class OrderdetailDTO {
	private int odid;
	private String mid;
	private String pid;
	private String pname;
	private String pimage1;
	private int odsize;
	private int odqty;
	
	public OrderdetailDTO() {
		super();
	}
	public OrderdetailDTO(int odid, String mid, String pid, String pname, String pimage1, int odsize, int odqty) {
		super();
		this.odid = odid;
		this.mid = mid;
		this.pid = pid;
		this.pname = pname;
		this.pimage1 = pimage1;
		this.odsize = odsize;
		this.odqty = odqty;
	}
	public int getOdid() {
		return odid;
	}
	public void setOdid(int odid) {
		this.odid = odid;
	}
	public String getMid() {
		return mid;
	}
	public void setMid(String mid) {
		this.mid = mid;
	}
	public String getPid() {
		return pid;
	}
	public void setPid(String pid) {
		this.pid = pid;
	}
	public String getPname() {
		return pname;
	}
	public void setPname(String pname) {
		this.pname = pname;
	}
	public String getPimage1() {
		return pimage1;
	}
	public void setPimage1(String pimage1) {
		this.pimage1 = pimage1;
	}
	public int getOdsize() {
		return odsize;
	}
	public void setOdsize(int odsize) {
		this.odsize = odsize;
	}
	public int getOdqty() {
		return odqty;
	}
	public void setOdqty(int odqty) {
		this.odqty = odqty;
	}
}
