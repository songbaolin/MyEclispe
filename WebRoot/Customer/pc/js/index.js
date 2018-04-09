/******************************************************************************
* filename: index.js
* Include Modul Scripting


*******************************************************************************/

SKIN_PATH = "/Skins/default/";
function initCommonHeader() {
    gettel();
    $.get("/ajax.ashx?action=initcommonheader&t=" + Math.random(), function (rsp) {
        var IM = gav(rsp, "showIM");
        showIM(IM);
        var username = gav(rsp, "username");
        if (username.length > 0) {
            $j("commonHeaderGuest").hide();
            $j("commonHeaderUsername").html(username);
            $j("commonHeaderUser").fadeIn(80);
            $j("login_user").show();
            $j("user_default").hide();
            return username;
        }
    });
    return "";

}

function gettel() {

    var domae = window.location.host;
    $.post("/ajax.ashx?action=showtel&t=" + Math.random(), {
        domae: domae
    }, function (msg) {
        var sMsg = gav(msg, "msg");
        var sta = gav(msg, "state");
        if (sta == 1) {
            $j("tels").html(sMsg);
        }

    });


}
function is_mobile() {
    var regex_match = /(nokia|iphone|android|motorola|^mot- |softbank|foma|docomo|kddi|up.browser|up.link|htc|dopod|blazer|netfront|helio|hosin|huawei|novarra|CoolPad|webos|techfaith|palmsource|blackberry|alcatel|amoi |ktouch|nexian|samsung|^sam-|s[cg]h|^lge|ericsson|philips|sagem|wellcom|bunjalloo|maui|symbian|smartphone|midp|wap|phone|windows  ce|iemobile|^spice|^bird|^zte-|longcos|pantech|gionee|^sie-|portalmmm|jigs browser|hiptop|^benq|haier|^lct|operas*mobi|opera*mini|320x320|240x320|176x220)/i;
    var u = navigator.userAgent;
    if (null == u) {
        return true;
    }
    var result = regex_match.exec(u);
    if (null == result) {
        return false
    } else {
        return true
    }
}
var url = window.location.href;
url = url.replace("http://", "");
var temp = url.split("/");
if (is_mobile()) {
    if (url.indexOf("/mobile/") < 0) {
        var surl = "http://";
        for (var i = 0; i < temp.length; i++) {
            if (i == 0)
                surl = surl + temp[i] + "/" + "mobile";
            else
                surl = surl + "/" + temp[i];
        }
        document.location.href = surl;
    }
}
else {
    if (url.indexOf("/mobile/") > 0) {
        document.location.href = url.replace("/mobile", "");
    }
}

function getHitss(_oid) {
    $.post("/ajax.ashx?action=gethitss", {
        oid: _oid
    }, function (msg) {
        var sMsg = gav(msg, "msg");
        var sta = gav(msg, "state");
        if (sta == 1) {
            $j("cntrHits" + _oid).html(sMsg);
        }

    });
}
function subscription(src) {

    var stxtsite = $v("txtsite");
    var stxtphone = $v("txtphone");

    //    var _email = $.trim($j(elmId).val());
    var ptn = /(^0{0,1}1[3|4|5|6|7|8|9][0-9]{9}$)/;
    if (stxtsite == 0 || stxtsite == "请输入您的网址") {
        $a("请输入网址");

        return false;
    }
    if (!ptn.test(stxtphone)) {
        $a("手机号码格式错误。");

        return false;
    }
    showProc(src);
    $.post("/ajax.ashx?action=subscription&t=" + Math.random(), {
        site: stxtsite,
        phone: stxtphone
    }, function (msg) {
        var sta = gav(msg, "state");
        var sMsg = gav(msg, "msg");
        if (sta == "1") {
            $('#txtphone').val('');
            $('#txtsite').val('');

            $a(sMsg, 1);
        } else {
            $a(sMsg);
        }
        showProc(src, false);
    });
}



