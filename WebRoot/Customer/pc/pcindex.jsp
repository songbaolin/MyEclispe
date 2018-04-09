<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="icon" href="${pageContext.request.contextPath}/Customer/pc/images/zmlogoicon.png" type="image/x-icon">
<title>众民汽车-垂直购</title>
<!--gundong><-->
        <meta charset="utf-8" />
        <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/sweetalert.css"/>      
        <script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery.js"></script> 
        <script type="text/javascript" src="${pageContext.request.contextPath}/js/sweetalert.min.js"></script>
        <script src="js/jquery.min.js"></script>
        <script type="text/javascript" src="${pageContext.request.contextPath}/Customer/pc/js/Lunbo.js" ></script>
        <style type="text/css">
            /** {padding: 0;margin: 0;}*/
            /*body {background: #f3f3f3;}*/
            .Box {position: relative;margin-top: 10px;}
            .Box .content {width: 1200px;margin: 0 auto;}
            .Box h2 {text-align: center;margin-bottom: 35px;padding-top: 250px;}
            .Box .Box_con {position: relative;margin-right: 160px;}
            .Box .Box_con .btnl {position: absolute;}
            .Box .Box_con .btn {display: block;width: 41px;height: 41px;position: absolute;top: 80px;cursor: pointer;}
            .Box .Box_con .btnl {background: url(Customer/pc/images/jtl02.png) no-repeat center;left: -72px;}
            .Box .Box_con .btnr {background: url(Customer/pc/images/jtr02.png) no-repeat center;right: -72px;}
            .Box .Box_con .btnl:hover {background: url(Customer/pc/images/jtl03.png) no-repeat center;}
            .Box .Box_con .btnr:hover {background: url(Customer/pc/images/jtr03.png) no-repeat center;}
            .Box .Box_con .conbox {position: relative;overflow: hidden;}
            .Box .Box_con .conbox ul {position: relative;list-style: none;}
            .Box .Box_con .conbox ul li {float: left;width: 250px;height: 330px;margin-left: 20px;overflow: hidden;border: 1px solid gray;}
            .Box .Box_con .conbox ul li:first-child {margin-left: 0;}
            .Box .Box_con .conbox ul li img {display: block;width: 285px;height: 200px;transition: all 0.5s;}
            .Box .Box_con .conbox ul li:hover img {transform: scale(1.1);}
            .Box .BoxSwitch {margin-top: 30px;text-align: center;}
            .Box .BoxSwitch span {display: inline-block;*display: inline;*zoom: 1;vertical-align: middle;width: 30px;height: 3px;background: #ccc;margin: 0 5px;cursor: pointer;}
            .Box .BoxSwitch span.cur {background: red;}
            .pricetag{margin-top:15px;}
            .pricetag p{color: #dd2a2a;font-size: 16px;font-weight: bold;margin-left: 4px;margin-bottom: 3px;}
            .pricetag s{margin-left: 6px;color: #333;}
            .pricetag span{margin-left:4px;color:gray;margin:6px;}
            .pricetag button{ background-color:#dd2a2a;color: white;width: 22px;height: 10px;}
/*body {font:12px/180% "微软雅黑", Arial, Helvetica, sans-serif;}*/
/* film_focus */
.film_focus {
    width:857px;
    height:340px;
    overflow:hidden;
    position:relative;
    margin:20px auto;
}
.film_focus .film_focus_imgs_wrap {
    background:url(Customer/pc/images/load.gif) no-repeat center center;
}
.film_focus ul.film_focus_imgs {
    height:340px;
    height:9999em;
    position:absolute;
    right:0;
    top:0;
    overflow:hidden;
    
}
.film_focus ul.film_focus_imgs li {
    height:340px;
    overflow:hidden;

}
.film_focus ul.film_focus_imgs li img {
    height:340px;
    width:626px;
}
.film_focus .film_focus_desc h3 {
    height:45px;
    line-height:45px;
    overflow:hidden;
    position:absolute;
    left:232px;
    bottom:0;
    background:rgba(f, f, f, .5);
    color:#fff;
    width:100%;
    padding-left:20px;
    z-index:99;
    font-size:16px;
 filter:progid:DXImageTransform.Microsoft.gradient(enabled='true', startColorstr='#7F000000', endColorstr='#7F000000');
}
.film_focus ul.film_focus_nav {
    width:232px;
    height:340px;
    position:absolute;
    left:0;
    top:0;
    z-index:100;
}
.film_focus ul.film_focus_nav li {
    height:47px;
    background:#d7d7dc;
    margin:0px 0px 5px 0;
    padding:0px 18px 0 19px;
    position:relative;
    width:190px;
    cursor: pointer;
    cursor: hand;
    color:#333;
    font-weight:bold;
    font-size:14px;
    overflow:hidden;
    line-height:47px;
}
.film_focus ul.film_focus_nav li.cur {
    background:url(Customer/pc/images/hd_on.png) no-repeat;
    width:190px;
    height:132px;
    left:0px;
    padding:0px 33px 0 25px;
    _background:url(Customer/pc/images/hd_on.png) no-repeat 0 0;
    word-break:break-all;
    color:#444;
    font-weight:bold;
    font-size:22px;
    overflow:hidden;
    line-height:30px;
}
.film_focus ul.film_focus_nav li b {
    display:none
}
.film_focus ul.film_focus_nav li b span {
    display:block
}
.film_focus ul.film_focus_nav li.cur b {
    display:block;
    vertical-align: middle;
    display: table-cell;
    height:132px;
}
.film_focus ul.film_focus_nav li.cur span {
    display:none}
        </style>
    <script type="text/javascript" src="${pageContext.request.contextPath}/Customer/pc/js/jqueryMapCard.js"></script> 
    <!--gundong><-->
<link href="${pageContext.request.contextPath}/Customer/pc/css/index.css" rel="stylesheet" type="text/css" />
<link href="${pageContext.request.contextPath}/Customer/pc/css/css.css" rel="stylesheet" type="text/css" />
 <link rel="stylesheet" href="${pageContext.request.contextPath}/Customer/pc/css/style.css"/>
 <link rel="stylesheet" href="${pageContext.request.contextPath}/Customer/pc/css/luara.left.css"/>
<script src="${pageContext.request.contextPath}/Customer/pc/js/ScrollPic.js" type="text/javascript"></script>
<!--<script type="text/javascript" src="js/cartype.js"></script>-->
<!-- <script src="${pageContext.request.contextPath}/Customer/pc/js/index.js" type="text/javascript"></script> -->
<script type="text/javascript" src="${pageContext.request.contextPath}/Customer/pc/js/jquery.js"></script>    
    <meta http-equiv="Content-Type" content="text/html; charset=GBK">
        <meta content="telephone=no" name="format-detection">
        <script type="text/javascript" src="${pageContext.request.contextPath}/Customer/pc/js/jquery.js"></script>
        <script type="text/javascript" src="${pageContext.request.contextPath}/Customer/pc/js/cartype.js"></script>
<title>级联提交信息表</title>
        <meta name="keywords" content="级联提交信息表">
        <meta name="description" content="级联提交信息表">
        <script language="javascript">
            function killErrors() {return true; }
            window.onerror = killErrors;
        </script>
    
<script language="javascript">
            function killErrors() {return true; }
            window.onerror = killErrors;
        </script>
</head>
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
            window.location.href = '${pageContext.request.contextPath}/Customer/mobile/mobileindex.jsp' ; 
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
   <div class="main">
           <div class="top">
                <div class="top_1">
                    <h3>您好,欢迎来到众民汽车垂直购网站!</h3>
                    <p>
                        <a href="${pageContext.request.contextPath}/website/index.jsp">车展活动</a> | <a href="#">联系众民</a> | <a href="">购车流程</a>
                    </p>
                </div>
                <div class="top_2">
                    <div class="login"><img src="${pageContext.request.contextPath}/Customer/pc/images/index_nav05.jpg"></div>
                    <div class="lx"><img src="${pageContext.request.contextPath}/Customer/pc/images/index_phone08.jpg"></div>
                </div>

                <script type="text/javascript">
                  //heaernavcs();
                  initCommonHeader();
                  if (MARK == "") var MARK = "index";
                  initCommonHeaderKeywords(MARK);
                  $(function () {
                      var cururl = location.href;
                      var i = 0;
                      var count = $(".nav ul li a").length;
                      $(".nav ul li a").each(function (index) {
                      var url = $(this).attr("href");
                      if (url.length > 4 && cururl.substring(cururl.length - url.length).toUpperCase() == url.toUpperCase()) {
                      $(this).addClass("on");
                      return;
                       }
                       i++;
                       });
                       if (i == count) {
                       $(".nav ul li a:eq(0)").addClass("on");
                       }
                      });
                </script>
           </div>
           <div class="banner" style=" position:relative;">
              <script src="${pageContext.request.contextPath}/Customer/pc/js/jquery-1.8.3.min.js"></script>
                <!--Luara js文件-->
             <script src="${pageContext.request.contextPath}/Customer/pc/js/jquery.luara.0.0.1.min.js"></script>

             <!--Luara图片切换骨架begin-->
              <div class="example2">
                  <ul>
                      <li style="width:100%"><img src="${pageContext.request.contextPath}/Customer/pc/images/bluebanner.jpg"  alt="1"/></li>
                      <li style="width:100%"><img src="${pageContext.request.contextPath}/Customer/pc/images/orangebanner.jpg" alt="2"/></li>
                      <!--<li style=" width:100% !important;"><img src="images/banner3.jpg" alt="3"/></li>
                      <li style=" width:100% !important;"><img src="images/banner4.jpg" alt="4"/></li>-->
                  </ul>
                  <ol>
                      <li></li>
                      <li></li>
<!--                      <li></li>
                      <li></li>-->
                  </ol>
              </div>
         <!--Luara图片切换骨架end-->
            <script>
                $(function(){
                   /*  <!--调用Luara示例--> */
                    $(".example2").luara({width:"1920",height:"500",interval:3000,selected:"seleted",deriction:"left"});

                });
            </script>
            
      <div class="bd_box">
                <div class="bd" id="choosecar">
                      <h3>快速报名</h3>
                        <div class="bd_table">
                          <div>
                            <form action="${pageContext.request.contextPath}/customer/add.action" method="post" name="form" id="form" onsubmit="return ZtBMUser();">
                              <input name="UnionID" id="UnionID" value="27" type="hidden">
                              <div>
                                <input id="realname" name="c_name" placeholder="请输入您的姓名" type="search">
                              </div>
                              <div>
                                <input name="c_mobile" id="mp" placeholder="请输入您的手机号码" type="search">
                              </div>
                              <div class="selects" id="brand">
                                <select name="c_carBrand" id="c_carBrand" class="selbrands">
                                </select>
                              </div>
                              <div>
                                <select name="c_carType" id="c_carType">
                                  <option value="" selected="selected">请选择车系</option>
                                </select>
                              </div>
                              <div id="series">
                                <select name="c_sex" id="sex" >
                                  <option value="" selected="selected">是否全款购车</option>
                                  <option value="全款购车">全款购车</option>
                                  <option value="贷款购车">贷款购车</option>
                                </select>
                              </div>
                              <div>
                                <script language="javascript" defer>new PCAS("c_carBrand","c_carType"); </script>
                                <input placeholder="门票详细快递地址及备注" name="c_address" id="remark" type="search">
                              </div>
                              <div>
                                <input name="keywords2" id="keywords" type="hidden">
                              </div>
                              <div>
                                <input style=" background:#E7D16D; color:#dd2a2a; margin-top:20px; cursor:pointer;" value="免费报名领票" type="submit">
                              </div>
                            </form>
                          </div>
                        </div>
                      </div>
                    </div>

          </div>
           <div class="content">
                 <!--什么是垂直购-->
                <div class="list_2">
<div class="list_2_2">
                <ul>
                                  <li class="li_1">
                                     <div class="li_p">
                                         <span>1.提交车型</span>
                                         <p>线上选择您心仪或有意向的车型，提交后即可免费询全国底价。</p>
                                     </div>
                                  </li>
                                  <li class="li_2">
                                    <div class="li_p">
                                       <span>2.客服报价</span>
                                       <p>客服会在查询当时实时全国最低价后给您相应的报价回电。</p>
                                    </div>
                                  </li>
                                  <li class="li_3">
                                     <div class="li_p">
                                         <span>3.线下比价</span>
                                         <p>当您对价格满意后，可到各地区进行看车比价。</p>
                                     </div>
                                  </li>
                                  <li class="li_4">
                                     <div class="li_p">
                                         <span>4.付款提车</span>
                                         <p>满意即可按咨询价格签订合同购车。</p>
                                     </div>
                                  </li>
        </ul>
                  </div>
             </div>
                <!--什么是垂直购网站-->

                
           </div>
        <!--gundong-->
                   <div class="content">
                <div class="list_1">
                    <span>Hot Sale</span>
                    <p>热销底价品牌</p>
                    <p><img src="${pageContext.request.contextPath}/Customer/pc/images/index_23.jpg"></p>
                    <h3>全品牌保障，多渠道提货，让您最底价购车！</h3>
                </div>
                 <!--什么是垂直购网站-->
                <div class="list_2">
                    <div class="list_2_1">
                        
    <div class="Box">
        <div class="content">
            <div class="Box_con clearfix">
                <span class="btnl btn" id="btnl"></span>
                <span class="btnr btn" id="btnr"></span>
                
                <div class="conbox" id="BoxUl">
                    <ul>
                        <li class="cur">
                            <img src="${pageContext.request.contextPath}/Customer/pc/images/baolai.jpg" alt=""/>
                            <div class="pricetag">
                                <a style="margin-left: 4px;color: black;font-size: 0.8rem;">一汽-大众宝来</a>
                                <p>垂直购价：？？？</p>
                                <s>厂商指导价：10.78-15.38万</s>
                                <div class="clear"></div>
                                <span>已有 268 人在线关注此车型</span>
                                <div class="clear"></div>
                                <a href="#choosecar">
                                <button style="background-color:#dd2a2a; color:white;width:80px;height:40px;border: none;margin-left: 4px;" >立即咨询</button>
                                </a>
                            </div>
                        </li>
                        <li class="cur">
                            <img src="${pageContext.request.contextPath}/Customer/pc/images/magotan.jpg" alt=""/>
                            <div class="pricetag">
                                <a style="margin-left: 4px;color: black;font-size: 0.8rem;">一汽-大众迈腾</a>
                                <p>垂直购价：？？？</p>
                                <s>厂商指导价：18.99-31.69万</s>
                                <div class="clear"></div>
                                <span>已有 226 人在线关注此车型</span>
                                <div class="clear"></div>
                                <a href="#choosecar">
                                <button style="background-color:#dd2a2a; color:white;width:80px;height:40px;border: none;margin-left: 4px;" >立即咨询</button>
                                </a>
                            </div>
                        </li>
                        <li class="cur">
                            <img src="${pageContext.request.contextPath}/Customer/pc/images/sagita.jpg" alt=""/>
                            <div class="pricetag">
                                <a style="margin-left: 4px;color: black;font-size: 0.8rem;">一汽-大众速腾</a>
                                <p>垂直购价：？？？</p>
                                <s>厂商指导价：13.18-21.88万</s>
                                <div class="clear"></div>
                                <span>已有 196 人在线关注此车型</span>
                                <div class="clear"></div>
                                <a href="#choosecar">
                                <button style="background-color:#dd2a2a; color:white;width:80px;height:40px;border: none;margin-left: 4px;" >立即咨询</button>
                                </a>
                            </div>
                        </li>
                        <li class="cur">
                            <img src="${pageContext.request.contextPath}/Customer/pc/images/golf.jpg" alt=""/>
                            <div class="pricetag">
                                <a style="margin-left: 4px;color: black;font-size: 0.8rem;">一汽-大众高尔夫</a>
                                <p>垂直购价：？？？</p>
                                <s>厂商指导价：12.19-23.99万</s>
                                <div class="clear"></div>
                                <span>已有 297 人在线关注此车型</span>
                                <div class="clear"></div>
                                <a href="#choosecar">
                                <button style="background-color:#dd2a2a; color:white;width:80px;height:40px;border: none;margin-left: 4px;" >立即咨询</button>
                                </a>
                            </div>
                        </li>
                        <li class="cur">
                            <img src="${pageContext.request.contextPath}/Customer/pc/images/jetta.jpg" alt=""/>
                            <div class="pricetag">
                                <a style="margin-left: 4px;color: black;font-size: 0.8rem;">一汽-大众捷达</a>
                                <p>垂直购价：？？？</p>
                                <s>厂商指导价：7.99-13.49万</s>
                                <div class="clear"></div>
                                <span>已有 217 人在线关注此车型</span>
                                <div class="clear"></div>
                                <a href="#choosecar">
                                <button style="background-color:#dd2a2a; color:white;width:80px;height:40px;border: none;margin-left: 4px;" >立即咨询</button>
                                </a>
                            </div>
                        </li>
                        <li class="cur">
                            <img src="${pageContext.request.contextPath}/Customer/pc/images/ctrak.jpg" alt=""/>
                            <div class="pricetag">
                                <a style="margin-left: 4px;color: black;font-size: 0.8rem;">一汽-大众蔚领</a>
                                <p>垂直购价：？？？</p>
                                <s>厂商指导价：11.69-16.29万</s>
                                <div class="clear"></div>
                                <span>已有 186 人在线关注此车型</span>
                                <div class="clear"></div>
                                <a href="#choosecar">
                                <button style="background-color:#dd2a2a; color:white;width:80px;height:40px;border: none;margin-left: 4px;" >立即咨询</button>
                                </a>
                            </div>
                        </li>
                        <li class="cur">
                            <img src="${pageContext.request.contextPath}/Customer/pc/images/golfjialv.jpg" alt=""/>
                            <div class="pricetag">
                                <a style="margin-left: 4px;color: black;font-size: 0.8rem;">一汽-大众高尔夫·嘉旅</a>
                                <p>垂直购价：？？？</p>
                                <s>厂商指导价：13.19-19.79万</s>
                                <div class="clear"></div>
                                <span>已有 188 人在线关注此车型</span>
                                <div class="clear"></div>
                                <a href="#choosecar">
                                <button style="background-color:#dd2a2a; color:white;width:80px;height:40px;border: none;margin-left: 4px;" >立即咨询</button>
                                </a>
                            </div>
                        </li>
                        <li class="cur">
                            <img src="${pageContext.request.contextPath}/Customer/pc/images/cc.jpg" alt=""/>
                            <div class="pricetag">
                                <a style="margin-left: 4px;color: black;font-size: 0.8rem;">一汽-大众CC</a>
                                <p>垂直购价：？？？</p>
                                <s>厂商指导价：25.28-34.28万</s>
                                <div class="clear"></div>
                                <span>已有 168 人在线关注此车型</span>
                                <div class="clear"></div>
                                <a href="#choosecar">
                                <button style="background-color:#dd2a2a; color:white;width:80px;height:40px;border: none;margin-left: 4px;" >立即咨询</button>
                                </a>
                            </div>
                        </li>
                        <li class="cur">
                            <img src="${pageContext.request.contextPath}/Customer/pc/images/mkz.jpg" alt=""/>
                            <div class="pricetag">
                                <a style="margin-left: 4px;color: black;font-size: 0.8rem;">林肯MKZ</a>
                                <p>垂直购价：？？？</p>
                                <s>厂商指导价：28.48-40.88万</s>
                                <div class="clear"></div>
                                <span>已有 198 人在线关注此车型</span>
                                <div class="clear"></div>
                                <a href="#choosecar">
                                <button style="background-color:#dd2a2a; color:white;width:80px;height:40px;border: none;margin-left: 4px;" >立即咨询</button>
                                </a>
                            </div>
                        </li>
                        <li class="cur">
                            <img src="${pageContext.request.contextPath}/Customer/pc/images/linghang.jpg" alt=""/>
                            <div class="pricetag">
                                <a style="margin-left: 4px;color: black;font-size: 0.8rem;">林肯领航员</a>
                                <p>垂直购价：？？？</p>
                                <s>厂商指导价：98.88-122.80万</s>
                                <div class="clear"></div>
                                <span>已有 128 人在线关注此车型</span>
                                <div class="clear"></div>
                                <a href="#choosecar">
                                <button style="background-color:#dd2a2a; color:white;width:80px;height:40px;border: none;margin-left: 4px;" >立即咨询</button>
                                </a>
                            </div>
                        </li>
                        <li class="cur">
                            <img src="${pageContext.request.contextPath}/Customer/pc/images/kmc.jpg" alt=""/>
                            <div class="pricetag">
                                <a style="margin-left: 4px;color: black;font-size: 0.8rem;">林肯MKC</a>
                                <p>垂直购价：？？？</p>
                                <s>厂商指导价：29.88-45.88万</s>
                                <div class="clear"></div>
                                <span>已有 173 人在线关注此车型</span>
                                <div class="clear"></div>
                                <a href="#choosecar">
                                <button style="background-color:#dd2a2a; color:white;width:80px;height:40px;border: none;margin-left: 4px;" >立即咨询</button>
                                </a>
                            </div>
                        </li>
                        <li class="cur">
                            <img src="${pageContext.request.contextPath}/Customer/pc/images/mkx.jpg" alt=""/>
                            <div class="pricetag">
                                <a style="margin-left: 4px;color: black;font-size: 0.8rem;">林肯MKC</a>
                                <p>垂直购价：？？？</p>
                                <s>厂商指导价：44.98-65.98万</s>
                                <div class="clear"></div>
                                <span>已有 163 人在线关注此车型</span>
                                <div class="clear"></div>
                                <a href="#choosecar">
                                <button style="background-color:#dd2a2a; color:white;width:80px;height:40px;border: none;margin-left: 4px;" >立即咨询</button>
                                </a>
                            </div>
                        </li>
                        <li class="cur">
                            <img src="${pageContext.request.contextPath}/Customer/pc/images/dalu.jpg" alt=""/>
                            <div class="pricetag">
                                <a style="margin-left: 4px;color: black;font-size: 0.8rem;">林肯大陆</a>
                                <p>垂直购价：？？？</p>
                                <s>厂商指导价：39.88-61.38万</s>
                                <div class="clear"></div>
                                <span>已有 149 人在线关注此车型</span>
                                <div class="clear"></div>
                                <a href="#choosecar">
                                <button style="background-color:#dd2a2a; color:white;width:80px;height:40px;border: none;margin-left: 4px;" >立即咨询</button>
                                </a>
                            </div>
                        </li>
                        <li class="cur">
                            <img src="${pageContext.request.contextPath}/Customer/pc/images/t70.jpg" alt=""/>
                            <div class="pricetag">
                                <a style="margin-left: 4px;color: black;font-size: 0.8rem;">野马T70</a>
                                <p>垂直购价：？？？</p>
                                <s>厂商指导价：6.98-11.58万</s>
                                <div class="clear"></div>
                                <span>已有 248 人在线关注此车型</span>
                                <div class="clear"></div>
                                <a href="#choosecar">
                                <button style="background-color:#dd2a2a; color:white;width:80px;height:40px;border: none;margin-left: 4px;" >立即咨询</button>
                                </a>
                            </div>
                        </li>
                        <li class="cur">
                            <img src="${pageContext.request.contextPath}/Customer/pc/images/t80.jpg" alt=""/>
                            <div class="pricetag">
                                <a style="margin-left: 4px;color: black;font-size: 0.8rem;">野马T80</a>
                                <p>垂直购价：？？？</p>
                                <s>厂商指导价：8.98-13.98万</s>
                                <div class="clear"></div>
                                <span>已有 268 人在线关注此车型</span>
                                <div class="clear"></div>
                                <a href="#choosecar">
                                <button style="background-color:#dd2a2a; color:white;width:80px;height:40px;border: none;margin-left: 4px;" >立即咨询</button>
                                </a>
                            </div>
                        </li>
                        <li class="cur">
                            <img src="${pageContext.request.contextPath}/Customer/pc/images/ec30.jpg" alt=""/>
                            <div class="pricetag">
                                <a style="margin-left: 4px;color: black;font-size: 0.8rem;">野马EC30</a>
                                <p>垂直购价：？？？</p>
                                <s>厂商指导价：17.72万</s>
                                <div class="clear"></div>
                                <span>已有 168 人在线关注此车型</span>
                                <div class="clear"></div>
                                <a href="#choosecar">
                                <button style="background-color:#dd2a2a; color:white;width:80px;height:40px;border: none;margin-left: 4px;" >立即咨询</button>
                                </a>
                            </div>
                        </li>
                        

                    </ul>
                </div>
                <p class="BoxSwitch" id="BoxSwitch">
                    <span class="cur"></span>
                    <span></span>
                    <span></span>
                    <span></span>
                </p>
            </div>
            
        </div>
    </div>
    <script type="text/javascript">
        //滚动元素id，左切换按钮，右切换按钮，切换元素个数id,滚动方式，切换方向，是否自动滚动，滚动距离，滚动时间，滚动间隔，显示个数
        LbMove('BoxUl','btnl','btnr','BoxSwitch',true,'left',true,280,1000,2000,4);
    </script>
                        
                    </div>
                </div>
                <!--什么是垂直购网站-->
                <div class="list_3">
                   <!-- <div class="list_3_1">
                        <h4>什么是众民垂直购</h4><p>简单说众民垂直购就是：全国寻求购车渠道，寻求最底价，全国提车调车，保障购车最底价！</p><span>我们做的垂直购能为您带

来哪些好处？</span></div>-->
                    <div class="list_3_1" style="height: 50px;margin-top: 50px;">
                        <span>我们做的垂直购能为您带来哪些好处？</span>
                    </div>

                    <div class="list_3_2">
                        <ul>
                            <li>所有车型，尊享购车享厂家直供，让您底价购车！</li>
                            <li>随时查看心仪车型全国底价！</li>
                            <li>随心所欲，摆脱销售员纠缠！</li>
                            <li>尊享中国人保安全承托服务，资金无忧！</li>
                            <li>24小时随时了解汽车底价，让您放心比对！</li>
                        </ul>
                    </div>
                    <div class="list_1" style="padding-bottom: 20px;">
                        <p>提车地址</p>
                        <p><img src="${pageContext.request.contextPath}/Customer/pc/images/index_23.jpg"></p>
                        <h3>全品牌保障，多渠道提货，让您最底价购车！</h3>
                       <%--  <!--焦点图-->
                    <div class="film_focus">
                      <div class="film_focus_desc">
                        <h3>提车</h3>
                        <ul class="film_focus_nav">
                          <li class="cur"> <b>阜阳市阜南县城关镇谷河路61号</b><span>阜南县</span> </li>
                        
                          <li> <b>阜阳市太和县镜湖中路135号</b><span>太和县</span> </li>
                          <li> <b>阜阳市颍上县颖阳路66号</b><span>颍上县</span> </li>
                          <li> <b>阜阳市临泉县城关镇城中南路51号</b><span>临泉县</span> </li>
                          <li> <b>阜阳市界首市中原路83号</b><span>界首市</span> </li>
                        </ul>
                      </div>
                      <div class="film_focus_imgs_wrap">
                        <ul class="film_focus_imgs" >
                          <li><a target="_blank" href="${pageContext.request.contextPath}/map/funan.html" ><img  src="${pageContext.request.contextPath}/Customer/pc/images/funan.jpg" alt="" /></a></li>
                          <li><a target="_blank" href="${pageContext.request.contextPath}/map/taihe.html"><img  src="${pageContext.request.contextPath}/Customer/pc/images/taihe.jpg" alt="" /></a></li>
                          <li><a target="_blank" href="${pageContext.request.contextPath}/map/yingshang.html"><img src="${pageContext.request.contextPath}/Customer/pc/images/yingshang.jpg" alt="" /></a></li>
                          <li><a target="_blank" href="${pageContext.request.contextPath}/map/linquan.html"><img  src="${pageContext.request.contextPath}/Customer/pc/images/linquan.jpg" alt="" /></a></li>
                          <li><a target="_blank" href="${pageContext.request.contextPath}/map/jieshou.html"><img  src="${pageContext.request.contextPath}/Customer/pc/images/jieshou.jpg" alt="" /></a></li>
                        </ul>
                      </div>
                    </div>
<!--焦点图END-->  --%>
<script type="text/javascript">
(function(A){
    A.fn.th_video_focus=function(E){
        var G={
            actClass:"cur",
            navContainerClass:".focus_pic_preview",
            focusContainerClass:".focus_pic",
            animTime:600,
            delayTime:5000
        };
        if(E){
            A.extend(G,E)
        }
        var C=G.actClass, D=G.navContainerClass, B=G.focusContainerClass, F=G.animTime, H=G.delayTime, I=null;
        return this.each(function(){
            var O=A(this), M=A(D+" li",O), P=A(B+" li",O), L=M.length, K=O.height();
            function N(R){
                var V=K*R*-1;
                var U=A(B+" li",O), W=null, T=null;
                for(var S=0;S<=R;S++){
                    W=U.eq(S);
                    T=W.find('script[type="text/templ"]');
                    if(T.length>0){
                        W.html(T.html())
                    }
                }
                A(B,O).stop().animate({top:V},F,function(){
                    var Y=O.find("h3"), X=Y.height();
                    Y.height(0).html(A(B+" li").eq(R).find("img").attr("alt")).animate({height:X},600)
                });
                A(D+" li").eq(R).addClass(C).siblings().removeClass(C)
            }
            function Q(){
                if(I){
                    clearInterval(I)
                }
                I=setInterval(function(){
                    var R=A(D+" li."+C).index();
                    N((R+1)%L)
                },H)
            }
            O.hover(function(){
                if(I){
                    clearInterval(I)
                }
            },function(){
                Q()
            });
            var J=null;
            M.hover(function(){
                var R=A(this).index();
                if(I){
                    clearInterval(I)
                }
                J=setTimeout(function(){
                    N(R)
                },300)
            },function(){
                if(J){
                    clearTimeout(J)
                }
                Q()
            }).click(function(T){
                var R=A(this).index(), S=P.eq(R).find("a");
                if(document.uniqueID||window.opera){
                    S[0].click();
                    T.stopPropagation();
                    T.preventDefault()
                }
            });
            Q()
        })
    }
})(jQuery);
$(function(){
    $(".film_focus").th_video_focus({
        navContainerClass:".film_focus_nav",
        focusContainerClass:".film_focus_imgs",
        delayTime:3000
    });
}); 
</script>
                    </div>
                    <!--<div class="list_3_3"></div>-->
                </div>

           </div>
        <!--gundong-->
         
          <!--为什么选择众民-->
            <div class="choose">
                  <div class="choose_1">
                        <h4><img src="${pageContext.request.contextPath}/Customer/pc/images/ic_01.png"></h4>
                        <p>为什么选择众民汽车垂直购</p>
                        <span>WHY CHOOSE ZhongMin Auto </span>
                   </div>
                   <div class="choose_2">
                        <div class="choose_2_left">
                            <dl >
                               <dt >车源保障</dt>
                               <dd> 所有车型，厂家直属特卖，厂家车源报备，尊享购车享厂家直供
</dd>
                            </dl>
                            <dl style="margin-top:70px;">
                                <dt >价格保障
</dt>
                              <dd>所有车型价格保障全国底价，订车享厂家价格保障</dd>
                            </dl>
                            <dl style="margin-top:78px;">
                             <dt> 提车方便</dt>
                             <dd> 销售网络遍布各县市，可就近从您方便的提车地点进行提车。</dd>
                            </dl>
                        </div>
                        <div class="choose_2_right">
                              <dl>
                                  <dt>全国联保

</dt>
                                 <dd> 垂直购所购车型，在全国任何一品牌正规4S店均可进行维修保养



</dd>
                              </dl>
                               <dl style="margin-top:70px;">
                                  <dt>资金保障</dt>
                                 <dd> 众民汽车垂直购购车，全程由中国人保承保，保障您的资金安全，让您买的放心。</dd>
                              </dl>
                               <dl style="margin-top:78px;">
                                  <dt>物超所值的服务</dt>
                                 <dd> 在整个购车环节，追求精细化的服务，力求每个环节做精做细，给到用户完美的体验，而价格却更加实惠，真正帮您省钱！</dd>
                              </dl>
                        </div>
                   </div>
            </div>
             <!--案例展示-->
             <div class="case">
                  <div class="case_title">
                      <h4>众民垂直购案例</h4><p>SIHAI MARKETING DISPLAY CASE</p>
                  </div>   
                  <div class="case_cen">
                      <ul>
                            <li>
                                <dl>
                                    <dt><img src="${pageContext.request.contextPath}/Customer/pc/images/anli11.jpg"></dt>
                                    <dd>林肯-MKC-宋先生</dd>
                                    <p>买这个车之前在各4S店都看了，但是感觉溢价太严重，所以在了解众民垂直购之后就在垂直购上买的车，垂直购上买的车很稳很好</p>
                                </dl>
                                <div class="zan">
                                    <p><a href="">赞</a>(208)<a href="">我要咨询</a></p>
                                </div> 
                            </li>
                          <li>
                                <dl>
                                    <dt><img src="${pageContext.request.contextPath}/Customer/pc/images/anli12.jpg"></dt>
                                    <dd>林肯-MKZ-黄先生</dd>
                                    <p>我是在一个中国人保的朋友那里听说的众民垂直购，他就是在那里买的车，说这里渠道好，能拿到优惠的车。</p>
                                </dl>
                                <div class="zan">
                                    <p><a href="">赞</a>(208)<a href="">我要咨询</a></p>
                                </div> 
                            </li>
                          <li>
                                <dl>
                                    <dt><img src="${pageContext.request.contextPath}/Customer/pc/images/anli13.jpg"></dt>
                                    <dd>野马-T70-张先生</dd>
                                    <p>之前参加过众民汽车的车展，感觉他们会很正规，也很有实力，就在垂直购这上面买的这辆车，确实比店里便宜，而且还有保障。</p>
                                </dl>
                                <div class="zan">
                                    <p><a href="">赞</a>(208)<a href="">我要咨询</a></p>
                                </div> 
                            </li>
                          <li>
                                <dl>
                                    <dt><img src="${pageContext.request.contextPath}/Customer/pc/images/anli14.jpg"></dt>
                                    <dd>大众-polo-庞先生</dd>
                                    <p>之前跟人保的一个朋友去过众民的车展，当时就看上了这款车，后来就通过朋友了解到垂直购，有中国人保做保障在这上面买车真的很放心。/p>
                                </dl>
                                <div class="zan">
                                    <p><a href="">赞</a>(208)<a href="">我要咨询</a></p>
                                </div> 
                            </li>

                      </ul> 
                  </div>      
             </div>
         
           <div class="footer">
                <div class="footer_cen">
                   <div class="footer_left">
                       <ul class="cen_title">
                        <li><a href="">关于众民</a></li>
                        <li><a href="">新闻中心</a></li>
                        <li><a href="">客户服务</a></li>
                        <li><a href="${pageContext.request.contextPath}/website/index.jsp">众民车展</a></li>
                      </ul> 
                      <div class="cen_title_cen">
                          <p>众民优势</p>  
                          <p>荣誉资质</p>
                          <p>人才招聘</p>
                          <p>付款方式</p>
                          <p>联系我们</p>
                      </div> 
                       <div class="cen_title_cen1">
                          <p>公司动态</p>  
                          <p>行业资讯</p>
                          <p>最新签约</p>
                          <p>网络营销</p>
                          <p>网站优化</p>
                      </div> 
                       <div class="cen_title_cen1">
                          <p>网站建设</p>  
                          <p>移动应用</p>
                          <p>电商平台</p>
                      </div> 
                       <div class="cen_title_cen1" style="width:95px;">
                          <p>车展推广</p>  
                          <p>太和车展</p>
                          <p>亳州车展</p>
                          <p><a style="color:#A9A9A9;" href="${pageContext.request.contextPath}/Carindex/pc/pcindex.jsp">临泉车展</a></p>
                      </div>  
                   </div>
                    <div class="footer_right">
                        <a href=""><img src="${pageContext.request.contextPath}/Customer/pc/images/ewm.jpg"></a>
                        <p>扫一扫,关注众民微动态</p>
                    </div>
                </div>
                <div class="footer_bot">
                    <p style="color: white;text-align: center;">公司名称：安徽众民信息科技有限公司 联系电话：15867017627 公司地址：阜阳市颍州区 清河西路怡和城市广场A

座606室</p>
                    <p style="color: white;text-align: center;margin-top: 6px;">众民汽车 版权所有 | 京ICP备15029289号</p>
                </div>
            </div>
    </div>
</body>
</html>