<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html><head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/sweetalert.css"/>      
        <script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery.js"></script> 
        <script type="text/javascript" src="${pageContext.request.contextPath}/js/sweetalert.min.js"></script>
	<!--baomingbiao start-->
<link href="${pageContext.request.contextPath}/Customer/mobile/css/css.css" rel="stylesheet">
<script type="text/javascript" src="${pageContext.request.contextPath}/Customer/mobile/js/jquery.js"></script>
	<!--baomingbiao finished-->
<title>众民汽车-垂直购</title>
	<!--baomingbiao start-->
	<meta name="keywords" content="众民垂直购报名">
	<meta name="description" content="众民垂直购报名">
	<script language="javascript">
		function killErrors() {return true; }
		window.onerror = killErrors;
	</script>
	<!--baomingbiao finished-->
<!--dijia-->
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/Customer/mobile/css/special-wap-css.css">
	<link rel="stylesheet" href="${pageContext.request.contextPath}/Customer/mobile/css/swiper.min.css">
<!--dijiafinishi-->
<meta name="keywords" content="众民汽车" />
<meta name="description" content="众民汽车" />
<meta http-equiv="Cache-Control" content="no-transform"/>
    <meta name="viewport" content="width=device-width,initial-scale=1,minimum-scale=1,maximum-scale=1,user-scalable=no" />
    <meta name="format-detection" content="telephone=no"/>
	<link href="${pageContext.request.contextPath}/Customer/mobile/css/1.css" rel="stylesheet" type="text/css" />
	<link href="${pageContext.request.contextPath}/Customer/mobile/css/2.css" rel="stylesheet" type="text/css" />
	<link href="${pageContext.request.contextPath}/Customer/mobile/css/3.css" rel="stylesheet" type="text/css" />
	<link href="${pageContext.request.contextPath}/Customer/mobile/css/4.css" rel="stylesheet" type="text/css" />
	<!--card start-->
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/Customer/mobile/css/tabdemo.css">
	<link rel="stylesheet" href="${pageContext.request.contextPath}/Customer/mobile/css/tabs-basic.css">
	<!--card end-->
</head>
<body>
<!--head-->
<header>
    <div class="isSetBrand" id="myCar"></div>
    <span>众民汽车-垂直购</span>
</header>
<!--head end-->
<!--焦点图-->
<section id="focus-box" class="focus-box">
    <ul class="focus-pic-list" id="focus-pic-list" style="width:10000%; -webkit-transition: -webkit-transform 0ms; transition: -webkit-transform 0ms; -webkit-transform-origin: 0px 0px; -webkit-transform: translate(0px, 0px) translateZ(0px);"><li>
                            <a href="javascript:void(0)">
								<img  src="${pageContext.request.contextPath}/Customer/mobile/image/banner4.jpg">
							</a>
        </li><li>
                            <a href="javascript:void(0)">
								<img src="${pageContext.request.contextPath}/Customer/mobile/image/toplogo.png" src="${pageContext.request.contextPath}/Customer/mobile/image/5822927d3be7f.jpg">
							</a>
        </li></ul><div class="focus-tag" id="focus-tag"></div></section>
<!--焦点图end-->
<!--服务列表 start-->
<section class="shServEnterances" id="choosecar">
    <div class="shServBar clearfix"><dl>
                                <a href="javascript:void(0)">
                                    <dt><!--<em></em>--><img src="${pageContext.request.contextPath}/Customer/mobile/image/tijiao.png" /></dt>
                                    <dd><strong>1.选车</strong></dd>
                                </a>
                            </dl><dl>
                                <a href="javascript:void(0)">
                                    <dt><!--<em></em>--><img src="${pageContext.request.contextPath}/Customer/mobile/image/kefu.png" /></dt>
                                    <dd><strong>2.报价</strong></dd>
                                </a>
                            </dl><dl>
                                <a href="javascript:void(0)">
                                    <dt><!--<em></em>--><img src="${pageContext.request.contextPath}/Customer/mobile/image/kanche.png" /></dt>
                                    <dd><strong>3.比价</strong></dd>
                                </a>
                            </dl><dl>
                                <a href="javascript:void(0)">
                                    <dt><img src="${pageContext.request.contextPath}/Customer/mobile/image/tiche.png" /></dt>
                                    <dd><strong>4.提车</strong></dd>
                                </a>
                            </dl>
						</div>
	</section>
	
	<div id=demo style="overflow:hidden;height:2rem;width:100%;background:#f4f4f4;color:#000;text-align: center;margin: 1rem;">
	<div id=demo1>

		<a>王**  成功预定  本田CRV * 5分钟前<br>
		江**  成功预定  大众朗逸 * 9分钟前<br>
		齐**  成功预定  丰田雷凌 * 9分钟前<br>
		张**  成功预定  吉利帝豪 * 3分钟前<br>
		马**  成功预定  马自达CX4 * 2分钟前<br>
		刘**  成功预定  别克英朗 * 6分钟前<br>
		江**  成功预定  大众朗逸 * 9分钟前<br>
		齐**  成功预定  丰田雷凌 * 9分钟前<br>
		张**  成功预定  吉利帝豪 * 3分钟前<br>
		马**  成功预定  马自达CX4 * 2分钟前<br>
		刘**  成功预定  别克英朗 * 6分钟前</a>

	</div>
	<div id=demo2>
	</div>
