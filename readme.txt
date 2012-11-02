InJs:as js loader lib


test git hub window client.

the code moved from c to e:


讨论是要汇总方案，最终要有决策，但是讨论本身不是。

有争论是好事，说明提案多，得到好方案机会多。但争论的应是观点，决不应是态度。绝对不要情绪化。可以轻松点。

what???
把别人当别人，
把别人当自己，
把自己当自己，
把自己当别人。



private int consumeNum;// 消费的bean，为应扣畅豆




我们可以在任何时候call cancel(boolean)的方法来取消一个Task，如果呼叫到这个方法会导致之后呼叫isCancelled() 返回true.那么如果这样的话，之后会用onCancelled(Object)来替代onPostExecute(Object)的执行。

为了确保这个Task能够尽快被取消，我们需要在 doInBackground(Object[])执行的时候去check isCancelled()

The task can be executed only once (an exception will be thrown if a second execution is attempted.) （这个task必须是单次执行的，不要在这个任务没有结束前再次呼叫）



Android EditText 获得焦点并弹出键盘
------------------------------
	这一直是一个蛋疼的问题。。
	直接给出代码：
	 
	editText.setFocusable(true);
	editText.requestFocus();
	InputMethodManager imm = (InputMethodManager)
			getSystemService(Context.INPUT_METHOD_SERVICE);
	imm.showSoftInput(editText, InputMethodManager.SHOW_IMPLICIT);
	关闭键盘的代码：
	 
	mInputMethodManager.hideSoftInputFromWindow(
			taskEdit.getApplicationWindowToken(),
			InputMethodManager.HIDE_IMPLICIT_ONLY);



  ??
  
  
  prefs.setString(
	PrefsConstants.PREF_CURRENT_LOCATION_PROVINCE_CN,
	locEntity.province);
prefs.setString(PrefsConstants.PREF_CURRENT_LOCATION_CITY_CN,
	locEntity.city);

	
<Spinner android:id="@+id/umeng_fb_age_spinner"
			android:layout_alignParentLeft="true" android:layout_width="96dip"
			android:layout_height="wrap_content" android:layout_marginLeft="8dip"
			android:layout_centerVertical="true" />
		<Spinner android:id="@+id/umeng_fb_gender_spinner"
			android:layout_toRightOf="@id/umeng_fb_age_spinner"
			android:layout_marginLeft="7dip" android:layout_width="96dip"
			android:layout_height="wrap_content" android:layout_centerVertical="true" />
			
			android:layout_alignBaseline="@id/umeng_fb_age_spinner"

			// umeng feedback
		UMFeedbackService.enableNewReplyNotification(this,
				NotificationType.AlertDialog);

		FeedBackListener listener = new FeedBackListener() {
			@Override
			public void onSubmitFB(Activity activity) {

				Map<String, String> remarkMap = new HashMap<String, String>();
				String cid = prefs.getString(PrefsConstants.PREF_CLIENT_ID);
				String province = prefs
						.getString(PrefsConstants.PREF_CURRENT_LOCATION_PROVINCE_CN);
				String city = prefs
						.getString(PrefsConstants.PREF_CURRENT_LOCATION_CITY_CN);

				remarkMap.put("cid", cid);
				remarkMap.put("province", province);
				remarkMap.put("city", city);
				UMFeedbackService.setRemarkMap(remarkMap);
			}

			@Override
			public void onResetFB(Activity activity,
					Map<String, String> contactMap,
					Map<String, String> remarkMap) {

			}
		};
		UMFeedbackService.setFeedBackListener(listener);
		
		
		
		    <LinearLayout
            android:layout_width="fill_parent"
            android:layout_height="42dip"
            android:layout_gravity="bottom|right|center" >

            <ImageButton
                android:id="@+id/btn_store"
                android:layout_width="wrap_content"
                android:layout_height="wrap_content"
                android:background="@drawable/info_btn_store_selector" />

            <ImageButton
                android:id="@+id/btn_share"
                android:layout_width="wrap_content"
                android:layout_height="wrap_content"
                android:background="@drawable/info_btn_share_selector" />

            <ImageButton
                android:id="@+id/btn_correct"
                android:layout_width="wrap_content"
                android:layout_height="wrap_content"
                android:background="@drawable/info_btn_correct_selector" />
        </LinearLayout>
		
		
		
		09-05 16:55:49.478: DEBUG/chang(28118): my Near poi url:http://loc.wlanplus.com/loc/myNearPoi?lon=121.43753452133&range=3.0&page=0&lat=31.168065437655&size=20&

		http://loc.wlanplus.com/loc/queryAp?poiId=4f9a321fe4b090d36ffc0124&size=15
		http://loc.wlanplus.com/loc/queryAp?poiId=4f9a321fe4b090d36ffc0124
		
		http://loc.wlanplus.com/loc/queryCoverWlan?poiId=4f9a321fe4b090d36ffc0124
		
		http://localhost:8093/loc/queryCoverWlan?poiId=4f08059e77e693fa7889a347
		queryClientHisitory
		http://localhost:8093/loc/queryClientHisitory?cid=23
		
		
		
		09-05 16:55:57.708: DEBUG/chang(28118): PoiDetailActivity, poiEntity=PoiEntity [id=4f9a321fe4b090d36ffc0124, lon=121.435352, lat=31.1605, poiName=上海南站东北入口出发, province=null, city=上海市, district=徐汇区, address=上海市徐汇区, addrDesc=, category=null, type=null, distance=867.4610819695458, provider=baidu, marked=false]

				
			String region = "";
				Set<String> keys = MapConstants.regionENMap.keySet();
				for (String key : keys) {
					if (locEntity.province.contains(key)) {
						region = MapConstants.regionENMap.get(key);
					}
				}
				
				
	反馈： 
		后台：
			可以置顶， 可以多标签吧。定义一下。
			换成问题分类?重要？
		客户端：
			返回地区
			
	
	帮助与反馈：
		测试地址：http://www.wlanplus.com/faq
			关键问题：有无网络，头要变化吗？
		
		btn_open_feedback
		
		
		requestFeature() must be called before setContentView(R.layout.XX)?
		
		
		列表进入OK，显示顶部，其他地方点击去泡OK, 默认显示CMCC支持。
		
		
		
		os-android-appp
		android-undergover??
		
