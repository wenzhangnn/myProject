package com.staff.dao;

import java.util.List;

import com.staff.pojo.Staff;

public interface StaffDao {
	public void add(Staff staff);

	public void modify(Staff staff);

	public void remove(Staff staff);

	public Staff find(Integer sid);

	public List<Staff> find();

}
