<!DOCTYPE html>
<html>
    <head>
        <title><g:layoutTitle default="欢迎使用蒲公英上网助手" /></title>
        <link rel="stylesheet" href="${resource(dir:'css',file:'main.css')}" />
        <link rel="shortcut icon" href="${resource(dir:'images',file:'ic_logo.png')}" type="image/x-icon" />
        <g:javascript library="jquery" plugin="jquery"/>
        <g:layoutHead />
        
        <style>
			
			#main{
			   margin-left:145px;
               margin-right:20px;
               min-height:435px;
			}
			
			ul#navigation {
			    position: fixed;
			    margin: 0px;
			    padding: 0px;
			    top: 102px;
			    left: 5px;
			   /* list-style: none;*/
			    z-index:9999;
			}
			
			ul#navigation li {
			    width: 100px;
			}
			
			ul#navigation li a {
				text-decoration: none;
				color: #111111;
			    display: block;
			    margin-left: -2px;
			    padding: 2px 2px 2px 10px;
			    width: 120px;
			    height: 22px;    
			    background-color:#CFCFCF;
			    background-repeat:no-repeat;
			    background-position:center center;
			    border:1px solid #AFAFAF;
			    -moz-border-radius:0px 10px 10px 0px;
			    -webkit-border-bottom-right-radius: 10px;
			    -webkit-border-top-right-radius: 10px;
			    -khtml-border-bottom-right-radius: 10px;
			    -khtml-border-top-right-radius: 10px;
			    /*-moz-box-shadow: 0px 4px 3px #000;
			    -webkit-box-shadow: 0px 4px 3px #000;
			    */
			    opacity: 0.6;
			    filter:progid:DXImageTransform.Microsoft.Alpha(opacity=60);
			}
			
	    </style>
		<jq:jquery>
			var currentPath = '${request.contextPath}/${controllerName}/${actionName}';
			var $menuA , $menuT;
			$menuA = $("#li_clientReport a");
			if( currentPath == '${request.contextPath}/client/report')
			{
				$menuA = $("#li_clientReport a");
			}else{
				$menuT = $("#navigation a[href='" + currentPath + "']");
				if( $menuT.is(":visible") ){
				     $menuA = $menuT;
				}else{
					var currentPathPrefix = '${request.contextPath}/${controllerName}';
					var $menuB = $("#navigation a[href^='" + currentPathPrefix + "']");
					if( $menuB.is(":visible") ){
						$menuA = $menuB;
					}
				}	
			}
			$menuA.attr('style', 'border-bottom:3px solid blue; border-top:3px solid blue;border-right:8px solid blue;');
			
		</jq:jquery>
    </head>
    <body>
        <div id="spinner" class="spinner" style="display:none;">
            <img src="${resource(dir:'images',file:'spinner.gif')}" alt="${message(code:'spinner.alt',default:'Loading...')}" />
        </div>
        <div id="grailsLogo">
        	<a href="${request.contextPath}"><img width='30' height="30" src="${resource(dir:'images',file:'ic_logo.png')}" alt="蒲公英上网助手" border="0" /></a>
        	
        	<sec:ifLoggedIn>
        		<span>欢迎你，<sec:username />!&nbsp;&nbsp;<a href="${request.contextPath}/j_spring_security_logout">退出</a></span>
        		&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span>当前日期：<g:formatDate date="${new Date() }" type="date" style="MEDIUM"/></span>
        	</sec:ifLoggedIn>
        	
        </div>
      	<hr/>
      	<g:render template="/layouts/menu"></g:render>
        
        <div id="main">
	        <g:layoutBody />
        </div>
        
        <br/>
        <div style="clear:both"></div>
        <hr/>
        <div id="footer" style="text-align:center;padding:5px;">
              	欢迎使用蒲公英上网助手
        </div>
    </body>
</html>