function subscription2(src) {

    var stxtsite = $v("txtsites");
    var stxtfw = $v("txtfw");
    var stxtphone = $v("txtphones");
    var stxname = $v("txtname");
    var stxemail = $v("txtemail");
    var emptn = /\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*/;
    //var _email = $.trim($j(elmId).val());
    var ptn = /(^0{0,1}1[3|4|5|6|7|8|9][0-9]{9}$)/;
    if (stxtsite == 0) {
        $a("请输入网址");

        return false;
    }
    if (stxtphone == 0) {
        $a("请填写手机号码。");

        return false;
    }
    if (stxemail > 0 && !emptn.test(stxemail)) {
        $a("电子邮件错误。");

        return false;
    }
    if (stxname == 0) {
        $a("请填写联系人。");

        return false;
    }
    showProc(src);
    $.post("/ajax.ashx?action=subscription2&t=" + Math.random(), {
        site: stxtsite,
        name: stxname,
        fanw: stxtfw,
        email: stxemail,
        phone: stxtphone
    }, function (msg) {
        var sta = gav(msg, "state");
        var sMsg = gav(msg, "msg");
        if (sta == "1") {
            $('#txtfw').val('');
            $('#txtname').val('');
            $('#txtemail').val('');
            $('#txtsites').val('');
            $('#txtphones').val('');

            $a(sMsg, 1);
        } else {
            $a(sMsg);
        }
        showProc(src, false);
    });
}
function resrt(str) {

    str = str.toLocaleString().replace("", "");
    str = str.toLocaleString().replace("& ", "&amp; ");
    str = str.toLocaleString().replace(" ' ", "&#39; ");
    str = str.toLocaleString().replace("alert", "&#34; ");
    str = str.toLocaleString().replace("script", "&#34; ");
    str = str.toLocaleString().replace(" < ", "&lt");
    str = str.toLocaleString().replace("> ", "&gt");
    str = str.toLocaleString().replace("where", "$1h&#101;re ");
    str = str.toLocaleString().replace("select", "$1el&#101;ct ");
    str = str.toLocaleString().replace("insert", "$1ns&#101;rt ");
    str = str.toLocaleString().replace("create", "$1r&#101;ate ");
    str = str.toLocaleString().replace("drop", "$1ro&#112; ");
    str = str.toLocaleString().replace("alter", "$1lt&#101;r ");
    str = str.toLocaleString().replace("delete", "$1el&#101;te ");
    str = str.toLocaleString().replace("update", "$1p&#100;ate ");
    str = str.toLocaleString().replace("and", "$1h&#101;nd ");
    str = str.toLocaleString().replace("</title>", "$1h&#101;nd ");
    str = str.toLocaleString().replace("</head>", "$1h&#101;nd ");
    str = str.toLocaleString().replace("</body>", "$1h&#101;nd ");

}

function xuanze() {

    var xz = document.getElementById('seachkeywords').value;

    if (xz.length == 0) {
        xz = "";
    }
    window.location.href = '/Search/Index.aspx?objtype=product&kwd=' + xz;
}
/********************
* 根据key获取 ajax对象节点值getAjaxVal
* xMsg : xml对象
* key : 节点的属性key
********************/
function gav(xMsg, key) {
    var jMsg = $(xMsg);
    var s = $(jMsg.find("node[key=" + key + "]")).text();
    return s;
}
//是否显示在线客服
function showIM(res) {
    if ($("#bodd").html() != "") {
        if (res == "True") {
            $("#bodd").show();
            $("#kefubtn").hide();
            $("#divOranIm").show();
        }
        else {
            $("#bodd").hide();
            $("#kefubtn").show();
            $("#divOranIm").hide();
        }
    }
}


//初始化头部热门关键词
function initCommonHeaderKeywords(_s) {
    if (_s == "") _s = "6";
    $.post("/ajax.ashx?action=initcommonheaderkeywords&t=" + Math.random(), {
        s: _s
    }, function (msg) {
        $j("commonHeaderkeywords").html(msg);
    });
}

function $j(elmId) { return $("#" + elmId); }
function $v(elmId, val) {
    if (val == null) {
        var o = $j(elmId).attr("value");
        if (o == null || o == undefined)
            return "";
        return o;
    } else {
        return $j(elmId).attr("value", val);
    }
}
function $tv(elmId) { return $.trim($v(elmId)); }