</div>
   <script>
   var speed=50
   demo2.innerHTML=demo1.innerHTML
   function Marquee(){
   if(demo2.offsetTop-demo.scrollTop<=0)
   demo.scrollTop-=demo1.offsetHeight
   else{
   demo.scrollTop++
   }
   }
   var MyMar=setInterval(Marquee,speed)
   demo.onmouseover=function() {clearInterval(MyMar)}
   demo.onmouseout=function() {MyMar=setInterval(Marquee,speed)}
   </script>
	
<section class="shOnPromotionS clearfix">
                                <!--start-->
								<script type="text/javascript"> 

	  function autoScroll(obj){  

			$(obj).find("ul").animate({  
				marginTop : "-39px"  
			},500,function(){  
				$(this).css({marginTop : "0px"}).find("li:first").appendTo(this); 
			})  
		}  
		$(function(){  
			setInterval('autoScroll(".header2")',4000); 
		}) 		 
	</script>
<div class="XX-10 form ">
  <div class="bmbox" id="bm">
    <div id="autoOrder">
      <div id="autoOrderC">
        <div class="bmbt"><strong>快速查看底价 ${message}${name}</strong> <span><p style=" color: red">一分钟快速查看最底价</span></div>
        <script type="text/javascript" src="${pageContext.request.contextPath}/Customer/mobile/js/cartype.js"></script>
        
        
        
        
        <script  type="text/javascript">
        function ZtBMUser(){
        	   var realname = document.getElementById("realname").value;
        	   var mp = document.getElementById("mp").value;
        	   var c_carBrand = document.getElementById("c_carBrand").value;
        	   var c_carType = document.getElementById("c_carType").value; 
        	   /* var remark = document.getElementById("remark").value;   */ 
        	   if(realname == ""  ){
        		     swal("请继续完善信息", "报名提示：请填写您的姓名!", "success"); 
        		     document.form.realname.focus();
        		     return false;
        		   } 
        	if(mp==""  ){

        	swal("请继续完善信息", "报名提示：请填写您的手机号码!", "success"); 
        	document.form.mp.focus();
        	return false; 
        	} 
        	else 
        	{      
        	var rules = /^1[1-9]\d{9}$/;
        	if (rules.test(mp)) {
        	 }    
        	else {

        	swal("请继续完善信息", "报名提示：请您输入11位的数字的手机号码！", "success"); 
        	document.form.mp.focus();
        	return false;        
        	}    
        	}  
        	if(c_carBrand == ""  ){

        	swal("请继续完善信息", "报名提示：请选择关注品牌!", "success"); 
        	document.form.c_carBrand.focus();
        	return false;
        	}
        	if(c_carType == ""  ){

        	swal("请继续完善信息", "报名提示：请选择关注车系!", "success"); 
        	document.form.c_carType.focus();
        	return false;
        	}
        	if(remark == ""  ||  remark.length<5 ){

        	swal("请继续完善信息", "报名提示：请填写门票快递收件地址或地址最少5个字!", "success"); 
        	document.form.remark.focus();
        	return false;
        	}
        	      
        	  document.getElementById("form").submit();
        	} 
        
        
        
        
        </script>
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        <form action="${pageContext.request.contextPath}/customer/add.action" method="post" name="form" id="form" onsubmit="return ZtBMUser();">
          <input name="UnionID" id="UnionID" value="27" type="hidden">
          <div class="input-txt mt-10">
            <input id="realname" name="c_name" placeholder="请输入您的姓名" type="search">
          </div>
          <div class="input-txt">
            <input name="c_mobile" id="mp" placeholder="请输入您的手机号码" type="search">
          </div>
          <div class="selects" id="brand">
            <select name="c_carBrand" id="c_carBrand" class="selbrands">
              <!--<option value="" selected="selected">请选择品牌</option>-->

             
            </select>
          </div>
          <div class="selects" id="series">
            <select name="c_carType" id="c_carType" class="selcars">
              <option value="" selected="selected">请选择车系</option>
            </select>
          </div>
          <div class="selects" id="series">
            <select name="c_sex" id="sex" class="selcars">
              <option value="" selected="selected">是否全款购车</option>
              <option value="全款购车">全款购车</option>
              <option value="贷款购车">贷款购车</option>
             
            </select>
          </div>
          <div class="input-txt mt-10">
            <script language="javascript" defer="defer">new PCAS("c_carBrand","c_carType"); </script>
            <input placeholder="门票详细快递地址及备注" name="c_address" id="remark" type="search">
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
								<!--finish-->
