<!doctype html>
<html>
<head>
  <meta http-equiv="content-type" content="text/html;charset=gbk"/>
  <title>loading</title>
  <script>
   /*
    html5 loading 控件
    作者：玉开 博客：http://www.cnblogs.com/yukaizhao/
    发布或使用此控件，请保留作者声明
    */
    function loading(canvas,options){
      this.canvas = canvas;
      if(options){
      }else{      
    	  options = {}
      }

      this.radius = options.radius||16;
      this.circleLineWidth = options.circleLineWidth||8;
      this.circleColor = options.circleColor||'lightgray';
      this.moveArcColor = options.moveArcColor||'gray';
      
    }
    loading.prototype = {
      show:function (){
        var canvas = this.canvas;
        if(!canvas.getContext)return;
        if(canvas.__loading)return;
        canvas.__loading = this;
        var ctx = canvas.getContext('2d');
        var radius = this.radius;      
        var me = this;
        var rotatorAngle = Math.PI*1.5;
        var step = Math.PI/6;
        canvas.loadingInterval = setInterval(function(){
          ctx.clearRect(0,0,canvas.width,canvas.height);         
          var lineWidth = me.circleLineWidth;
          var center = {x:canvas.width/2 - radius,y:canvas.height/2-radius};          
          ctx.beginPath();
          ctx.lineWidth = lineWidth;
          ctx.strokeStyle = me.circleColor;
          ctx.arc(center.x,center.y,radius,0,Math.PI*2);
          ctx.closePath();
          ctx.stroke();
          //在圆圈上面画小圆
          ctx.beginPath();
          ctx.strokeStyle = me.moveArcColor;
          ctx.arc(center.x,center.y,radius,rotatorAngle,rotatorAngle+Math.PI*.45);
          ctx.stroke();
          rotatorAngle+=step;
          
        },50);
      },
      hide:function(){
        var canvas = this.canvas;
        canvas.__loading = false;
        if(canvas.loadingInterval){
          window.clearInterval(canvas.loadingInterval);
        }
        var ctx = canvas.getContext('2d');
        if(ctx)ctx.clearRect(0,0,canvas.width,canvas.height);
      }
    };
     
    </script>
  </head>
  <body>
    <canvas id="canvas" width="300" height="100" style="border:1px solid #69c">您的浏览器不支持html5哟</canvas>
    <p>
    <input type="button" onclick="loadingObj.hide()" value="HideLoading"/>
    <input type="button" onclick="loadingObj.show()" value="showLoading"/>
    </p>
    <script>
    var loadingObj = new loading(document.getElementById('canvas'));
    //,{radius:18,circleLineWidth:8}
    loadingObj.show();
    </script>
  </body>
</html>