9月第二周工作：			
		上网点部分开发： 相应loc修改覆盖查询，？洗数据
		帮助与反馈：后台反馈添加相应改进，遗留还有页面？？
		CC， 一些字段的修改。
		
	
		反馈：
			feedbackType
			使用闪电邮发送邮件: 直接改mailto完成，调用邮件客户端的问题？使用配置默认邮件客户端方式。
			标记处理时间段：此前已处理（一个独立的时间过滤），要时间段吗？还是批量标记呢？
				MetaData:    Date timeline:aaa,ObjectId feedbackId:"XX",String key:"feedback.timeline"
			是否处理：每次拉出来最新的feedback.timeline比较，并显示一个标志（未处理/已处理）
			归入问题：
				--问题集合：
					连接问题：
					畅豆问题
					其他问题：
			对重复反馈情况,给出查看反馈情况：直接显示反馈次数，并给出可以打开查询，同一cid， 反馈历史， 
					以对话框形式拉出来，这样下面页面和分页不会变。				
		
		客户端：分类
					连接问题：
					畅豆问题
					其他问题：
			
		改造Loc, CC
		洗数据.
		后台更新。	private boolean isUpdateDate = false;
				chang-service 项目中的ResourceAccount实体增加isUpdateDate用于控制是否更新账号的生效时间、失效时间，可用时间			与此同时，ResourceService中的updateResourceAccountTime方法的查询条件增加criteria.and("isUpdateDate").is(true);
				cc需要增加这个字段
		POI管理更新：poiName，provider	
			，将POI管理中的内容调整为新的Mongodb（192.168.14.126）服务器上存储的数据。
			完成情况：因grails domain没法指定db host，修改为使用spring-data-mongodb来操作，. 已经完成Poi, Ap列表显示与Poi查询功能。(查询的二个条件同时查询有错误，原因未查询,但不影响使用）
			
		CC后台修改资源保存时出错。
				Failed to convert property value of type java.lang.String[] to required type 
				完成情况：字段名称写错了。

		downloadApp:
			{ "_id" : ObjectId("5050688ee4b0822fd7cff107"), "_class" : "net.unitedcloud.chang.entity.EventStat", "cid" : NumberLong(2022901), "versionName" : "1.2.4.1", "versionCode" : 32, "key" : "app_download", "type" : "json", "data" : { "source" : "winads", "appName" : "VMarket", "point" : "40" }, "dateCreated" : ISODate("2012-09-12T10:48:46.052Z") }
				<li><g:link controller="eventStat" action="list">app下载历史</g:link></li>
		
		反馈信息增加标签功能:OK
					连接问题：
					畅豆问题
					其他问题
			安装问题、初始化问题、连接问题、认证问题、畅豆问题、其他问题
		
Chrome插件开发:http://www.groovyq.net/content/chrome%E6%8F%92%E4%BB%B6%E5%BC%80%E5%8F%91
		
		
		http://localhost:8087/itinfo/heartbeat
		必须有a,否则找不到。
		http://localhost:8087/itinfo/heartbeat/a  
		
		http://localhost:8087/itinfo//SaveEmploye.html
			application/json
{"employeeId":"10","firstName":"John","lastName":"Smith","department":"IT"}		
		
		
		
	http://ruby.taobao.org/
	
	http://ruby-china.org/topics/5456
	
	http://qing.weibo.com/2294942122/88ca09aa330004r8.html
	
	http://www.groovyq.net/node/152
	http://grails.org/plugin/shiro
	
	  <stroke
        android:color="#00ff00"
        android:width="1dip" />
		
		
	MongoDB服务器信息
IP
端口
database
m/s
192.168.19.35
27017
wlanplus
master
192.168.14.126
27017
loc
master
192.168.3..150
27018
wlanlus
slave
Mysql服务器信息
IP
端口
database
m/s
192.168.3..150
3306
wplusdata
master

Percona Replication Manager 

09-18 16:05:54.255: ERROR/chang(23212): No Activity found to handle Intent { act=com.loulijun.demo2.SHOW_ACTION }

09-18 16:21:43.095: ERROR/chang(24037): java.lang.SecurityException: Requesting code from com.loulijun.demo2 (with uid 10195) to be run in process com.wlanplus.chang (with uid 10043)


http://www.fishlee.net/soft/44/#C-192



this.mLocationManager = (LocationManager) ctx
				.getSystemService(Context.LOCATION_SERVICE);
				
boolean gpsEnabled = mLocationManager
				.isProviderEnabled(LocationManager.GPS_PROVIDER);
				
				
http://localhost:8080/imagej/list.html	

http://192.168.1.103:8080/imagej/list.html		
E:\JavaLibDoc\Ruby




url = "http://192.168.1.103:8080/imagej/list.html";




[id:5065171518254b19d18e4553, enabled:on, description:ee, _action_update:Update, _enabled:, hostAndClazzNameOne:[sss, haoBuHao, 192.168.1.1|com.wlanplus.chang|protocol.CMCCProtocol, 3, 4], versionCode:22, ssid:ssssssssss, url:aa, fixCode:2.0, version:, action:index, controller:bugFixEntity]



	
http://localhost:8080/net-unitedcloud-chang-cpa/addBean
http://localhost:8080/net-unitedcloud-chang-cpa/changCallBack


2012-10-08
一周总结：
	chang-cc改进与完善工作
	----------
		在线用户（sessionId太长， versionCode 显示并可过滤）
		
		CPA：winAds(packageName)
		
		Poi管理：查看，删除 ，这个不起作用，要改，就要全部改成用mongoTemplate, OK ,也不需要适配，直接修改上就好。
		老的畅豆管理可以去掉了。								---OK. 
		
		Clients:Feedback加已经处理标记：已处理，未处理。
		
	1、在"资源账户列表"，增加根据enabled筛选项，默认仅显示enabled=true
	2、在"资源账户列表"，Source中增加 yongcheng 和 juyuan 两个渠道	

	CC中增加WLAN协议的管理功能
	1、不同的WLAN名称可定义不同的认证协议
	2、不同的省份可以定义不同的认证协议
	3、支持增加，修改
	4、支持版本管理

	扩展后台的"升级管理"功能，增加上网点模块的升级，无需按省份设置不同的升级路径。

	cpa改造：winAds处理（chang的反馈记录，加豆）
		1. 加WinAds, 加反馈
		2. 放出一个加豆接口给加豆调用使用
		3. 安全处理(ip过滤和签名验证）, 过滤对加豆，签名对畅返回加豆验证。
			
		先查有没有加过记录，如果加过就不管了，以tradeno为标志。
		
		如果没有查到就加，给畅或者原来winAds的都使用此逻辑。

	
需要完成任务：
	1.poi批量审核
	2.305689 刷机，原畅ID：1447947
		现象：查询时,"用户反馈，畅豆赚取记录，畅豆消耗记录"有，“”无。
		删除掉了了。
	3. 
	

 电信网关开发：
	一个独立项目，完成功能（客户端验证与账号请求）
		- 没有存储功能，只有请求接收， 验证（要获取数据从chang), 请求账号并返回给Client。
		- 一系列请求与返回需要一个异步的，不能阻塞下一个请求。如果没有正确返回请求要有详细日志.
	
	

  请求的保存：
	 日志形式保存，
		
	 
	 
	 需要配合的请求：
	 
	 
	 cs : 
		getClientKeyPair
			:
	 Chinanet:
		wificard:
			http://ipaddress:port/wificard?method=getCardForOrder&partner=1234&sign_type=MD5& timestamp=20111012130530&orderID=360buy201110120000101&phoneNumber=18914002480&cardType=1&amounted=01&money=500&sign=1f3870be274f6c49b3e31a0c6728957f
			
	Client: 向客户端提供的接口
		getCN:
		   params:  
			   phoneNumber, 
		
	
PRIVATEKEY是合作伙伴接口访问密码
合作伙伴ID	partner	Sting（16）	合作伙伴在WiFi业务管理平台的ID（平台分配）	


http://localhost:8080/getCN?phoneNo=2222&checksum=22www&cid=85&pv=1.2


	 
订单号	ordered	Sting（40）	商户开卡充值订单号	N	见订单号规范




张华  11:37:12
123.150.162.8 - - [10/Oct/2012:23:51:53 +0800] "GET /loc/queryPoisByAp?bssid=48:28:2f:29:74:26& HTTP/1.1" 200 971 "-" "-" "-"
121.18.213.67 - - [10/Oct/2012:23:51:54 +0800] "GET /loc/queryPoisByAp?bssid=c4:ca:d9:7d:39:70& HTTP/1.1" 200 639 "-" "-" "-"
123.150.218.45 - - [10/Oct/2012:23:52:04 +0800] "POST /loc/markPoi HTTP/1.1" 408 0 "-" "-" "-"
124.160.144.110 - - [10/Oct/2012:23:52:04 +0800] "GET /loc/queryPoisByAp?bssid=c4:ca:d9:26:45:e0& HTTP/1.1" 200 946 "-" "-" "-"
120.209.9.41 - - [10/Oct/2012:23:52:11 +0800] "GET /loc/queryPoisByAp?bssid=00:17:7b:30:b9:f3& HTTP/1.1" 499 0 "-" "-" "-"
117.140.42.229 - - [10/Oct/2012:23:52:34 +0800] "POST /loc/markPoi HTTP/1.1" 408 0 "-" "-" "-"
123.150.218.45 - - [10/Oct/2012:23:52:34 +0800] "POST /loc/markPoi HTTP/1.1" 408 0 "-" "-" "-"
211.141.171.45 - - [10/Oct/2012:23:52:57 +0800] "GET /loc/queryPoisByAp?bssid=38:22:d6:47:12:e0& HTTP/1.1" 499 0 "-" "-" "-"
117.140.42.229 - - [10/Oct/2012:23:53:08 +0800] "POST /loc/markPoi HTTP/1.1" 408 0 "-" "-" "-"
123.150.218.45 - - [10/Oct/2012:23:53:18 +0800] "POST /loc/markPoi HTTP/1.1" 408 0 "-" "-" "-"


499对应的是 “client has closed connection”。这很有可能是因为服务器端处理的时间过长，客户端“不耐烦”了。要解决此问题，就需要在程序上面做些优化了。

158 5008 9057

你好，是科生公司的丁鸿吧？电信的耿杰让我找你，我这边是做异网免费体验和门户网站的，对wifi管理平台有几个问题需要向你咨询下，方便给个邮件或QQ吗？


http://localhost:8080/getCN?phoneNo=18221385053&checksum=22www&cid=85&pv=1.2


陌陌功能分析：
	
	图片异步加载
	
	附近的人
	群组功能
	
	


	丁鸿
	开卡功能：	免费的一小时体验卡？
	
	
http://180.166.7.150:8080/wificard?method=getCardForOrder&partner=wificard&sign_type=MD5&timestamp=20121012181438&orderID=wificard20121012181438100&phoneNumber=18221385053&cardType=1&amountID=01&money=0&sign=1efa41da519870d8bcbffd3703890bf5


http://180.166.7.150:2882/wificard


改用这个用户米和密码试试看。
YWTY
YwTy@)!@
 
