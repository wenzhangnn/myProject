package com.mvc.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Date;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletResponse;

import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.mvc.pojo.Staff;
import com.mvc.service.StaffService;
import com.mvc.util.Pager;

import net.sf.json.JSONObject;
import net.sf.json.JSONSerializer;

@Controller
public class StaffController {	
	@Resource(name="staffService")
	private StaffService staffService;
	
	@RequestMapping("staffController_list")
	public void list(
			@RequestParam(value = "page", required = true) Integer page,
			@RequestParam(value = "rows", required = true) Integer rows,
			@RequestParam(value = "sort", required = true) String sort,
			@RequestParam(value = "order", required = true) String order,
			HttpServletResponse resp) throws IOException{
		
		int beginPage=(page-1)*rows;
		int endPage=page*rows;
		Pager<Staff> pager=staffService.findPager(beginPage, endPage, sort, order);
		JSONObject jo = (JSONObject) JSONSerializer.toJSON(pager);
		System.out.println(jo);
		PrintWriter pw = resp.getWriter();
		pw.println(jo.toString());
		pw.flush();
		pw.close();		
	}

}










