<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'new.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  <head>
<meta charset="utf-8">
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
form {
	margin: 2em 4em;
}
form div {
	margin-bottom: 1em;
}
label {
	display: inline-block;
	width: 6em;
	text-align: right;
	margin-right: 2em;
}
input, select {
	font-size: 150%;
}
input[type=submit] {
	padding: 0 4em;
	margin-left: 6em;
}

</style>
<title></title>
</head>

<body>
	<header>
		人力资源管理<span>录入员工信息</span>
	</header>
	<div class="nav">
		<ul>
			<li><a href="index.html">员工信息</a></li>
			<li><a href="#">部门信息</a></li>
			<li><a href="#">其他</a></li>
		</ul>
	</div>
	<div class="content">
	
		<form action="staffAction_addStaff" method="post">
			<div>
				<label>姓名</label>
				<input name="staff.sname" placeholder="员工信息" required="required">
			</div>
			<div>
				<label>职位</label>
				<select name="staff.job">
					<option value="产品">产品</option>
					<option value="研发">研发</option>
					<option value="运营">运营</option>
					<option value="测试">测试</option>
				</select>
			</div>
			<div>
				<label>电子邮件</label>
				<input name="staff.email" placeholder="电子邮件" required="required">
			</div>
			<div>
				<label>手机号</label>
				<input name="staff.phone" placeholder="手机号" required="required">
			</div>
			<div>
				<input type="submit" value="添加">
			</div>
		</form>

	</div>
	<footer>Copyright (c) 2016 牛耳教育 All Rights Reserved.</footer>
</body>
</html>