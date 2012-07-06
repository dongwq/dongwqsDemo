<!DOCTYPE html>
<head>
	 <title><g:layoutTitle default="jquery Mobie Demo" /></title>
     <link rel="stylesheet" href="http://code.jquery.com/mobile/1.0a1/jquery.mobile-1.0a1.min.css" />  
	<script type="text/javascript" src="http://code.jquery.com/jquery-1.4.3.min.js"></script>
	<script type="text/javascript" src="http://code.jquery.com/mobile/1.0a1/jquery.mobile-1.0a1.min.js"></script>
    <g:layoutHead />
</head>
	<body>
		<div data-role="page" data-theme="b">
			<div data-role="header" data-theme="b">
				<h1>My Site</h1>
			</div>
			<div data-role="content"> 
				 <g:layoutBody />
		       
			       
		        <br /><br />
				<a href="http://devgrow.com/mobile-web-dev-using-jquery-mobile/" data-role="button" data-theme="a" data-icon="back" data-inline="true">Return to Article</a> 
				<a href="http://devgrow.com/" data-role="button" data-theme="c" data-icon="check" data-inline="true">Example by DevGrow.com</a> 
			</div>
			<div data-role="footer">
				<h1>&copy; Copyright Info or Site URL</h1>
			</div>
	
		</div>
		<div data-role="page" data-theme="b" id="foo">
			<div data-role="header" data-theme="b">
				<h1>My Site</h1>
			</div>
			<div data-role="content">
				<h1>This is an internal page 1 - the HTML is located in the footer.</h1>
			</div>
			<div data-role="footer" data-position="fixed">
				<h1>&copy; Copyright Info or Site URL</h1>
			</div>
		</div>
		<div data-role="page" data-theme="b" id="bar">
			<div data-role="header" data-theme="b">
				<h1>My Site</h1>
			</div>
			<div data-role="content">
				<h1>This is an internal page 2 - the HTML is located in the footer.</h1>
			</div>
			<div data-role="footer" data-position="fixed">
				<h1>&copy; Copyright Info or Site URL</h1>
			</div>
		</div>
	</body>
</html>