<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html lang="en">

<head>

<title>安徽众民网络科技有限公司 </title>
<!-- custom-theme -->

<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="" />
<%-- <link rel="shortcut icon"  href="${pageContext.request.contextPath}/image/logo.ico"> --%>
	<link rel="shortcut icon"  href="${pageContext.request.contextPath}/images/favicon.ico" type="image/x-icon" />



<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false);
		function hideURLbar(){ window.scrollTo(0,1); } </script>	
		


<link rel="stylesheet" href="${pageContext.request.contextPath}/website/css/flexslider.css" type="text/css" media="all" />

<link href="${pageContext.request.contextPath}/website/css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
<link href="${pageContext.request.contextPath}/website/css/style.css" rel="stylesheet" type="text/css" media="all" />

<link href="${pageContext.request.contextPath}/website/css/font-awesome.css" rel="stylesheet"> 

<link href="http://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i,800,800i&amp;subset=cyrillic,cyrillic-ext,greek,greek-ext,latin-ext,vietnamese" rel="stylesheet">
<link href="http://fonts.googleapis.com/css?family=Montserrat:100,100i,200,200i,300,300i,400,400i,500,500i,600,600i,700,700i,800,800i,900,900i&amp;subset=latin-ext,vietnamese" rel="stylesheet">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/website/css/SG_area_select.css">
<script type="text/javascript" src="${pageContext.request.contextPath}/website/js/jquery.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/website/js/iscroll.js"></script>   
<style type="text/css">
body{ background:#EEEEEE;margin:0; padding:0; font-family:"微软雅黑", Arial, Helvetica, sans-serif; }
a{ color:#000; text-decoration:none;}
a:hover{color:#990000;}
.top{ margin:5px auto; color:#990000; text-align:center;}
.info select{ border:1px #993300 solid; background:#FFFFFF;}
.info{ margin:5px; text-align:center;}
.info #show{ color:#3399FF; }
.bottom{ text-align:right; font-size:12px; color:#CCCCCC; width:1000px;}
.zhongmin{ margin-top:15px; height}
</style>

</head>
<body>
		
<!-- banner -->
<div class="banner">
	<div class="banner-dott">
				<div class="top-bar">
				<div class="container">
					<div class="header">
						<nav class="navbar navbar-default">
							<div class="navbar-header navbar-left">
								<button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
									<span class="sr-only">Toggle navigation</span>
									<span class="icon-bar"></span>
									<span class="icon-bar"></span>
									<span class="icon-bar"></span>
								</button>
								<h1 class="zhongmin" ><a class="navbar-brand" href="${pageContext.request.contextPath}/website/index.jsp">众民汽车</span></a></h1>
							</div>
							<!-- Collect the nav links, forms, and other content for toggling -->
							<div class="collapse navbar-collapse navbar-right" id="bs-example-navbar-collapse-1">
								<nav class="cl-effect-15" id="cl-effect-15">
									<ul class="nav navbar-nav">
										
										<li><a id="selectBtn2" style="font-weight: bold;cursor: pointer;" href="${pageContext.request.contextPath}/Carindex/pc/pcindex.jsp">立即订票</a></li>
										<li class="active"><a href="${pageContext.request.contextPath}/website/index.jsp">主页</a></li>
													<li><a href="${pageContext.request.contextPath}/website/about.html">关于我们</a></li>
												
													<li><a href="${pageContext.request.contextPath}/website/contact.html">联系我们</a></li>
												</ul>
									
								</nav>
							</div>
						</nav>
				</div>
			</div>
		</div>
		<!-- //Top-Bar -->
		<!-- w3-banner -->
			<div class="w3-banner">
				<div id="typer"></div>
					<p>2018年2月10日-15日，中国人保众民汽车新春购车展 钜惠来袭。本期特卖会是厂家直属活动，厂家领导亲临现场公布厂家政策，承诺买贵补差价！！！  
					厂家直销，底价钜惠！买车最佳时机就在眼前！全系车型，总有一款适合你！ 购车即可享受多重大礼，优惠多多，一年仅此一次，我们期待您的到来。</p>
				<div class="selectcity" id="selectBtn">
				
					
					<%-- <form  action="${pageContext.request.contextPath}/city/localhostCity.action" method="get">
						<div>
							<select id="s_province" name="s_province" style="border-radius:5px;line-height:20px;"></select>  
						    <select id="s_city" name="s_city" style="border-radius:5px;line-height:20px;"></select>  
						    <select id="s_county" name="s_county" style="border-radius:5px;line-height:20px;"></select><p>
						      	<div style="margin-top:2rem;">
										<input  type="submit" value="立即订票"/>	
							 	</div>    
					    </div>
				    </form> --%>
				    
				    
				    
					<%-- 	<div>
							<select id="s_province" name="s_province" style="border-radius:5px;line-height:20px;"></select>  
						    <select id="s_city" name="s_city" style="border-radius:5px;line-height:20px;"></select>  
						    <select id="s_county" name="s_county" style="border-radius:5px;line-height:20px;"></select><p>
						      	<div style="margin-top:2rem;">
										<a href="${pageContext.request.contextPath}/landingpage/pc/pcindex.jsp"><input  type="submit" value="立即订票"/></a>	
							 	</div>    
					    </div>
				 
				    
				     --%>
				    
				    
				    
				    
				    
				    
				    
				    
				</div>    
				    <script class="resources library" src="${pageContext.request.contextPath}/website/js/area.js" type="text/javascript"></script>
				    
				    <script type="text/javascript">_init_area();</script>
				  
			
				
				<script type="text/javascript">
				var Gid  = document.getElementById ;
				var showArea = function(){
					Gid('show').innerHTML = "<h3>省" + Gid('s_province').value + " - 市" + 	
					Gid('s_city').value + " - 县/区" + 
					Gid('s_county').value + "</h3>"
											}
				Gid('s_county').setAttribute('onchange','showArea()');
				</script>
							
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
					
				</div>
				<script type="text/javascript">
					$(document).ready(function(){
						$('#selectBtn').on('click',function(){
							$.areaSelect(); 
						})	
					})
				</script>
				<script type="text/javascript">
					$(document).ready(function(){
						$('#selectBtn2').on('click',function(){
							$.areaSelect(); 
						})	
					})
				</script>
			</div>
					
		
	</div>
</div>




	
				
				







<!-- //about -->
	<!-- counter -->

	<div class="about">
		<div class="container">
			
			<h2 class="w3l-titles">众民车展</h2>
			<div class="w3l-about-grids">
				<div class="col-md-6 w3ls-about-left">
					<div class="agileits-icon-grid">
						<div class="icon-left hvr-radial-out">
							<i class="fa fa-smile-o" aria-hidden="true"></i>
						</div>
						<div class="icon-right">
							<h5>体验真切，看车便利</h5>
							<p>在网上翻来覆去看了对比很长一段时间，可还是不知道实车是怎么样？车展恰是一个好的体验平台。车展现场品牌多、车型全，您可以轻松看遍所有车。</p>
						</div>
						<div class="clearfix"> </div>
					</div>
					<div class="agileits-icon-grid">
						<div class="icon-left hvr-radial-out">
							<i class="fa fa-usd" aria-hidden="true"></i>
						</div>
						<div class="icon-right">
							<h5>款式众多，价格透明</h5>
							<p>"货比三家不吃亏"，汇集了许多同价位，同级别的不同品牌车型，一一对比，买到自己满意的车。网上低价太虚？，4S店从不在电话里报底价，去到店里报价是行情价，而车展现场有明码标价的优惠信息。</p>
						</div>
						<div class="clearfix"> </div>
					</div>
					<div class="agileits-icon-grid">
						<div class="icon-left hvr-radial-out">
							<i class="fa fa-globe" aria-hidden="true"></i>
						</div>
						<div class="icon-right">
							<h5>提车方便，售后完善</h5>
							<p>提车之前不要办理任何手续，您只需要在现场签订简单的一个合同，缴纳订金，在约定的时间内，随时可以前往提车，大大节省您买车的时间。车展经销商都是专业的4s店经销商，您不仅能享受到专业的售后服务爱车还能享受免费保养！</p>
						</div>
						<div class="clearfix"> </div>
					</div>
				</div>
				<div class="col-md-6 w3ls-about-right">
					<div class="w3ls-about-right-img">
						
					</div>
				</div>
				<div class="clearfix"> </div>
			</div>
		</div>
	</div>
	<!-- //about -->
	<!-- counter -->
	<div class="services-bottom stats services">
	<div class="banner-dott1">
		<div class="container">
		
		  <div class="wthree-agile-counter">
		  <div class="col-md-3 w3_agile_stats_grid-top">
			<div class="w3_agile_stats_grid">
				<div class="agile_count_grid_left">
					<span class="glyphicon glyphicon-thumbs-up" aria-hidden="true"></span>
				</div>
				<div class="agile_count_grid_right">
					<p class="counter">1</p> 
				</div>
				<div class="clearfix"> </div>
				<h4>中国人保独家合作</h4>
			</div>
		</div>
		<div class="col-md-3 w3_agile_stats_grid-top">
			<div class="w3_agile_stats_grid">
				<div class="agile_count_grid_left">
					<span class="glyphicon glyphicon-user" aria-hidden="true"></span>
				</div>
				<div class="agile_count_grid_right">
					<p class="counter">243</p> 
				</div>
				<div class="clearfix"> </div>
				<h4>厂家合作推广</h4>
			</div>
		</div>
		<div class="col-md-3 w3_agile_stats_grid-top">
			<div class="w3_agile_stats_grid">
				<div class="agile_count_grid_left">
					<span class="glyphicon glyphicon-heart-empty" aria-hidden="true"></span>
				</div>
				<div class="agile_count_grid_right">
					<p class="counter">8346</p> 
				</div>
				<div class="clearfix"> </div>
				<h4>车主节省8000余万</h4>
			</div>
		</div>
		<div class="col-md-3 w3_agile_stats_grid-top">
			<div class="w3_agile_stats_grid">
				<div class="agile_count_grid_left">
					<span class="fa fa-trophy" aria-hidden="true"></span>
				</div>
				<div class="agile_count_grid_right">
					<p class="counter">600</p> 
				</div>
				<div class="clearfix"> </div>
				<h4>600多场推广经验</h4>
			</div>
		</div>
			<div class="clearfix"> </div>
		</div>
	</div>
	</div>
</div>
<!-- //counter -->
	<!-- advantages -->
	<div class="two-grids">
		<div class="container">
			<h3 class="w3l-titles">优势与保障</h3>
			<p class="w3layouts_dummy_para"> 全国30城市600余场特卖活动保障</p>
			<div class="col-md-6 w3_two_grid_right">
				<div class="w3_two_grid_right1">
					<div class="col-xs-3 w3_two_grid_right_grid">
						<div class="w3_two_grid_right_grid1">
							<i class="fa fa-hourglass-o" aria-hidden="true"></i>
						</div>
					</div>
					<div class="col-xs-9 w3_two_grid_right_gridr">
						<h4>优先提车</h4>
						<p>本期特卖会当天所订购车辆，均可享受厂家优先提车权。</p>
					</div>
					<div class="clearfix"> </div>
				</div>
				<div class="w3_two_grid_right1">
					<div class="col-xs-3 w3_two_grid_right_grid">
						<div class="w3_two_grid_right_grid1">
							<i class="fa fa-clone" aria-hidden="true"></i>
						</div>
					</div>
					<div class="col-xs-9 w3_two_grid_right_gridr">
						<h4>全国联保</h4>
						<p>现场购车，在全国任何一品牌正规4S店均可进行维修保养。</p>
					</div>
					<div class="clearfix"> </div>
				</div>
				<div class="w3_two_grid_right1">
					<div class="col-xs-3 w3_two_grid_right_grid">
						<div class="w3_two_grid_right_grid1">
							<i class="fa fa-external-link" aria-hidden="true"></i>
						</div>
					</div>
					<div class="col-xs-9 w3_two_grid_right_gridr">
						<h4>订金可退</h4>
						<p>本期特卖会当天订车所缴纳的意向金，不满意100%退款，中国人保承托。</p>
					</div>
					<div class="clearfix"> </div>
				</div>
			</div>
			<div class="col-md-6 w3_two_grid_right">
				<div class="w3_two_grid_right1">
					<div class="col-xs-3 w3_two_grid_right_grid">
						<div class="w3_two_grid_right_grid1">
							<i class="fa fa-thumbs-o-up" aria-hidden="true"></i>
						</div>
					</div>
					<div class="col-xs-9 w3_two_grid_right_gridr">
						<h4>车源保障</h4>
						<p>厂家直属特卖会，活动厂家车源报备，当天购车享厂家直供。</p>
					</div>
					<div class="clearfix"> </div>
				</div>
				<div class="w3_two_grid_right1">
					<div class="col-xs-3 w3_two_grid_right_grid">
						<div class="w3_two_grid_right_grid1">
							<i class="fa fa-check-square-o" aria-hidden="true"></i>
						</div>
					</div>
					<div class="col-xs-9 w3_two_grid_right_gridr">
						<h4>价格保障</h4>
						<p>厂家领导亲临现场公布厂家政策，订车享厂家价格保障。</p>
					</div>
					<div class="clearfix"> </div>
				</div>
				<div class="w3_two_grid_right1">
					<div class="col-xs-3 w3_two_grid_right_grid">
						<div class="w3_two_grid_right_grid1">
							<i class="fa fa-square-o" aria-hidden="true"></i>
						</div>
					</div>
					<div class="col-xs-9 w3_two_grid_right_gridr">
						<h4>售后维权</h4>
						<p>订车后出现汽车质量问题，我们协助您向4S店协商解决。</p>
					</div>
					<div class="clearfix"> </div>
				</div>
			</div>
			<div class="clearfix"> </div>
		</div>
	</div>
	<!-- //advantages -->

<!-- Clients -->
<div class="clients">
	<div class="banner-dott1">
	<h3 class="w3l-titles">购车案例</h3>
		<div class="container">
			<h4>客户如何评价我们的车展活动？</h4>
			<section class="slider">
				<div class="flexslider">
					<ul class="slides">
						<li>
							<img src="${pageContext.request.contextPath}/website/images/c11.jpg" alt="" />
								<p>“我是在17年9月的时候参加众民汽车举办的车展上买的车，是一辆思域，当时同时看上的还有昂克塞拉，这两款车一直踌躇不定，在我心里难分高下，参加车展后就在现场直观的比较两款车，还试驾了一下，比较了一下优惠，还是选择了思域自动挡的这款车，我很满意。”</p>
								<div class="client">
									<h5>阜阳车主：宋先生</h5>
								</div>
						</li>
						<li>
							<img src="${pageContext.request.contextPath}/website/images/c22.jpg" alt="" />
								<p>家里一直有买一辆车的需求，正好去年五月的时候众民在六安有一场车展，当时在那旁边办事就去逛了一下，看到别克英朗这款车，很符合我的需求，当即就区询问了价格，比我之前区4s店了解的还少了将近一万块，随机我就付了定金。</p>
								<div class="client">
									<h5>六安车主：黄先生</h5>
								</div>
						</li>
						<li>
							<img src="${pageContext.request.contextPath}/website/images/c33.jpg" alt="" />
								<p>我是在九江出差的时候参加的活动车展，因为我就是阜阳人，所以考虑到出行的方便就联系众民的工作人员，帮我办的阜阳的牌照，买的哈弗H6，空间大皮实，很满意，适合出差开！</p>
								<div class="client">
									<h5>九江车主：王先生</h5>
								</div>
						</li>
						<li>
							<img src="${pageContext.request.contextPath}/website/images/c44.jpg" alt="" />
								<p>一直想买一辆车，但是平常上班买有很好的机会去到4s店逛逛，这次车展一次看了很多车，再结合朋友评价及厂商的优惠，选择了帝豪，现在开的很方便也很满意。</p>
								<div class="client">
									<h5>淮南车主：张先生</h5>
								</div>
						</li>
					</ul>
				</div>
			</section>
		</div>
	</div>
</div>
<!-- //Clients -->
<!-- footer -->
	<div class="footer">
		<div class="container">
			<div class="agileits_w3layouts_footer_grids">
				<div class="col-md-4 agileits_w3layouts_footer_grid">
					<h3>联系电话</h3>
					<ul>
						<!-- <li><span>固话:</span> 0558 2302 232</li> -->
						<li><span>手机:</span> 15867017627</li>
					</ul>
				</div>
				<div class="col-md-4 agileits_w3layouts_footer_grid">
					<h3>地址</h3>
					<p>阜阳市颍州区 <i>清河西路怡和城市广场A座606室</i></p>
				</div>
				<div class="col-md-4 agileits_w3layouts_footer_grid">
					<h3>在线联系</h3>
					<ul>
						<li><span>Email :</span> <a href="mailto:info@example.com">admin@zmauto.com.cn</a></li>
						<li><span>QQ :</span> <a href="mailto:info@enquiry.com">2117881801</a></li>
					</ul>
				</div>
				<div class="clearfix"> </div>
			</div>
		</div>
	</div>
	<div class="wthree_copy_right copyright">
		<div class="container">
			<p>Copyright &copy; 2018.安徽众民网络科技有限公司     版权所有 | 京ICP备15029289号 <a target="_blank" href="http://sc.chinaz.com/moban/"></a></p>
		</div>
	</div>
<!-- //footer -->
<!-- bootstrap-modal-pop-up -->
	<div class="modal video-modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModal">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header">
					众民汽车
					<button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>						
				</div>
					<div class="modal-body">
						<img src="${pageContext.request.contextPath}/website/images/1.jpg" alt=" " class="img-responsive" />
						<p>Ut enim ad minima veniam, quis nostrum 
							exercitationem ullam corporis suscipit laboriosam, 
							nisi ut aliquid ex ea commodi consequatur? Quis autem 
							vel eum iure reprehenderit qui in ea voluptate velit 
							esse quam nihil molestiae consequatur, vel illum qui 
							dolorem eum fugiat quo voluptas nulla pariatur.
							<i>" Quis autem vel eum iure reprehenderit qui in ea voluptate velit 
								esse quam nihil molestiae consequatur.</i></p>
					</div>
			</div>
		</div>
	</div>
<!-- //bootstrap-modal-pop-up --> 
<!-- js -->
	<script type="text/javascript" src="${pageContext.request.contextPath}/website/js/jquery-2.1.4.min.js"></script>
	<!-- for bootstrap working -->
	<script src="${pageContext.request.contextPath}/website/js/bootstrap.js"></script>
	<!-- //for bootstrap working -->
<!-- //js -->
<!-- //here starts scrolling icon -->
<script src="${pageContext.request.contextPath}/website/js/SmoothScroll.min.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath}/website/js/move-top.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath}/website/js/easing.js"></script>
	<!-- here stars scrolling script -->
	<script type="text/javascript">
		$(document).ready(function() {
			/*
				var defaults = {
				containerID: 'toTop', // fading element id
				containerHoverID: 'toTopHover', // fading element hover id
				scrollSpeed: 1200,
				easingType: 'linear' 
				};
			*/
								
			$().UItoTop({ easingType: 'easeOutQuart' });
								
			});
	</script>
	<!-- //here ends scrolling script -->
<!-- //here ends scrolling icon -->

<!-- scrolling script -->
<script type="text/javascript">
	jQuery(document).ready(function($) {
		$(".scroll").click(function(event){		
			event.preventDefault();
			$('html,body').animate({scrollTop:$(this.hash).offset().top},1000);
		});
	});
</script> 
<!-- //scrolling script -->

<!-- FlexSlider-JavaScript -->
	<script defer src="${pageContext.request.contextPath}/website/js/jquery.flexslider.js"></script>
	<script type="text/javascript">
		$(function(){
			SyntaxHighlighter.all();
				});
				$(window).load(function(){
				$('.flexslider').flexslider({
					animation: "slide",
					start: function(slider){
						$('body').removeClass('loading');
					}
			});
		});
	</script>
<!-- //FlexSlider-JavaScript -->

<!-- typer js--><!-- For banner text -->
<script src='${pageContext.request.contextPath}/website/js/jquery.typer.js'></script>
	<script>
						var win = $(window),
							foo = $('#typer');

						foo.typer(['众民汽车携手中国人保', '为您提供安全/便捷/一站式的车展购车体验']);

						// unneeded...
						win.resize(function(){
							var fontSize = Math.max(Math.min(win.width() / (1 * 10), parseFloat(Number.POSITIVE_INFINITY)), parseFloat(Number.NEGATIVE_INFINITY));

							foo.css({
								fontSize: fontSize * .8 + 'px'
							});
						}).resize();
					</script>
<!-- //typer js--><!-- //For banner text -->

<!-- stats -->
	<script src="${pageContext.request.contextPath}/website/js/jquery.waypoints.min.js"></script>
	
	<!-- cities -->
	<script src="${pageContext.request.contextPath}/website/js/jquery.countup.js"></script>
		<script>
			$('.counter').countUp();
		</script>
<!-- //stats -->

</body>
</html>