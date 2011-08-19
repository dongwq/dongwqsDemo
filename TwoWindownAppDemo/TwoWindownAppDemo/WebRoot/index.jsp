<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title> 又窗口应用 演示</title>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	<script type="text/javascript" src="js/winOpenUtil.js"></script>
	<script type="text/javascript">
		function goTo2ndWindow(){
			alert("2ndWindow");

			accessTwoFullScreen('Win2.jsp','hotelQueryResult');
		}
	</script>
  </head>
  
  <body>
    This is my JSP page. <br>
    <div content></div>
    <button onclick="goTo2ndWindow();">到另一个窗口</button>
    
    <br/>
    <br/>
    <br/>
    <h3>Table of Contents link Target</h3>
    
		<ul>
		  <li><a href="Win2.jsp" target="view_window">Preface</a></li>
		  <li><a href="Win3.jsp" target="view_window">Chapter 1</a></li>
		  <li><a href="Win4.jsp" target="view_window">Chapter 2</a></li>
		</ul>
    <br/>
    <br/>
    <br/>
    <h3>Table of Contents link Target</h3>
    
    <form action="formTarget.jsp" target="view_window" >
    		<input type='text' name="username" value="www"/>
    		<button>提交到目标</button>
    </form>
  </body>
</html>