</section>
<!--提交end-->
<!--滚动start-->
	<section class="shOnPromotionS clearfix">
                        <a href="">
                            <div class="onPromotionSTit"><em class="clIndexIcons"></em></div>
                            <div class="onPromotionInfos">
                                <div class="pl10">
                                    <h3>众民垂直购</h3>
                                    <p>全国渠道，保障购车最底价！</p>
                                    <div class="promotionType"><em>低至</em><em>6折</em></div>
                                </div>
                            </div>
                            <div class="onPromotionPics">
                                <img src="${pageContext.request.contextPath}/Customer/mobile/image/5819a9bca59eb.png" width="100%" />
                            </div>
                        </a>
                    </section>
<!--滚动end-->
<!--滚动start-->
	<section class="shOnPromotionS clearfix">
        <!--start-->
		<script src="${pageContext.request.contextPath}/Customer/mobile/js/swiper.min.js"></script>
   <!-- Initialize Swiper -->
    <script>
    var swiper = new Swiper('.swiper-container', {
        pagination: '.swiper-pagination',
        nextButton: '.swiper-button-next',
        prevButton: '.swiper-button-prev',
        slidesPerView: 1,
        paginationClickable: true,
        spaceBetween: 30,
		autoplay: 3000,//可选选项，自动滑动
		autoplayDisableOnInteraction : false,
        loop: true
    });
    </script>
    <!-- Swiper幻灯片加低价车型 -->
    <!-- Add Arrows -->
    <!-- Swiper JS -->
    <script src="${pageContext.request.contextPath}/Customer/mobile/js/swiper.min.js"></script>
    <!-- Initialize Swiper -->


