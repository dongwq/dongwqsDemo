
@作者：董伟强

v0.1@201108XX
-------------------------------------------------------------------------------------
基于grails1.3.7的一个模板项目，配置了插件jquery, jquery-ui, spring-security-core, quartz, flot

并有一些公共的配置：
	* 有个CommonContext类，可以用来公共用值，但是不会频繁修改的参数等。
	* 有个CommonFilters, 可以配置一些公共过滤功能, 并加入request.today这个变量
	* spring/resource.groovy中加入locale设置，防止客户端locale设置影响显示。目前我们只需要支持中文，或者说一个版本。
	* 安装了spring security, 并在BootStrap中生成了二个用户，配置了其路径映射规则
	* 有定CustomNameStrategy， 用来对表配置生成前缀,可以CommonContext中修改
	* 安装了view templates, 并已经修改了生成list时的列数限制。
	* 在view layouts中给login 一个layout, 并有一个菜单。
	* 修改了css/main.css中部分内容，对中文和表格中字体好看一些了。
	
	* 将mysql驱动到了lib里面。
	* 删除了v1.3.7中自带的prototype库。
	
	
后续仍然会添加或继续改进的点有？？
	1. 加入in.js
	2. 对navigation插件使用。
	3. 引入我之前使用较好的页面模板
	4. jquery mobile的某些最佳实践的引入
	5. 
	
	
使用约定：
	1. 在web-app下建立了一个demo， 可以在里面实验只需页面处理的功能。
	2. 
	
v0.2@201108XX
-------------------------------------------------------------------------------------
插件加入：
	flot:一个jq的js插件用于chart的东西。
	
v0.3加入对html5的测试，给一个Controller给在其下测试
	
	加入对Jq mobile的测试：
		jqm关键：对一个页面内链接还是页面外链接的权衡选择？
		
		




		