function showProc(src, show) {
    var oImg = $j("imgProc");
    if (show == null)
        show = true;
    if (show) {
        $(src).hide();
        if (oImg.length > 0) {
            oImg.remove();
        }
        $("<img src='" + SKIN_PATH + "img/processing.gif' id='imgProc' alt='正在处理' />").insertAfter(src);
    } else {
        $(src).show();
        oImg.remove();
    }
}
function hideDdl(cntrId) {
    var arrTags = ["select", "iframe", "applet", "object"];
    var jCntr;
    if (cntrId != null) {
        jCntr = $j(cntrId);
    } else {
        jCntr = $(document.body);
    }
    for (var i = 0; i < arrTags.length; ++i) {
        jCntr.find(arrTags[i]).css("visibility", "hidden");
    }

}
function $a(sMsg, boxType, autoClose, focusElmId, sTitle, behavior) {
    if (boxType == null) {
        boxType = 2;
    }
    if (autoClose == null) {
        autoClose = -1;
    }
    //标题
    if (sTitle == null) {
        sTitle = "消息提示";
    }

    hideDdl();
    var jMesbook1 = $j("mesbook1");
    if (jMesbook1.length == 0) {
        var sHtml = "<div id='mesbook1'>"
				+ "<div><img style='float:right' onclick='hideMsg()' id='mesbook1ImgClose' src='" + SKIN_PATH + "Img/ico9_close.gif' alt='关闭' class='fr p vam ml5' /><span id='mesbook1Title'></span></div>"
				+ "<dl class='b1'>"
					+ "<dt><img id='mesbook1Icon' src='" + SKIN_PATH + "Img/message_ico_03.gif' alt='' title='' /></dt>"
					+ "<dd class='l_25' id='mesbook1Msg'></dd>"
					+ "<dd class='b' style='visibility:hidden' id='mesbook1AutoClose'>此窗口<span id='mesbook1Delay' style='margin:0 5px;'></span>秒钟后自动关闭。</dd>"
					+ "<dd id='mesbook1Btns'>"
					+ "<input type='button' class='b15' value='关 闭' />"
					+ "</dd>"
				+ "</dl>"
			+ "</div>";
        $(document.body).append(sHtml);
    }
    var jMesbook1 = $j("mesbook1");
    var jMesbook1ImgClose = $j("mesbook1ImgClose");
    var jMesbook1Icon = $j("mesbook1Icon");
    var jMesbook1Msg = $j("mesbook1Msg");
    var jMesbook1AutoClose = $j("mesbook1AutoClose");
    var jMesbook1Delay = $j("mesbook1Delay");
    var jMesbook1Title = $j("mesbook1Title");
    var jMesbook1Btns = $j("mesbook1Btns");

    jMesbook1Title.html(sTitle);
    //消息内容
    jMesbook1Msg.html(sMsg);
    //图标
    var iconPath = SKIN_PATH + "Img/";
    switch (boxType) {
        case 1: iconPath += "ico_ok.gif"; break;
        case 2: iconPath += "ico_info.gif"; break;
        case 3: iconPath += "ioc_ques.gif"; break;
        case -1: iconPath += "ico_error.gif"; break;
        default: iconPath += "ico_normal.gif"; break;
    }
    jMesbook1Icon.attr("src", iconPath);

    //关闭按钮
    var okBtn = jMesbook1Btns.find("input");
    okBtn.removeAttr("onclick");
    okBtn.click(function () {
        hideMsg();
        if (focusElmId != null) {
            $j(focusElmId).focus();
        }
        if (behavior != null) {
            behavior();
        }
    });
    jMesbook1ImgClose.removeAttr("onclick");
    jMesbook1ImgClose.click(function () {
        hideMsg();
        if (focusElmId != null) {
            $j(focusElmId).focus();
        }
        if (behavior != null) {
            behavior();
        }
    });
    okBtn.focus();

    //显示
    showFullBg();
    setCM("mesbook1");
    //relocation("mesbook1");
    jMesbook1.fadeIn(80);
}
/********************
* 显示一个全屏灰度背景
* elmId : 元素ID或元素
********************/
function showFullBg(elmId, isHideDdl, opacity, bgColor, zIndex, speed, behavior) {
    if (elmId == null) {
        elmId = "oran_full_bg";
    }
    var jElm = $j(elmId);
    if (jElm.length == 0) {
        var sHtml = "<div style='position:absolute;top:0;left:0;display:none;' id='" + elmId + "'></div>";
        $(document.body).append(sHtml);
    }
    if (opacity == null) {
        opacity = 0.75;
    }
    if (bgColor == null) {
        bgColor = "#777";
    }
    if (zIndex == null) {
        zIndex = "9";
    }
    if (speed == null) {
        speed = 80;
    }
    if (isHideDdl == null) {
        isHideDdl = true;
    }
    var jElm = $j(elmId);
    var dd = document.documentElement;
    var sWidth = dd.scrollWidth;
    var sHeight = dd.scrollHeight;
    var cH = dd.clientHeight;
    var cW = dd.clientWidth;
    if (sHeight < cH) {
        sHeight = cH;
    }
    if (sWidth < cW) {
        sWidth = cW;
    }
    jElm.css({ "z-index": zIndex, "background": bgColor, "opacity": opacity, "filter": "progid:DXImageTransform.Microsoft.Alpha(opacity=" + opacity * 100 + ")" });
    jElm.css({ "height": sHeight, "width": sWidth });
    if (isHideDdl) {
        hideDdl(null, behavior);
    }
    jElm.fadeIn(speed);
    if (behavior != null) {
        behavior();
    }
}