<!--底价车型-->
<div class="dj-main">
<div class="dj">
  <div class="swiper-container swiper-container-v swiper-container-horizontal swiper-container-multirow">
        <div class="swiper-wrapper" style="width: 1568px; transform: translate3d(0px, 0px, 0px); transition-duration: 0ms;">
			<!--开始循环内容 bg-->  
					<div class="swiper-slide swiper-slide-active" data-swiper-column="0" data-swiper-row="0" style="order: 0; width: 313.5px;" >
						<div class="dj-m">
							<div class="dj-m1">
							<span class="sp4"><img src="${pageContext.request.contextPath}/Customer/mobile/image/baolai.jpg" width="100%" >
                            <a href="#choosecar">
                            <span class="sp1">一汽-大众宝来</span>
							<span class="sp2">指导价：<span style="text-decoration:line-through;">10.78-15.38万</span><br>垂直购价：<span style="color:#f00;" >点击获取</span></span>
                            </a>
							</div>
						</div>
					</div>
					<div class="swiper-slide swiper-slide-next" data-swiper-column="0" data-swiper-row="1" style="-webkit-box-ordinal-group: 5; order: 5; margin-top: 0px; width: 313.5px;">
						<div class="dj-m">
							<div class="dj-m1">
							<span class="sp4"><img src="${pageContext.request.contextPath}/Customer/mobile/image/magotan.jpg" width="100%">
                            <a href="#choosecar">
                            <span class="sp1">一汽-大众迈腾</span>
							<span class="sp2">指导价：<span style="text-decoration:line-through;">18.99-31.69万</span><br>垂直购价：<span style="color:#f00;">点击获取</span></span>
								</a>
							</div>
						</div>
					</div>
					<div class="swiper-slide" data-swiper-column="1" data-swiper-row="0" style="-webkit-box-ordinal-group: 10; order: 10; margin-top: 0px; width: 313.5px;">
						<div class="dj-m">
							<div class="dj-m1">
							<span class="sp4"><img src="${pageContext.request.contextPath}/Customer/mobile/image/sagita.jpg" width="100%">
                            <a href="#choosecar">
                            <span class="sp1">一汽-大众速腾</span>
							<span class="sp2">指导价：<span style="text-decoration:line-through;">13.18-21.88万</span><br>垂直购价：<span style="color:#f00;">点击获取</span></span>
								</a>
							</div>
						</div>
					</div>
					<div class="swiper-slide" data-swiper-column="1" data-swiper-row="1" style="-webkit-box-ordinal-group: 15; order: 15; margin-top: 0px; width: 313.5px;">
						<div class="dj-m">
							<div class="dj-m1">
							<span class="sp4"><img src="${pageContext.request.contextPath}/Customer/mobile/image/golf.jpg" width="100%">
                            <a href="#choosecar">
                            <span class="sp1">一汽-大众高尔夫</span>
							<span class="sp2">指导价：<span style="text-decoration:line-through;">12.19-23.99万</span><br>垂直购价：<span style="color:#f00;">点击获取</span></span>
								</a>
							</div>
						</div>
					</div>
					<div class="swiper-slide" data-swiper-column="2" data-swiper-row="0" style="-webkit-box-ordinal-group: 1; order: 1; width: 313.5px;">
						<div class="dj-m">
							<div class="dj-m1">
							<span class="sp4"><img src="${pageContext.request.contextPath}/Customer/mobile/image/jetta.jpg" width="100%">
                            <a href="#choosecar">
                            <span class="sp1">一汽-大众捷达</span>
							<span class="sp2">指导价：<span style="text-decoration:line-through;">7.99-13.49万</span><br>垂直购价：<span style="color:#f00;">点击获取</span></span>
								</a>
							</div>
						</div>
					</div>
					<div class="swiper-slide" data-swiper-column="2" data-swiper-row="1" style="-webkit-box-ordinal-group: 6; order: 6; margin-top: 0px; width: 313.5px;">
						<div class="dj-m">
							<div class="dj-m1">
							<span class="sp4"><img src="${pageContext.request.contextPath}/Customer/mobile/image/ctrak.jpg" width="100%">
                            <a href="#choosecar">
                            <span class="sp1">一汽-大众蔚领</span>
							<span class="sp2">指导价：<span style="text-decoration:line-through;">11.69-16.29万</span><br>垂直购价：<span style="color:#f00;">点击获取</span></span>
								</a>
							</div>
						</div>
					</div>
					<div class="swiper-slide" data-swiper-column="3" data-swiper-row="0" style="-webkit-box-ordinal-group: 11; order: 11; margin-top: 0px; width: 313.5px;">
						<div class="dj-m">
							<div class="dj-m1">
							<span class="sp4"><img src="${pageContext.request.contextPath}/Customer/mobile/image/golfjialv.jpg" width="100%">
                            <a href="#choosecar">
                            <span class="sp1">一汽-大众高尔夫·嘉旅</span>
							<span class="sp2">指导价：<span style="text-decoration:line-through;">13.19-19.79万</span><br>垂直购价：<span style="color:#f00;">点击获取</span></span>
								</a>
							</div>
						</div>
					</div>
					<div class="swiper-slide" data-swiper-column="3" data-swiper-row="1" style="-webkit-box-ordinal-group: 16; order: 16; margin-top: 0px; width: 313.5px;">
						<div class="dj-m">
							<div class="dj-m1">
							<span class="sp4"><img src="${pageContext.request.contextPath}/Customer/mobile/image/cc.jpg" width="100%">
                            <a href="#choosecar">
                            <span class="sp1">一汽-大众CC</span>
							<span class="sp2">指导价：<span style="text-decoration:line-through;">25.28-34.28万</span><br>垂直购价：<span style="color:#f00;">点击获取</span></span>
								</a>
							</div>
						</div>
					</div>
					<div class="swiper-slide" data-swiper-column="4" data-swiper-row="0" style="-webkit-box-ordinal-group: 2; order: 2; width: 313.5px;">
						<div class="dj-m">
							<div class="dj-m1">
							<span class="sp4"><img src="${pageContext.request.contextPath}/Customer/mobile/image/mkz.jpg" width="100%">
                            <a href="#choosecar">
                            <span class="sp1">林肯MKZ</span>
							<span class="sp2">指导价：<span style="text-decoration:line-through;">28.48-40.88万</span><br>垂直购价：<span style="color:#f00;">点击获取</span></span>
								</a>
							</div>
						</div>
					</div>
					<div class="swiper-slide" data-swiper-column="4" data-swiper-row="1" style="-webkit-box-ordinal-group: 7; order: 7; margin-top: 0px; width: 313.5px;">
						<div class="dj-m">
							<div class="dj-m1">
							<span class="sp4"><img src="${pageContext.request.contextPath}/Customer/mobile/image/linghang.jpg" width="100%">
                            <a href="#choosecar">
                            <span class="sp1">林肯领航员</span>
							<span class="sp2">指导价：<span style="text-decoration:line-through;">98.88-122.80万</span><br>垂直购价：<span style="color:#f00;">点击获取</span></span>
								</a>
							</div>
						</div>
					</div>
					<div class="swiper-slide" data-swiper-column="5" data-swiper-row="0" style="-webkit-box-ordinal-group: 12; order: 12; margin-top: 0px; width: 313.5px;">
						<div class="dj-m">
							<div class="dj-m1">
							<span class="sp4"><img src="${pageContext.request.contextPath}/Customer/mobile/image/kmc.jpg" width="100%">
                            <a href="#choosecar">
                            <span class="sp1">林肯MKC</span>
							<span class="sp2">指导价：<span style="text-decoration:line-through;">29.88-45.88万</span><br>垂直购价：<span style="color:#f00;">点击获取</span></span>
								</a>
							</div>
						</div>
					</div>
					<div class="swiper-slide" data-swiper-column="5" data-swiper-row="1" style="-webkit-box-ordinal-group: 17; order: 17; margin-top: 0px; width: 313.5px;">
						<div class="dj-m">
							<div class="dj-m1">
							<span class="sp4"><img src="${pageContext.request.contextPath}/Customer/mobile/image/mkx.jpg" width="100%">
                            <a href="#choosecar">
                            <span class="sp1">林肯MKX</span>
							<span class="sp2">指导价：<span style="text-decoration:line-through;">44.98-65.98万</span><br>垂直购价：<span style="color:#f00;">点击获取</span></span>
								</a>
							</div>
						</div>
					</div>
					<div class="swiper-slide" data-swiper-column="6" data-swiper-row="0" style="-webkit-box-ordinal-group: 3; order: 3; width: 313.5px;">
						<div class="dj-m">
							<div class="dj-m1">
							<span class="sp4"><img src="${pageContext.request.contextPath}/Customer/mobile/image/dalu.jpg" width="100%">
                            <a href="#choosecar">
                            <span class="sp1">林肯大陆</span>
							<span class="sp2">指导价：<span style="text-decoration:line-through;">39.88-61.38万</span><br>垂直购价：<span style="color:#f00;">点击获取</span></span>
								</a>
							</div>
						</div>
					</div>
					<div class="swiper-slide" data-swiper-column="6" data-swiper-row="1" style="-webkit-box-ordinal-group: 8; order: 8; margin-top: 0px; width: 313.5px;">
						<div class="dj-m">
							<div class="dj-m1">
							<span class="sp4"><img src="${pageContext.request.contextPath}/Customer/mobile/image/t70.jpg" width="100%">
                            <a href="#choosecar">
                            <span class="sp1">野马T70</span>
							<span class="sp2">指导价：<span style="text-decoration:line-through;">6.98-11.58万</span><br>垂直购价：<span style="color:#f00;">点击获取</span></span>
								</a>
							</div>
						</div>
					</div>
					<div class="swiper-slide" data-swiper-column="7" data-swiper-row="0" style="-webkit-box-ordinal-group: 13; order: 13; margin-top: 0px; width: 313.5px;">
						<div class="dj-m">
							<div class="dj-m1">
							<span class="sp4"><img src="${pageContext.request.contextPath}/Customer/mobile/image/t80.jpg" width="100%">
                            <a href="#choosecar">
                            <span class="sp1">野马T80</span>
							<span class="sp2">指导价：<span style="text-decoration:line-through;">8.98-13.98万</span><br>垂直购价：<span style="color:#f00;">点击获取</span></span>
								</a>
							</div>
						</div>
					</div>
					<div class="swiper-slide" data-swiper-column="7" data-swiper-row="1" style="-webkit-box-ordinal-group: 18; order: 18; margin-top: 0px; width: 313.5px;">
						<div class="dj-m">
							<div class="dj-m1">
							<span class="sp4"><img src="${pageContext.request.contextPath}/Customer/mobile/image/ec30.jpg" width="100%">
                            <a href="#choosecar">
                            <span class="sp1">野马EC30</span>
							<span class="sp2">指导价：<span style="text-decoration:line-through;">17.72万</span><br>垂直购价：<span style="color:#f00;">点击获取</span></span>
								</a>
							</div>
						</div>
					</div>
        </div>
    </div>
    <!-- Add Pagination -->
    <div class="swiper-pagination swiper-pagination-v swiper-pagination-clickable swiper-pagination-bullets" style="position:inherit;">
		<span class="swiper-pagination-bullet swiper-pagination-bullet-active"></span>
		<span class="swiper-pagination-bullet"></span>
		<span class="swiper-pagination-bullet"></span>
						</div>