手机号=15365517893||订单号=AKWD20121015101451054||开卡类型=1||金额代码=11||金额：0
订单号为商户代码+时间戳+交易流水号，如商户代码为1234，本次交易的时间戳为20111226214823，交易流水号为001，则本次订单号为：123420111226214823001。


http://localhost:8080/getCN?mobileNum=18221385053&checksum=22www&cid=85&pv=1.2

url =http://180.166.7.150:8080/wificard?method=getCardForOrder&partner=YWTY&sign_type=MD5&timestamp=20121015105453&orderID=YWTY20121015105453100&phoneNumber=18221385053&cardType=1&amountID=11&money=0&sign=cb5c12fdbb816f26dff1f685e96ab04b

使用amounted
http://180.166.7.150:8080/wificard?method=getCardForOrder&partner=YWTY&sign_type=MD5&timestamp=20121015105453&orderID=YWTY20121015105453100&phoneNumber=18221385053&cardType=1&amounted=11&money=0&sign=cb5c12fdbb816f26dff1f685e96ab04b

人家示例：
http://ipaddress:port/wificard?method=getCardForOrder&partner=1234&sign_type=MD5& timestamp=20111012130530&orderID=360buy201110120000101&phoneNumber=18914002480&cardType=1&amounted=01&money=500&sign=1f3870be274f6c49b3e31a0c6728957f


