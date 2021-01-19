package com.order.dto;

public class OrderDTO {
	private int oid;
	private String mid;
	private String ordate;
	private String oname;
	private String ophone;
	private String oaddress;
	private String opost;
	private int oamount;
	private int opayment;
	private int oinvoice;
	private int odelivery;
	
	public OrderDTO() {
		super();
	}
	public OrderDTO(int oid, String mid, String ordate, String oname, String ophone, String oaddress, String opost,
			int oamount, int opayment, int oinvoice, int odelivery) {
		super();
		this.oid = oid;
		this.mid = mid;
		this.ordate = ordate;
		this.oname = oname;
		this.ophone = ophone;
		this.oaddress = oaddress;
		this.opost = opost;
		this.oamount = oamount;
		this.opayment = opayment;
		this.oinvoice = oinvoice;
		this.odelivery = odelivery;
	}
	public int getOid() {
		return oid;
	}
	public void setOid(int oid) {
		this.oid = oid;
	}
	public String getMid() {
		return mid;
	}
	public void setMid(String mid) {
		this.mid = mid;
	}
	public String getOrdate() {
		return ordate;
	}
	public void setOrdate(String ordate) {
		this.ordate = ordate;
	}
	public String getOname() {
		return oname;
	}
	public void setOname(String oname) {
		this.oname = oname;
	}
	public String getOphone() {
		return ophone;
	}
	public void setOphone(String ophone) {
		this.ophone = ophone;
	}
	public String getOaddress() {
		return oaddress;
	}
	public void setOaddress(String oaddress) {
		this.oaddress = oaddress;
	}
	public String getOpost() {
		return opost;
	}
	public void setOpost(String opost) {
		this.opost = opost;
	}
	public int getOamount() {
		return oamount;
	}
	public void setOamount(int oamount) {
		this.oamount = oamount;
	}
	public int getOpayment() {
		return opayment;
	}
	public void setOpayment(int opayment) {
		this.opayment = opayment;
	}
	public int getOinvoice() {
		return oinvoice;
	}
	public void setOinvoice(int oinvoice) {
		this.oinvoice = oinvoice;
	}
	public int getOdelivery() {
		return odelivery;
	}
	public void setOdelivery(int odelivery) {
		this.odelivery = odelivery;
	}
}
