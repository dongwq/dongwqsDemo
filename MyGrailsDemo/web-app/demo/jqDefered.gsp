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
	    <script type="text/javascript">
		    function moreCallback(){
	    		$.ajax('test.html')
				.done(function(){
					alert(" yes OK");
				 })
				.fail( function(){
					alert("No, fail");
				})
				.fail( function(){
					alert("No, fail 2");
				});
	    	}
	    	
	    	function moreRequest(){
	    		alert("eee");
	    		
	    		
		    	$.when( $.ajax('test.html'),$.ajax('test2.html') )
				.done(function(){
					alert(" yes OK");
				 })
				.fail( function(){
					alert("No, fail when");
				})
				.fail( function(){
					alert("No, fail 2 when");
				});
	    	}
	    	
	    	// a time consum func
	    	var waits = function(){
	    	 	var tasks = function(){
	    	 		alert("this is tasks exec");
	    	 	}
	    	 	
	    	 	setTimeout(tasks, 2000);
	    	 }
	    	 
	    	 function testWhen(){
	    	 	$.when( waits() )
				.done(function(){
					alert(" yes OK");
				 })
				.fail( function(){
					alert("No, fail when");
				})
				.fail( function(){
					alert("No, fail 2 when");
				});
	    	 
	    	 }
	    	 
	    	 
	    	 // a time consum func
	    	//var defObj  = $.Deferred(); // 新建一个deferred对象;
	    	
	    	var waits2 = function( def ){
	    	 	
	    	 	var tasks = function(){
	    	 		alert("this is tasks exec");
	    	 		def.resolve();
	    	 		//def.reject();
	    	 	}
	    	 	
	    	 	setTimeout(tasks, 2000);
	    	 	
	    	 	return def.promise();
	    	 }
	    	 
	    	 function testWithDef(){
	    	 	//$.when( waits2(defObj) )
				$.Deferred(waits2)
				.done(function(){
					alert(" yes OK");
				 })
				.fail( function(){
					alert("No, fail when");
				})
				.fail( function(){
					alert("No, fail 2 when");
				})
				.always( function(){
					alert("this will always exec");
				});
	    	 
	    	 }
	    </script>
	    
		<jq:jquery>
			
			//moreCallback();
			//moreRequest();
			
			//waits();
			
			//testWithDef();
			
			
			var defer = $.Deferred(),
		    filtered = defer.pipe(function( value ) {
		      return value * 2;
		    });
		
		defer.resolve( 5 );
		filtered.done(function( value ) {
		  alert( "Value is ( 2*5 = ) 10: " + value );
		});
					
			
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