http://180.166.7.150:8088/wificard?method=getCardForOrder&partner=YWTY&sign_type=MD5&timestamp=20121015111702&orderID=YWTY20121015111702100&phoneNumber=18221385053&cardType=1&amountID=11&money=0&sign=5432c201619032fa48db7c4331c5193d


http://180.166.7.150:8088/wificard?method=getCardForOrder&partner=wificard&sign_type=MD5&timestamp=20121015115408&orderID=wificard20121015115408100&phoneNumber=18221385053&cardType=1&amountID=11&money=0&sign=ef8dc08c648723164c7229baa0378865


Java -Djava.ext.dirs=lib org.apache.axis.wsdl.WSDL2Java http://localhost:8080/axis/services



http://124.74.213.129:7001/services/GetCardForOrder?wsdl

2012-10-16 10:54:08,265: WARN VerifyInterceptor:preHandle():31 - path=/getCN
before sign=wificard@20121016105408@wificard
url =http://180.166.7.150:8080/wificard?method=getCardForOrder&partner=wificard&sign_type=MD5&timestamp=20121016105408&orderID=wificard20121016105408101&phoneNumber=18221385053&cardType=1&amountID=11&money=0&sign=395a7545f6e69ec551aafdf40ead8308
[2012-10-16 10:54:08] JRebel: Reloading class 'GetCardForOrderResponse_pkg.GetCardForOrderResponse'.
2012-10-16 10:54:08,718: INFO GatewayService:getWS():118 -  resp =GetCardForOrderResponse [balance=-42, cardNumber=W18221385053, description=Success, isNewID=1, oldBalance=-39, orderID=wificard20121016105408101, password=null, phoneNumber=18221385053, resultCode=0, standby=, validity=2013-04-14 23:59:59]
2012-10-16 10:54:08,812: WARN VerifyInterceptor:preHandle():31 - path=/favicon.ico

