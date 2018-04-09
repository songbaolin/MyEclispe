<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
<meta http-equiv="content-type" content="text/html; charset=UTF-8">
    <meta charset="utf-8">
    <meta content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0" name="viewport">
    <meta content="yes" name="apple-mobile-web-app-capable">
    <meta content="black" name="apple-mobile-web-app-status-bar-style">
    <meta content="telephone=no" name="format-detection">
		<title>安徽众民网络科技有限公司 </title>

	<link rel="icon" href="${pageContext.request.contextPath}/Carindex/mobile/image/zmlogoicon.ico" type="image/x-icon">
    <link href="${pageContext.request.contextPath}/Carindex/mobile/css/reset.css" rel="stylesheet">
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/Carindex/mobile/css/swiper.css">
  

	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/Carindex/mobile/css/mformstyle.css">
    <link href="${pageContext.request.contextPath}/Carindex/mobile/css/style.css" rel="stylesheet">
	<link rel="stylesheet" href="${pageContext.request.contextPath}/Carindex/mobile/css/responsiveslides.css">
	<script type="text/javascript" src="${pageContext.request.contextPath}/Carindex/mobile/js/jquery-1.11.3.min.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath}/Carindex/mobile/js/responsiveslides.min.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath}/Carindex/mobile/js/Cartype.js"></script>
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
  <title>2018众民汽车车展</title>
    <meta name="keywords" content="2018众民汽车车展">
    <meta name="description" content="2018众民汽车车展">
	<script src="${pageContext.request.contextPath}/Carindex/mobile/js/setHtmlFontSize.js" type="text/javascript" charset="utf-8"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath}/Carindex/mobile/js/MessageRoll.js"></script>
