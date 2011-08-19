function accessTwoFullScreen(url,name){
	var params = windowParams(variationParams(availWidth(),availWidth(),availHeight()),invariantParams());
	return window.open(url,name,params);
}

function accessTwoScreen(url,name,width,height){
	var params = windowParams(variationParams(availWidth(),width,height),invariantParams());
	return window.open(url,name,params);
}

function accessMainFullScreen(url,name){
	var params = windowParams(variationParams(0,availWidth(),availHeight()),invariantParams());
	return window.open(url,name,params);
}

function accessMainScreen(url,name,width,height){
	var params = windowParams(variationParams(0,width,height),invariantParams());
	return window.open(url,name,params);
}

function windowParams(variationParams,invariantParams){
	return variationParams +','+invariantParams;
}

function variationParams(left,width,height){
	return 'left='+left+',width='+width+',height='+height;
}

function invariantParams(){
	return 'toolbar=yes, menubar=yes, scrollbars=yes, resizable=yes,location=yes, status=yes';
	//return'';// 'toolbar=yes, menubar=yes, scrollbars=yes, resizable=y,location=yes, status=yes';
}

function availHeight() {
	return window.screen.availHeight;
}

function availWidth(){
	return window.screen.availWidth;
}
