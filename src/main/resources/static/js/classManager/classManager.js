//数据请求成功触发
function loadSuccess_on(result) {
	$.parser.parse($('.easyui-linkbutton').parent());//解析easyUI样式
	if(result){
		if (!result.success){
	        $.messager.show({    // show error message
	        	title: 'Error',
	        	msg: result.msg
	        });
	     }
	}
} 

serializeObject = function(form) {
    var o = {};
    $.each(form.serializeArray(), function(index) {
        if (o[this['name']]) {
            o[this['name']] = o[this['name']] + "," + this['value'];
        } else {
            o[this['name']] = this['value'];
        }
    });
    return o;
};

function opt_formatter(value, row, index) {
	var str = '';
    str += '&nbsp;&nbsp;';
    str += formatString('<a href="javascript:void(0)" class="easyui-linkbutton" data-options="iconCls:\'glyphicon-zoom-in icon-blue\',plain:true" onclick="view_on(\'{0}\')">查看</a>', row.id);

    str += formatString('<a href="javascript:void(0)" class="easyui-linkbutton" data-options="iconCls:\'glyphicon-pencil icon-blue\',plain:true" onclick="edit_on(\'{0}\')">修改</a>', row.id);
   	
    str += '&nbsp;&nbsp;';
   	str += formatString('<a href="javascript:void(0)" class="easyui-linkbutton" data-options="plain:true,iconCls:\'glyphicon-trash icon-red\'" onclick="del_on(\'{0}\');" >删除</a>', row.id);
    return str;
}

formatString = function(str) {
    for ( var i = 0; i < arguments.length - 1; i++) {
        str = str.replace("{" + i + "}", arguments[i + 1]);
    }
    return str;
};

function opt_formatter_time(value, row, index) {
	var str="";
	if(value){
		var date=new Date(value);
		var year = date.getFullYear();
		var month = (date.getMonth() + 1)< 10 ? "0" + (date.getMonth() + 1) : date.getMonth() + 1;
		var d = date.getDate()< 10 ? "0" + date.getDate() : date.getDate();
		var hour = date.getHours() < 10 ? "0" + date.getHours() : date.getHours();
		var minute = date.getMinutes() < 10 ? "0" + date.getMinutes() : date.getMinutes();
		var second = date.getSeconds() < 10 ? "0" + date.getSeconds() : date.getSeconds();
		str=year + "年" + month + "月" + d + "日 " + hour + ":" + minute + ":" + second;
	}
	return str;
}