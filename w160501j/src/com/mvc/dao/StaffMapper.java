package com.mvc.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;
import org.springframework.stereotype.Repository;

import com.mvc.pojo.Staff;

@Repository("staffMapper")
public interface StaffMapper {
	
	public List<Staff> findPager(
			@Param("beginPage")Integer beginPage,
			@Param("endPage")Integer endPage,
			@Param("sort")String sort,
			@Param("order")String order);
	
	@Select("select count(empno) from emp,dept where emp.deptno=dept.deptno")
	public int findTotal();
	

}
