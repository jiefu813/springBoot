<!DOCTYPE html>
<html>
<head lang="en">
<meta charset="UTF-8"/>
<title></title>
</head>
<body>
	姓名：${name}</br>
	性别：<#if sex=="0">男<#elseif sex="1">女<#else>其它</#if></br>
	爱好：<#list hobbys as hobby>${hobby}  </#list>
</body>
</html>