function setCM(elmId, speed) {
    var jElm;
    if (typeof (elmId).toString().toLowerCase() == "string") {
        jElm = $j(elmId);
    } else {
        jElm = $(elmId);
    }
    if (speed == null) {
        speed = 80;
    }
    var h = jElm.height() / 2;
    var w = jElm.width() / 2;
    var $w = $(window);
    var top = $w.height() / 2 + $w.scrollTop();
    //jElm.css({ "top": top+"px", "margin-top" : "0px !important", "left": "50%", "margin-left": "-" + w + "px" });
    jElm.css({ top: top + "px", marginTop: "0px", left: "50%", marginLeft: (-w) + "px" });
    var isIE = navigator.userAgent.toUpperCase().indexOf("MSIE") == -1 ? false : true;

    $w.scroll(function () {
        var top = $w.height() / 2 + $w.scrollTop();
        jElm.css({ 'top': top + 'px' });
    });
    //if(isIE){
    jElm.css({ "position": "absolute", "z-index": "999" });
    //    }else{
    //        jElm.css({ "position": "fixed", "z-index": "999"});
    //    }
    jElm.fadeIn(speed);
}

function setCMS(elmId, speed) {
    var jElm;
    if (typeof (elmId).toString().toLowerCase() == "string") {
        jElm = $j(elmId);
    } else {
        jElm = $(elmId);
    }
    if (speed == null) {
        speed = 80;
    }
    var h = jElm.height() / 2;
    var w = jElm.width() / 2;
    var height = document.documentElement.scrollTop;
    if (height > 100) {
        jElm.css({ "top": "50%", "margin-top": "-" + h + "px", "left": "50%", "margin-left": "-" + w + "px" });
    }
    else {
        h = 200;
        jElm.css({ "margin-top": "-" + h + "px", "left": "50%", "margin-left": "-" + w + "px" });
    }

    jElm.css({ "position": "absolute", "z-index": "999" });
    jElm.fadeIn(speed);
}
/********************
* 重置一个层为绝对居中于窗口的位置
* elmId : 元素ID或元素
********************/
function relocation(elmId) {
    var jElm;
    if (typeof (elmId).toString().toLowerCase() == "string") {
        jElm = $j(elmId);
    } else {
        jElm = $(elmId);
    }
    if (jElm.length == 0) {
        return;
    }

    var dd = document.documentElement;
    var t = (dd.scrollTop - (jElm.height() / 2) + "px");
    jElm.css({ "margin-top": t/*, "left": l */ });
}
/********************
* 隐藏消息提示层
********************/
function hideMsg() {
    showDdl();
    var jShadow = $j("mesbook1");
    hideFullBg();
    jShadow.fadeOut(80);
}
/********************
* 隐藏下拉框函数
********************/
function showDdl() {
    var arrTags = ["select", "iframe", "applet", "object"];
    for (var i = 0; i < arrTags.length; ++i) {
        $(arrTags[i]).css("visibility", "visible");
    }
}
/********************
* 隐藏全屏灰度背景
* speed : (可选)渐变消退的速度
********************/
function hideFullBg(elmId, speed) {
    if (elmId == null) {
        elmId = "oran_full_bg";
    }
    if (speed == null) {
        speed = 80;
    }
    var jElm = $j(elmId);
    jElm.fadeOut(speed);
    showDdl();
}


//document.getElementById("diq").click(function () { alert("123"); });


