<#assign path="${springMacroRequestContext.getContextPath()}">
<!DOCTYPE html>
<html>
<head lang="en">
<meta charset="UTF-8"/>
<title></title>
<link rel="stylesheet" type="text/css" href="${path}/plugins/easyui/themes/default/easyui.css">
<link rel="stylesheet" type="text/css" href="${path}/plugins/easyui/themes/icon.css">
<link rel="stylesheet" type="text/css" href="${path}/plugins/easyui/themes/color.css">
<link rel="stylesheet" type="text/css" href="${path}/css/common.css">
<link rel="stylesheet" type="text/css" href="${path}/css/icon.css">
<script type="text/javascript" src="${path}/plugins/easyui/jquery.min.js"></script>
<script type="text/javascript" src="${path}/plugins/easyui/jquery.easyui.min.js"></script>
<script type="text/javascript" src="${path}/plugins/easyui/locale/easyui-lang-zh_CN.js"></script>
<script type="text/javascript" src="${path}/js/classManager/classManager.js"></script>
</head>
<body>
	<div class="easyui-layout" data-options="fit:true,border:false">
	    <!-- 页面表格布局 -->
	    <div data-options="region:'center',fit:true,border:false">
	        <table id="grid"  class="easyui-datagrid"
	        	data-options="
	        	    url : '${path }/classManager/datagrid',
	        	    fit:true,
		            striped : true,
		            rownumbers : true,
		            pagination : true,
		            singleSelect : true,
		            checkOnSelect: false,
		            idField : 'id',
		            pageSize : 10,
		            pageList : [ 10, 20, 50, 100],
	        		toolbar: '#tb', 
			        queryParams:serializeObject($('#searchForm')),  
			        onLoadSuccess:function(row, data){loadSuccess_on(data)}, //数据加载成功触发,无数据也返回       
			        method: 'post',
	        		border:false">
	        		<thead>
						<tr>
							<th data-options="field:'name'" width="12%">班级名称</th>
							<th data-options="field:'code'" width="8%">编号</th>
						    <th data-options="field:'seq'"  width="5%">排序</th>
							<th data-options="field:'createTime'" formatter="opt_formatter_time" width="15%">创建时间</th>
							<th data-options="field:'createName'" width="6%">创建人</th>
							<th data-options="field:'description'" width="37%">备注</th>
							<th data-options="field:'action'"  formatter="opt_formatter"  width="18%">操作</th>
						</tr>
					</thead>
	        </table>
	    </div>
	</div>
	
    <!-- 页面表格操作菜单布局 -->  
	<div id="tb" style="height:auto">
		<!-- 页面搜索布局 -->
		<div id="searchPanel" class="easyui-panel" style="width:100%;padding:5px;"  data-options="border:false,collapsible:true,collapsed:false">
		        <form id="searchForm" method="post" action="dataload">
					<div id="searchDiv" class="list_searchDiv">
						班级名称：<input class="easyui-textbox" style="width:100px;" name="name">
						<a href="javascript:void(0)" class="easyui-linkbutton" iconCls="glyphicon-search" id="dataQuery" onclick="search_on()">搜索</a>
						<a href="javascript:void(0);" class="easyui-linkbutton"  iconCls="icon-clear"  id="clearQuery"   onclick="clean_on();">重置</a>
					</div>
				</form>
	     </div>
	     <!-- 页面工具栏操作按钮布局 -->
	     <div id="toolbar" class="list_toolbar">
	        <a id="collapseBtn" href="javascript:void(0)" class="easyui-linkbutton" data-options="iconCls:'glyphicon-upload icon-blue',plain:true" onclick="collapse_on()">查询</a>
			
			<a href="javascript:void(0)" class="easyui-linkbutton" data-options="iconCls:'icon-add',plain:true" onclick="add_on()">新增</a>
			
		</div>
	</div>
	<!-- 弹出框布局 --> 
	<div id="openWindow" class="easyui-dialog" closed="true"  data-options="iconCls:'icon-save',modal:true,buttons:'#footBar'"></div>
	<div id="footBar" style="height:auto">
			<a href="javascript:void(0)" id="saveBtn" class="easyui-linkbutton" data-options="iconCls:'icon-ok',plain:false" onclick="save_on()">保存</a>
			<a href="javascript:void(0)" id="closeBtn" class="easyui-linkbutton" data-options="iconCls:'icon-cancel',plain:false"  onclick="close_on()">关闭</a>
	</div>
	<div id="openWindowView" class="easyui-dialog" closed="true"  data-options="iconCls:'icon-save',modal:true,buttons:'#footBarView'"></div>
	<div id="footBarView" style="height:auto">
		<a href="javascript:void(0)" class="easyui-linkbutton" data-options="iconCls:'icon-cancel',plain:false"  onclick="closeWindowView_on()">关闭</a>
	</div>
</body>
</html>