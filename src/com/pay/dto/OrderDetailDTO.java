package com.pay.dto;

public class OrderDetailDTO {
	private int odid;
	private int oid;
	private int pid;
	private int odsize;
	private int odqty;
	
	public OrderDetailDTO() {
		super();
	}

	public OrderDetailDTO(int odid, int oid, int pid, int odsize, int odqty) {
		super();
		this.odid = odid;
		this.oid = oid;
		this.pid = pid;
		this.odsize = odsize;
		this.odqty = odqty;
	}

	public int getOdid() {
		return odid;
	}

	public void setOdid(int odid) {
		this.odid = odid;
	}

	public int getOid() {
		return oid;
	}

	public void setOid(int oid) {
		this.oid = oid;
	}

	public int getPid() {
		return pid;
	}

	public void setPid(int pid) {
		this.pid = pid;
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