<style type="text/css">
/**{margin:0;padding:0;list-style-type:none;}*/
/*a,img{border:0;}*/
/* message */
.message{font-size:12px;background-color:#d2231e;width:100%;margin:20px auto 0 auto; color：white;text-align: center;}
.message li{height:32px;line-height:30px;padding-left:5px;border-bottom:1px dotted #A9A9A9;}
</style>
<body style="background: #D2231G;">
    <div class="callbacks_container">
	<!--<ul class="rslides" id="slider">
		<li><img src="${pageContext.request.contextPath}/Carindex/mobile/image/3.jpg" alt=""></li>
		<li><img src="image/4.jpg" alt=""></li>-->
	</ul>
</div>
	<img src="${pageContext.request.contextPath}/Carindex/mobile/image/mobiletop.jpg" class="img-responsive" style="margin-top: 10px;">
 <a id="liuchengmargin"><img src="${pageContext.request.contextPath}/Carindex/mobile/image/liucheng.jpg" class="img-responsive" style="margin-top: 10px;"></a>
	
	<div id="demo02" class="message" style="color: white;">
	<ul>
		<li><a>王**  成功预定  本田CRV * 5分钟前</a></li>
		<li><a>江**  成功预定  大众朗逸 * 9分钟前</a></li>
		<li><a>齐**  成功预定  丰田雷凌 * 9分钟前</a></li>
		<li><a>张**  成功预定  吉利帝豪 * 3分钟前</a></li>
		<li><a>马**  成功预定  马自达CX4 * 2分钟前</a></li>
		<li><a>刘**  成功预定  别克英朗 * 6分钟前</a></li>
	</ul>
</div><!--message end-->


<script type="text/javascript">

   /*构造滚动对象方法*/
   var roll = new MessageRoll({
    container : document.getElementById("demo01"), // 滚动的容器
    height : 60 + 1 , // 滚动信息条的高度,算上底边框1px,如果没有底边框则不加1
    rollElements : "li" // 滚动元素的html标记名称
   });
   roll.start(2000); //开始滚动,每三秒滚动一次
   
   /*构造滚动对象方法*/
   var roll = new MessageRoll({
    container : document.getElementById("demo02"), // 滚动的容器
    height : 60 + 1 , // 滚动信息条的高度,算上底边框1px,如果没有底边框则不加1
    rollElements : "li" // 滚动元素的html标记名称
   });
   roll.start(2500); //开始滚动,每三秒滚动一次
  
</script>
	<%  
           long token=System.currentTimeMillis();    //产生时间戳的token  防止表单重复提交
            session.setAttribute("token",token);      
    %>  
	<!--gundong-->
	
    <section class="wrap" style="margin-top: 5px;">
        <div class="overtime">
        	<p  style="  text-align:center ;color:#FFF; font-size:26px ;margin-bottom: 5px;font-weight:bold"><span >${message}${name }</span></p>
            <span class="f-fl til">免费领票倒计时  </span>
            <div class="lxftime f-fl" endtime="2018/04/07 00:00:00" data-last="" lxfday="no" data-edntxt="已开展"><span><span>3</span><span>4</span></span><em>天</em><span><span>0</span><span>9</span></span><em>时</em><span><span>3</span><span>6</span></span><em>分</em><span><span>2</span><span>1</span></span><em>秒</em><em></em></div>
        </div>
        <div class="baoming">
            <p class="til" style="margin-bottom: 40px;text-align: center;"><img src="${pageContext.request.contextPath}/Carindex/mobile/image/mfqp.png"><span>现场购票20元/张</span></p>
			<div class="XX-10 form" style="margin-top: 10px;">
  <div class="bmbox" id="bm">
    <div id="autoOrder">
      <div id="autoOrderC">
        <!--<div class="bmbt"><strong>免费报名领票</strong> <span>官方指定平台</span></div>-->
        <!--<script type="text/javascript" src="${pageContext.request.contextPath}/Carindex/mobile/vcss/mall.css"></script>-->
        <form action=" ${pageContext.request.contextPath}/user/usersubmit.action" method="post" name="form" id="form" onsubmit="return ZtBMUser();">
            <input name="UnionID" id="UnionID" value="27" type="hidden">
         	<input type="hidden" value="<%=token%>" name="Reqtoken"/>
         	<input name="city"  value="2" type="hidden">         <!-- <!--  在哪个城市开展车展 --> 
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
 <div class="input-txt mt-10">
            <input id="realname" name="name" placeholder="请输入您的姓名" type="search" style="border: none;">
          </div>
          <div class="input-txt">
            <input name="mobile" id="mp" placeholder="请输入您的手机号码" type="search" style="border: none;">
          </div>
          <div class="selects" id="series">
            <select name="sex" id="sex" class="selcars" style="border-radius: 5px;" placeholder="是否全款购车">
 <!--             <option value="" selected="selected">是否全款购车</option>-->
              <option value="全款购车">全款购车</option>
              <option value="贷款购车">贷款购车</option>
             
            </select>
          </div>
          <div class="input-txt mt-10">
            <script language="javascript" defer>new PCAS("carBrand","carType"); </script>
           <!--  <input placeholder="您的订票地址" name="buyInterest" id="remark" type="search" style="border: none;"> -->
          </div>
          
          <div class="input-txt mt-10">
            <script language="javascript" defer>new PCAS("carBrand","carType"); </script>
            <input placeholder="您的订票地址" name="remark" id="remark" type="search" style="border: none;">
          </div>
          <div class="input-txt">
            <input name="keywords2" id="keywords" type="hidden">
          </div>
          <div class="input-txt">
            <input class="tijiao smt" value="免费报名领票" type="submit">
</div>
        </form>
      </div>
    </div>
  </div>
</div>
            <div class="notice">
                <p class="notice-til">领票须知：</p>
                <ul>
                    <li>1.请准确填写手机及地址信息，否则无法为安排派送；</li>
                    <li>2.禁止倒卖赠票,经发现组委会将有权收回将其作废；</li>
                    <li>3.免费门票数量有限，赠完即止！</li>
                </ul>
            </div>
        </div>
        <!--baoming end-->
        <div class="huodong">
            <!--<div class="main-til">asdasdasd</div>-->
			<h2 align="center" style="color: white;font-size: 30px; padding-bottom: 5px;font-weight: bold;">报名有好礼</h2>
            <div class="content">
                <img src="${pageContext.request.contextPath}/Carindex/mobile/image/liwu.png" class="img-responsive">
				<img src="${pageContext.request.contextPath}/Carindex/mobile/image/jiangpin.png" class="img-responsive">
				<img src="${pageContext.request.contextPath}/Carindex/mobile/image/baozhang.gif" class="img-responsive">
                <!--<button class="baoming-btn" href="#bm">立即报名</button>-->
            </div>
        </div>
        <div class="jieshao">
            <h2 align="center" style="color: white;font-size: 30px; padding-bottom: 5px;font-weight: bold;">活动详情</h2>
			<div style="border:#fff solid 0.5px;height: 0.5px;width: 100%;background-color: #fff;"></div>
            <div class="content">
                <p>&nbsp;&nbsp;&nbsp;&nbsp;2018年2月10日-15日，中国人保众民汽车新春购车展 钜惠来袭。本期特卖会是厂家直属活动，厂家领导亲临现场公布厂家政策，承诺买贵补差价！！！ 厂家直销，底价钜惠！1月13日，买车最佳时机就在眼前！全系车型，总有一款适合你！ 购车即可享受多重大礼，优惠多多，一年仅此一次，我们期待您的到来。
                </p>
                <p>
                    &nbsp;&nbsp;&nbsp; 本届车展凭票入场，官方票价20元/张。 
车展组委将面向全市发放6888张免费个人门票，1688份免费家庭套票。此次车展，车友朋友们不仅能享受到各参展商力度十足的促销政策，同时还能参与组
委会特别打造的惊喜抽奖活动。凡现场订车用户凭购车合同即可参与抽奖。100%抽取豪华新车装饰大礼包、家用电器等豪华大礼，有大量精美小礼品相送。
                    <br>&nbsp;&nbsp;&nbsp;  一站搞定买车难题，来西游车展就“购”了。车展期间，您可以看遍您想看车型，现场对心仪车型进行全方位的对比。询价、比价、砍价一步到位。赶紧报名领取免费门票参展吧！
                </p>
            </div>
        </div>
        <div class="pinpai">
            <!--<div class="main-til"></div>-->
			<h2 align="center" style="color: white;font-size: 30px; padding-bottom: 5px;font-weight: bold;">汽车品牌</h2>
            <p class="tip">（意向参展品牌，请以实际到场参展品牌为准）</p>
            <div class="swiper-container swiper-container-horizontal">
    <div class="swiper-wrapper" style="transform: translate3d(-1080px, 0px, 0px);  transition-duration: 0ms;"><div class="swiper-slide swiper-slide-duplicate swiper-slide-prev" data-swiper-slide-index="8" style=" width:1080px ;">                             
        <ul>
            <li>
                <a href="javascript:void(0);">
                    <img src="${pageContext.request.contextPath}/Carindex/mobile/image/a_003.jpg">进口斯柯达</a>
            </li>
            <li>
                <a href="javascript:void(0);">
                    <img src="${pageContext.request.contextPath}/Carindex/mobile/image/a.png">进口三菱</a>
            </li>
            <li>
                <a href="javascript:void(0);">
                    <img src="${pageContext.request.contextPath}/Carindex/mobile/image/a_008.jpg">进口沃尔沃</a>
            </li>
            <li>
                <a href="javascript:void(0);">
                    <img src="${pageContext.request.contextPath}/Carindex/mobile/image/a_019.jpg">进口现代</a>
            </li>
            <li>
                <a href="javascript:void(0);">
                    <img src="${pageContext.request.contextPath}/Carindex/mobile/image/a_011.png">进口雪佛兰</a>
            </li>
            <li>
                <a href="javascript:void(0);">
                    <img src="${pageContext.request.contextPath}/Carindex/mobile/image/a_011.jpg">进口雪铁龙</a>
            </li>
            <li>
                <a href="javascript:void(0);">
                    <img src="${pageContext.request.contextPath}/Carindex/mobile/image/a_004.jpg">进口凯迪拉克</a>
            </li>
            <li>
                <a href="javascript:void(0);">
                    <img src="${pageContext.request.contextPath}/Carindex/mobile/image/a_022.jpg">进口铃木</a>
            </li>
        </ul>
    </div>
            <div class="swiper-slide swiper-slide-active" data-swiper-slide-index="0" >   <!--  style="width: 1080px;" -->
        <ul>
            <li>
                <a href="javascript:void(0);">
                    <img src="${pageContext.request.contextPath}/Carindex/mobile/image/a_015.jpg">一汽大众</a>
            </li>
            <li>
                <a href="javascript:void(0);">
                    <img src="${pageContext.request.contextPath}/Carindex/mobile/image/a_027.jpg">东风本田</a>
            </li>
            <li>
                <a href="javascript:void(0);">
                    <img src="${pageContext.request.contextPath}/Carindex/mobile/image/a_007.jpg">一汽丰田</a>
            </li>
            <li>
                <a href="javascript:void(0);">
                    <img src="${pageContext.request.contextPath}/Carindex/mobile/image/a_010.jpg">奔驰</a>
            </li>
            <li>
                <a href="javascript:void(0);">
                    <img src="${pageContext.request.contextPath}/Carindex/mobile/image/a_023.jpg">奥迪</a>
            </li>
            <li>
                <a href="javascript:void(0);">
                    <img src="${pageContext.request.contextPath}/Carindex/mobile/image/a_032.jpg">福特</a>
            </li>
            <li>
                <a href="javascript:void(0);">
                    <img src="${pageContext.request.contextPath}/Carindex/mobile/image/a_029.jpg">宝马</a>
            </li>
            <li>
                <a href="javascript:void(0);">
                    <img src="${pageContext.request.contextPath}/Carindex/mobile/image/a_007.png">路虎</a>
            </li>
            <li>
                <a href="javascript:void(0);">
                    <img src="${pageContext.request.contextPath}/Carindex/mobile/image/a_018.png">东风日产</a>
            </li>
            <li>
                <a href="javascript:void(0);">
                    <img src="${pageContext.request.contextPath}/Carindex/mobile/image/a_028.jpg">吉利</a>
            </li>
            <li>
                <a href="javascript:void(0);">
                    <img src="${pageContext.request.contextPath}/Carindex/mobile/image/Buick-GM.gif">别克</a>
            </li>
            <li>
                <a href="javascript:void(0);">
                    <img src="${pageContext.request.contextPath}/Carindex/mobile/image/a_019.jpg">现代</a>
            </li>
        </ul>
    </div>
    <div class="swiper-slide swiper-slide-next" data-swiper-slide-index="1" >
        <ul>
            <li>
                <a href="javascript:void(0);">
                    <img src="${pageContext.request.contextPath}/Carindex/mobile/image/a_006.png">长安</a>
            </li>
            <li>
                <a href="javascript:void(0);">
                    <img src="${pageContext.request.contextPath}/Carindex/mobile/image/a_017.jpg">JEEP</a>
            </li>
            <li>
                <a href="javascript:void(0);">
                    <img src="${pageContext.request.contextPath}/Carindex/mobile/image/a_011.png">通用雪佛兰</a>
            </li>
            <li>
                <a href="javascript:void(0);">
                    <img src="${pageContext.request.contextPath}/Carindex/mobile/image/a_014.jpg">长安马自达</a>
            </li>
            <li>
                <a href="javascript:void(0);">
                    <img src="${pageContext.request.contextPath}/Carindex/mobile/image/Haval.gif">哈弗</a>
            </li>
            <li>
                <a href="javascript:void(0);">
                    <img src="${pageContext.request.contextPath}/Carindex/mobile/image/a_016.png">比亚迪</a>
            </li>
            <li>
                <a href="javascript:void(0);">
                    <img src="${pageContext.request.contextPath}/Carindex/mobile/image/a_006.jpg">众泰</a>
            </li>
            <li>
                <a href="javascript:void(0);">
                    <img src="${pageContext.request.contextPath}/Carindex/mobile/image/a_017.jpg">Jeep吉普</a>
            </li>
            <li>
                <a href="javascript:void(0);">
                    <img src="${pageContext.request.contextPath}/Carindex/mobile/image/a_018.jpg">捷豹</a>
            </li>
            <li>
                <a href="javascript:void(0);">
                    <img src="${pageContext.request.contextPath}/Carindex/mobile/image/a_003.jpg">上汽大众斯柯达</a>
            </li>
            <li>
                <a href="javascript:void(0);">
                    <img src="${pageContext.request.contextPath}/Carindex/mobile/image/a_031.jpg">雷诺</a>
            </li>
            <li>
                <a href="javascript:void(0);">
                    <img src="${pageContext.request.contextPath}/Carindex/mobile/image/MINI.jpg">MINI</a>
            </li>
        </ul>
    </div>
    <div class="swiper-slide" data-swiper-slide-index="2" >
        <ul>
            <li>
                <a href="javascript:void(0);">
                    <img src="${pageContext.request.contextPath}/Carindex/mobile/image/borgward.gif">宝沃</a>
            </li>
            <li>
                <a href="javascript:void(0);">
                    <img src="${pageContext.request.contextPath}/Carindex/mobile/image/MG.png">MG</a>
            </li>
            <li>
                <a href="javascript:void(0);">
                    <img src="${pageContext.request.contextPath}/Carindex/mobile/image/a_008.png">斯巴鲁</a>
            </li>
            <li>
                <a href="javascript:void(0);">
                    <img src="${pageContext.request.contextPath}/Carindex/mobile/image/Lincoln.gif">林肯</a>
            </li>
            <li>
                <a href="javascript:void(0);">
                    <img src="${pageContext.request.contextPath}/Carindex/mobile/image/a_024.jpg">纳智捷</a>
            </li>
            <li>
                <a href="javascript:void(0);">
                    <img src="${pageContext.request.contextPath}/Carindex/mobile/image/a_005.jpg">奔腾</a>
            </li>
            <li>
                <a href="javascript:void(0);">
                    <img src="${pageContext.request.contextPath}/Carindex/mobile/image/a_015.png">双龙</a>
            </li>
            <li>
                <a href="javascript:void(0);">
                    <img src="${pageContext.request.contextPath}/Carindex/mobile/image/smart.png">smart</a>
            </li>
            <li>
                <a href="javascript:void(0);">
                    <img src="${pageContext.request.contextPath}/Carindex/mobile/image/Acura.gif">讴歌</a>
            </li>
            <li>
                <a href="javascript:void(0);">
                    <img src="${pageContext.request.contextPath}/Carindex/mobile/image/a_021.png">东风风神</a>
            </li>
            <li>
                <a href="javascript:void(0);">
                    <img src="${pageContext.request.contextPath}/Carindex/mobile/image/a_002.png">宝骏</a>
            </li>
            <li>
                <a href="javascript:void(0);">
                    <img src="${pageContext.request.contextPath}/Carindex/mobile/image/a_005.png">北京汽车</a>
            </li>
        </ul>
    </div>
    <div class="swiper-slide" data-swiper-slide-index="3" >
        <ul>
            <li>
                <a href="javascript:void(0);">
                    <img src="${pageContext.request.contextPath}/Carindex/mobile/image/a_006.png">长安轿车</a>
            </li>
            <li>
                <a href="javascript:void(0);">
                    <img src="${pageContext.request.contextPath}/Carindex/mobile/image/a_013.png">长城</a>
            </li>
            <li>
                <a href="javascript:void(0);">
                    <img src="${pageContext.request.contextPath}/Carindex/mobile/image/a_025.jpg">东风</a>
            </li>
            <li>
                <a href="javascript:void(0);">
                    <img src="${pageContext.request.contextPath}/Carindex/mobile/image/a_003.png">风行</a>
            </li>
            <li>
                <a href="javascript:void(0);">
                    <img src="${pageContext.request.contextPath}/Carindex/mobile/image/a_004.png">海马</a>
            </li>
            <li>
                <a href="javascript:void(0);">
                    <img src="${pageContext.request.contextPath}/Carindex/mobile/image/a_016.jpg">华泰</a>
            </li>
            <li>
                <a href="javascript:void(0);">
                    <img src="${pageContext.request.contextPath}/Carindex/mobile/image/a_017.png">金杯</a>
            </li>
            <li>
                <a href="javascript:void(0);">
                    <img src="${pageContext.request.contextPath}/Carindex/mobile/image/JAC.gif">江淮</a>
            </li>
            <li>
                <a href="javascript:void(0);">
                    <img src="${pageContext.request.contextPath}/Carindex/mobile/image/hantengauto.gif">汉腾</a>
            </li>
            <li>
                <a href="javascript:void(0);">
                    <img src="${pageContext.request.contextPath}/Carindex/mobile/image/a_012.png">广汽</a>
            </li>
            <li>
                <a href="javascript:void(0);">
                    <img src="${pageContext.request.contextPath}/Carindex/mobile/image/a_014.png">力帆</a>
            </li>
            <li>
                <a href="javascript:void(0);">
                    <img src="${pageContext.request.contextPath}/Carindex/mobile/image/a_025.png">陆风</a>
            </li>
        </ul>
    </div>
    <div class="swiper-slide" data-swiper-slide-index="4">
        <ul>
            <li>
                <a href="javascript:void(0);">
                    <img src="${pageContext.request.contextPath}/Carindex/mobile/image/a.jpg">天津一汽</a>
            </li>
            <li>
                <a href="javascript:void(0);">
                    <img src="${pageContext.request.contextPath}/Carindex/mobile/image/a_024.png">奇瑞</a>
            </li>
            <li>
                <a href="javascript:void(0);">
                    <img src="${pageContext.request.contextPath}/Carindex/mobile/image/Foday.gif">福迪</a>
            </li>
            <li>
                <a href="javascript:void(0);">
                    <img src="${pageContext.request.contextPath}/Carindex/mobile/image/a_022.png">一汽</a>
            </li>
            <li>
                <a href="javascript:void(0);">
                    <img src="${pageContext.request.contextPath}/Carindex/mobile/image/a_012.jpg">中华</a>
            </li>
            <li>
                <a href="javascript:void(0);">
                    <img src="${pageContext.request.contextPath}/Carindex/mobile/image/YeMa.gif">野马汽车</a>
            </li>
            <li>
                <a href="javascript:void(0);">
                    <img src="${pageContext.request.contextPath}/Carindex/mobile/image/a_008.jpg">长安沃尔沃</a>
            </li>
            <li>
                <a href="javascript:void(0);">
                    <img src="${pageContext.request.contextPath}/Carindex/mobile/image/a_020.png">英菲尼迪</a>
            </li>
            <li>
                <a href="javascript:void(0);">
                    <img src="${pageContext.request.contextPath}/Carindex/mobile/image/a_010.png">雷克萨斯</a>
            </li>
            <li>
                <a href="javascript:void(0);">
                    <img src="${pageContext.request.contextPath}/Carindex/mobile/image/a_018.png">郑州日产</a>
            </li>
            <li>
                <a href="javascript:void(0);">
                    <img src="${pageContext.request.contextPath}/Carindex/mobile/image/a_023.png">荣威</a>
            </li>
            <li>
                <a href="javascript:void(0);">
                    <img src="${pageContext.request.contextPath}/Carindex/mobile/image/a_026.jpg">东南三菱</a>
            </li>
        </ul>
    </div>
    <div class="swiper-slide" data-swiper-slide-index="5" >
        <ul>
            <li>
                <a href="javascript:void(0);">
                    <img src="${pageContext.request.contextPath}/Carindex/mobile/image/a_020.jpg">观致汽车</a>
            </li>
            <li>
                <a href="javascript:void(0);">
                    <img src="${pageContext.request.contextPath}/Carindex/mobile/image/LieBao.gif">猎豹汽车</a>
            </li>
            <li>
                <a href="javascript:void(0);">
                    <img src="${pageContext.request.contextPath}/Carindex/mobile/image/ZiDou.gif">众泰知豆</a>
            </li>
            <li>
                <a href="javascript:void(0);">
                    <img src="${pageContext.request.contextPath}/Carindex/mobile/image/a_023.jpg">一汽奥迪</a>
            </li>
            <li>
                <a href="javascript:void(0);">
                    <img src="${pageContext.request.contextPath}/Carindex/mobile/image/a_011.jpg">东风雪铁龙</a>
            </li>
            <li>
                <a href="javascript:void(0);">
                    <img src="${pageContext.request.contextPath}/Carindex/mobile/image/a_029.jpg">华晨宝马</a>
            </li>
            <li>
                <a href="javascript:void(0);">
                    <img src="${pageContext.request.contextPath}/Carindex/mobile/image/a_027.jpg">广汽本田</a>
            </li>
            <li>
                <a href="javascript:void(0);">
                    <img src="${pageContext.request.contextPath}/Carindex/mobile/image/a_009.jpg">东风标致</a>
            </li>
            <li>
                <a href="javascript:void(0);">
                    <img src="${pageContext.request.contextPath}/Carindex/mobile/image/a_003.png">东风风行</a>
            </li>
            <li>
                <a href="javascript:void(0);">
                    <img src="${pageContext.request.contextPath}/Carindex/mobile/image/a_015.jpg">上汽大众</a>
            </li>
            <li>
                <a href="javascript:void(0);">
                    <img src="${pageContext.request.contextPath}/Carindex/mobile/image/a_007.jpg">广汽丰田</a>
            </li>
            <li>
                <a href="javascript:void(0);">
                    <img src="${pageContext.request.contextPath}/Carindex/mobile/image/a_032.jpg">长安福特</a>
            </li>
        </ul>
    </div>
    <div class="swiper-slide" data-swiper-slide-index="6" >
        <ul>
            <li>
                <a href="javascript:void(0);">
                    <img src="${pageContext.request.contextPath}/Carindex/mobile/image/a_021.jpg">南京菲亚特</a>
            </li>
            <li>
                <a href="javascript:void(0);">
                    <img src="${pageContext.request.contextPath}/Carindex/mobile/image/a_017.jpg">北京吉普</a>
            </li>
            <li>
                <a href="javascript:void(0);">
                    <img src="${pageContext.request.contextPath}/Carindex/mobile/image/a_004.jpg">通用凯迪拉克</a>
            </li>
            <li>
                <a href="javascript:void(0);">
                    <img src="${pageContext.request.contextPath}/Carindex/mobile/image/a_030.jpg">北京克莱斯勒</a>
            </li>
            <li>
                <a href="javascript:void(0);">
                    <img src="${pageContext.request.contextPath}/Carindex/mobile/image/a_022.jpg">长安铃木</a>
            </li>
            <li>
                <a href="javascript:void(0);">
                    <img src="${pageContext.request.contextPath}/Carindex/mobile/image/a_014.jpg">一汽马自达</a>
            </li>
            <li>
                <a href="javascript:void(0);">
                    <img src="${pageContext.request.contextPath}/Carindex/mobile/image/a_013.jpg">东风悦达起亚</a>
            </li>
            <li>
                <a href="javascript:void(0);">
                    <img src="${pageContext.request.contextPath}/Carindex/mobile/image/bisuauto.gif">比速汽车</a>
            </li>
            <li>
                <a href="javascript:void(0);">
                    <img src="${pageContext.request.contextPath}/Carindex/mobile/image/a_009.png">西雅特</a>
            </li>
            <li>
                <a href="javascript:void(0);">
                    <img src="${pageContext.request.contextPath}/Carindex/mobile/image/a_019.jpg">北京现代</a>
            </li>
            <li>
                <a href="javascript:void(0);">
                    <img src="${pageContext.request.contextPath}/Carindex/mobile/image/a_019.png">上汽通用五菱</a>
            </li>
            <li>
                <a href="javascript:void(0);">
                    <img src="${pageContext.request.contextPath}/Carindex/mobile/image/a_010.jpg">福建戴姆勒</a>
            </li>
        </ul>
    </div>
    <div class="swiper-slide" data-swiper-slide-index="7" >
        <ul>
            <li>
                <a href="javascript:void(0);">
                    <img src="${pageContext.request.contextPath}/Carindex/mobile/image/swmmotors.gif">斯威汽车</a>
            </li>
            <li>
                <a href="javascript:void(0);">
                    <img src="${pageContext.request.contextPath}/Carindex/mobile/image/a_023.jpg">进口奥迪</a>
            </li>
            <li>
                <a href="javascript:void(0);">
                    <img src="${pageContext.request.contextPath}/Carindex/mobile/image/a_010.jpg">进口奔驰</a>
            </li>
            <li>
                <a href="javascript:void(0);">
                    <img src="${pageContext.request.contextPath}/Carindex/mobile/image/a_002.jpg">进口别克</a>
            </li>
            <li>
                <a href="javascript:void(0);">
                    <img src="${pageContext.request.contextPath}/Carindex/mobile/image/a_029.jpg">进口宝马</a>
            </li>
            <li>
                <a href="javascript:void(0);">
                    <img src="${pageContext.request.contextPath}/Carindex/mobile/image/a_027.jpg">进口本田</a>
            </li>
            <li>
                <a href="javascript:void(0);">
                    <img src="${pageContext.request.contextPath}/Carindex/mobile/image/a_009.jpg">进口标致</a>
            </li>
            <li>
                <a href="javascript:void(0);">
                    <img src="${pageContext.request.contextPath}/Carindex/mobile/image/a_015.jpg">进口大众</a>
            </li>
            <li>
                <a href="javascript:void(0);">
                    <img src="${pageContext.request.contextPath}/Carindex/mobile/image/a_007.jpg">进口丰田</a>
            </li>
            <li>
                <a href="javascript:void(0);">
                    <img src="${pageContext.request.contextPath}/Carindex/mobile/image/a_021.jpg">进口菲亚特</a>
            </li>
            <li>
                <a href="javascript:void(0);">
                    <img src="${pageContext.request.contextPath}/Carindex/mobile/image/a_013.jpg">进口起亚</a>
            </li>
            <li>
                <a href="javascript:void(0);">
                    <img src="${pageContext.request.contextPath}/Carindex/mobile/image/a_018.png">进口日产</a>
            </li>
        </ul>
    </div>
    <div class="swiper-slide" data-swiper-slide-index="8" >
        <ul>
            <li>
                <a href="javascript:void(0);">
                    <img src="${pageContext.request.contextPath}/Carindex/mobile/image/a_003.jpg">进口斯柯达</a>
            </li>
            <li>
                <a href="javascript:void(0);">
                    <img src="${pageContext.request.contextPath}/Carindex/mobile/image/a.png">进口三菱</a>
            </li>
            <li>
                <a href="javascript:void(0);">
                    <img src="${pageContext.request.contextPath}/Carindex/mobile/image/a_008.jpg">进口沃尔沃</a>
            </li>
            <li>
                <a href="javascript:void(0);">
                    <img src="${pageContext.request.contextPath}/Carindex/mobile/image/a_019.jpg">进口现代</a>
            </li>
            <li>
                <a href="javascript:void(0);">
                    <img src="${pageContext.request.contextPath}/Carindex/mobile/image/a_011.png">进口雪佛兰</a>
            </li>
            <li>
                <a href="javascript:void(0);">
                    <img src="${pageContext.request.contextPath}/Carindex/mobile/image/a_011.jpg">进口雪铁龙</a>
            </li>
            <li>
                <a href="javascript:void(0);">
                    <img src="${pageContext.request.contextPath}/Carindex/mobile/image/a_004.jpg">进口凯迪拉克</a>
            </li>
            <li>
                <a href="javascript:void(0);">
                    <img src="${pageContext.request.contextPath}/Carindex/mobile/image/a_022.jpg">进口铃木</a>
            </li>
        </ul>
    </div>
</div>
</div>
<!-- 如果需要分页器 -->
 <div class="swiper-pagination swiper-pagination-bullets"><span class="swiper-pagination-bullet swiper-pagination-bullet-active"></span><span class="swiper-pagination-bullet"></span><span class="swiper-pagination-bullet"></span><span class="swiper-pagination-bullet"></span><span class="swiper-pagination-bullet"></span><span class="swiper-pagination-bullet"></span><span class="swiper-pagination-bullet"></span><span class="swiper-pagination-bullet"></span><span class="swiper-pagination-bullet"></span></div>



        </div>
        <!--pinpai end-->
        <div class="youshi">
            <!--<div class="main-til"></div>-->
			<h2 align="center" style="color: white;font-size: 30px; padding-bottom: 5px;font-weight: bold;">车展优势</h2>
            <ul class="youshi-list">
                <li>
                    <div class="img">
                        <img src="${pageContext.request.contextPath}/Carindex/mobile/image/adv1.jpg">
                    </div>
                    <div class="youshi-til">真实体验</div>
                    <div class="txt">
                        <p>几乎每位准车主都有过同样的经历，在网上翻来覆去看了对比很长一段时间，可还是不知道实车是怎么样，车展恰是一个好的体验平台。</p>
                    </div>
                </li>
                <li>
                    <div class="txt">
                        <p>你可能有多款意向车型，平时没有太多时间奔走于多家4S店，车展现场品牌多、车型全，您可以轻松看遍所有车。</p>
                    </div>
                    <div class="youshi-til">0距离</div>
                    <div class="img">
                        <img src="${pageContext.request.contextPath}/Carindex/mobile/image/adv2.jpg">
                    </div>
                </li>
                <li>
                    <div class="img">
                        <img src="${pageContext.request.contextPath}/Carindex/mobile/image/adv3.jpg">
                    </div>
                    <div class="youshi-til">车型繁多</div>
                    <div class="txt">
                        <p>俗话说"货比三家不吃亏"，车展汇集了许多同价位，同级别的不同品牌车型，您不妨可以静下心来一一对比，买到自己满意的车才重要。</p>
                    </div>
                </li>
                <li>
                    <div class="txt">
                        <p>您可能想获得真实的报价，网上低价太虚了，4S店从不在电话里报底价，去到店里报价是行情价，而车展现场有明码标价的优惠信息。</p>
                    </div>
                    <div class="youshi-til">价格透明</div>
                    <div class="img">
                        <img src="${pageContext.request.contextPath}/Carindex/mobile/image/adv4.jpg">
                    </div>
                </li>
                <li>
                    <div class="img">
                        <img src="${pageContext.request.contextPath}/Carindex/mobile/image/adv5.jpg">
                    </div>
                    <div class="youshi-til">提车方便</div>
                    <div class="txt">
                        <p>提车之前不要办理任何手续，您只需要在现场签订简单的一个合同，缴纳订金，在约定的时间内，随时可以前往提车，大大节省您买车的时间。</p>
                    </div>
                </li>
                <li class="hidden">
                    <div class="txt">
                        <p>您会想如果我现场订车，售后是不是跟4s店的售后一样？车展经销商都是专业的4s店经销商，您不仅能享受到专业的售后服务爱车还能享受免费保养！</p>
                    </div>
                    <div class="youshi-til">售后专业</div>
                    <div class="img">
                        <img src="${pageContext.request.contextPath}/Carindex/mobile/image/advantage6.jpg">
                    </div>
                </li>
            </ul>
        </div>
        <!--youshi end-->
        <div class="jiaotong">
            <!--<div class="main-til"></div>-->
			<h2 align="center" style="color: white;font-size: 30px; padding-bottom: 5px;font-weight: bold;">车展地址</h2>
            <div class="content">
<p style="font-weight:bold;">阜阳汽贸物流园</p>
                <a href="${pageContext.request.contextPath}/Carindex/yiwu.html">
                    <img style="width:100%;" src="${pageContext.request.contextPath}/Carindex/mobile/image/ditu.jpg">
                </a>
                <p>位于阜阳市汽贸物流园</p>
<!--<p><strong>地铁</strong>：</p>-->
<p><strong>公交</strong>：</p>
<p>&nbsp;&nbsp;途径线路有：临泉1路/k1路;临泉2路;临泉6路;临泉7路;临泉8路;临泉k5路内环;临泉k5路外环，导航搜索临泉义乌国际商贸城，请您提前查好路线</p>
<p><strong>自驾</strong>：</p>
<p>&nbsp;&nbsp;导航搜索临泉义乌国际商贸城，请您提前查好路线。</p>
       
            </div>

            <!--<button class="baoming-btn">发送地址到手机</button>-->
            <!--<div class="zixun">
                <a href="tel:400%20998%203806"><img src="image/zixun-top.jpg" class="img-responsive"></a>
                <a href="javascript:void(0);" class="baoming-btn"><img src="image/zixun-down.jpg" class="img-responsive"></a>
            </div>-->
        </div>
        <!--jiaotong end-->
        <div class="huigu">
            <!--<div class="main-til"></div>-->
			<h2 align="center" style="color: white;font-size: 30px; padding-bottom: 5px;font-weight: bold;">车展现场</h2>
            <div class="content">
                <div class="half-pic">
                    <div class="img-wrap">
                        <img src="${pageContext.request.contextPath}/Carindex/mobile/image/adv2.jpg">
                    </div>
                    <div class="img-wrap">
                        <img src="${pageContext.request.contextPath}/Carindex/mobile/image/adv3.jpg">
                    </div>
                </div>
                <div class="fullimg">
                    <img src="${pageContext.request.contextPath}/Carindex/mobile/image/activity.jpg">
                </div>
            </div>
        </div>

        <footer>
            <div class="wrap">
                <div class="copyright">
                    <span>众民汽车 版权所有©</span><br>
                    <span>备案号：京ICP备15029289号</span>
                    <p>&nbsp; </p>
                </div>
            </div>
        </footer>
    </section>
    <div class="fix-bottom">
        <ul class="flex-wrap">
            <li class="flex">
                <a href="tel:15867017627">
                    <p class="b-txt">官方咨询热线</p>
                </a>
            </li>
            <li class="flex baoming-link baoming-btn">
                <a href="#bm">
                    <p class="b-txt">报名免费领票</p>
                </a>
            </li>
        </ul>
    </div>
	    <script type="text/javascript" src="${pageContext.request.contextPath}/Carindex/mobile/js/jquery-1.10.2.min.js"></script>
    <script src="${pageContext.request.contextPath}/Carindex/mobile/js/swiper.jquery.min.js" type="text/javascript" charset="utf-8"></script>
    
    <script src="${pageContext.request.contextPath}/Carindex/mobile/js/scrollNew.js" type="text/javascript" charset="utf-8"></script>
    <script src="${pageContext.request.contextPath}/Carindex/mobile/js/js.js" type="text/javascript" charset="utf-8"></script>
     <script src="${pageContext.request.contextPath}/Carindex/mobile/js/swiper.js" type="text/javascript" charset="utf-8"></script>
     <script src="${pageContext.request.contextPath}/Carindex/mobile/js/countdown.js" type="text/javascript" charset="utf-8"></script>

    
    
    
    
   
    
	<label for="" class="aside-ctrl--reset"></label>
    <script type="text/javascript">
			(function($) {
				var vh = $(window).height();
			    //侧边栏
				$('.aside-select').ScrollSelect({ type:'series',val: '#txt_carname' });

			})(jQuery);
    </script>

</body>
</html>
