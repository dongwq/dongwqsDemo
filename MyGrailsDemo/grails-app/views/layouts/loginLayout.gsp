<!DOCTYPE html>
<html>
    <head>
        <title><g:layoutTitle default="欢迎使用蒲公英上网助手" /></title>
        <link rel="stylesheet" href="${resource(dir:'css',file:'main.css')}" />
        <link rel="shortcut icon" href="${resource(dir:'images',file:'ic_logo.png')}" type="image/x-icon" />
        <g:layoutHead />
        
    </head>
    <body>
        <div id="spinner" class="spinner" style="display:none;">
            <img src="${resource(dir:'images',file:'spinner.gif')}" alt="${message(code:'spinner.alt',default:'Loading...')}" />
        </div>
        <div id="grailsLogo">
        	<a href="${request.contextPath}"><img width='50' heigh="50" src="${resource(dir:'images',file:'ic_logo.png')}" alt="蒲公英上网助手" border="0" /></a>
        	
        	<sec:ifNotLoggedIn>
					欢迎使用蒲公英上网助手,请登录        	
        	</sec:ifNotLoggedIn>
        </div>
      	
        
	    <g:layoutBody />
    </body>
</html>