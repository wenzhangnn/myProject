<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'index.jsp' starting page</title>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	--><meta charset="utf-8">
<style media="screen">
* {
	margin: 0;
	padding: 0;
}

header {
	padding: 1em 0;
	text-align: center;
	background-color: #4a4;
	color: #fff;
	font-size: 300%;
}

header span {
	font-size: 50%;
	margin-left: 1em;
	color: #eee;
}

footer {
	position: absolute;
	bottom: 0;
	padding: 2em 0;
	text-align: center;
	background-color: #4a4;
	color: #fff;
	width: 100%;
	clear: both;
}

.content {
	width: 75%;
	overflow: auto;
	float: right;
	min-height: 300px;
}

.nav {
	float: left;
	background-color: #eee;
	width: 25%;
	position: fixed;
	height: 100%;
	overflow: auto;
}

ul {
	list-style-type: none;
	margin-top: 1em;
}

li a {
	display: block;
	color: #000;
	padding: 8px 0 8px 16px;
	text-decoration: none;
}

li a:hover {
	background-color: #4a4;
	color: white;
}

table {
	width: 100%;
	border-collapse: collapse;
	margin: 2m auto;
}

th, td {
	text-align: left;
	padding: 8px;
}

tr:nth-child(even) {
	background-color: #f2f200;
}
</style>
<title></title>
</head>

<body>
	<header>
		人力资源管理<span>员工信息列表</span>
	</header>
	<div class="nav">
		<ul>
			<li><a href="new.jsp">添加员工</a></li>
			<li><a href="#">部门信息</a></li>
			<li><a href="#">其他</a></li>
		</ul>
	</div>
	<div class="content">
		<table>
			<tr>
				<th>编号</th>
				<th>姓名</th>
				<th>职位</th>
				<th>电话</th>
				<th>电子邮件</th>
				<th>编辑</th>
				<th>删除</th>
			</tr>
			<c:forEach items="${staffs}" var="s" >
			<tr>
				<td>${s.sid }</td>
				<td>${s.sname }</td>
				<td>${s.job }</td>
				<td>${s.phone }</td>
				<td>${s.email }</td>
				<td>
					<form action="staffAction_oneStaff" method="get">
						<input type="hidden" name="staff.sid" value="${s.sid }">
						<input type="submit" value="编辑">
					</form>
				</td>
				<td>
					<form action="staffAction_removeStaff" method="post">
						<input type="hidden" name="staff.sid" value="${s.sid }">
						<input type="submit" value="删除">
					</form>
				</td>
			</tr>
			</c:forEach>
			
	
		</table>

	</div>
	<footer>Copyright (c) 2016 牛耳教育 All Rights Reserved.</footer>
</body>
</html>