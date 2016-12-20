<%@ page language="java" pageEncoding="UTF-8"%>

<!DOCTYPE HTML >
<html>
<head>
<title>stafflist</title>
<meta charset="utf-8">
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath }/resources/easyui/themes/default/easyui.css" />
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath }/resources/easyui/themes/icon.css" />
<script
	src="${pageContext.request.contextPath }/resources/easyui/jquery.min.js"></script>
<script
	src="${pageContext.request.contextPath }/resources/easyui/jquery.easyui.min.js"></script>
<script
	src="${pageContext.request.contextPath }/resources/easyui/locale/easyui-lang-zh_CN.js"></script>

<script type="text/javascript">
	$(function() {	

		$("#staffDataGrid").datagrid({
			url : "staffController_list", // 一个URL从远程站点请求数据
			title : '员工列表',
			fitColumns : true, // 自动展开/收缩列
			striped : true, // 显示斑马线效果
			rownumbers : true, // 行号
			columns : [ [ {
				field : 'empno',
				title : '员工编号',
				width : 50,
				checkbox : true,
				sortable : true
			}, {
				field : 'ename',
				title : '姓名',
				width : 100,
				sortable : true,
			}, {
				field : 'dname',
				title : '部门名称',
				width : 100,
				sortable : true,
			}, {
				field : 'loc',
				title : '部门所在地',
				width : 100,
				sortable : true,
			},{
				field : 'sal',
				title : '工资',
				width : 100,
				sortable : true,
			} ] ],
			pagination : true, // -- 分页设置 ----
			pageSize : 5, // rows:每页显示的记录条数 (page 控件自动计算)
			pageList : [ 5, 10, 15, ], // 设置每页条数的列表
			sortName : "empno", // sort:排序列 (默认)
			sortOrder : "desc", // order:升序/降序 (默认)

		});
	});
</script>
</head>

<body>

	<div style="margin-top: 10px">
		<table id="staffDataGrid">
		</table>
	</div>
</body>
</html>
