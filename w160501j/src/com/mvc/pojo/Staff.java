package com.mvc.pojo;

import java.io.Serializable;

import org.springframework.format.annotation.NumberFormat;

public class Staff implements Serializable{

	private static final long serialVersionUID = 1L;
	
	private Integer empno;
	private String ename;
	private String job;
	private String dname;
	private String loc;
	@NumberFormat(pattern = "#,###.00")
	private Double sal;
	
	
	public Integer getEmpno() {
		return empno;
	}
	public void setEmpno(Integer empno) {
		this.empno = empno;
	}
	public String getEname() {
		return ename;
	}
	public void setEname(String ename) {
		this.ename = ename;
	}
	public String getJob() {
		return job;
	}
	public void setJob(String job) {
		this.job = job;
	}
	public String getDname() {
		return dname;
	}
	public void setDname(String dname) {
		this.dname = dname;
	}
	public String getLoc() {
		return loc;
	}
	public void setLoc(String loc) {
		this.loc = loc;
	}
	public Double getSal() {
		return sal;
	}
	public void setSal(Double sal) {
		this.sal = sal;
	}
	
	

}
