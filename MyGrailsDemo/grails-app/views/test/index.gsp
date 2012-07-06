<html>
<head>
<title>Flot</title>
<meta name="layout" content="main" />
	<flot:resources includeJQueryLib="false"  plugins="['pie.min']" />
</head>
<body>
	<p>
		This page tests tags from the <a target="_blanck" href="http://grails.org/plugin/flot">Grails Flot plugin</a>.
	</p>

	<g:javascript> 

var d1 = []; 
for (var i = 0; i < 14; i += 0.5)
 d1.push([i, Math.sin(i)]);

var d2 = [[0, 3], [4, 8], [8, 5], [9, 13]];

// a null signifies separate line segments 
var d3 = [[0, 12], [7, 12], null, [7, 2.5], [12, 2.5]];

var d4 = ${data};

var data = [d1, d2, d3, { label: "server data", data: d4}];

var options = { lines: { show: true }, points: { show: true } };

// Data and option for the pie

var d5 = []; 
var series = Math.floor(Math.random()*10)+1; 
for( var i = 0; i < series; i++)
{ 
	d5[i] = { label: "Series"+(i+1), data: Math.floor(Math.random()*100)+1 	}
}

var pieOptions = {
 series: { pie: { show: true } }, 
 legend: { show: false }
 
  }; 
</g:javascript>
	<flot:plot id="placeholder" style="width: 600px; height: 300px;" data="data" options="options" />
	<br />
	<flot:plot id="placeholder1" style="width: 600px; height: 400px;" data="d5" options="pieOptions" />
</body>
</html>