$(".gnBox").click(function () {
    alert("111");
});



function submobile(src) {
    var stxtsite = $v("txtName");
    var stxtphone = $v("txtphone");
    var txtxtshortdesc = $v("txtshortdesc");
    var areaCode = $("#leixs").html();

    var diq = $("#iptS").html();
   

    if (stxtsite == 0 || stxtsite == "姓名/公司") {
        $a("请输入姓名");

        return false;
    }
    var ptn = /(^0{0,1}1[3|4|5|6|7|8|9][0-9]{9}$)/;
    if (!ptn.test(stxtphone)) {
        $a("手机号码格式错误。");
        return false;
    }
    showProc(src);
    $.post("/ajax.ashx?action=getmobile&t=" + Math.random(), {
        name: stxtsite,
        phone: stxtphone,
        shortdesc: txtxtshortdesc,
        leix: areaCode,
        diq: diq
    }, function (msg) {
        var sta = gav(msg, "state");
        var sMsg = gav(msg, "msg");
        if (sta == "1") {
            $('#txtName').val('姓名/公司');
            $('#txtphone').val('联系手机');
            $('#txtshortdesc').val('简单描述');
            $a(sMsg, 1);
        } else {
            $a(sMsg);
        }
        showProc(src, false);
    });
}
function getHitss(_oid) {
    $.post("/ajax.ashx?action=gethitss", {
        oid: _oid
    }, function (msg) {
        var sMsg = gav(msg, "msg");
        var sta = gav(msg, "state");
        if (sta == 1) {
            $j("cntrHits" + _oid).html(sMsg);
        }

    });
}

function getHits(_oid, _mark) {
    $.post("/ajax.ashx?action=gethits", {
        mark: _mark,
        oid: _oid
    }, function (msg) {
        $j("cntrHits").html(msg);
    });
}

/********************
* 增加书签
* url : URL
* title : 收藏项目的标题
********************/
function addBookmark(url, title) {
    if (window.sidebar) {
        window.sidebar.addPanel(title, url, "");
    } else if (document.all) {
        window.external.AddFavorite(url, title);
    } else if (window.opera && window.print) {
        return true;
    }
}



//加入收藏
function addBookmark() {
    var _title = document.title;
    var url = document.URL;
    if (window.sidebar) {
        window.sidebar.addPanel(_title, url, "");
    }
    else
        if (window.opera && window.print) {
            var __mbm = document.createElement('a');
            __mbm.setAttribute('rel', 'sidebar');
            __mbm.setAttribute('href', url);
            __mbm.setAttribute('title', _title);
            __mbm.click();
        }
        else
            if (document.all) {
                window.external.AddFavorite(url, _title);
            }
}

$("#qrcode").attr("src", "/tools/QRcodeImage.aspx?url=" + window.location.href);

//function is_mobile() {
//    var regex_match = /(nokia|iphone|android|motorola|^mot-|softbank|foma|docomo|kddi|up.browser|up.link|htc|dopod|blazer|netfront|helio|hosin|huawei|novarra|CoolPad|webos|techfaith|palmsource|blackberry|alcatel|amoi|ktouch|nexian|samsung|^sam-|s[cg]h|^lge|ericsson|philips|sagem|wellcom|bunjalloo|maui|symbian|smartphone|midp|wap|phone|windows ce|iemobile|^spice|^bird|^zte-|longcos|pantech|gionee|^sie-|portalmmm|jigs browser|hiptop|^benq|haier|^lct|operas*mobi|opera*mini|320x320|240x320|176x220)/i;
//    var u = navigator.userAgent;
//    if (null == u) {
//        return true;
//    }
//    var result = regex_match.exec(u);
//    if (null == result) {
//        return false
//    } else {
//        return true
//    }
//}

//var url = window.location.href;
//var temp = url.replace("http://", "").split("/");
//if (is_mobile()) {
//    if (url.indexOf("/mobile/") < 0) {
//        var surl = "http://";
//        for (var i = 0; i < temp.length; i++) {
//            if (i = 0)
//                surl = surl + temp[i] + "/" + "mobile";
//            else
//                surl = surl + "/" + temp[i];
//        } 
//        document.location.href = surl;
//    }
//}
//else {
//    if (url.indexOf("/mobile/") > 0) {
//        document.location.href = url.replace("/mobile", "");
//    }
//}