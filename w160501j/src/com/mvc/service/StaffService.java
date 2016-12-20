package com.mvc.service;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.mvc.dao.StaffMapper;
import com.mvc.pojo.Staff;
import com.mvc.util.Pager;

@Service("staffService")
public class StaffService {
	
	@Resource(name="staffMapper")
	private StaffMapper staffMapper;
	
	public Pager<Staff> findPager(Integer beginPage,Integer endPage,String sort,String order){
		Pager<Staff> pager=new Pager<Staff>();
		pager.setRows(staffMapper.findPager(beginPage, endPage, sort, order));
		pager.setTotal(staffMapper.findTotal());
		return pager;
	}
	
	public int findTotal(){
		return staffMapper.findTotal();
		
	}

}