resp =GetCardForOrderResponse [balance=-42, cardNumber=W18221385053, description=Success, isNewID=1, oldBalance=-39, orderID=wificard20121016105408101, password=null, phoneNumber=18221385053, resultCode=0, standby=, validity=2013-04-14 23:59:59]

2012-10-16 11:06:34,125: INFO GatewayService:getWS():118 -  resp =GetCardForOrderResponse [balance=-45, cardNumber=W18221385053, description=Success, isNewID=1, oldBalance=-42, orderID=YWTY20121016110633100, password=null, phoneNumber=18221385053, resultCode=0, standby=, validity=2013-04-14 23:59:59]



------------------------张华号-------------------------------
http://localhost:8080/getCN?mobileNum=13501838884&checksum=22www&cid=85&pv=1.2

2012-10-16 11:19:22,656: INFO GatewayService:getWS():118 -  resp =GetCardForOrderResponse [balance=-1, cardNumber=W13501838884, description=Success, isNewID=0, oldBalance=0, orderID=YWTY20121016111922101, password=62874958, phoneNumber=13501838884, resultCode=0, standby=, validity=2012-11-15 23:59:59]


2012-10-16 11:20:17,156: INFO GatewayService:getWS():118 -  resp =GetCardForOrderResponse [balance=-2, cardNumber=W13501838884, description=Success, isNewID=1, oldBalance=-1, orderID=YWTY20121016112016102, password=null, phoneNumber=13501838884, resultCode=0, standby=, validity=2012-12-16 23:59:59]

------------------林涛号---------------------
http://localhost:8080/getCN?mobileNum=13601945126&checksum=22www&cid=85&pv=1.2

2012-10-16 11:22:53,265: INFO GatewayService:getWS():118 -  resp =GetCardForOrderResponse [balance=-3, cardNumber=W13601945126, description=Success, isNewID=0, oldBalance=0, orderID=YWTY20121016112252100, password=65334264, phoneNumber=13601945126, resultCode=0, standby=, validity=2012-11-15 23:59:59]

2012-10-16 11:23:36,781: INFO GatewayService:getWS():118 -  resp =GetCardForOrderResponse [balance=-6, cardNumber=W13601945126, description=Success, isNewID=1, oldBalance=-3, orderID=YWTY20121016112336101, password=null, phoneNumber=13601945126, resultCode=0, standby=, validity=2012-12-16 23:59:59]

Wifi管理平台
http://180.166.7.150:8081/wifitcp/login.jsp
YWTY
YwTy@)!@

标准都是猪样的。
“3岁学会不跟陌生人走"，奶奶的，都快奔3了，也会想要能遇见个陌生人，如果他/她能带我走就好。可是这是能学会的么？向谁学呢？(by 代言)

“6岁学会接受不同意见”， 奶奶的，不同意见，还接受。要6岁能会，还能有”异见者“这个词么？能泰然”听“之已是万岁，要论接受那是痴人说梦。
	无论大小，能达此境者鲜有。关6岁屁事。(by 代言)




张华  11:36:17
https://query.sh.189.cn/sol/selfservice/WelcomeUser.jsp?usertype=5
张华  11:48:30
http://180.166.7.150:8081/wifitcp/login.jsp


改变cardType=2来尝试（一次性， 3=临时）	
http://localhost:8080/getCN?mobileNum=13601945126&checksum=22www&cid=85&pv=1.2&t=2

url =http://180.166.7.150:8080/wificard?method=getCardForOrder&partner=YWTY&sign_type=MD5&timestamp=20121016175102&orderID=YWTY20121016175102102&phoneNumber=13601945126&cardType=2&amountID=11&money=0&sign=f7c40d3d1311d79e0c1317f49b332c64
2012-10-16 17:51:03,046: INFO GatewayService:getWS():120 -  resp =GetCardForOrderResponse [balance=null, cardNumber=null, description=null, isNewID=null, oldBalance=null, orderID=null, password=null, phoneNumber=null, resultCode=null, standby=null, validity=null]

