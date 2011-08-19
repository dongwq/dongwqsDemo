<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

<c:set value="${pageContext.request.contextPath}" var="ctxPath"/>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">

<html lang="en">
<head>
	<meta http-equiv="Content-Type" content="text/html;charset=UTF-8">
	<title>In.js Demo</title>
	<script type="text/javascript" src="${ctxPath}/js/in/in.js" autoload="true" core="http://t.douban.com/js/jquery.min.js"></script>
	<script type="text/javascript" src="${ctxPath}/js/in/jsResConfig.js" ></script>
	
	<script type="text/javascript">
		var i=0;
		(function fn() {
			try {
				i++;
			//	arguments.callee();
			}
			catch(stackOverflow) {
				alert(i);
			}
		})();
	</script> 
	
	<script type="text/javascript">
		var comma=function (source,length) {
		    if (!length || length < 1) {
		        length = 3;
		    }
		 
		    source=String(source).split(".");
		    source[0]=source[0].replace(new RegExp('(\\d)(?=(\\d{'+length+'})+$)','ig'),"$1,");
		    return source.join(".");
		};
		 
		alert(comma('12345678.123456','3'));//输出12,345,678.123456
	</script>
	
	<script type="text/javascript">
		//In('d','g','a','jquery','e','d','f','d',function() {alert('test1...')},'b',function() {alert('test2...')});
		//In('h',function() {alert('im thread 2...')});
		//In.ready('g','d',function() {alert('I\'m ready.')});
		//In.ready('g');
		//In.ready('g');
		/*
			notes:
			--------------------------------------------------------------------------------------------------------------------------
			relations: 		d -> g(f) -> a(d) -> jquery -> e(jquery) -> d -> f -> d -> function -> b(c(a(d))) -> function
			blahlist: 		d -> f -> g -> d -> a -> jquery -> jquery -> e -> d -> f -> d -> function -> d -> a -> c -> b -> function
			loading list: 	d -> f -> g -> d -> a -> jquery -> e -> function -> c -> b -> function
		*/

		var a = ['1', '5','5', '8'];

		    $.uniq(a);
		    //alert( a.join(',') );
	</script>
	
	
	<script type="text/javascript">
	//Javascript如何获取URL地址栏参数
	
		/*获取URL参数的函数*/
		Request={
			QueryString:function(item) {
				var svalue=location.search.match(new RegExp("[\?\&]" + item + "=([^\&]*)(\&?)","i"));
				return svalue?svalue[1]:svalue;
			}
		}
		 
		/*使用方法：*/
		var value=Request.QueryString("message");//需要查询的参数名称
		//alert(value);//调试输出

		var d = new Date();

		alert(d);

		
	</script>
	
</head>	
	
<body>
	
	
	这是什么啊，怎么没有body??
</body>
</html>