jQuery(document).ready(function(){ 
   jQuery("#form .input_txt").each(function(){
     var thisVal=jQuery(this).val();
     //判断文本框的值是否为空，有值的情况就隐藏提示语，没有值就显示
     if(thisVal!=""){
       jQuery(this).siblings("span").hide();
      }else{
       jQuery(this).siblings("span").show();
      }
     //聚焦型输入框验证 
     jQuery(this).focus(function(){
       jQuery(this).siblings("span").hide();
      }).blur(function(){
        var val=jQuery(this).val();
        if(val!=""){
         jQuery(this).siblings("span").hide();
        }else{
         jQuery(this).siblings("span").show();
        } 
      });
    })     
  })
function ZtBMUser(){
   var realname = document.getElementById("realname").value;
   var mp = document.getElementById("mp").value;
   var carBrand = document.getElementById("carBrand").value;
   var carType = document.getElementById("carType").value; 
   var remark = document.getElementById("remark").value;   
   if(realname == ""||realname.length>5  ){
     alert("报名提示：请填写您的姓名!");
     document.form.realname.focus();
     return false;
   }    
   if(mp==""  ){
     alert("报名提示：请填写您的手机号码!");
     document.form.mp.focus();
     return false; 
      } 
     else 
	 {      
      var rules = /^1[1-9]\d{9}$/;
      if (rules.test(mp)) {
       }    
    else {
    alert('报名提示：请您输入11位的数字的手机号码！');
    document.form.mp.focus();
    return false;        
    }    
   }  
   if(carBrand == ""  ){
     alert("报名提示：请选择关注品牌!");
     document.form.carBrand.focus();
     return false;
   }
  if(carType == ""  ){
     alert("报名提示：请选择关注车系!");
     document.form.carType.focus();
     return false;
   }
   if(remark.length>49 ){
     alert("报名提示：寄票地址长度不能超过50");
     document.form.remark.focus();
     return false;
   }
      
  document.getElementById("form").submit();
} 

