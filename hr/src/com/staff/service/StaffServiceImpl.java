package com.staff.service;

import java.util.List;

import com.staff.dao.StaffDao;
import com.staff.pojo.Staff;

public class StaffServiceImpl implements StaffService{
	private StaffDao staffDao;

	@Override
	public void add(Staff staff) {
		staffDao.add(staff);;		
	}

	@Override
	public void modify(Staff staff) {
		staffDao.modify(staff);		
	}

	@Override
	public void remove(Staff staff) {
		staffDao.remove(staff);	
	}

	@Override
	public Staff find(Integer sid) {
		return staffDao.find(sid);
	}

	@Override
	public List<Staff> find() {
		return staffDao.find();
	}

	public StaffDao getStaffDao() {
		return staffDao;
	}

	public void setStaffDao(StaffDao staffDao) {
		this.staffDao = staffDao;
	}
	
	

}
