package com.cart.dto;

public class CartDTO {
	private int cid;
	private String mid;
	private int pid;
	private String pimage1;
	private String pname;
	private int pprice;
	private int odsize;
	private int odqty;
	private int pdiscount;
	
	public CartDTO() {
		super();

	}

	public CartDTO(int cid, String mid, int pid, String pimage1, String pname, int pprice, int odsize, int odqty,
			int pdiscount) {
		super();
		this.cid = cid;
		this.mid = mid;
		this.pid = pid;
		this.pimage1 = pimage1;
		this.pname = pname;
		this.pprice = pprice;
		this.odsize = odsize;
		this.odqty = odqty;
		this.pdiscount = pdiscount;
	}

	public int getCid() {
		return cid;
	}

	public void setCid(int cid) {
		this.cid = cid;
	}

	public String getMid() {
		return mid;
	}

	public void setMid(String mid) {
		this.mid = mid;
	}

	public int getPid() {
		return pid;
	}

	public void setPid(int pid) {
		this.pid = pid;
	}

	public String getPimage1() {
		return pimage1;
	}

	public void setPimage1(String pimage1) {
		this.pimage1 = pimage1;
	}

	public String getPname() {
		return pname;
	}

	public void setPname(String pname) {
		this.pname = pname;
	}

	public int getPprice() {
		return pprice;
	}

	public void setPprice(int pprice) {
		this.pprice = pprice;
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

	public int getPdiscount() {
		return pdiscount;
	}

	public void setPdiscount(int pdiscount) {
		this.pdiscount = pdiscount;
	}
	
}
