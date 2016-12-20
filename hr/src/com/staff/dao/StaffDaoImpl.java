package com.staff.dao;

import java.util.List;

import org.springframework.orm.hibernate4.support.HibernateDaoSupport;

import com.staff.pojo.Staff;

public class StaffDaoImpl extends HibernateDaoSupport implements StaffDao{

	@Override
	public void add(Staff staff) {
		this.getHibernateTemplate().save(staff);
	}

	@Override
	public void modify(Staff staff) {
		this.getHibernateTemplate().update(staff);
		
	}

	@Override
	public void remove(Staff staff) {
		this.getHibernateTemplate().delete(staff);
		
	}

	@Override
	public Staff find(Integer sid) {
		return this.getHibernateTemplate().get(Staff.class, sid);
	}

	@Override
	public List<Staff> find() {
		String hql=" from Staff";
		return (List<Staff>) this.getHibernateTemplate().find(hql);
	}

}
