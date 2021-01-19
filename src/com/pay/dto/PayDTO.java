package com.pay.dto;

public class PayDTO {
	//	ORDERS	
//	private int oid; //주문아이디(번호)
	private String mid; //고객아이디0
//	private String ordate;
	private String oname; //수령자0
	private String ophone; //연락처0
	private String oaddress; //수령지주소0
	private String opost; //수령지우편번호0
	private int oamount; //오더총금액0
	private int opayment; //결제수단(1:현금, 2:카드, 3:카카오페이)0
//	private int oinvoice; //--송장번호
	private int odelivery; //배송비(0:무료, 1:일반, 2:특수)0
	
	//ORDERS_DETAIL
//	private int odid; //오더 아이디 (시퀀스)
	private int oid;
	private int pid; // 상품아이디0
	private int odsize; //상품 사이즈0
	private int odqty; // 상품 구매수량0
	
	public PayDTO() {
		super();
		// TODO Auto-generated constructor stub
	}

	public PayDTO(String mid, String oname, String ophone, String oaddress, String opost, int oamount, int opayment,
			int odelivery, int oid, int pid, int odsize, int odqty) {
		super();
		this.mid = mid;
		this.oname = oname;
		this.ophone = ophone;
		this.oaddress = oaddress;
		this.opost = opost;
		this.oamount = oamount;
		this.opayment = opayment;
		this.odelivery = odelivery;
		this.oid = oid;
		this.pid = pid;
		this.odsize = odsize;
		this.odqty = odqty;
	}

	public String getMid() {
		return mid;
	}

	public void setMid(String mid) {
		this.mid = mid;
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

	public int getOdelivery() {
		return odelivery;
	}

	public void setOdelivery(int odelivery) {
		this.odelivery = odelivery;
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
