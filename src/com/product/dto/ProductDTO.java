package com.product.dto;

public class ProductDTO {
	private int pid;
	private String pname;
	private String pbrand;
	private int pprice;
	private int pdiscount;
	private int pstock;
	private String pimage1;
	private String pimage2;
	private String pimage3;
	private String pdetail;
	private String prdate;
	private int psell;
	
	public ProductDTO() {
		super();
	}
	public ProductDTO(int pid, String pname, String pbrand, int pprice, int pdiscount, int pstock, String pimage1,
			String pimage2, String pimage3, String pdetail, String prdate, int psell) {
		super();
		this.pid = pid;
		this.pname = pname;
		this.pbrand = pbrand;
		this.pprice = pprice;
		this.pdiscount = pdiscount;
		this.pstock = pstock;
		this.pimage1 = pimage1;
		this.pimage2 = pimage2;
		this.pimage3 = pimage3;
		this.pdetail = pdetail;
		this.prdate = prdate;
		this.psell = psell;
	}
	public int getPid() {
		return pid;
	}
	public void setPid(int pid) {
		this.pid = pid;
	}
	public String getPname() {
		return pname;
	}
	public void setPname(String pname) {
		this.pname = pname;
	}
	public String getPbrand() {
		return pbrand;
	}
	public void setPbrand(String pbrand) {
		this.pbrand = pbrand;
	}
	public int getPprice() {
		return pprice;
	}
	public void setPprice(int pprice) {
		this.pprice = pprice;
	}
	public int getPdiscount() {
		return pdiscount;
	}
	public void setPdiscount(int pdiscount) {
		this.pdiscount = pdiscount;
	}
	public int getPstock() {
		return pstock;
	}
	public void setPstock(int pstock) {
		this.pstock = pstock;
	}
	public String getPimage1() {
		return pimage1;
	}
	public void setPimage1(String pimage1) {
		this.pimage1 = pimage1;
	}
	public String getPimage2() {
		return pimage2;
	}
	public void setPimage2(String pimage2) {
		this.pimage2 = pimage2;
	}
	public String getPimage3() {
		return pimage3;
	}
	public void setPimage3(String pimage3) {
		this.pimage3 = pimage3;
	}
	public String getPdetail() {
		return pdetail;
	}
	public void setPdetail(String pdetail) {
		this.pdetail = pdetail;
	}
	public String getPrdate() {
		return prdate;
	}
	public void setPrdate(String prdate) {
		this.prdate = prdate;
	}
	public int getPsell() {
		return psell;
	}
	public void setPsell(int psell) {
		this.psell = psell;
	}
}
