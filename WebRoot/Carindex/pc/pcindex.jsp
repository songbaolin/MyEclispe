<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
	
<style>
	*{ 
		font-family:"微软雅黑",Arial;
		font-family:"Microsoft YaHei UI",Helvetica,arial,'Hiragino Sans GB',\5b8b\4f53,sans-serif,"微软雅黑";
  -webkit-font-smoothing: antialiased;
  -moz-osx-font-smoothing: grayscale;
	
	}
	.iw_poi_title {color:#CC5522;font-size:14px;font-weight:bold;overflow:hidden;padding-right:13px;white-space:nowrap}
    .iw_poi_content {font:12px arial,sans-serif;overflow:visible;padding-top:4px;white-space:-moz-pre-wrap;word-wrap:break-word}
	.carbrand{margin-bottom: 20px;margin-top: 20px;align-content: center;}
	.carbrand ul{width：100%; position: relative;}
	.carbrand ul li{width: 100px;height: 100px;float: right; margin: 10px;border: thick 3px }
</style>
	
<meta http-equiv="Content-Type" content="text/html; charset=GBK">
<meta charset="gb2312">
<!--<meta content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0" name="viewport">
<meta content="yes" name="apple-mobile-web-app-capable">
<meta content="black" name="apple-mobile-web-app-status-bar-style">-->
<meta content="telephone=no" name="format-detection">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="target-densitydpi=device-dpi, width=640px, user-scalable=no">
<link type="image/x-icon" rel="shortcut icon" href="${pageContext.request.contextPath}/Carindex/pc/image/zmlogoicon.png">
<link href="${pageContext.request.contextPath}/Carindex/pc/css/formstyle.css" rel="stylesheet">
<script src="${pageContext.request.contextPath}/Carindex/pc/js/jquery.js" type="text/javascript"></script>
<link rel="stylesheet" href="${pageContext.request.contextPath}/Carindex/pc/css/responsiveslides.css">
<script type="text/javascript" src="${pageContext.request.contextPath}/Carindex/pc/js/responsiveslides.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/Carindex/pc/js/Cartype.js"></script>
	
	<!--<script type="text/javascript" src="http://api.map.baidu.com/api?key=&v=1.1&services=true"></script>-->
	
<script type="text/javascript">
$(function () {
	// Slideshow 
	$("#slider").responsiveSlides({
		auto: true,
		pager: false,
		nav: true,
		speed: 500,
		timeout:4000,
		pager: true, 
		pauseControls: true,
		namespace: "callbacks"
	});
});
</script>
</head>

<title>安徽众民网络科技有限公司 </title>
	<script language="javascript">
    function killErrors() {return true; }
    window.onerror = killErrors;
	</script>
<meta name="keywords" content="众民汽车">
<meta name="description" content="众民汽车">
<link href="${pageContext.request.contextPath}/Carindex/pc/css/all.css" rel="stylesheet" type="text/css">
<link href="${pageContext.request.contextPath}/Carindex/pc/css/common.css" rel="stylesheet" type="text/css">
<link href="${pageContext.request.contextPath}/Carindex/pc/css/cssreset.css" rel="stylesheet" type="text/css">
	
	<link rel="stylesheet" href="${pageContext.request.contextPath}/Carindex/pc/css/index.css" />
	
<script src="${pageContext.request.contextPath}/Carindex/pc/js/jquery.js"></script>
<script src="${pageContext.request.contextPath}/Carindex/pc/js/jquery.SuperSlide.2.1.js"></script>
<!--<script src="js/pub.js"></script>-->
<body>
	<!---识别手机或电脑的js开始--->  
<script language="javascript">   
(function(){  
    var res = GetRequest();  
    var par = res['index'];  
    if(par!='gfan'){  
        var ua=navigator.userAgent.toLowerCase();  
        var contains=function (a, b){  
            if(a.indexOf(b)!=-1){return true;}  
        };  
        var toMobileVertion = function(){  
            window.location.href = '${pageContext.request.contextPath}/Carindex/mobile/mobileindex.jsp' ; 
        }  
  
        if(contains(ua,"ipad")||(contains(ua,"rv:1.2.3.4"))||(contains(ua,"0.0.0.0"))||(contains(ua,"8.0.552.237"))){return false}  
        if((contains(ua,"android") && contains(ua,"mobile"))||(contains(ua,"android") && contains(ua,"mozilla")) ||(contains(ua,"android") && contains(ua,"opera"))  
    ||contains(ua,"ucweb7")||contains(ua,"iphone")){toMobileVertion();}  
    }  
})();  
function GetRequest() {  
   var url = location.search; //获取url中"?"符后的字串  
   var theRequest = new Object();  
   if (url.indexOf("?") != -1) {  
      var str = url.substr(1);  
      strs = str.split("&");  
      for(var i = 0; i < strs.length; i ++) {  
         theRequest[strs[i].split("=")[0]]=unescape(strs[i].split("=")[1]);  
      }  
   }  
   return theRequest;  
}  
</script>  
<!---识别手机或电脑的js结束--->  
<!-- Slideshow -->
<div class="callbacks_container">
	<ul class="rslides" id="slider">
		<li><a href="#bm"><img src="${pageContext.request.contextPath}/Carindex/pc/image/pctop.jpg" alt=""></a></li>

	</ul>
</div>
	<div class="container">
	<section id="baoming" class="pt_100 col_01">
		<div class="col_01_t">
			<p class="fs_36 tc mb10">官方免费报名窗口 ${message}${name}</p>
			<span class="fs_18">报名免费领票,现场购票20元/张！</span>
		</div>
		<div class="col_01_m fix">
			
			<div class="col_01_m_l fl">
				<a href="javascript:;"><img src="${pageContext.request.contextPath}/Carindex/pc/image/liyu.jpg" alt="1月13日 吉利中国年感恩团购会   厂家钜惠  一惠到底  全系让利！"></a>
			</div>
			
			<div class="col_01_m_r fr">
				<div class="daojishi fix">
                    <span class="fl mr20 db">开幕还有</span>
                    <div class="djh_r fl">
                        <div class="djh_r_m">
                            <div class="djh_r_m_t fix">
                               <div class="number fl">
                                   <span id="day_first" class="first">3</span>
                                   <span id="day_second">1</span>
                               </div>
                                <div class="number fl">
                                    <span id="hour_first" class="first">0</span>
                                    <span id="hour_second">2</span>
                                </div>
                                <div class="number fl">
                                    <span id="minute_first" class="first">1</span>
                                    <span id="minute_second">1</span>
                                </div>
                                <div class="number fl">
                                    <span id="second_first" class="first">4</span>
                                    <span id="second_second">7</span>
                                </div>
                            </div>
                            <div class="djh_r_m_b">
                                <span>天</span>
                                <span>时</span>
                                <span>分</span>
                                <span>秒</span>
                            </div>
                        </div>
                    </div>
                </div>
				<div class="aa fs_18">
					<marquee direction="left">
						2018年4月5日-7日   众民汽车新春购车展 诚邀您免费参加！					
					</marquee>
				</div>
				<script type="text/javascript">
					$(function(){
						setInterval('autoScroll(".maquee")',5000);
					})
					window.setInterval(function(){ // 每秒从服务器取一次数据
						var end_time = '2515823200';
						end_time = parseInt(end_time);
						var now_time = parseInt(Date.parse(new Date()))/1000;
						var remain_time = 0;
						var remain_day = 0;
						var remain_hour = 0;
						var remain_minute = 0;
						var remain_second = 0;
						if(end_time > now_time){
							remain_time=end_time-now_time;
							remain_day = Math.floor(remain_time/(60*60*24));
							remain_hour = Math.floor((remain_time-remain_day*60*60*24)/(60*60));
							remain_minute = Math.floor(((remain_time - remain_day*60*60*24 - remain_hour*60*60)/60));
							remain_second = remain_time - remain_day*60*60*24 - remain_hour*60*60 - remain_minute*60;
							day_str = remain_day.toString();
							hour_str = remain_hour.toString();
							minute_str = remain_minute.toString();
							second_str = remain_second.toString();
							if(day_str.length == 1){
								$("#day_first").html("0");
								$("#day_second").html(day_str);
							}else if(day_str.length == 2){
								$("#day_first").html(day_str.substr(0,1));
								$("#day_second").html(day_str.substr(-1,1));
							}
							if(hour_str.length == 1){
								$("#hour_first").html("0");
								$("#hour_second").html(hour_str);
							}else if(hour_str.length == 2){
								$("#hour_first").html(hour_str.substr(0,1));
								$("#hour_second").html(hour_str.substr(-1,1));
							}
							if(minute_str.length == 1){
								$("#minute_first").html("0");
								$("#minute_second").html(minute_str);
							}else if(minute_str.length == 2){
								$("#minute_first").html(minute_str.substr(0,1));
								$("#minute_second").html(minute_str.substr(-1,1));
							}
							if(second_str.length == 1){
								$("#second_first").html("0");
								$("#second_second").html(second_str);
							}else if(second_str.length == 2){
								$("#second_first").html(second_str.substr(0,1));
								$("#second_second").html(second_str.substr(-1,1));
							}
						}
					},1000);
				</script>
                <div class="col_01_m_r_b">
                    <div class="ben fix mb30">
                        <div class="ben_l fs_24 c_00 fl ">
                            本期已报名 <span>685</span>人
                        </div>
                        <div class="ben_r fr">
                            <p class="fs_14 c_ff">
                                全国统一服务热线
                                <span class="c_ff fs_20 db">15867017627</span>
                            </p>
                        </div>
                    </div>
					
					<!--biao-->
 <div class="bmbox" id="bm">
    <div id="autoOrder">
      <div id="autoOrderC">
      
      
      <%  
           long token=System.currentTimeMillis();    //产生时间戳的token  防止表单重复提交
            session.setAttribute("token",token);      
    %>  
      
      
      
      
        <form action="${pageContext.request.contextPath}/user/usersubmit.action" method="post" name="form" id="form" onsubmit="return ZtBMUser();">
          <input type="hidden" value=2 name="city" />    <!-- 车展所在的城市 -->
          <input type="hidden" value="<%=token %>" name="Reqtoken"/>   <!-- 作为hidden提交 -->  
          
          
          <div class="selects" id="brand">
            <select name="carBrand" id="carBrand" class="selbrands" >
              <option value="" selected="selected">请选择品牌</option>
              <option value="A  阿尔法·罗密欧">A  阿尔法·罗密欧</option>
              <option value="A 奥迪">A 奥迪</option>
              <option value="B 宝骏">B 宝骏</option>
              <option value="B 宝马">B 宝马</option>
              <option value="B 宝沃">B 宝沃</option>
              <option value="B 北京伽途">B 北京伽途</option>
              <option value="B 北京汽车">B 北京汽车</option>
              <option value="B 北汽昌河">B 北汽昌河</option>
              <option value="B 北汽幻速">B 北汽幻速</option>
              <option value="B 北汽绅宝">B 北汽绅宝</option>
              <option value="B 北汽泰普">B 北汽泰普</option>
              <option value="B 北汽威旺">B 北汽威旺</option>
              <option value="B 北汽新能源">B 北汽新能源</option>
              <option value="B 北汽制造">B 北汽制造</option>
              <option value="B 奔驰">B 奔驰</option>
              <option value="B 奔腾">B 奔腾</option>
              <option value="B 本田进口">B 本田进口</option>
              <option value="B 比速">B 比速</option>
              <option value="B 比亚迪">B 比亚迪</option>
              <option value="B 比亚迪新能源">B 比亚迪新能源</option>
              <option value="B 标致">B 标致</option>
              <option value="B 别克">B 别克</option>
              <option value="B 东风本田">B 东风本田</option>
              <option value="B 广汽本田">B 广汽本田</option>
              <option value="C 昌河铃木">C 昌河铃木</option>
              <option value="C 长安福特">C 长安福特</option>
              <option value="C 长安轿车">C 长安轿车</option>
              <option value="C 长安铃木">C 长安铃木</option>
              <option value="C 长安商用">C 长安商用</option>
              <option value="C 长安新能源">C 长安新能源</option>
              <option value="C 长城">C 长城</option>
              <option value="C 长久">C 长久</option>
              <option value="D DS">D DS</option>
              <option value="D 东风风度">D 东风风度</option>
              <option value="D 东风风光">D 东风风光</option>
              <option value="D 东风风诺">D 东风风诺</option>
              <option value="D 东风风神">D 东风风神</option>
              <option value="D 东风风行">D 东风风行</option>
              <option value="D 东风小康">D 东风小康</option>
              <option value="D 东南">D 东南</option>
              <option value="D 上汽大通">D 上汽大通</option>
              <option value="D 上汽大众">D 上汽大众</option>
              <option value="D 一汽大众">D 一汽大众</option>
              <option value="F 菲亚特">F 菲亚特</option>
              <option value="F 丰田进口">F 丰田进口</option>
              <option value="F 福迪">F 福迪</option>
              <option value="F 福汽启腾">F 福汽启腾</option>
              <option value="F 福特">F 福特</option>
              <option value="F 福特进口">F 福特进口</option>
              <option value="F 福田">F 福田</option>
              <option value="F 广汽丰田">F 广汽丰田</option>
              <option value="F 一汽丰田">F 一汽丰田</option>
              <option value="G GMC">G GMC</option>
              <option value="G 观致">G 观致</option>
              <option value="G 广汽传祺">G 广汽传祺</option>
              <option value="G 广汽讴歌">G 广汽讴歌</option>
              <option value="H 哈弗">H 哈弗</option>
              <option value="H 海马">H 海马</option>
              <option value="H 汉腾">H 汉腾</option>
              <option value="H 红旗">H 红旗</option>
              <option value="H 华晨宝马">H 华晨宝马</option>
              <option value="H 华晨中华">H 华晨中华</option>
              <option value="H 华颂">H 华颂</option>
              <option value="H 华泰">H 华泰</option>
              <option value="H 华泰新能源">H 华泰新能源</option>
              <option value="H 黄海">H 黄海</option>
              <option value="H 汇众">H 汇众</option>
              <option value="J JEEP">J JEEP</option>
              <option value="J 吉利">J 吉利</option>
              <option value="J 吉利新能源">J 吉利新能源</option>
              <option value="J 江淮">J 江淮</option>
              <option value="J 江铃">J 江铃</option>
              <option value="J 江铃福特">J 江铃福特</option>
              <option value="J 捷豹">J 捷豹</option>
              <option value="J 金杯">J 金杯</option>
              <option value="J 金龙联合">J 金龙联合</option>
              <option value="J 金旅客车">J 金旅客车</option>
              <option value="J 进口大众">J 进口大众</option>
              <option value="J 君马">J 君马</option>
              <option value="K 开瑞">K 开瑞</option>
              <option value="K 凯迪拉克">K 凯迪拉克</option>
              <option value="K 凯翼">K 凯翼</option>
              <option value="K 克莱斯勒">K 克莱斯勒</option>
              <option value="L 雷丁电动汽车">L 雷丁电动汽车</option>
              <option value="L 雷克萨斯">L 雷克萨斯</option>
              <option value="L 雷诺">L 雷诺</option>
              <option value="L 力帆">L 力帆</option>
              <option value="L 猎豹">L 猎豹</option>
              <option value="L 林肯">L 林肯</option>
              <option value="L 铃木(进口)">L 铃木(进口)</option>
              <option value="L 陆风">L 陆风</option>
              <option value="L 路虎">L 路虎</option>
              <option value="M MINI">M MINI</option>
              <option value="M 长安马自达">M 长安马自达</option>
              <option value="M 马自达(进口)">M 马自达(进口)</option>
              <option value="M 玛莎拉蒂">M 玛莎拉蒂</option>
              <option value="M 名爵">M 名爵</option>
              <option value="M 一汽马自达">M 一汽马自达</option>
              <option value="N 纳智捷">N 纳智捷</option>
              <option value="Q 奇瑞">Q 奇瑞</option>
              <option value="Q 奇瑞新能源">Q 奇瑞新能源</option>
              <option value="Q 启辰">Q 启辰</option>
              <option value="Q 起亚">Q 起亚</option>
              <option value="Q 起亚进口">Q 起亚进口</option>
              <option value="R 东风日产">R 东风日产</option>
              <option value="R 荣威">R 荣威</option>
              <option value="R 郑州日产">R 郑州日产</option>
              <option value="S Smart">S Smart</option>
              <option value="S SWM斯威汽车">S SWM斯威汽车</option>
              <option value="S 三菱">S 三菱</option>
              <option value="S 双龙">S 双龙</option>
              <option value="S 斯巴鲁">S 斯巴鲁</option>
              <option value="S 斯柯达">S 斯柯达</option>
              <option value="T 腾势">T 腾势</option>
              <option value="T 天津一汽">T 天津一汽</option>
              <option value="W WEY">W WEY</option>
              <option value="W 潍柴英致">W 潍柴英致</option>
              <option value="W 沃尔沃">W 沃尔沃</option>
              <option value="W 五菱">W 五菱</option>
              <option value="W 五十铃">W 五十铃</option>
              <option value="X 现代">X 现代</option>
              <option value="X 雪佛兰">X 雪佛兰</option>
              <option value="X 雪铁龙">X 雪铁龙</option>
              <option value="Y 野马汽车">Y 野马汽车</option>
              <option value="Y 一汽">Y 一汽</option>
              <option value="Y 一汽红旗">Y 一汽红旗</option>
              <option value="Y 依维柯">Y 依维柯</option>
              <option value="Y 英菲尼迪">Y 英菲尼迪</option>
              <option value="Z 知豆">Z 知豆</option>
              <option value="Z 中华">Z 中华</option>
              <option value="Z 中兴">Z 中兴</option>
              <option value="Z 众泰">Z 众泰</option>
              <option value="Z 众泰新能源">Z 众泰新能源</option>
              <option value="Z 自定品牌">Z 自定品牌</option>
            </select>
          </div>
          <div class="selects" id="series">
            <select name="carType" id="carType" class="selcars" style="border-radius: 5px;">
              <option value="" selected="selected">请选择车系</option>
            </select>
          </div>
<input name="UnionID" id="UnionID" value="27" type="hidden">
          <div class="input-txt mt-10">
            <input id="realname" name="name" placeholder="请输入您的姓名" type="search" style="border: none;">
          </div>
          <div class="input-txt">
            <input name="mobile" id="mp" placeholder="请输入您的手机号码" type="search" style="border: none;">
          </div>
          <div class="selects" id="series">
            <select name="sex" id="buy" class="selcars" style="border-radius: 5px;">
              <option value="" selected="selected">是否全款购车</option>
              <option value="全款购车">全款购车</option>
              <option value="贷款购车">贷款购车</option>
             
            </select>
          </div>
          <div class="input-txt mt-10">
            <script language="javascript" defer>new PCAS("carBrand","carType"); </script>
            <input placeholder="您的意向车型或其他需求" name="buyInterest" id="remark" type="search" style="border: none;">
          </div>
          <div class="input-txt">
            <input name="keywords2" id="keywords" type="hidden">
          </div>
          <div class="input-txt">
            <input class="tijiao smt" value="免费领票/领奖" type="submit">
</div>
        </form>
      </div>
    </div>
  </div>
                </div>
           </div>
			<img src="${pageContext.request.contextPath}/Carindex/pc/image/lipin.jpg" alt="车展礼品" style="margin-top: 30px;margin-bottom: 10px;">
		</div>
	</section>
</div>

<!--流程-->
<div class="col_04 pt_100">
    <div class="container">
        <div class="col_02_t">
            <p class="fs_36 c_ff tc pb15 mb10">车展现场活动</p>
            <span class="db fs_18 c_ff tc">现场订车购车抽奖活动 100%中奖</span>
        </div>
        <div class="col_04_01 fix">
			<div>
				<div class="col_04_02 fs_22 c_2d fl">
					<div class="col_04_02_m tc auto" style="color:#FFFFFF">
						免费报名
						&mdash;&mdash; <br>
						活动流程
					</div>
				</div>
				<div class="col_04_03 fl mb30">
					<ul class="fix">
						<li class="pt20">
								<div class="col_04_04 auto">
									<img src="${pageContext.request.contextPath}/Carindex/pc/image/baoming.png" alt="网上报名">
									<h3 class="fs_18 c_2d tc mb20">网上报名</h3>
									<p class="c_2d lh20 tc">
										请认真填写您的报名信息，方便我们和您取得联系									</p>
								</div>
							</li><li class="pt20">
								<div class="col_04_04 auto">
									<img src="${pageContext.request.contextPath}/Carindex/pc/image/shijian.png" alt="等待核实">
									<h3 class="fs_18 c_2d tc mb20">等待核实</h3>
									<p class="c_2d lh20 tc">
										我们的工作人员会在48小时内致电您，了解您的购车情况									</p>
								</div>
							</li><li class="pt20">
								<div class="col_04_04 auto" >
									<img src="${pageContext.request.contextPath}/Carindex/pc/image/yuyue.png" alt="预约到场">
									<h3 class="fs_18 c_2d tc mb20">预约到场</h3>
									<p class="c_2d lh20 tc">
										活动前一天客户通过电话或短信通知您具体时间及行车路线									</p>
								</div>
							</li><li class="pt20">
								<div class="col_04_04 auto">
									<img src="${pageContext.request.contextPath}/Carindex/pc/image/qiandao.png" alt="准时签到">
									<h3 class="fs_18 c_2d tc mb20">领奖签到</h3>
									<p class="c_2d lh20 tc">
										活动当天准时签到，均可免费领取，厂家精美礼品一份，人人有礼									</p>
								</div>
							</li><li class="pt20">
								<div class="col_04_04 auto">
									<img src="${pageContext.request.contextPath}/Carindex/pc/image/jiancha.png" alt="参与车展">
									<h3 class="fs_18 c_2d tc mb20">参与车展</h3>
									<p class="c_2d lh20 tc">
										参展活动现场觉得价格满意，即可订购爱车，不订车也可参与互动赢奖品									</p>
								</div>
							</li>					</ul>
				</div>
				<div style="clear:both;"></div>
			</div>
						<div class="fix"></div>
                        </div></div></div>
<!--品牌-->
<div class="container">
    <div class="col_05 pt_100">
        <div class="col_01_t">
            <p class="fs_36 tc mb10">参展品牌</p>
            <span class="fs_18">优选主流品牌合作 正规售车正规售后</span>
        </div>
			<div class="js-silder">
       		<div class="silder-scroll">
				<div class="silder-main">
					<div class="silder-main-img">
						<img src="${pageContext.request.contextPath}/Carindex/pc/image/brand1.jpg" alt="">
					</div>
					<div class="silder-main-img">
						<img src="${pageContext.request.contextPath}/Carindex/pc/image/brand2.jpg" alt="">
					</div>
					<div class="silder-main-img">
						<img src="${pageContext.request.contextPath}/Carindex/pc/image/brand3.jpg" alt="">
					</div>
				</div>
        	</div>
    	</div>
		<div class="col_05_02 tc">
				<img src="${pageContext.request.contextPath}/Carindex/pc/image/chooseus.png" alt="why choose us">
			</div> 
    </div>
</div>
	
<!--地址-->
<div class="col_04 pt_100 col_07">
    <div class="container">
        <div class="col_02_t">
            <p class="fs_36 c_ff tc pb15 mb10">活动交通指南</p> 
            <span class="db fs_18 c_ff tc">公交、地铁、自驾详细路线</span>
        </div>
        <div class="col_06 fix">
            <div class="col_06_l fl">
                <ul>
					<li class="fix mb15">
							<img src="${pageContext.request.contextPath}/Carindex/pc/image/mapicon.png">
							<div class="col_06_l_r fl">
								<h3 class="fs_18 c_65 mb15">乘坐公交到达车展现场</h3>
								<p class="fs_14 c_65">
									途径线路有：临泉1路/k1路;临泉2路;临泉6路;临泉7路;临泉8路;临泉k5路内环;临泉k5路外环，导航搜索<strong>临泉义乌国际商贸城</strong>，请您提前查好路线。								</p>
							</div>
					</li>   
										<li class="fix mb15">
							<img src="${pageContext.request.contextPath}/Carindex/pc/image/mapicon.png"><p>
							<div class="col_06_l_r fl">
								<h3 class="fs_18 c_65 mb15">驾车到达车展现场</h3>
								<p class="fs_14 c_65">
									自驾：导航搜索<strong>临泉义乌国际商贸城</strong>，请您提前查好路线。								</p>
							</div>
					</li>  
				</ul>
            </div>
           <div class="col_06_r fr tc">
               <a href="${pageContext.request.contextPath}/Carindex/yiwu.html"><img style="width:600px;height:412px;" src="${pageContext.request.contextPath}/Carindex/pc/image/yiditu.jpg" alt="点击查看详细地图" ></a>
               <a><strong>点击查看详细地图</strong></a>
			   <!--<div style="width:550px;height:386px;border:#ccc solid 1px;" id="dituContent"></div>-->
           </div>
        </div>
		    </div>
</div>

<!--优势-->
<div class="container">
    <div class="col_03 pt_100">
        <div class="col_01_t">
            <p class="fs_36 tc mb10">优势与保障</p>
            <span class="fs_18">全国30城市1000余场活动保障</span>
        </div>
					<div class="col_03_01 fix">
							<div class="col_03_02 col_03_wid">
					<div class="col_03_03 auto">
						<h3 class="fs_28 c_ff fw1 tc">品牌保障</h3>
						<p class="fs_18 c_ff lh_30 tc">
							全国1000余场车展案例，为广大准车主节省8000余万元						</p>
					</div>
				</div>
							<div class="col_03_04 col_03_wid">
					<div class="col_03_03 auto">
						<h3 class="fs_28 c_ff fw1 tc">优先提车</h3>
						<p class="fs_18 c_ff lh_30 tc">
							本期车展当天所订购车辆，均可享受厂家优先提车权。						</p>
					</div>
				</div>
							<div class="col_03_05 col_03_wid">
					<div class="col_03_03 auto">
						<h3 class="fs_28 c_ff fw1 tc">订金可退</h3>
						<p class="fs_18 c_ff lh_30 tc">
							本期车展当天订车所缴纳的意向金，不满意100%退款。						</p>
					</div>
				</div>
							<div class="col_03_06 col_03_wid">
					<div class="col_03_03 auto">
						<h3 class="fs_28 c_ff fw1 tc">车源保障</h3>
						<p class="fs_18 c_ff lh_30 tc">
							厂家直属车展，活动厂家车源报备，当天购车享厂家直供						</p>
					</div>
				</div>
							</div>
				<div class="col_03_02 fix">
					<div class="public col_03_wid">
						<div class="col_03_03 auto">
							<h3 class="fs_28 c_ff fw1 tc">价格保障</h3>
							<p class="fs_18 c_ff lh_30 tc">
								厂家领导亲临现场公布厂家政策，订车享厂家价格保障							</p>
						</div>
					</div>
							<div class="public col_03_wid">
					<div class="col_03_03 auto">
						<h3 class="fs_28 c_ff fw1 tc">厂家保障</h3>
						<p class="fs_18 c_ff lh_30 tc">
							厂家授权4S店，车展又任何问题可申请厂家投诉						</p>
					</div>
				</div>
							<div class="public col_03_wid">
					<div class="col_03_03 auto">
						<h3 class="fs_28 c_ff fw1 tc">覆盖全国</h3>
						<p class="fs_18 c_ff lh_30 tc">
							全国30座城市车展，覆盖50余品牌，千元款热销车型						</p>
					</div>
				</div>
							<div class="public col_03_wid">
					<div class="col_03_03 auto">
						<h3 class="fs_28 c_ff fw1 tc">全国联保</h3>
						<p class="fs_18 c_ff lh_30 tc">
							现场购车，在全国任何一品牌正规4S店均可进行维修保养						</p>
					</div>
				</div>
							<div class="public col_03_wid">
					<div class="col_03_03 auto">
						<h3 class="fs_28 c_ff fw1 tc">售后维权</h3>
						<p class="fs_18 c_ff lh_30 tc">
							订车后出现汽车质量问题，我们协助您向4S店协商解决						</p>
					</div>
				</div>
			        </div>
		    </div>
</div>
<!--车展介绍
<div class="col_02 pt_100" style="margin-top: 20px;">
    <div class="container">
        <div class="col_02_t">
            <p class="fs_36 c_ff tc pb15 mb10">车展介绍</p>
            <span class="db fs_18 c_ff tc"></span>
        </div>
        <div class="col_02_m fix mb20">
            <div class="col_02_l fl">
                <a href="javascript:;" class="db mb20"> <img src="${pageContext.request.contextPath}/Carindex/pc/image/zhonguorenbao.jpg" alt=""></a>
                <p class="fs_20 pt30 pl30">活动介绍</p>
            </div>
            <div class="col_02_r fr fix">
                <img src="${pageContext.request.contextPath}/Carindex/pc/image/huodongyilan.jpg" alt="">
            </div>
        </div>
        <div class="col_02_b mb30">
            <p class="fs_14">
                2018年2月10日-15日，中国人保众民汽车新春购车展 钜惠来袭。本期车展是厂家直属活动，厂家领导亲临现场公布厂家政策，承诺买贵补差价！！！
厂家直销，底价钜惠！1月13日，买车最佳时机就在眼前！全系车型，总有一款适合你！
               购车即可享受多重大礼，优惠多多，一年仅此一次，我们期待您的到来。            </p>
        </div>
        <a href="javascript:;" class="db fs_14 tc auto">中国人保众民汽车新春购车展 钜惠来袭</a>
    </div>
</div>

			<script type="text/javascript">
                jQuery(".song_y").slide({mainCell:"ul",autoPage:true,effect:"left",autoPlay:true,vis:4,trigger:"click"});
			</script>
        </div>
    </div>
</div>-->

	
	


    <div class="col_08 pt_100">
        <div class="col_01_t">
          <p class="fs_36 tc mb10">历届车展回顾<br>
          </p>
          <span class="fs_18">历届车展现场精彩瞬间</span>
        </div>
        <div class="col_08_01 fix">
            <div class="col_08_01_m auto">
                <img src="${pageContext.request.contextPath}/Carindex/pc/image/kehuanli.jpg">
            </div>
        </div>
    </div>

<footer>
    <div class="container">
        <div class="ft_t fix">
			<div class="ft_t_l fix fl">
					<img src="${pageContext.request.contextPath}/Carindex/pc/image/wechatpic.jpg" alt="“众民汽车”公众平台&lt;br/&gt;扫一扫二维码了解；&lt;br/&gt;最新车展活动">
					<p class="fs_18 c_00 lh30 fr">
						“众民汽车”公众平台<br>扫一扫二维码了解；<br>最新车展活动					</p>
				</div>            <div class="ft_t_r fr">
                <div class="ft_t_r_m fix">
                    <div class="col_11 fl">
                        <h3 class="fs_18 c_00 mb5">官方热线</h3>
                        <div class="col_11_b">
							<span class="fs_14">客服①线：15867017627</span><!-- <span class="fs_14">客服②线：15867017627</span>    -->                     </div>
                    </div>
                    <div class="col_11 fl">
                        <h3 class="fs_18 c_00 mb5">销售热线</h3>
                        <div class="col_11_b">
                            <span class="fs_14">客服②线：15867017627</span><!-- <span class="fs_14">客服④线：15867017627</span> -->                        </div>
                    </div>
                    <div class="col_11 fr">
                        <h3 class="fs_18 c_00 mb5">招商合作</h3>
                        <div class="col_11_b">
                            <span class="fs_14">15867017627（刘站长）</span>                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="ft_b fs_14 c_00 tc" style="color: #333;">
            <span class="mr10">公司名称：安徽众民网络科技有限公司 </span>
            <span class="mr10">联系电话：15867017627</span>
            公司地址：阜阳市颍州区
清河西路怡和城市广场A座606室</div>
		<div class="ft_b fs_14 c_00 tc" style="color: #333;">
            <span class="mr10">众民汽车 版权所有 | 京ICP备15029289号 </span>
             </div>
    </div>
</footer>
	
	<script src="${pageContext.request.contextPath}/Carindex/pc/js/jquery-1.11.3.min.js" type="text/javascript"></script>
    <script src="${pageContext.request.contextPath}/Carindex/pc/js/wySilder.min.js" type="text/javascript"></script>

    <script>
    	$(function (){
    		$(".js-silder").silder({
                auto: true,//自动播放，传入任何可以转化为true的值都会自动轮播
                speed: 20,//轮播图运动速度
                sideCtrl: true,//是否需要侧边控制按钮
                bottomCtrl: true,//是否需要底部控制按钮
                defaultView: 0,//默认显示的索引
                interval: 3000,//自动轮播的时间，以毫秒为单位，默认3000毫秒
                activeClass: "active",//小的控制按钮激活的样式，不包括作用两边，默认active
            });
    	});
    </script>
	
	<!--baidu map-->
<script type="text/javascript">
    //创建和初始化地图函数：
    function initMap(){
        createMap();//创建地图
        setMapEvent();//设置地图事件
        addMapControl();//向地图添加控件
        addMarker();//向地图中添加marker
    }
    
    //创建地图函数：
    function createMap(){
        var map = new BMap.Map("dituContent");//在百度地图容器中创建一个地图
        var point = new BMap.Point(115.806621,32.898358);//定义一个中心点坐标
        map.centerAndZoom(point,17);//设定地图的中心点和坐标并将地图显示在地图容器中
        window.map = map;//将map变量存储在全局
    }
    
    //地图事件设置函数：
    function setMapEvent(){
        map.enableDragging();//启用地图拖拽事件，默认启用(可不写)
        map.enableScrollWheelZoom();//启用地图滚轮放大缩小
        map.enableDoubleClickZoom();//启用鼠标双击放大，默认启用(可不写)
        map.enableKeyboard();//启用键盘上下左右键移动地图
    }
    
    //地图控件添加函数：
    function addMapControl(){
        //向地图中添加缩放控件
	var ctrl_nav = new BMap.NavigationControl({anchor:BMAP_ANCHOR_TOP_LEFT,type:BMAP_NAVIGATION_CONTROL_LARGE});
	map.addControl(ctrl_nav);
        //向地图中添加缩略图控件
	var ctrl_ove = new BMap.OverviewMapControl({anchor:BMAP_ANCHOR_BOTTOM_RIGHT,isOpen:1});
	map.addControl(ctrl_ove);
        //向地图中添加比例尺控件
	var ctrl_sca = new BMap.ScaleControl({anchor:BMAP_ANCHOR_BOTTOM_LEFT});
	map.addControl(ctrl_sca);
    }
    
    //标注点数组
    var markerArr = [{title:"众民汽车",content:"众民汽车",point:"115.806226|32.89807",isOpen:0,icon:{w:21,h:21,l:0,t:0,x:6,lb:5}}
		 ];
    //创建marker
    function addMarker(){
        for(var i=0;i<markerArr.length;i++){
            var json = markerArr[i];
            var p0 = json.point.split("|")[0];
            var p1 = json.point.split("|")[1];
            var point = new BMap.Point(p0,p1);
			var iconImg = createIcon(json.icon);
            var marker = new BMap.Marker(point,{icon:iconImg});
			var iw = createInfoWindow(i);
			var label = new BMap.Label(json.title,{"offset":new BMap.Size(json.icon.lb-json.icon.x+10,-20)});
			marker.setLabel(label);
            map.addOverlay(marker);
            label.setStyle({
                        borderColor:"#808080",
                        color:"#333",
                        cursor:"pointer"
            });
			
			(function(){
				var index = i;
				var _iw = createInfoWindow(i);
				var _marker = marker;
				_marker.addEventListener("click",function(){
				    this.openInfoWindow(_iw);
			    });
			    _iw.addEventListener("open",function(){
				    _marker.getLabel().hide();
			    })
			    _iw.addEventListener("close",function(){
				    _marker.getLabel().show();
			    })
				label.addEventListener("click",function(){
				    _marker.openInfoWindow(_iw);
			    })
				if(!!json.isOpen){
					label.hide();
					_marker.openInfoWindow(_iw);
				}
			})()
        }
    }
    //创建InfoWindow
    function createInfoWindow(i){
        var json = markerArr[i];
        var iw = new BMap.InfoWindow("<b class='iw_poi_title' title='" + json.title + "'>" + json.title + "</b><div class='iw_poi_content'>"+json.content+"</div>");
        return iw;
    }
    //创建一个Icon
    function createIcon(json){
        var icon = new BMap.Icon("http://app.baidu.com/map/images/us_mk_icon.png", new BMap.Size(json.w,json.h),{imageOffset: new BMap.Size(-json.l,-json.t),infoWindowOffset:new BMap.Size(json.lb+5,1),offset:new BMap.Size(json.x,json.h)})
        return icon;
    }
    
    initMap();//创建和初始化地图
</script>
<!--baidu map-->
	
//<script>
//	function get_cars(){
//		$.ajax({
//			type:'post',
//			url:'/index.php?m=Home&c=Index&a=get_cars',
//			data:{id:$("#brand").val()},
//			dataType:'html',
//			success:function(data){
//				$("#cars").html(data);
//			}
//		});
//	}
//</script>
</body>
</html>
