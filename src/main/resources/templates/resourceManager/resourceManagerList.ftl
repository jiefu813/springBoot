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
<script type="text/javascript" src="${path}/js/resourceManager/resourceManager.js"></script>
</head>
<body>
	<!-- 页面表格布局 -->
	<div class="easyui-layout" data-options="fit:true,border:false">
	    <div data-options="region:'center',border:false"  style="overflow: hidden;">
	        <table id="grid" class="easyui-treegrid" 
	        	data-options="
		        	url : '${path }/resourceManager/treeGrid',
		            idField : 'id',
		            treeField : 'name',
		            rownumbers : true,
		            lines: true,
		            remoteSort: false,
		            //parentField : 'pid',
		            fit : true,
		            fitColumns : true,
		            nowrap: true,
		            toolbar: '#tb',
		            onLoadSuccess:function(row, data){loadSuccess_on(data)},
		            border : false
	        	">
	        	<thead>
					<tr>
					    <th data-options="field:'name'" width="12%"  >资源名称</th>
					    <th data-options="field:'resourceType',formatter:function(value, row, index){if(value=='RESOURCE_MENU'){return '菜单';} else{return '按钮';}}" width="6%"  >资源类型</th>
					    <th data-options="field:'url'"  width="13%"  >资源路径</th>
					    <th data-options="field:'iconCls'" width="15%"  >资源图标</th>
					    <th data-options="field:'seq'"     width="4%"  >排序</th>
		                <th data-options="field:'status',formatter:function(value, row, index){if(value=='RESOURCE_ENABLE'){return '有效';} else{return '无效';}}"  width="6%"  >资源状态</th>
					    <th data-options="field:'opened',formatter:function(value, row, index){if(value=='RESOURCE_UNFOLD'){return '展开';} else{return '折叠';}}" width="6%"  >展开状态</th>
					    <th data-options="field:'createTime'" formatter="opt_formatter_time" width="15%">创建时间</th>
					    <th data-options="field:'createName'" width="5%" >创建人</th>
		                <th data-options="field:'pid',hidden:'true'"  width="10%"  >上级资源ID</th>
						<th data-options="field:'action'"  formatter="opt_formatter"  width="18%">操作</th>
					</tr>
			   </thead>
	        </table>
	    </div>
	</div>
    <!-- 页面表格操作菜单布局 -->  
	<div id="tb" style="height:auto">
		<!-- 页面搜索布局 -->
		<div id="searchPanel" class="easyui-panel" style="width:100%;padding:0px;"  data-options="border:false">    
	    </div>
	     <!-- 页面工具栏操作按钮布局 -->
	     <div id="toolbar" class="list_toolbar">
	        	<a onclick="add_on();" href="javascript:void(0);" class="easyui-linkbutton" data-options="plain:true,iconCls:'icon-add'">新增</a>
		</div>
	</div>
	<!-- 弹出框布局 --> 
	<div id="openWindow" class="easyui-dialog" closed="true"  data-options="iconCls:'icon-save',modal:true,buttons:'#footBar'"></div>
	<div id="footBar" style="height:auto">
			<a href="javascript:void(0)" id="sbtn" class="easyui-linkbutton" data-options="iconCls:'icon-ok',plain:false" onclick="save_on()">保存</a>
			<a href="javascript:void(0)" class="easyui-linkbutton" data-options="iconCls:'icon-cancel',plain:false"  onclick="close_on()">关闭</a>
	</div>
	<div id="openWindowView" class="easyui-dialog" closed="true"  data-options="iconCls:'icon-save',modal:true,buttons:'#footBarView'"></div>
	<div id="footBarView" style="height:auto">
		<a href="javascript:void(0)" class="easyui-linkbutton" data-options="iconCls:'icon-cancel',plain:false"  onclick="closeWindowView_on()">关闭</a>
	</div>
</body>
</html>