</div>
</div>
<!-- Initialize Swiper -->
<script>
    var swiper = new Swiper('.swiper-container-v', {
        pagination: '.swiper-pagination-v',
        slidesPerView: 2,
        slidesPerColumn: 2,
        paginationClickable: true,
		slidesPerGroup:2,
        spaceBetween: 0,
		autoplay: 3000,//可选选项，自动滑动
		autoplayDisableOnInteraction : false,
        
    });
</script>

		<!--finishi-->
    </section>
<!--滚动end-->
<!--地图start-->
	<%-- <section class="shOnPromotionS clearfix">
         	<div class="tabs-basic">

		<ul>
			<li>
				<a class="tab-active" data-index="0" href="#">阜南</a>
			</li>
			<li>
				<a data-index="1" href="#">太和</a>
			</li>
			<li>
				<a data-index="2" href="#">颍上</a>
			</li>
			<li>
				<a data-index="3" href="#">临泉</a>
			</li>
			<li>
				<a data-index="4" href="#">界首市</a>
			</li>
		</ul>

		<div class="tabs-content-placeholder">

			<div class="tab-content-active">
				<p>阜阳市阜南县城关镇谷河路61号</p>
				<a href="${pageContext.request.contextPath}/map/funan.html"><img src="${pageContext.request.contextPath}/Customer/mobile/image/fn.jpg" alt="Banhoff"></a>
			</div>

			<div>
				<p>阜阳市太和县镜湖中路135号</p>
				<a href="${pageContext.request.contextPath}/map/taihe.html"><img src="${pageContext.request.contextPath}/Customer/mobile/image/th.jpg" alt="Colosseum"></a>
			</div>

			<div>
				<p>阜阳市颍上县颖阳路66号</p>
				<a href="${pageContext.request.contextPath}/map/yingshang.html"><img src="${pageContext.request.contextPath}/Customer/mobile/image/ys.jpg" alt="sahale-wa"></a>
			</div>
			<div>
				<p>阜阳市临泉县城关镇城中南路51号</p>
				<a href="${pageContext.request.contextPath}/map/linquan.html"><img src="${pageContext.request.contextPath}/Customer/mobile/image/lq.jpg" alt="sahale-wa"></a>
			</div>
			<div>
				<p>阜阳市界首市中原路83号</p>
				<a href="${pageContext.request.contextPath}/map/jieshou.html"><img src="${pageContext.request.contextPath}/Customer/mobile/image/js.jpg" alt="sahale-wa"></a>
			</div>

		</div>

	</div>

	
	<script src="${pageContext.request.contextPath}/Customer/mobile/js/jquery-1.11.0.min.js" type="text/javascript"></script>
	<script type="text/javascript">

        $(document).ready(function() {

            var widget = $('.tabs-basic');

            var tabs = widget.find('ul a'),
                content = widget.find('.tabs-content-placeholder > div');

            tabs.on('click', function (e) {

                e.preventDefault();

                // Get the data-index attribute, and show the matching content div

                var index = $(this).data('index');

                tabs.removeClass('tab-active');
                content.removeClass('tab-content-active');

                $(this).addClass('tab-active');
                content.eq(index).addClass('tab-content-active');

            });

        });

    </script>               
    </section> --%>
