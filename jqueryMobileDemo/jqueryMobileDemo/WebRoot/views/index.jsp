<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>


<!DOCTYPE html>
<html>
	<head>
		<title>Page Title</title>

		<meta name="viewport" content="width=device-width, initial-scale=1">

		<link rel="stylesheet"
			href="http://code.jquery.com/mobile/1.0b2/jquery.mobile-1.0b2.min.css" />
		<script type="text/javascript"
			src="http://code.jquery.com/jquery-1.6.2.min.js"></script>
		<script type="text/javascript"
			src="http://code.jquery.com/mobile/1.0b2/jquery.mobile-1.0b2.min.js"></script>
	</head>
	<body>

		<div data-role="page">

			<div data-role="header">
				<h1>
					Page Title
				</h1>
			</div>
			<!-- /header -->

			<div data-role="content">
				<p>
					Page content goes here.<br/>
					Page content goes here.<br/>
					Page content goes here.<br/>
					Page content goes here.<br/>
					Page content goes here.<br/>
					Page content goes here.<br/>
					Page content goes here.<br/>
				</p>
			</div>
			<!-- /content -->

			<div data-role="footer">
				<h4>
					Page Footer
				</h4>
			</div>
			<!-- /footer -->
		</div>
		<!-- /page -->

	</body>
</html>