http://localhost:8080/getCN?mobileNum=13601945126&checksum=22www&cid=85&pv=1.2&t=3

url =http://180.166.7.150:8080/wificard?method=getCardForOrder&partner=YWTY&sign_type=MD5&timestamp=20121016175329&orderID=YWTY20121016175329103&phoneNumber=13601945126&cardType=3&amountID=11&money=0&sign=330ce746a68be1908445d682069327a5

2012-10-16 17:53:30,046: INFO GatewayService:getWS():120 -  resp =GetCardForOrderResponse [balance=-0.16667, cardNumber=W90001181097, description=Success, isNewID=0, oldBalance=0, orderID=YWTY20121016175329103, password=07678098, phoneNumber=13601945126, resultCode=0, standby=, validity=2012-10-16 17:53:07]

url =http://180.166.7.150:8080/wificard?method=getCardForOrder&partner=YWTY&sign_type=MD5&timestamp=20121016175537&orderID=YWTY20121016175537104&phoneNumber=13601945126&cardType=3&amountID=11&money=0&sign=e75885723667b3d20de585443618e535
2012-10-16 17:55:38,265: INFO GatewayService:getWS():120 -  resp =GetCardForOrderResponse [balance=-0.16667, cardNumber=W90001181109, description=Success, isNewID=0, oldBalance=0, orderID=YWTY20121016175537104, password=66054748, phoneNumber=13601945126, resultCode=0, standby=, validity=2012-10-16 17:55:15]

------------------------------
账号:  	 W90001181109
生效日期:  	 2012-10-16
失效日期:  	 2012-10-16 17:55:15
余额:	 0.16 小时
------------------------------


cardType=1
账号：W18221385053 密码： 77825059 ，
cardNumber=W13601945126, password=65334264
cardNumber=W13501838884, password=62874958

cardType=2

cardType=3
cardNumber=W90001181109, password=66054748

90001181109

http://localhost:8080/getCN?mobileNum=13601945126&checksum=22www&cid=85&pv=1.2&t=3

url =http://180.166.7.150:8080/wificard?method=getCardForOrder&partner=YWTY&sign_type=MD5&timestamp=20121017110341&orderID=YWTY20121017110341100&phoneNumber=13601945126&cardType=3&amountID=11&money=0&sign=62e675e8f9abcf0e5060120844ef0fb3
2012-10-17 11:03:42,968: INFO GatewayService:getWS():120 -  resp =GetCardForOrderResponse [balance=-0.16667, cardNumber=W90001183954, description=Success, isNewID=0, oldBalance=0, orderID=YWTY20121017110341100, password=46432522, phoneNumber=13601945126, resultCode=0, standby=, validity=2012-10-17 11:03:21]

cardNumber=W90001183954, password=46432522