<!--地图end-->
	
<!--特色频道start-->
<section class="shOnPromotionD clearfix">
<h3><span></span><em>众民垂直购优势</em><span></span></h3>
						<!--row1-->
                    	<div class="channelBars clearfix" style="text-align: center">
							<div class="channelUnits">
                                <div class="channelTit">
                                    <a href="#choosecar">
                                        <h3>车源保障</h3>
                                        <p style="height:6rem;">所有车型，厂家直属特卖，厂家车源报备，尊享购车享厂家直供</p>
                                        <div class="channelPics">
                                            <img src="${pageContext.request.contextPath}/Customer/mobile/image/ziyuan.jpg" width="100%" href="#choosecar" />
                                        </div>
                                    </a>
                                </div>
                            </div>
							<div class="channelUnits">
                                <div class="channelTit">
                                    <a href="javascript:void(0)">
                                        <h3>全国联保</h3>
                                        <p style="height:6rem;">垂直购所购车型，在全国任何一品牌正规4S店均可进行维修保养</p>
                                        <div class="channelPics">
                                            <img src="${pageContext.request.contextPath}/Customer/mobile/image/baozhang.jpg" width="100%" />
                                        </div>
                                    </a>
                                </div>
                            </div>
							<div class="channelUnits">
                                <div class="channelTit">
                                    <a href="javascript:void(0)">
                                        <h3>价格保障</h3>
                                        <p style="height:6rem;">所有车型价格保障全国底价，订车享厂家价格保障</p>
                                        <div class="channelPics">
                                            <img src="${pageContext.request.contextPath}/Customer/mobile/image/jiagebaozhang.jpg" width="100%" />
                                        </div>
                                    </a>
                                </div>
                            </div>
					</div>
						<!--row2-->
						<div class="channelBars clearfix" style="text-align: center">
							<div class="channelUnits">
                                <div class="channelTit">
                                    <a href="javascript:void(0)">
                                        <h3>资金保障</h3>
                                        <p style="height:6rem;">全程由中国人保承保，保障您的资金安全，让您买的放心。</p>
                                        <div class="channelPics">
                                            <img src="${pageContext.request.contextPath}/Customer/mobile/image/zijinjilu.jpg" width="100%" />
                                        </div>
                                    </a>
                                </div>
                            </div>
							<div class="channelUnits">
                                <div class="channelTit">
                                    <a href="javascript:void(0)">
                                        <h3>提车方便</h3>
                                        <p style="height:6rem;">销售网络遍布各县市，可就近从您方便的提车地点进行提车。</p>
                                        <div class="channelPics">
                                            <img src="${pageContext.request.contextPath}/Customer/mobile/image/fagbian.jpg" width="100%" />
                                        </div>
                                    </a>
                                </div>
                            </div>
							<div class="channelUnits">
                                <div class="channelTit">
                                    <a href="javascript:void(0)">
                                        <h3 >贴心服务</h3>
                                        <p style="height:6rem;">在整个购车环节，追求精细化的服务，而价格却更加实惠，真正帮您省钱！</p>
                                        <div class="channelPics">
                                            <img src="${pageContext.request.contextPath}/Customer/mobile/image/fuwu.jpg" width="100%" />
                                        </div>
                                    </a>
                                </div>
                            </div>
					</div>
				</section>
