package com.staff.action;

import java.util.List;

import com.staff.pojo.Staff;
import com.staff.service.StaffService;

public class StaffAction {
	
	private StaffService staffService;
	private List<Staff> staffs;
	private Staff staff;
	
	/**
	 * 查询所有信息的方法
	 * @return
	 */
	public String allStaff(){
		staffs=staffService.find();		
		return "allStaff";
	}
	
	/**
	 * 查询单个信息的方法
	 * @return
	 */
	public String oneStaff(){
		staff=staffService.find(staff.getSid());
		return "oneStaff";
	}
	
	/**
	 * 删除的方法
	 * @return
	 */
	public String removeStaff(){
		staffService.remove(staff);
		staffs=staffService.find();
		return "allStaff";
	}
	
	/**
	 * 编辑的方法
	 * @return
	 */

	public String editStaff(){
		staffService.modify(staff);
		staffs=staffService.find();
		return "allStaff";
	}
	
	/**
	 *  添加的方法
	 * @return
	 */
	public String addStaff(){
		staffService.add(staff);
		staffs=staffService.find();
		return "allStaff";
	}
	
	

	public StaffService getStaffService() {
		return staffService;
	}

	public void setStaffService(StaffService staffService) {
		this.staffService = staffService;
	}

	public List<Staff> getStaffs() {
		return staffs;
	}

	public void setStaffs(List<Staff> staffs) {
		this.staffs = staffs;
	}

	public Staff getStaff() {
		return staff;
	}

	public void setStaff(Staff staff) {
		this.staff = staff;
	}
	

}
