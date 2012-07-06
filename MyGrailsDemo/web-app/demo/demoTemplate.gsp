<!DOCTYPE html>
<html>
    <head>
        <title>jq Defered Demo</title>
        <link rel="stylesheet" href="${resource(dir:'css',file:'main.css')}" />
        <link rel="shortcut icon" href="${resource(dir:'images',file:'ic_logo.png')}" type="image/x-icon" />
        <g:javascript library="jquery" plugin="jquery"/>
        
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
	    
	    <g:javascript>
	    	
	    </g:javascript>
		<jq:jquery>
			
			
		</jq:jquery>
    </head>
    <body>
      	<hr/>
      	<g:render template="/layouts/menu"></g:render>
        
        <div id="main">
        </div>
        
        <br/>
        <div style="clear:both"></div>
        <hr/>
        <div id="footer" style="text-align:center;padding:5px;">
              	欢迎使用蒲公英上网助手
        </div>
    </body>
</html>