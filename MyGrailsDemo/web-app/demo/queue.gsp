
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd"> 
<html xmlns="http://www.w3.org/1999/xhtml"> 
<head> 
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" /> 
	<title>queue demo</title> 
	<meta name="generator" content="editplus" /> 
	<meta name="author" content="Shawphy(shawphy.com)" /> 
	
	<g:javascript library="jquery" plugin="jquery"/>
	
	<style type="text/css"> 
		div {
			background:#aaa;
			width:18px;
			height:18px;
			position:absolute;
			top:10px;
		}
	</style> 
</head> 
<body> 
<div id="block1"></div><div id="block2"></div> 
<script type="text/javascript"> 
	var FUNC=[
		function() {$("#block1").animate({left:"+=100"},aniCB);},
		function() {$("#block2").animate({left:"+=100"},aniCB);},
		function() {$("#block1").animate({left:"+=100"},aniCB);},
		function() {$("#block2").animate({left:"+=100"},aniCB);},
		function() {$("#block1").animate({left:"+=100"},aniCB);},
		function(){alert("The End of Animation.")}
	];
	var aniCB=function() {
		$(document).dequeue("myAnimation");
	}
	$(document).queue("myAnimation",FUNC)
	aniCB();
</script> 
</body> 
</html> 