SPT="请选择品牌";
SCT="请选择车系";
SAT="";
ShowT=1; 
PCAD="A  阿尔法·罗密欧$A Stelvio|A Giulia#A 奥迪$A 奥迪TT RS|A 奥迪RS3|A 奥迪SQ5|A 奥迪S8|A 奥迪TT|A 奥迪S7|A 奥迪S6|A 奥迪S5|A 奥迪S3|A 奥迪RS5|A 奥迪R8|A 奥迪Q7|A 奥迪Q5|A 奥迪Q3|A 奥迪A8L|A 奥迪A7|A 奥迪A6|A 奥迪A5|A 奥迪A4|A 奥迪A3|A 奥迪A1|A A5|A A7|A A6L|A A4L#B 宝骏$B 宝骏E100|B 310W|B 510|B 310|B 610|B 宏光S1|B 330|B 730|B 560|B 五菱宏光|B 乐驰|B 宝骏630#B 宝马$B i8|B i3|B 宝马X4|B 华晨宝马X1|B 宝马Z4|B 宝马X6|B 宝马X5|B 宝马X3|B 宝马X1|B 宝马M系|B 宝马7系|B 宝马6系|B 宝马5系GT|B 宝马5系|B 宝马3系GT|B 宝马3系|B 宝马1系|B Z4#B 宝沃$B BX5|B BX7#B 北京伽途$B 伽途ix5|B 伽途ix7|B 伽途im6|B 伽途im8#B 北京汽车$B BJ80|B BJ40|B BJ20|B BJ100|B E系列#B 北汽昌河$B 昌河M50|B Q35|B Q25|B 北斗星|B 福瑞达M70|B 福瑞达M50S|B 北斗星X5#B 北汽幻速$B H6|B S5|B H3F|B H2E|B H2V|B H2Y|B S6|B S3|B S2|B H3|B H2#B 北汽绅宝$B X65|B X55|B X35|B X25|B D70|B D60|B D50|B D20|B CC|B D80|S 绅宝#B 北汽泰普$B 北汽泰普BJ40L#B 北汽威旺$B M30S|B M20S|B M60|B M30 PLUS|B M50F|B S50|B M35|B M30|B M20|B 307|B 北汽威旺306|B 北汽威旺205#B 北汽新能源$B ARCFOX LITE|B EH系列|B EC系列|B EV系列|B EU系列|B EX|B ES210|B 307EV|B 306EV#B 北汽制造$B 战旗2024|B 越铃|B 域胜007|B 勇士|B 锐铃|B 陆霸|B 角斗士|B 北汽骑士|B 北汽212系列#B 奔驰$B 奔驰SLC|B 奔驰V级|B 奔驰GLC级AMG|B V级|B 迈巴赫s级|B 斯宾特|B 奔驰房车|B 奔驰SL级|B 奔驰SEL|B 奔驰R级|B 奔驰M级|B 奔驰G级|B 奔驰GL级|B 奔驰GLK级|B 奔驰E级|B 奔驰C级|B 奔驰B级|B 奔驰A级|B 奔驰AMG车系|B 北京奔驰GLK级|B SLR|B SLK级|B E级双门轿跑车|B CLS级|B 威霆|B 唯雅诺|B 凌特|B R/CLS|B CL|B GL/ML/SL/G|B S级|B B级|B A级|B E级|B C级|B GLK#B 奔腾$B 奔腾X40|B 奔腾B30|B 奔腾X80|B 奔腾B90|B 奔腾B70|B 奔腾B50#B 本田进口$B 本田CLARITY|B 本田Insight|B 本田CR-Z|D 艾力绅#B 比速$B 比速汽车T3|B 比速汽车M3|B 比速汽车T5#B 比亚迪$B 宋MAX|B S6|B S7|B G5|B 元|B 唐|B 宋|B 秦|B 思锐|B 比亚迪S6|B 比亚迪M6|B 比亚迪L3|B 比亚迪G6|B 比亚迪G3|B 比亚迪F3R|B 比亚迪F3|B 比亚迪F0|B 速锐|B F6#B 比亚迪新能源$B 唐100|B 秦EV|B 元新能源|B 宋EV|B e6|B e5 300#B 标致$B 5008|B 2008|B 308S|B 301|B 508|B 408|B 4008|B 308|B 307|B 3008#B 别克$B VELITE 5|B GL6|B 阅朗|B 威朗|B 昂科威|B 英朗XT|B 英朗GT|B 别克GL8|B 昂科雷|B 昂科拉|B 英朗|B 林荫大道|B 君越|B 君威|B 凯越#B 东风本田$B 本田CR-V混动|B 本田UR-V|B 思铂睿锐·混动|B 竞瑞|B 思域|B 思铭|B 思铂睿|B 杰德|B 哥瑞|B 本田XR-V|B 本田CR-V|B 艾力绅#B 广汽本田$B 冠道|B 雅阁锐·混动|B 雅阁|B 凌派|B 理念|B 歌诗图|B 锋范|B 飞度|B 缤智|B 奥德赛#C 昌河铃木$C 北斗星X5E|C 派喜|C 福瑞达M5OS|C 北斗星X5|C 北斗星|C 利亚纳A6|C Q35|C Q25|C 利亚纳三厢|C 利亚纳两厢|C 浪迪|C 北斗星X5|C 北斗星#C 长安福特$C 新福克斯两厢|C 蒙迪欧混动|C 嘉年华两厢|C 金牛座|C 新福克斯三厢|C 新蒙迪欧|C 锐界(suv)|C 翼虎(suv)|C 翼搏(suv)|C 致胜|C 蒙迪欧|C 福睿斯|C 福克斯|C 嘉年华#C 长安轿车$C 睿骋CC|C 逸动XT RS|C 逸动XT|C CS15EV|C 长安CS55|C 逸动EV|C 凌轩|C CS95|C CS15|C CS75|C V7|C 致尚XT|C 志翔|C 悦翔两厢|C 悦翔V5|C 悦翔V3|C 悦翔|C 睿骋|C 杰勋|C 长安CX30三厢|C 长安CX30两厢|C 长安CX20|C 长安CS35|C 逸动|C 奔奔MINI|C 奔奔#C 长安铃木$C 启悦Pro|C 骁途|C 锋驭|C 启悦|L 维特拉|C 雨燕|C 天语SX4尚悦|C 天语SX4锐骑|C 天语SX4两厢|C 派喜|C 羚羊|C 奥拓#C 长安商用$C 欧力威EV|C 睿行S50T|C 欧尚|C CX70|C 勋龙|C 欧力威|C 金牛星|C 长安之星|C 长安星韵|C 长安星卡|C 长安星光4500|C 长安星光|C 长安小卡|C 长安欧诺#C 长安新能源$C 奔奔mini-e|C 新奔奔EV|C 新逸动蓝动版|C 新逸动EV#C 长城$C 哈弗M6|C 哈弗H7L|C 风骏6|C 哈弗H2S|C 哈弗派|C 哈弗H6coupe|C 哈弗H7|C 哈弗H2|C 哈弗H1|C 哈弗H9|C 哈弗M4|C 哈弗M2|C 哈弗H8|C 风骏5|C 金迪尔|C 长城V80|C 长城H3|C 长城C50|C 长城C30|C 长城C20R|C 哈弗H6|C 哈弗H5|C C50#C 长久$C 凯路威#D DS$D DS4S|D DS5LS|D DS6|D DS5|D DS4|D DS3#D 东风风度$D MX5|D MX6#D 东风风光$D S560|D 580|D 370|D 360|D 330#D 东风风诺$D E300#D 东风风神$D AX4|D 风神E70|D AX5|D S30|D L60|D AX3|D E30L|D 东风A9|D AX7|D A30|D 风神S30三厢|D 风神H30|D 风神A60|D H30 Cross#D 东风风行$D 景逸X6|D 风行F600|D DM5|D SX6|D CM7|D M5|D M3|D 菱智V3|D X5|D X3|D XV|D 景逸S50|D S500|D 景逸X5|D 景逸|D 菱智#D 东风小康$D K01|D C31|D C32|D C36|D C37|D 东风小康V29|D 东风小康V27|D 东风小康V26|D 东风小康V22|D 东风小康V21|D 东风小康V07s|D 东风小康K17|D 东风小康K07Ⅱ|D 东风小康K07|D 东风小康K06|D 东风小康K02|D 东风小康K01|D 东风小康C37|D 东风小康C35#D 东南$D DX3|D 翼神|D CROSS|D 东南V|D DX7|D 希旺|D V6菱仕|D V5菱致|D V3菱悦|D 菱悦|D 得利卡#D 上汽大通$D EG10|D D90|D EV80|D V80改装车|D V80|D T60|D G10#D 上汽大众$D 途昂Teramont|D 途观L|D 辉昂|D 凌渡|D F600|D 新桑塔纳|D 朗境|D 朗行|D 夏朗|D 途锐|D 尚酷|D 桑塔纳志俊|D 朗行|D 甲壳虫|D 辉腾|D 大众Multivan|D 大众Eos|D 大众 R36|D POLO GTI|D POLO|D 途安|D 途观|D 帕萨特|D 朗逸#D 一汽大众$D 高尔夫·嘉旅|D 蔚领|D 高尔夫GTI|D CC|D 宝来|D 迈腾|D 速腾|D 捷达|D 高尔夫#F 菲亚特$F TIPO|F PANDA|F 致悦|F 海酷|F 菲跃|F 菲亚特乌诺500X|F 菲亚特500|F 菲翔|F 博悦#F 丰田进口$F SE|F 尼桑途乐4.0XE|F 塞纳3.5四驱LE|F 酷路泽4.0|F 17款中东版霸道27|F 埃尔法|F 凯美瑞|F 坦途|F HIAC|F 杰路驰|F 丰田86|F Sienna|F 普瑞维亚|F 兰德酷路泽|F 汉兰达|F 丰田RAV4|F 威飒|F 红杉|F Fortuner|F FJ 酷路泽#F 福迪$F 雄狮F22|F 揽福|F 雄狮F16皮卡|F 探索者I|F 探索者6|F 探索者Ⅲ|F 探索者Ⅱ|F 福迪雄狮皮卡|F 福迪小超人皮卡#F 福汽启腾$F V60|F EX80|F M70#F 福特$F 福睿斯|F 翼虎|F 翼搏|F 野马|F 蒙迪欧|F 金牛座|F 探险者|F 锐界|F 福克斯#F 福特进口$F 福特C-MAX#F 福田$F 风景系列|F 时代系列|F 伽途系列|F 专用客车|F 拓陆者|F 萨普|F 欧曼|F 欧马可|F 迷迪|F 蒙派克S|F 旅游客车|F 公路客运|F 传奇X|F 奥铃捷运|F 奥铃|F 拓路者|F 迷笛|F 蒙派克#F 广汽丰田$F 逸致跨界车|F 凯美瑞双擎|F 逸致跨界车|F 逸致|F 致享|F 雷凌双擎|F 致炫|F 雷凌|F 凯美瑞|F 汉兰达#F 一汽丰田$F 柯斯达|F 威驰FS|F 普锐斯|F 花冠|F 皇冠|F RAV4荣放|F SIENTA|F 卡罗拉|F 普拉多4.0|F 普拉多2.7|F 卡罗拉 双擎|F 威驰|F 锐志|F 普拉多#G GMC$G YUKON|G Terrain|G Sierra|G GMC#G 观致$G 观致3 GT|G 观致2SUV|G 观致5SUV|G 观致3都市SUV|G 观致3五门版|G 观致3#G 广汽传祺$G 传祺GM8|G GS7|G GS3|G GS8|G GA4|G GS5super|G GS5|G GS4|G GA8|G GA6|G GA5|G GA3S视界|G GA3|G GA6|G 传祺GS4|G 传祺GA5|G 传祺GA3|G 传祺GS5|G 传祺#G 广汽讴歌$G 讴歌RDX|G 讴歌cdx#H 哈弗$H 哈弗M6|H 哈弗H9|H 哈弗H8|H 哈弗H7|H 哈弗H6 Coupe|H 哈弗H6|H 哈弗H5|H 哈弗H2s|H 哈弗H2|H 哈弗H1#H 海马$H 爱尚EV160|H 福美来F7|H 海马@3|H V70|H M8|H S5|H M6|H 海马骑士|H 海马S7|H 海马M3|H 福美来VS|H 爱尚/C2/C3/王子|H 丘比特|H 骑士|H 海福星|H 普力马|H 福美来#H 汉腾$H 汉腾X5|H 汉腾PHEV|H 汉腾X7#H 红旗$H 世纪星|H 明仕|H 红旗盛世|H 红旗旗舰|H 红旗H7|H 红旗|H B90|H B70|H B50#H 华晨宝马$H X1(SUV)|H 5系|H 3系|H 2系|H 1系#H 华晨中华$H V6|H 中华H330|H 中华H3|H 中华豚|H 中华H530|H v3 (SUV)|H 中华尊驰|H H320|H H230|H V5（SUV）|H S50（SUV)|H 海狮/大海狮|H 格瑞斯#H 华颂$H 华颂7#H 华泰$H 路盛E80|H 特拉卡|H 圣达菲|H 路盛E70|H 吉田|H 华泰B11|H 宝利格#H 华泰新能源$H EV160R|H EV160B|H xEV260|H iEV230#H 黄海$H N1|H N2|H N1S|H 征服者|H 小柴神|H 挑战者|H 曙光骄子|H 旗胜V3|H 旗胜F1|H 旗胜CUV|H 领航者|H 法萨特ncv|H 大柴神|H 傲龙CUV|H 傲羚|H 傲骏|H 翱龙SUV|H 翱龙CUV|H 翱龙#H 汇众$H 伊思坦纳#J JEEP$J 酷威|J 牧马人|J 大切诺基|J 自由光|J 自由侠|J 指南者（自由客）#J 吉利$J 远景S1|J 远景X3|J 远景X1|J 远景SUV|J 豪情GX9|J 帝豪GL|J 远景|J 熊猫|J 新金刚|J 新帝豪三厢|J 新帝豪两厢|J 新帝豪EV|J TX4|J 海景|J 帝豪RS|J 帝豪GS|J 博越|J 博瑞|J 豪情|J GX7/GC7|J EC8|J EC7#J 吉利新能源$J 帝豪EV#J 江淮$J IEV7S|J 瑞风S7|J IEV6S|J IEV5|J S2MINI|J M4|J 瑞风商务|J S5|J S3|J S2|J 和悦系列|J 瑞风K3|J 瑞风K5|J 瑞风M6|J 瑞风M4|J 瑞风A60|J 瑞风A6|J 瑞风A33|J 悦悦|J 星悦|J 帅铃|J 瑞鹰|J 瑞玲|J 瑞风M5|J 瑞风M3|J IEV|J 宾悦#J 江铃$J 福特途睿欧|J 驭胜S350|J 驭胜S330|J 域虎|J 顺达|J 凯运|J 凯威|J 凯锐|J 福特新世代全顺|J 宝威|J 宝典|J 风尚|J 经典全顺|J 新时代全顺#J 江铃福特$J 经典全顺|J 新世代全顺|J 驭胜330|J 途睿欧|J 撼路者|J 新驭胜S350#J 捷豹$J 捷豹XEL|J 捷豹XFL|J 捷豹XE|J 捷豹X-Type|J 捷豹XKR|J 捷豹XK|J 捷豹XJ|J 捷豹XFR|J 捷豹XF|J 捷豹S-TYPE|J 捷豹F-Type|J 捷豹F-PACE#J 金杯$J 金杯F50|J 金杯T52|J 金杯T50|J 金杯S70|J 华晨金杯750|J 金杯快运|J 智尚S35|J 小海狮|J 西部大力神|J 雷龙|J 金典|J 华晨金杯S50|J 海星|J 海狮第6代|J 阁瑞斯|J 第三代阁瑞斯|J 大海狮|J 霸道SUV|J 智尚S30#J 金龙联合$J 金龙凯歌|J 金龙金威|J 金龙凯特#J 金旅客车$J 考斯特|J 金旅客车系列|J 金旅海狮#J 进口大众$J 进口途观|J 尚酷|J 新迈特威|J 新凯路威|J 辉腾|J Golf GTE|J 途锐|J Golf R|J 夏朗|J 蔚揽|J 甲壳虫|J 新甲壳虫#J 君马$J 君马S70#K 开瑞$K K50S|K K60|K K50#K 凯迪拉克$K 凯雷德Hybrid|K 凯雷德|K SRX|K CTS-V|COUPE|K CTS|K ATS|K XTS|K XT5|K CT6|K ATS-L|K SRX(SUV)|K CTS|K SLS赛威#K 凯翼$K X5|K E3|K C3R|K C3|K V3|K X3#K 克莱斯勒$K 赛百灵|K 蝰蛇|K 克莱斯勒太阳舞|K 克莱斯勒君王|K 克莱斯勒交叉火力|K 克莱斯勒大捷龙|K 克莱斯勒彩虹|K 克莱斯勒300M|K 克莱斯勒300C|K 辉煌|K 大捷龙|K 城乡|K 铂锐|K PT漫步者#L 雷丁电动汽车$L 小王子|L 小骑士|L 雷丁D50|L 雷丁D70|L 雷丁D80|L 雷丁S50#L 雷克萨斯$L 雷克萨斯IS|L 雷克萨斯LC|L 雷克萨斯RC|L 雷克萨斯NX|L 雷克萨斯RX|L 雷克萨斯LX|L 雷克萨斯LS|L 雷克萨斯LF-A|L 雷克萨斯IS|L 雷克萨斯GX|L 雷克萨斯GS|L 雷克萨斯ES|L 雷克萨斯CT#L 雷诺$L 卡缤|L 科雷嘉|L 雷诺威赛帝|L 拉古那|L 塔利斯曼|L 拉古娜|L 梅甘娜|L 风朗|L 纬度|L 科雷傲|L 风景#L 力帆$L 力帆820|L 力帆X50|L 力帆X80|L 轩朗|L 乐途|L 迈威|L 兴顺|L 力帆X60|L 力帆720|L 力帆620|L 力帆520i|L 力帆520|L 力帆320|L 丰顺|L 320/620#L 猎豹$L Q6|L CS9|L 黑金刚|L 飞腾|L CS10|L CT7|L 飞扬皮卡|L CT5#L 林肯$L MKT|L 林肯大陆|L MKC|L MKX|L 领航员|L 林肯加长版|L 林肯MKZ|L 林肯LS|L 黑森林|L 城市|L MKS#L 铃木(进口)$L 英格尼斯|L IGNIS|L 速翼特|L 凯泽西|L 吉姆尼|L 超级维特拉#L 陆风$L 陆风X7|L 陆风X2|L 陆风新饰界|L 陆风风尚|L 陆风风华|L 陆风X9|L 陆风X8|L 陆风X6|L 陆风X5#L 路虎$L 揽胜星脉|L 自由人|L 神行者2代|L 路虎卫士|L 揽胜运动版|L 揽胜极光|L 卫士|L 神行者|L 极光|L 揽胜|L 发现#M MINI$M ROADSTER|M PACEMAN JCW|M PACEMAN|M MINI JCW|M MINI|M COUPE JCW|M COUPE|M COUNTRYMAN JCW|M COUNTRYMAN|M CLUBMAN JCW|M CLUBMAN|M CABRIO#M 长安马自达$M 马自达CX-3|M 昂克赛拉两厢|M 马自达2两厢|M 马自达3星骋三厢|M 马自达3星骋两厢|M 马自达CX-5|M 昂克赛拉三厢#M 马自达(进口)$M 马自达CX-3|M 马自达MX-5|M 马自达CX-7|M 马自达CX-9|M 马自达CX-5|M 马自达5#M 玛莎拉蒂$M 玛莎拉蒂GranTurismo|M 玛莎拉蒂Ghibli|M 玛莎拉蒂Levante|M 总裁|M 玛莎拉蒂spyder|M 玛莎拉蒂GT|M 玛莎拉蒂Coupe|M GranSport|M GranCabrio#M 名爵$M ZS|M 名爵锐行|M 名爵锐腾|M MGTF|M MG3SW|M MG7|M MG6|M MG5|M MG3#M 一汽马自达$M 睿翼|M 马自达CX-7|M 睿翼轿跑|M 马自达8|M 马自达6|M 阿特兹|M 马自达CX-4#N 纳智捷$N U5 suv|N 优6SUV|N 全新悦3|N 全新纳5|N MASTER|N 大7 SUV|N 大7 MPV#Q 奇瑞$Q 瑞虎5X|Q 瑞虎3X|Q 瑞虎3|Q 瑞虎5|Q 风云2|Q S15EV|Q 瑞虎7|Q X1|Q eQ|Q 艾瑞泽M7|Q 艾瑞泽5|Q 艾瑞泽3|Q 瑞虎|Q 奇瑞QQ3|Q 奇瑞E5|Q 奇瑞E3|Q 奇瑞A5|Q 奇瑞|Q 艾瑞泽7|Q A3三厢|Q A3两厢#Q 奇瑞新能源$Q 艾瑞泽5e|Q eQ1小蚂蚁|Q QQ3EV|Q eQ#Q 启辰$Q 启辰D60|Q T70X|Q 启辰M50V|Q T90|Q T70|Q R50X|Q R30|Q 启辰晨风|Q 启辰R50|Q 启辰D50#Q 起亚$Q 焕驰|Q KX Cross|K KX7|Q K3|Q 智跑|Q 狮跑|Q 福瑞迪|Q K2|Q K3S|Q K4|Q K5|Q KX3|Q KX5|Q RIO锐欧|Q 新佳乐|Q 起亚VQ|Q 嘉华|Q 速迈|Q 索兰托|Q 霸锐|Q 凯尊|Q 秀尔|Q 赛拉图#Q 起亚进口$Q 速迈（跑车)|Q 起亚VQ（mpv)|Q 嘉华（mpv)|Q 佳乐（mpv)|Q 起亚K5(进口)|Q 起亚K9|Q 凯尊|Q SPORTAGE(suv)|Q 霸锐(suv)|Q 索兰托(suv)|Q 极睿(suv)#R 东风日产$R 劲客|R 日产西玛|R 日产途乐|R 日产奇骏|R 日产贵士|R 日产GT-R|R 蓝鸟|R 碧莲|R 途乐|R 贵士|R 逍客|R 奇骏|R 玛驰|R 阳光|R 楼兰|R 天籁|R 轩逸|R 骐达|R 骊威#R 荣威$R 荣威eRX5|R ei6|R 荣威RX3|R i6|R 荣威RX5|R荣威E950|R 荣威E550|R 荣威360|R 荣威W5|R 荣威E50|R 荣威950|R 荣威750|R 荣威550|R 荣威350#R 郑州日产$R 纳瓦拉|R Navara|R D22|R 日产D22厢式车|R 帕拉丁|R MX6|R NV200|R 帅客#S Smart$S 精灵节奏|S 精灵纯洁|S Fortwo#S SWM斯威汽车$S SWM斯威X7|S SWM斯威X3#S 三菱$S 新劲炫ASX|S 帕杰罗·劲畅|S 帕杰罗|S 欧蓝德#S 双龙$S 主席|S 享御|S 路帝|S 雷斯特W|S 雷斯特II|S 雷斯特|S 柯兰多|S 爱腾ACTYON|S 蒂维拉#S 斯巴鲁$S 斯巴鲁LEVORG|S 斯巴鲁WRX-STI|S 斯巴鲁XV|S 斯巴鲁BRZ|S 驰鹏|S 傲虎|S 力狮|S 翼豹|S 森林人#S 斯柯达$S 明锐旅行版|S 柯迪亚克|S 昕动|S 昕锐|S 全新速派|S 明锐|S 晶锐|S Yeti#T 腾势$T 腾势DENZA#T 天津一汽$T 骏派A70E|T 威志V2CROSS|T 威志V5|T 威志V2|T 夏利N5|T 夏利N7|T 骏派D60(suv)|T 骏派A70#W WEY$W VV5s|W VV7s|W VV7c#W 潍柴英致$W G5|W G3|W 737|W 727#W 沃尔沃$W 沃尔沃S60|W 沃尔沃V90|W 沃尔沃S90|W 沃尔沃XCclassic|W 沃尔沃XC90|W 沃尔沃XC60|W 沃尔沃V60|W 沃尔沃V40|W 沃尔沃S60L|W 长安沃尔沃S80L#W 五菱$W 五菱宏光S3|W 五菱PN系列货车|W 五菱荣光V|W 五菱征程|W 五菱之光小卡|W 五菱宏光S1|W 五菱宏光S|W 五菱之光|W 五菱荣光小卡|W 五菱荣光#W 五十铃$W 瑞迈|W mu-X|W D-MAX#X 现代$X 伊兰特EV|X 悦纳RV|X 悦纳|X MTSTRA名图|X ix25|X 悦动|X 伊兰特|X 全新途胜|X 索纳塔八|X 索纳塔九|X 瑞纳两厢|X 瑞纳三厢|X 全新胜达|X 名驭|X 领动|X 朗动|X ix35|X i30|X 瑞弈#X 雪佛兰$X 科沃兹|X 探界者|X 赛欧3|X 新科鲁兹|X 科迈罗|X 迈锐宝XL|X 创酷|X 赛欧三厢|X 赛欧两厢|X 赛欧SPRINGO|X 迈锐宝|X 乐风RV|X 科帕奇|X 科鲁兹掀背|X 科鲁兹三厢|X 景程|X 爱唯欧三厢|X 爱唯欧两厢#X 雪铁龙$X 天逸C5 AIRCROSS|X C4毕加索|X C3-XR|X 经典世嘉|X 雪铁龙C6|X 雪铁龙C5|X 全新C4 L|X 雪铁龙C2|X 世嘉两厢|X 经典爱丽舍三厢|X 全新爱丽舍|X 爱丽舍|X C4世嘉#Y 野马汽车$Y 野马EC30|Y 野马斯派卡|Y 野马T80|Y 野马T70|Y 野马F16|Y 野马F10|Y 野马F12#Y 一汽$Y 威志V5|Y 威志V2|Y 威志三厢|Y 骏派D60|Y V80|Y V77|Y V75|Y V70II|Y V70|Y V52|Y V55|Y T80|Y T57|Y T51|Y T50|Y 森雅R7|Y 自由风|Y 夏利N7|Y 夏利N5|Y 夏利N3|Y 夏利A+|Y 森雅S80|Y 森雅M80|Y 坤程#Y 一汽红旗$Y L5|Y H7#Y 依维柯$Y 越野车|Y 威尼斯|Y 欧霸|Y 康果|Y 都灵|Y 得意|Y 宝迪|Y Daily#Y 英菲尼迪$Y 英菲尼迪QX80|Y 英菲尼迪QX70|Y 英菲尼迪QX60|Y 英菲尼迪QX50|Y 英菲尼迪QX|Y 英菲尼迪Q70L|Y 英菲尼迪Q60S|Y 英菲尼迪Q60|Y 英菲尼迪M|Y 英菲尼迪JX(海外)|Y 英菲尼迪G|Y 英菲尼迪FX|Y 英菲尼迪EX|Y Q45#Z 知豆$D D3|D D2S|D D2#Z 中华$Z H3|Z V3|Z H220|Z H530|Z 中华V5|Z 中华H330|Z 中华H320|Z 中华H230|Z 中华豚|Z 骏捷Wagon|Z 骏捷Cross|Z 尊驰|Z 骏捷FSV|Z 骏捷FRV|Z 骏捷#Z 中兴$Z 领主|Z 小老虎|Z 中兴无限|Z 中兴威虎|Z 中兴旗舰|Z 威虎G3#Z 众泰$Z 众泰T300|Z 众泰Z360|Z Z700H|Z SR9|Z 众泰Z560|Z T700|Z SR8|Z 5008|Z 芝麻E30|Z Z700|Z Z500|Z 云100|Z T600|Z T200|Z SR7|Z E200|Z 大迈X7|Z 大迈X5|Z 众泰Z300|Z 众泰Z200HB|Z 众泰Z200|Z 众泰Z100|Z 众泰V10|Z 众泰T200|Z 众泰M300|Z 众泰5008|Z 众泰2008|Z 江南TT#Z 众泰新能源$Z 芝麻|Z 云100|Z E200#Z 自定品牌$Z 报名后决定";if(ShowT)PCAD=SPT+"$"+SCT+","+SAT+"#"+PCAD;PCAArea=[];PCAP=[];PCAC=[];PCAA=[];PCAN=PCAD.split("#");for(i=0;i<PCAN.length;i++){PCAA[i]=[];TArea=PCAN[i].split("$")[1].split("|");for(j=0;j<TArea.length;j++){PCAA[i][j]=TArea[j].split(",");if(PCAA[i][j].length==1)PCAA[i][j][1]=SAT;TArea[j]=TArea[j].split(",")[0]}PCAArea[i]=PCAN[i].split("$")[0]+","+TArea.join(",");PCAP[i]=PCAArea[i].split(",")[0];PCAC[i]=PCAArea[i].split(',')}function PCAS(){this.SelP=document.getElementsByName(arguments[0])[0];this.SelC=document.getElementsByName(arguments[1])[0];this.SelA=document.getElementsByName(arguments[2])[0];this.DefP=this.SelA?arguments[3]:arguments[2];this.DefC=this.SelA?arguments[4]:arguments[3];this.DefA=this.SelA?arguments[5]:arguments[4];this.SelP.PCA=this;this.SelC.PCA=this;this.SelP.onchange=function(){PCAS.SetC(this.PCA)};if(this.SelA)this.SelC.onchange=function(){PCAS.SetA(this.PCA)};PCAS.SetP(this)};PCAS.SetP=function(PCA){for(i=0;i<PCAP.length;i++){PCAPT=PCAPV=PCAP[i];if(PCAPT==SPT)PCAPV="";PCA.SelP.options.add(new Option(PCAPT,PCAPV));if(PCA.DefP==PCAPV)PCA.SelP[i].selected=true}PCAS.SetC(PCA)};PCAS.SetC=function(PCA){PI=PCA.SelP.selectedIndex;PCA.SelC.length=0;for(i=1;i<PCAC[PI].length;i++){PCACT=PCACV=PCAC[PI][i];if(PCACT==SCT)PCACV="";PCA.SelC.options.add(new Option(PCACT,PCACV));if(PCA.DefC==PCACV)PCA.SelC[i-1].selected=true}if(PCA.SelA)PCAS.SetA(PCA)};PCAS.SetA=function(PCA){PI=PCA.SelP.selectedIndex;CI=PCA.SelC.selectedIndex;PCA.SelA.length=0;for(i=1;i<PCAA[PI][CI].length;i++){PCAAT=PCAAV=PCAA[PI][CI][i];if(PCAAT==SAT)PCAAV="";PCA.SelA.options.add(new Option(PCAAT,PCAAV));if(PCA.DefA==PCAAV)PCA.SelA[i-1].selected=true}}