2012-10-17 11:03:42,968: INFO GatewayService:getWS():120 -  resp =GetCardForOrderResponse [balance=-0.16667, 

cardType=3 可以用10分钟


http://localhost:8080/getCN?mobileNum=13601945126&checksum=22www&cid=85&pv=1.2&t=3&rnd=13

url =http://180.166.7.150:8080/wificard?method=getCardForOrder&partner=YWTY&sign_type=MD5&timestamp=20121017111529&orderID=YWTY20121017111529101&phoneNumber=13601945126&cardType=3&amountID=11&money=13.0&sign=d0ccf2ae3922c989b6c9c26e75a6cdd2
2012-10-17 11:15:29,703: INFO GatewayService:getWS():123 -  resp =GetCardForOrderResponse [balance=-0.16667, cardNumber=W90001184006, description=Success, isNewID=0, oldBalance=0, orderID=YWTY20121017111529101, password=10015936, phoneNumber=13601945126, resultCode=0, standby=, validity=2012-10-17 11:15:08]



http://bbs.oa.com/forum/331/thread/view/208765


4	开通时长卡或充值
http://124.74.213.129:7001/services/GetCardForOrder?wsdl

5	时长卡信息短信发送
http://124.74.213.129:7001/services/SendCard?wsdl

6	短信发送验证码
http://124.74.213.129:7001/services/SendValidateCode?wsdl

#要开发功能变化：
* 账号先存储在redis;
	kV:phoneNumber, password
* 
*
	
http://localhost:8080/addOne?phoneNumber=13601945126&passwd=22www&isCover=true


cardNumber=W13601945126, password=65334264
cardNumber=W13501838884, password=62874958

http://localhost:8080/addOne?phoneNumber=123&passwd=-1&isCover=false

http://test.wlanplus.com:80/cngw/addOne?phoneNumber=13601945126&passwd=65334264&isCover=false
http://test.wlanplus.com:80/cngw/addOne?phoneNumber=13501838884&passwd=62874958&isCover=false

http://localhost:8080/getCN?mobileNum=123&checksum=22www&cid=26&pv=1.2&t=3&rnd=13

http://test.wlanplus.com/verify/pk?cid=26


http://192.168.1.103:8080/getCN?cid=26&pv=2.6&rnd=0.98786541223&t=1350896355733&mobileNum=13601945126&checksum=qkHsjmsOw6RG%2F331beAu%2BA27pUs%2FZtZpxyT%2FWGdvf%2Blj0iXTpEglQc2ycUbVhB%2BEHm7T%2FZYqdbit%0D%0ASQZqHtRZFsrtK3SHacd7ounnTVRUu0R8ned1KfwQgs52Yr6fyssdRpdBk%2F5QlJIjNdogSFR10xRS%0D%0AAvwXICutU7RqSgyHm00%3D%0D%0A



2012-10-22 17:57:28,312: WARN VerifyInterceptor:preHandle():31 - path=/getCN
2012-10-22 17:57:28,312: DEBUG GatewayController:getCN():72 - ChinaNetRequest [cid=26, pv=2.6, rnd=0.98786541223, t=1350896355733, mobileNum=13601945126]
2012-10-22 17:57:28,328: INFO GatewayService:getWifiCard():66 - http://180.166.7.150:8080/wificard?method=getCardForOrder&partner=YWTY&sign_type=MD5&timestamp=20121022175728&orderID=YWTY20121022175728102&phoneNumber=13601945126&cardType=1&amountID=10&money=0&sign=d92468cd6f725c25bb3c8048a5f5fd71
2012-10-22 17:57:28,593: INFO GatewayService:getWS():115 - resp =GetCardForOrderResponse [balance=-9, cardNumber=W13601945126, description=Success, isNewID=1, oldBalance=-8, orderID=YWTY20121022175728102, password=null, phoneNumber=13601945126, resultCode=0, standby=26, validity=2013-03-19 23:59:59]

2012-10-22 17:57:28,640: WARN VerivyService:getPublicKeyFromCS():48 - cid:26, req=http://test.wlanplus.com/verify/pk?cid=26, pk=MIGfMA0GCSqGSIb3DQEBAQUAA4GNADCBiQKBgQC+xlQ9Hjx9Js34YYZiyj9atDuB6l9+FOp4ORdQDqmeNdLyPvmlHs/kalRQWhEagifNir9Ktptjdwy9cMEpwqalOWDpsbyh9o8QwlT+iWCLOVpPqp6m7DzjHwiE5Ca9WXSBUO9Y3VBILXcGAlJvWZFjhjXytE8iJ+Qyuq0aucotdQIDAQAB
2012-10-22 17:57:28,640: DEBUG GatewayController:getCN():112 - result={"code":104}
2012-10-22 17:57:28,640: DEBUG GatewayController:getCN():116 - result=P3tpB5Rn8owCGyQwRfUtqhdocDKv0Xe2qWE5rsfGYjUzvarbKdrOr57WnJU6RTafV7mYvTlbWH282fYGjn6khqX5QxDpQqghpvy911mbTPjLTKx9R1olY4zIAIWNSTNt5lgFAJdqseojZt0ecJDepMe/1olBG+z9hwAmQ1uESCY=


t=1351765517031

http://192.168.1.105:8080/getCN?cid=26&pv=2.6&rnd=0.98786541223&t=1351765517031&mobileNum=13601945126&checksum=qkHsjmsOw6RG%2F331beAu%2BA27pUs%2FZtZpxyT%2FWGdvf%2Blj0iXTpEglQc2ycUbVhB%2BEHm7T%2FZYqdbit%0D%0ASQZqHtRZFsrtK3SHacd7ounnTVRUu0R8ned1KfwQgs52Yr6fyssdRpdBk%2F5QlJIjNdogSFR10xRS%0D%0AAvwXICutU7RqSgyHm00%3D%0D%0A


2012-10-22 18:38:36,125: DEBUG GatewayController:getCN():75 - ChinaNetRequest [cid=26, pv=2.6, rnd=0.98786541223, t=1350896355733, mobileNum=13601945126]
2012-10-22 18:38:36,125: DEBUG GatewayController:getCN():86 - phoneNumber=13601945126
2012-10-22 18:38:36,125: DEBUG GatewayService:getWifiCard():41 - chinnet.unitedcloud.chang.request.ChinaNetResp@573206
2012-10-22 18:38:36,140: INFO GatewayService:getWifiCard():68 - url=http://180.166.7.150:8080/wificard?method=getCardForOrder&partner=YWTY&sign_type=MD5&timestamp=20121022183836&orderID=YWTY20121022183836100&phoneNumber=13601945126&cardType=1&amountID=10&money=0&sign=f6cd52060ad6df57333559e85da2e45a
2012-10-22 18:38:37,875: INFO GatewayService:getWS():118 - resp =GetCardForOrderResponse [balance=-10, cardNumber=W13601945126, description=Success, isNewID=1, oldBalance=-9, orderID=YWTY20121022183836100, password=null, phoneNumber=13601945126, resultCode=0, standby=26, validity=2013-04-19 23:59:59]
2012-10-22 18:38:38,125: WARN VerivyService:getPublicKeyFromCS():48 - cid:26, req=http://test.wlanplus.com/verify/pk?cid=26, pk=MIGfMA0GCSqGSIb3DQEBAQUAA4GNADCBiQKBgQC+xlQ9Hjx9Js34YYZiyj9atDuB6l9+FOp4ORdQDqmeNdLyPvmlHs/kalRQWhEagifNir9Ktptjdwy9cMEpwqalOWDpsbyh9o8QwlT+iWCLOVpPqp6m7DzjHwiE5Ca9WXSBUO9Y3VBILXcGAlJvWZFjhjXytE8iJ+Qyuq0aucotdQIDAQAB
2012-10-22 18:38:38,125: DEBUG GatewayController:getCN():127 - result={"username":"W13601945126","expire":"2013-04-19 23:59:59"}
2012-10-22 18:38:38,234: DEBUG GatewayController:getCN():134 - result=BaiDRLmO1riMDWi2+yDLjvIRN/fqD+r/I3aVPPKNuXvm8S1P2HqDFmR92SNKDTuns4tGQ8arLZR8HbpYpKy+SivYKTHpFCPLCmPaEFlpeVbUsHB9lAegahqGXeWZC1hsu0ddnNA3ICnra+pCxxehoHcY9GK3bMQ0z0qxCYZXEzM=
2012-10-22 18:38:38,453: WARN VerifyInterceptor:preHandle():31 - path=/favicon.ico





2012-10-22 18:50:22,437: DEBUG GatewayController:getCN():75 - ChinaNetRequest [cid=26, pv=2.6, rnd=0.98786541223, t=1350896355733, mobileNum=13302199090]
2012-10-22 18:50:22,437: DEBUG GatewayService:getWifiCard():41 - chinnet.unitedcloud.chang.request.ChinaNetResp@4dce2e
2012-10-22 18:50:22,437: INFO GatewayService:getWifiCard():68 - url=http://180.166.7.150:8080/wificard?method=getCardForOrder&partner=YWTY&sign_type=MD5&timestamp=20121022185022&orderID=YWTY20121022185022102&phoneNumber=13302199090&cardType=1&amountID=10&money=0&sign=31a11dfa900829d59e6e230cd893757a
2012-10-22 18:50:22,953: INFO GatewayService:getWS():118 - resp =GetCardForOrderResponse [balance=-1, cardNumber=W13302199090, description=Success, isNewID=0, oldBalance=0, orderID=YWTY20121022185022102, password=22654191, phoneNumber=13302199090, resultCode=0, standby=26, validity=2012-11-21 23:59:59]
2012-10-22 18:50:23,000: WARN VerivyService:getPublicKeyFromCS():48 - cid:26, req=http://test.wlanplus.com/verify/pk?cid=26, pk=MIGfMA0GCSqGSIb3DQEBAQUAA4GNADCBiQKBgQC+xlQ9Hjx9Js34YYZiyj9atDuB6l9+FOp4ORdQDqmeNdLyPvmlHs/kalRQWhEagifNir9Ktptjdwy9cMEpwqalOWDpsbyh9o8QwlT+iWCLOVpPqp6m7DzjHwiE5Ca9WXSBUO9Y3VBILXcGAlJvWZFjhjXytE8iJ+Qyuq0aucotdQIDAQAB
2012-10-22 18:50:23,000: DEBUG GatewayController:getCN():130 - result={"username":"W13302199090","password":"22654191","expire":"2012-11-21 23:59:59"}
2012-10-22 18:50:23,000: DEBUG GatewayController:getCN():137 - result=UCZndPb7t0YuhYOjcy87ztig1hP0NP5QQPD97dNVeHPcHoyuJdD7qYqFaMtQd6S9P/Kp2uslB8KeH6w2MwFU9f465xJvbu4433++FHFXgvsTtEa/2h02OUmqoM8ZYTM4xHYEPySsOSAKTSHMOAiuSwtl9OENN5rqxmbieqSXXiI=
2012-10-22 18:50:23,265: INFO AbstractUrlHandlerMapping:registerHandler():314 - Mapped URL path [/**] onto handler 'org.springframework.web.servlet.resource.DefaultServletHttpRequestHandler#0'
2012-10-22 18:50:23,265: WARN VerifyInterceptor:preHandle():31 - path=/favicon.ico



修改后台的升级管理
<li><g:link controller="appErrorEntity" action="list">app下载失败</g:link></li>







#F0FFFF
#DCDCDC
#FFDAB9
#90EE90
#D8BFD8
#F0FFFF
#C0C0C0


 <g:set var="colorMap" value="[1:'#F0FFFF',2:'#DCDCDC',3:'#FFDAB9',4:'#90EE90',5:'#D8BFD8',6:'#F0FFFF',0:'#C0C0C0']"/>

[timeSpan:0__2, action:list, controller:feedback, max:2, sort:id, order:desc, offset:0]


客服：
	1. 反馈，按时间段把cid分组
	2. 黑名单内的反馈不再显示
	3. 赚豆与下载失败的同时显示，以dialog显示。