<!--特色频道end-->
<!--案例start-->
	<section class="shOnPromotionD clearfix">
<h3><span></span><em>更多人选择的购车新方式</em><span></span></h3>
						<!--row1-->
                    	<div class="channelBars clearfix">
							<div class="channelUnits">
                                <div class="channelTit">
                                    <a href="javascript:void(0)">
										<div class="channelPics">
                                            <img src="${pageContext.request.contextPath}/Customer/mobile/image/anli1.jpg" width="100%" />
                                        </div>
                                        <h3>马自达MX5</h3>
                                        <p>滁州市/ 王女士</p>
                                    </a>
                                </div>
                            </div>
							<div class="channelUnits">
                                <div class="channelTit">
                                    <a href="javascript:void(0)">
										<div class="channelPics">
                                            <img src="${pageContext.request.contextPath}/Customer/mobile/image/anli2.jpg" width="100%" />
                                        </div>
                                        <h3>高尔夫</h3>
                                        <p>滁州市/ 陈女士</p>
                                    </a>
                                </div>
                            </div>
							<div class="channelUnits">
                                <div class="channelTit">
                                    <a href="javascript:void(0)">
										<div class="channelPics">
                                            <img src="${pageContext.request.contextPath}/Customer/mobile/image/anli3.jpg" width="100%" />
                                        </div>
                                        <h3>速腾</h3>
                                        <p>滁州市/ 王先生</p>
                                    </a>
                                </div>
                            </div>
							
					</div>
						<!--row2-->
						<div class="channelBars clearfix">
							<div class="channelUnits">
                                <div class="channelTit">
                                    <a href="javascript:void(0)">
										<div class="channelPics">
                                            <img src="${pageContext.request.contextPath}/Customer/mobile/image/anli4.jpg" width="100%" />
                                        </div>
                                        <h3>野马T80</h3>
                                        <p>滁州市/ 张先生</p>
                                    </a>
                                </div>
                            </div>
							<div class="channelUnits">
                                <div class="channelTit">
                                    <a href="javascript:void(0)">
										<div class="channelPics">
                                            <img src="${pageContext.request.contextPath}/Customer/mobile/image/anli5.jpg" width="100%" />
                                        </div>
                                        <h3>林肯MKZ</h3>
                                        <p>滁州市/ 刘先生</p>
                                    </a>
                                </div>
                            </div>
							<div class="channelUnits">
                                <div class="channelTit">
                                    <a href="javascript:void(0)">
										<div class="channelPics">
                                            <img src="${pageContext.request.contextPath}/Customer/mobile/image/anli6.jpg" width="100%" />
                                        </div>
                                        <h3>林肯汽车</h3>
                                        <p>滁州市 / 马女士</p>
                                    </a>
                                </div>
                            </div>
					</div>
				</section>
<!--案例end-->
<!--底部信息start-->
	<section class="shOnPromotionS clearfix" >
                        <a href="">
                            <!--<div class="onPromotionSTit">
								<em class="clIndexIcons"></em>
							</div>-->
                            <div class="onPromotionInfos">
                                <div class="pl10">
                                    <h3>联系方式</h3>
                                    <p>电话：+86 15867017627</p>
                                    <div class="promotionType"><em>欢迎</em><em>来电</em></div>
                                </div>
                            </div>
							<div class="onPromotionInfos" style="margin-top: 10px;">
                                <div class="pl10">
                                    <h3>联系地址</h3><br/>
                                    <a href="${pageContext.request.contextPath}/website/index.jsp"><h3>点击查看以往车展链接➩</h3></a>
                                    <p>地址：阜阳市颍州区清河西路怡和城市广场A座606室</p>
                                    <!--<div class="promotionType"><em>欢迎</em><em>来电</em></div>-->
									
                                </div>
								
                            </div>
                           <!-- <div class="onPromotionPics">
                                <img src="image/5819a9bca59eb.png" width="100%" />
                            </div>-->
                        </a>
                    </section>
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
             <!--底部信息start-->
	<%-- <section class="shOnPromotionS clearfix" >
                        <a href="">
                            <!--<div class="onPromotionSTit">
								<em class="clIndexIcons"></em>
							</div>-->
                            <div class="onPromotionInfos">
                                <div class="pl10">
                                    <h3>联系方式</h3>
                                    <p>电话：+86 15867017627</p>
                                    <div class="promotionType"><em>欢迎</em><em>来电</em></div>
                                </div>
                            </div>
							<div class="onPromotionInfos" style="margin-top: 10px;">
                                <div class="pl10">
                                    <h3>联系地址</h3><br/>
                                    <a href="${pageContext.request.contextPath}/website/index.jsp"><h3>以往车展链接</h3></a>
                                    <p>地址：阜阳市颍州区清河西路怡和城市广场A座606室</p>
                                    <!--<div class="promotionType"><em>欢迎</em><em>来电</em></div>-->
									
                                </div>
								
                            </div>
                           <!-- <div class="onPromotionPics">
                                <img src="image/5819a9bca59eb.png" width="100%" />
                            </div>-->
                        </a>
                    </section>        --%>
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
										<p style="text-align: center;font-size:12px; color: gray;margin:2rem;">备案号：京ICP15029289号</p>
<!--底部信息end-->

</body>
<script type="text/javascript" src="${pageContext.request.contextPath}/Customer/mobile/js/jquery2.1.4.min.js" ></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/Customer/mobile/js/jquery.cookie.js" ></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/Customer/mobile/js/TouchSlide.1.new.js"></script>

</html>