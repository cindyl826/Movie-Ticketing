/*
Navicat MySQL Data Transfer

Source Server         : dorm
Source Server Version : 50511
Source Host           : localhost:3306
Source Database       : db_moview_ticket

Target Server Type    : MYSQL
Target Server Version : 50511
File Encoding         : 65001

Date: 2019-12-13 17:28:03
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for cinema
-- ----------------------------
DROP TABLE IF EXISTS `cinema`;
CREATE TABLE `cinema` (
  `cId` int(30) NOT NULL AUTO_INCREMENT,
  `cName` varchar(30) DEFAULT NULL,
  `cAddress` varchar(128) DEFAULT NULL,
  PRIMARY KEY (`cId`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of cinema
-- ----------------------------
INSERT INTO `cinema` VALUES ('1', '恒大绿洲影城', '上海静安');
INSERT INTO `cinema` VALUES ('2', '恒大绿洲影城', '南京');
INSERT INTO `cinema` VALUES ('3', '魔方影城', '静安');
INSERT INTO `cinema` VALUES ('4', '星光影城', '普陀区');
INSERT INTO `cinema` VALUES ('6', '大地影城', '上海宝山区');
INSERT INTO `cinema` VALUES ('7', '万达影城', '上海金山');
INSERT INTO `cinema` VALUES ('9', '绿色影城', '上海徐汇');

-- ----------------------------
-- Table structure for comment
-- ----------------------------
DROP TABLE IF EXISTS `comment`;
CREATE TABLE `comment` (
  `conId` int(30) NOT NULL AUTO_INCREMENT,
  `uId` int(30) DEFAULT NULL,
  `mId` int(30) DEFAULT NULL,
  `comment` varchar(300) DEFAULT NULL,
  `comtime` datetime DEFAULT NULL,
  PRIMARY KEY (`conId`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of comment
-- ----------------------------
INSERT INTO `comment` VALUES ('1', '2', '9', '学校组织放映的影片，大家好像对rose和jack恋爱过程猎奇，但是让我感动的一幕是轮船将要沉沦，海上乐队的绅士们整理领结，肃穆庄严的弹奏最后一曲，那一瞬间，仿佛听见一首镇魂曲在响彻。', '2018-08-08 10:57:39');
INSERT INTO `comment` VALUES ('2', '2', '10', '电影开始后不久就开始抱怨3D很坑爹，但到后来就完全入戏顾不到了。就算15年间电影技术飞速发展革新，这片的剧情桥段镜头台词都被各种引用恶搞早已烂熟于心，但观片过程仍然满是震撼感动，沉船戏依旧看得目瞪口呆，最后观众躲在3D眼镜后面哭成一片。时光洗不掉的魅力，所谓“经典”也就这样了。', '2018-08-08 10:58:32');
INSERT INTO `comment` VALUES ('3', '2', '13', '三体迷们不用担心电影版会拍的稀烂啦！章北海船长，面壁人希恩斯，高维碎片，青铜时代和万有引力舰太空大战，冬眠和星际航行，三体世界的荒芜，高维世界的样貌，云天明的童话，诺兰新作中一次性看完！', '2018-08-08 11:01:22');
INSERT INTO `comment` VALUES ('4', '2', '19', '  昨天去看了The Dark Knight。伦敦西区的影院第一次满座。大部分的人都是来看Heath的。这个28岁的澳大利亚男人留给我们的最后一部电影。而看过全片之后，更是觉得，他才是本片的主角。据说导演在策划剧本的时候，已经计划把整个故事围绕着Joker来发展。这就注定了本片从始至终的黑暗基调。', '2018-08-08 11:03:04');
INSERT INTO `comment` VALUES ('5', '2', '11', '  “你敢保证你一辈子不得病？”纯粹、直接、有力！常常感叹：电影只能是电影。但每看到这样的佳作，又感慨：电影不只是电影！由衷的希望这部电影大卖！成为话题！成为榜样！成为国产电影最该有的可能。', '2018-08-08 11:03:54');
INSERT INTO `comment` VALUES ('6', '2', '5', '  我看完后也对这女孩感触特别深，她独立而勤劳，恪守自尊但又不敏感到浑身长刺，正像邦妮另外一条说的，没有那个男孩，她也会生长得很好。对于成长电影来说，它对孩子和家长都很有教育意义，不论面对挫折还是爱，它都有非常正向的可贵的价值观。', '2018-08-08 11:04:53');
INSERT INTO `comment` VALUES ('7', '2', '6', '  姜文的个人英雄式表达，但拍得流畅热闹，复杂的剧情细节之下，是他坚持的自我，但与鬼子来了相比，他更懂得如何掩藏自己挑战的野心，这些野心都掩藏在了一流的喜剧功夫上。', '2018-08-08 11:09:56');
INSERT INTO `comment` VALUES ('8', '2', '3', '  灭霸是一个有情怀的无产主义者，不惜牺牲此生最爱来整治这个混乱而拥挤不堪的宇宙，整治完了也不是要搞什么奴隶制自己当皇帝什么的，而是隐居深山老林看着夕阳感叹人生无常，说不定有空再种种菜养养鸡什么的。以随机的方式减去一半的人口也体现了其公平性和创新性，简直就是boss里面不可多得的楷模。', '2018-08-08 11:11:17');
INSERT INTO `comment` VALUES ('9', '5', '1', '想看', '2018-08-09 10:11:23');
INSERT INTO `comment` VALUES ('10', '6', '10', '很好！', '2019-05-29 13:04:49');
INSERT INTO `comment` VALUES ('11', '6', '14', '特别棒！', '2019-05-31 16:34:27');
INSERT INTO `comment` VALUES ('12', '6', '3', '还不错！', '2019-05-30 16:34:27');

-- ----------------------------
-- Table structure for hall
-- ----------------------------
DROP TABLE IF EXISTS `hall`;
CREATE TABLE `hall` (
  `hId` int(30) NOT NULL AUTO_INCREMENT,
  `hName` varchar(30) DEFAULT NULL,
  `cId` int(30) DEFAULT NULL,
  `capacity` int(15) DEFAULT NULL,
  PRIMARY KEY (`hId`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of hall
-- ----------------------------
INSERT INTO `hall` VALUES ('1', '1号大厅', '1', '50');
INSERT INTO `hall` VALUES ('2', '2号大厅', '1', '50');
INSERT INTO `hall` VALUES ('3', '3号大厅', '1', '50');
INSERT INTO `hall` VALUES ('4', '4号大厅', '1', '50');
INSERT INTO `hall` VALUES ('5', '1号大厅', '2', '50');
INSERT INTO `hall` VALUES ('6', '3号大厅', '2', '50');
INSERT INTO `hall` VALUES ('7', '4号大厅', '2', '50');
INSERT INTO `hall` VALUES ('8', '2号大厅', '2', '50');
INSERT INTO `hall` VALUES ('9', '1号大厅', '3', '50');
INSERT INTO `hall` VALUES ('10', '2号大厅', '3', '50');
INSERT INTO `hall` VALUES ('11', '5号大厅', '3', '50');
INSERT INTO `hall` VALUES ('12', '6号大厅', '3', '50');
INSERT INTO `hall` VALUES ('13', '1号大厅', '4', '50');
INSERT INTO `hall` VALUES ('14', '2号大厅', '4', '50');
INSERT INTO `hall` VALUES ('15', '3号大厅', '4', '50');
INSERT INTO `hall` VALUES ('16', '4号大厅', '4', '50');
INSERT INTO `hall` VALUES ('17', '1号大厅', '6', '50');
INSERT INTO `hall` VALUES ('18', '2号大厅', '6', '50');
INSERT INTO `hall` VALUES ('19', '3号大厅', '6', '50');
INSERT INTO `hall` VALUES ('20', '4号大厅', '6', '50');
INSERT INTO `hall` VALUES ('21', '1号大厅', '7', '50');
INSERT INTO `hall` VALUES ('22', '2号大厅', '7', '50');
INSERT INTO `hall` VALUES ('23', '3号大厅', '7', '50');
INSERT INTO `hall` VALUES ('24', '4号大厅', '7', '50');
INSERT INTO `hall` VALUES ('25', '1号大厅', '9', '50');
INSERT INTO `hall` VALUES ('26', '2号大厅', '9', '50');
INSERT INTO `hall` VALUES ('27', '3号大厅', '9', '50');
INSERT INTO `hall` VALUES ('28', '4号大厅', '9', '50');
INSERT INTO `hall` VALUES ('29', '1号大厅', '10', '35');

-- ----------------------------
-- Table structure for movie
-- ----------------------------
DROP TABLE IF EXISTS `movie`;
CREATE TABLE `movie` (
  `mId` int(30) NOT NULL AUTO_INCREMENT,
  `mName` varchar(64) DEFAULT NULL,
  `mlanguage` varchar(15) DEFAULT NULL,
  `mlocality` varchar(30) DEFAULT NULL,
  `mPicaddress` varchar(50) DEFAULT NULL,
  `mDetail` varchar(800) DEFAULT NULL,
  `mDuration` int(30) DEFAULT NULL,
  `mType` varchar(15) DEFAULT NULL,
  `mGrade` double(10,1) NOT NULL,
  PRIMARY KEY (`mId`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of movie
-- ----------------------------
INSERT INTO `movie` VALUES ('1', '动物世界', '汉语', '中国', 'images/dongwu.jpg', '　在游戏机厅做着兼职“小丑”的郑开司（李易峰 饰），幼时父亲突然失踪，母亲重病住院，使得郑开司的生活非常拮据。发小“大虾米”（曹炳琨 饰）借口买房骗下了郑开司父亲留下的房产，还给他带来了巨额的欠债。神秘人物（迈克尔·道格拉斯 Michael Douglas 饰）出现，告诉郑开司，只要参加“命运号”游轮上的神秘游戏，就有机会偿还完所有欠款，一无所有的郑开司为了给青梅竹马的护士刘青（周冬雨 饰）和母亲更好的生活，只得登上游轮，开始了生存游戏，一场以“剪刀、石头、布”展开的生死较量即将登场……', '132', '动作', '7.3');
INSERT INTO `movie` VALUES ('2', '爱乐之城', '英语', '美国', 'images/ayzc.jpg', '米娅（艾玛·斯通 Emma Stone 饰）渴望成为一名演员，但至今她仍旧只是片场咖啡厅里的一名平凡的咖啡师，尽管不停的参加着大大小小的试镜，但米娅收获的只有失败。某日，在一场派对之中，米娅邂逅了名为塞巴斯汀（瑞恩·高斯林 Ryan Gosling 饰）的男子，起初两人之间产生了小小的矛盾，但很快，米娅便被塞巴斯汀身上闪耀的才华以及他对爵士乐的纯粹追求所吸引，最终两人走到了一起。 ', '128', '爱情', '8.3');
INSERT INTO `movie` VALUES ('3', '复仇者联盟3:无限战争', '英语', '美国', 'images/fuchou.jpg', '最先与灭霸军团遭遇的雷神索尔一行遭遇惨烈打击，洛基遇害，空间宝石落入灭霸之手。未几，灭霸的先锋部队杀至地球，一番缠斗后掳走奇异博士。为阻止时间宝石落入敌手，斯塔克和蜘蛛侠闯入了敌人的飞船。与此同时，拥有心灵宝石的幻视也遭到外星侵略者的袭击，为此美国队长、黑寡妇等人将其带到瓦坎达王国，向黑豹求助。幸免于难的索尔与星爵一行相逢，随后他们兵分两路。索尔与火箭、格鲁特踏上再铸雷神之锤的旅程，星爵则与卡魔拉等人试图阻止灭霸的恶行。而知晓灵魂宝石下落的卡魔拉，同样是其义父灭霸追踪的对象。 ', '150', '科幻', '8.2');
INSERT INTO `movie` VALUES ('4', '极盗者', '英语', '美国', 'images/jdz.jpg', '年轻的FBI特工强尼·犹他（卢克·布雷西 Luke Bracey 饰），潜伏到一队喜欢寻找刺激挑战的盗匪里，该队伍由富有个人魅力的鲍迪（埃德加·拉米雷兹 Édgar Ramírez 饰）领导。这些盗匪被怀疑是在用极不寻常的方式进行着系列犯罪。在与鲍迪这一伙人的交往中，犹他发现自己无可自拔的与这伙人产生了伙伴情谊，犹他陷入了职业伦理与追求真我之间的矛盾，他放弃了自己的一切，加入到了对人类极限界的八项巅峰挑战的追寻中……', '113', '动作', '6.9');
INSERT INTO `movie` VALUES ('5', '怦然心动', '英语', '美国', 'images/prxd.jpg', '布莱斯（卡兰•麦克奥利菲 Callan McAuliffe 饰）全家搬到小镇，邻家女孩朱丽（玛德琳•卡罗尔 Madeline Carroll 饰）前来帮忙。她对他一见钟情，心愿是获得他的吻。两人是同班同学，她一直想方设法接近他，但是他避之不及。她喜欢爬在高高的梧桐树上看风景。但因为施工，树被要被砍掉，她誓死捍卫，希望他并肩作战，但是他退缩了。她的事迹上了报纸，外公对她颇有好感，令他十分困惑。她凭借鸡下蛋的项目获得了科技展第一名，成了全场焦点，令他黯然失色。她把自家鸡蛋送给他，他听家人怀疑她家鸡蛋不卫生，便偷偷把鸡蛋丢掉。她得知真相，很伤心，两人关系跌入冰点。她跟家人诉说，引发争吵。原来父亲一直', '90', '爱情', '8.9');
INSERT INTO `movie` VALUES ('6', '让子弹飞', '汉语', '中国', 'images/rzdf.jpg', '民国年间，花钱捐得县长的马邦德（葛优 饰）携妻（刘嘉玲 饰）及随从走马上任。途经南国某地，遭劫匪张麻子（姜文 饰）一伙伏击，随从尽死，只夫妻二人侥幸活命。马为保命，谎称自己是县长的汤 师爷。为汤师爷许下的财富所动，张麻子摇身一变化身县长，带着手下赶赴鹅城上任。有道是天高皇帝远，鹅城地处偏僻，一方霸主黄四郎（周润发 饰）只手遮天，全然不将这个新来的县长放在眼里。张麻子痛打了黄的武教头（姜武 饰），黄则设计害死张的义子小六（张默 饰）。原本只想赚钱的马邦德，怎么也想不到竟会被卷入这场土匪和恶霸的角力之中。鹅城上空愁云密布，血雨腥风在所难免…… ', '132', '动作', '8.7');
INSERT INTO `movie` VALUES ('7', '死侍2', '英语', '美国', 'images/ss2.jpg', '　拥有不死之身的死侍韦德·威尔森（瑞恩·雷诺兹 Ryan Reynolds 饰）继续在惩恶扬善、毒舌嘴贱的路上绝命狂奔，与此同时他和女友瓦内莎（莫蕾娜·巴卡林 Morena Baccarin 饰）的爱情逐渐升华，两人全新期待新生命的到来。谁知命运难测，因瓦内莎意外身亡，韦德万念俱灰，绝望地渴求生命的终结。在他最失落的时候，钢力士和少年弹头等将他领走，成为X战警中的一员。在某次行动中，死侍因袒护暴走的14岁变种人拉塞尔（朱利安·迪尼森 Julian Dennison 饰）而随同对方被关入冰盒监狱。没过多久，来自未来的电索（乔什·布洛林 Josh Brolin 饰）闯入监狱，意图杀死在未来引起无数', '119', '动作', '7.6');
INSERT INTO `movie` VALUES ('8', '头号玩家', '英语', '美国', 'images/touhao.jpg', '故事发生在2045年，虚拟现实技术已经渗透到了人类生活的每一个角落。詹姆斯哈利迪（马克·里朗斯 Mark Rylance 饰）一手建造了名为“绿洲”的虚拟现实游戏世界，临终前，他宣布自己在游戏中设置了一个彩蛋，找到这枚彩蛋的人即可成为绿洲的继承人。要找到这枚彩蛋，必须先获得三把钥匙，而寻找钥匙的线索就隐藏在詹姆斯的过往之中。 ', '140', '科幻', '8.7');
INSERT INTO `movie` VALUES ('9', '泰坦尼克号 3D版', '英语', '美国', 'images/ttnkh.jpg', '  堪称“世界工业史奇迹”的豪华客轮”泰坦尼克“号在1912年4月开始了处女航，从英国的南安普顿驶往美国纽约。贵族千金露丝（凯特·温斯莱特饰演）与其他社会名流住在头等舱，而落魄的青年画家杰克（莱昂纳多·迪卡布里奥饰演）则在开船前赌博赢来一张船票，入住客轮的三等舱。', '194', '爱情', '9.4');
INSERT INTO `movie` VALUES ('10', '泰坦尼克号', '英语', '美国', 'images/ttnkh1.jpg', '1912年4月10日，号称 “世界工业史上的奇迹”的豪华客轮泰坦尼克号开始了自己的处女航，从英国的南安普顿出发驶往美国纽约。富家少女罗丝（凯特•温丝莱特）与母亲及未婚夫卡尔坐上了头等舱；另一边，放荡不羁的少年画家杰克（莱昂纳多·迪卡普里奥）也在码头的一场赌博中赢得了下等舱的船票。 ', '194', '爱情', '9.3');
INSERT INTO `movie` VALUES ('11', '我不是药神', '汉语', '中国', 'images/wobu.jpg', '普通中年男子程勇（徐峥 饰）经营着一家保健品店，失意又失婚。不速之客吕受益（王传君 饰）的到来，让他开辟了一条去印度买药做“代购”的新事业，虽然困难重重，但他在这条“买药之路”上发现了商机，一发不可收拾地做起了治疗慢粒白血病的印度仿制药独家代理商。赚钱的同时，他也认识了几个病患及家属，为救女儿被迫做舞女的思慧（谭卓 饰）、说一口流利“神父腔”英语的刘牧师（杨新鸣 饰），以及脾气暴烈的“黄毛”（章宇 饰），几个人合伙做起了生意，利润倍增的同时也危机四伏。程勇昔日的小舅子曹警官（周一围 饰）奉命调查仿制药的源头，假药贩子张长林（王砚辉 饰）和瑞士正牌医药代表（李乃文 饰）也对其虎视眈眈，生意逐渐变', '117', '剧情', '9.0');
INSERT INTO `movie` VALUES ('12', '雪国列车', '韩语', '韩国', 'images/xglc.jpg', '为了应对愈演愈烈的温室效应，世界各国在2014年发射了代号CW-7的冷冻剂，谁知却将地球推入了万劫不复的极寒深渊。大多数的人类死于寒冷与恐慌，只有为数不多的数千人登上了威尔福德工业开发的列车，成为永不停歇的流浪者。这列火车借助威尔福德（艾德·哈里斯 Ed Harris 饰）开发的永动引擎，并且配备各种完备设施，在之后的十七年里构建了属于自己的独立生态系统，周而复始旋转在43.8万公里的漫长旅途中。生活在末尾车厢的底层人民一直饱受压迫，为了争取自由和权力，他们在过去发起过多次暴动，但无疑例外均以失败告终。这一次，拥有领袖气质的柯蒂斯（克里斯·埃文斯 Chris Evans 饰）试图找到被囚禁的安', '125', '科幻', '7.3');
INSERT INTO `movie` VALUES ('13', '星际穿越 ', '英语', '美国', 'images/xjcy.jpg', '近未来的地球黄沙遍野，小麦、秋葵等基础农作物相继因枯萎病灭绝，人类不再像从前那样仰望星空，放纵想象力和灵感的迸发，而是每日在沙尘暴的肆虐下倒数着所剩不多的光景。在家务农的前NASA宇航员库珀（马修·麦康纳 Matthew McConaughey 饰）接连在女儿墨菲（麦肯吉·弗依 Mackenzie Foy 饰）的书房发现奇怪的重力场现象，随即得知在某个未知区域内前NASA成员仍秘密进行一个拯救人类的计划。多年以前土星附近出现神秘虫洞，NASA借机将数名宇航员派遣到遥远的星系寻找适合居住的星球。', '169', '科幻', '9.2');
INSERT INTO `movie` VALUES ('14', '战狼2 ', '汉语', '中国', 'images/zhanla.jpg', '　故事发生在非洲附近的大海上，主人公冷锋（吴京 饰）遭遇人生滑铁卢，被“开除军籍”，本想漂泊一生的他，正当他打算这么做的时候，一场突如其来的意外打破了他的计划，突然被卷入了一场非洲国家叛乱，本可以安全撤离，却因无法忘记曾经为军人的使命，孤身犯险冲回沦陷区，带领身陷屠杀中的同胞和难民，展开生死逃亡。随着斗争的持续，体内的狼性逐渐复苏，最终孤身闯入战乱区域，为同胞而战斗。', '123', '动作', '7.1');
INSERT INTO `movie` VALUES ('15', '侏罗纪世界2', '英语', '美国', 'images/zhuluo.jpg', '自侏罗纪世界的骚乱以来，种类繁多的恐龙在努布拉岛度过了三年无拘无束的时光。然而该岛火山活动频繁，随时有喷发的危险。致力于恐龙保护的克莱尔·戴宁（布莱丝·达拉斯·霍华德 Bryce Dallas Howard 饰）受到班杰明•洛克伍德的邀请。班杰明及其下属伊莱·米尔斯（拉菲·斯波 Rafe Spall 饰）希望她和相关技术人员前往努布拉岛拯救那里的恐龙，并将它们安置在新的栖息地。受到感染的克莱尔设法找来欧文（克里斯·帕拉特 Chris Pratt 饰）一同前往，欧文则希望救出他亲手驯养的迅猛龙小蓝。当他们踏足这座隔绝之岛时，却发现事情没那么简单。 ', '128', '科幻', '6.8');
INSERT INTO `movie` VALUES ('17', '火星救援', '英语', '美国', 'images/hxjy.jpg', '载人航天宇宙飞船阿瑞斯3号成功抵达火星，谁知一场破坏力极其巨大的风暴向宇航员们袭来，阿瑞斯3号被迫中断任务，紧急返航。撤离途中，宇航员马克·沃特尼（马特·达蒙 Matt Damon 饰）被飞船上吹落的零件击中，由于生还希望渺茫，队友们只得匆匆返航，并向世人宣告他已牺牲的事实。出乎意料的是，马克以极低的概率活了下来。他躲进驻火星的航天基地疗伤。下一次火星任务要等到四年后，而基地内的补给仅够他维持31天。短暂的绝望后，马克决定利用有限的食物，在这颗空无一人的星球上种植作物，寻找一线生机。与此同时，地球方面也很快发现马克生还的事实，他们想尽办法部署营救计划。孤军奋战的马克，能否等到救援队伍的到来？ ', '144', '科幻', '8.4');
INSERT INTO `movie` VALUES ('18', '超体', '英语', '法国', 'images/ct.jpg', '被恶德男友强迫帮人送货的年轻女子露西（斯嘉丽·约翰逊 Scarlett Johansson 饰），遭遇了穷凶恶极的黑帮头目张先生（崔岷植 饰）一伙。她连同三个男人被张先生在腹部缝入了代号为CPH4的神秘药品，以此将药品偷偷带入不同国家。在台北盘桓期间，露西遭到恶男暴打，以致药品破裂进入血液之中。谁知令人难以置信的事情就此发生，药品激发了露西大脑的潜力，令人脑中约90%的神经元相继苏醒。伴随着身体的飞快进化，露西掌握了越来越多人们所谓的超能力。她清楚地了解到CPH4所拥有的强大威力，于是想方设法要阻止其他三袋药品落入张先生一伙手中。 ', '89', '科幻', '7.1');
INSERT INTO `movie` VALUES ('19', '蝙蝠侠:黑暗骑士', '英语', '美国 ', 'images/haqs.jpg', '从亲眼目睹父母被人杀死的阴影中走出来的“蝙蝠侠”，经历了成长之后，已经不再是那个桀骜不的孤单英雄了。在警官吉姆·戈登和检查官哈维·登特的通力帮助下，“蝙蝠侠”无后顾之忧地继续满世界的奔波，与日益增长起来的犯罪威胁做着永无休止的争斗，而他所在的高谭市，也是进展最为明显的地方，犯罪率以一种惊人的速度持续下降着，毕竟对方是能够上天入地的“蝙蝠侠”，不借两个胆子谁还敢造次呢？不过像高谭这种科技与污秽并存的城市，平静是不可能维持太久的，果不其然，新一轮的混乱很快就席卷了整个城市，人们再一被被恐慌所笼罩着，而声称愿意为这一切负责的，自然就是所有混乱的源头以及支配者--“小丑”了。 ', '152', '科幻', '9.1');
INSERT INTO `movie` VALUES ('20', '邪不压正', '汉语', '中国', 'images/xbyz.jpg', '七七事变前夕，华裔青年小亨德勒（彭于晏 饰）从美国远赴重洋，回到阔别十数年之久的北平从医。然而他真正的名字叫李天然，十三岁那年曾亲眼目睹师父一家遭师兄朱潜龙（廖凡 饰）和日本人根本一郎（泽田谦也 饰）灭门。侥幸逃生的天然被美国人亨德勒医生送往大洋彼岸，接受了极其严苛的训练，而今他怀着绝密的任务踏上故土。亨德勒父子租住神秘男子蓝青峰（姜文 饰）的宅子，蓝是当年辛亥革命的参与者，他与现为警察局长的朱潜龙过从甚密，却又以杀死李天然为筹码，暗中怂恿朱除掉根本一郎。复仇心切的李天然寻找到了仇人，而亨德勒医生则全力阻止养子冒险。在这一过程中，交际花唐凤仪（许晴 饰）与裁缝关巧红（周韵 饰）也卷入了男人的勾', '137', '动作', '7.1');
INSERT INTO `movie` VALUES ('21', '喜剧之王', '粤语', '中国', 'images/xjzw.jpg', '尹天仇（周星驰 饰）一直醉心戏剧，想成为一名演员，平时除了做跑龙套以外，还会在街坊福利会里开设演员训练班。此时舞小姐柳飘飘在妈妈桑的带领下来到这里要求学做戏，原来柳飘飘有一段非常不愉快的经历，在尹天仇对她指导的过程中，柳飘飘对尹天仇渐生情愫，同时她也成为了夜总会里当红的小姐。尹天仇受到了极多白眼之后，终于得到了大明星鹃姐（莫文蔚 饰）的赏识，提携他担演新戏中的男主角，但没想到突然把他的角色换掉了，令他失望不已。在片场当场务的卧底警员（吴孟达 饰）身份被识穿，尹天仇阴差阳错的帮忙破了案。之后尹天仇继续活跃在街坊福利会的演员训练班里。 ', '85', '爱情', '8.6');
INSERT INTO `movie` VALUES ('22', '阿拉丁 Aladdin (2019)', '英语', '美国', 'images/p2553992741.jpg', '在充满异域风情的古代阿拉伯王国，善良的穷小子阿拉丁（莫纳·马苏德 饰）和勇敢的茉莉公主（娜奥米·斯科特 饰）浪漫邂逅，在可以满足主人三个愿望的神灯精灵（威尔·史密斯 饰）的帮助下，两人踏上了一次寻找真爱和自我的魔幻冒险。', '128', '科幻', '7.8');
INSERT INTO `movie` VALUES ('24', '大侦探皮卡丘 Pokémon Detective Pikachu', '英语', '英国', 'images/p2555538168.jpg', '好莱坞真人电影《大侦探皮卡丘》（暂译）讲述了蒂姆·古德曼（贾 斯 提·史密斯饰） 为寻找下落不明的父亲来到莱姆市，意外与父亲的前宝可梦搭档大侦探皮卡丘相遇，并惊讶地发现自己是唯一能听懂皮卡丘说话的人类，他们决定组队踏上揭开真相的刺激冒险之路。探案过程中他们邂逅了各式各样 的宝可梦，并意外发现了一个足以毁灭整个宝可梦宇宙的惊天阴谋。该电影改编自任天堂3DS同名游戏，由罗伯·莱特曼导演，瑞安·雷诺兹为大侦探皮卡丘配音，贾斯提斯·史密斯、凯瑟琳·纽顿等主演。', '104', '动漫', '6.7');

-- ----------------------------
-- Table structure for session
-- ----------------------------
DROP TABLE IF EXISTS `session`;
CREATE TABLE `session` (
  `sId` int(30) NOT NULL AUTO_INCREMENT,
  `hId` int(30) DEFAULT NULL,
  `cId` int(30) DEFAULT NULL,
  `mId` int(30) DEFAULT NULL,
  `beginTime` datetime DEFAULT NULL,
  `price` double(10,1) DEFAULT NULL,
  `remain` int(15) DEFAULT NULL,
  PRIMARY KEY (`sId`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=69 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of session
-- ----------------------------
INSERT INTO `session` VALUES ('2', '2', '1', '1', '2018-08-06 10:30:00', '50.0', '50');
INSERT INTO `session` VALUES ('3', '3', '1', '1', '2018-08-06 10:30:00', '50.0', '50');
INSERT INTO `session` VALUES ('4', '4', '1', '1', '2018-08-06 10:30:00', '50.0', '50');
INSERT INTO `session` VALUES ('5', '1', '1', '1', '2018-08-06 15:30:00', '50.0', '50');
INSERT INTO `session` VALUES ('6', '5', '2', '1', '2018-08-06 10:30:00', '50.0', '50');
INSERT INTO `session` VALUES ('7', '6', '2', '1', '2018-08-06 10:30:00', '50.0', '50');
INSERT INTO `session` VALUES ('8', '7', '2', '1', '2018-08-06 10:30:00', '50.0', '50');
INSERT INTO `session` VALUES ('9', '25', '9', '1', '2018-08-06 10:30:00', '50.0', '50');
INSERT INTO `session` VALUES ('10', '26', '9', '1', '2018-08-06 10:30:00', '50.0', '50');
INSERT INTO `session` VALUES ('11', '27', '9', '1', '2018-08-06 10:30:00', '50.0', '50');
INSERT INTO `session` VALUES ('12', '28', '9', '1', '2018-08-06 10:30:00', '60.0', '50');
INSERT INTO `session` VALUES ('13', '8', '2', '1', '2018-08-06 10:30:00', '60.0', '50');
INSERT INTO `session` VALUES ('14', '9', '3', '1', '2018-08-06 10:30:00', '50.0', '50');
INSERT INTO `session` VALUES ('15', '10', '3', '1', '2018-08-06 10:30:00', '50.0', '50');
INSERT INTO `session` VALUES ('16', '11', '3', '1', '2018-08-06 10:30:00', '50.0', '50');
INSERT INTO `session` VALUES ('17', '12', '3', '1', '2018-08-06 10:30:00', '50.0', '50');
INSERT INTO `session` VALUES ('18', '1', '1', '2', '2018-08-07 10:30:00', '50.0', '50');
INSERT INTO `session` VALUES ('19', '2', '1', '2', '2018-08-07 10:30:00', '50.0', '50');
INSERT INTO `session` VALUES ('20', '4', '1', '2', '2018-08-07 10:30:00', '50.0', '50');
INSERT INTO `session` VALUES ('21', '3', '1', '2', '2018-08-07 10:30:00', '50.0', '50');
INSERT INTO `session` VALUES ('22', '13', '4', '3', '2018-08-06 10:30:00', '50.0', '45');
INSERT INTO `session` VALUES ('23', '14', '4', '3', '2018-08-06 10:30:00', '50.0', '50');
INSERT INTO `session` VALUES ('24', '15', '4', '3', '2018-08-06 10:30:00', '50.0', '50');
INSERT INTO `session` VALUES ('25', '16', '4', '3', '2018-08-06 10:30:00', '50.0', '50');
INSERT INTO `session` VALUES ('26', '13', '4', '4', '2018-08-06 13:30:00', '50.0', '50');
INSERT INTO `session` VALUES ('27', '14', '4', '4', '2018-08-06 13:30:00', '50.0', '50');
INSERT INTO `session` VALUES ('28', '15', '4', '4', '2018-08-06 13:30:00', '50.0', '50');
INSERT INTO `session` VALUES ('29', '16', '4', '4', '2018-08-06 13:30:00', '50.0', '50');
INSERT INTO `session` VALUES ('30', '17', '6', '5', '2018-08-06 13:30:00', '50.0', '50');
INSERT INTO `session` VALUES ('31', '17', '6', '5', '2018-08-06 16:00:00', '50.0', '50');
INSERT INTO `session` VALUES ('32', '18', '6', '5', '2018-08-06 16:00:00', '50.0', '50');
INSERT INTO `session` VALUES ('33', '19', '6', '5', '2018-08-06 16:00:00', '50.0', '50');
INSERT INTO `session` VALUES ('34', '20', '6', '5', '2018-08-06 16:00:00', '50.0', '50');
INSERT INTO `session` VALUES ('35', '17', '6', '5', '2018-08-06 10:30:00', '50.0', '50');
INSERT INTO `session` VALUES ('36', '17', '6', '6', '2018-08-06 18:30:00', '50.0', '50');
INSERT INTO `session` VALUES ('37', '18', '6', '6', '2018-08-06 18:30:00', '50.0', '50');
INSERT INTO `session` VALUES ('38', '19', '6', '6', '2018-08-06 18:30:00', '50.0', '50');
INSERT INTO `session` VALUES ('39', '20', '6', '6', '2018-08-06 18:30:00', '50.0', '50');
INSERT INTO `session` VALUES ('40', '21', '7', '7', '2018-08-06 16:00:00', '50.0', '50');
INSERT INTO `session` VALUES ('41', '22', '7', '8', '2018-08-06 16:00:00', '50.0', '50');
INSERT INTO `session` VALUES ('42', '23', '7', '9', '2018-08-06 16:00:00', '50.0', '44');
INSERT INTO `session` VALUES ('43', '24', '7', '9', '2018-08-06 16:00:00', '50.0', '45');
INSERT INTO `session` VALUES ('44', '24', '7', '9', '2018-08-06 13:30:00', '50.0', '45');
INSERT INTO `session` VALUES ('45', '22', '7', '10', '2018-08-06 13:30:00', '50.0', '50');
INSERT INTO `session` VALUES ('46', '23', '7', '10', '2018-08-06 13:30:00', '50.0', '50');
INSERT INTO `session` VALUES ('47', '24', '7', '10', '2018-08-06 10:30:00', '50.0', '50');
INSERT INTO `session` VALUES ('48', '21', '7', '10', '2018-08-06 13:30:00', '50.0', '50');
INSERT INTO `session` VALUES ('49', '22', '7', '10', '2018-08-06 18:30:00', '50.0', '50');
INSERT INTO `session` VALUES ('50', '23', '7', '10', '2018-08-06 18:30:00', '50.0', '50');
INSERT INTO `session` VALUES ('51', '24', '7', '11', '2018-08-07 10:30:00', '50.0', '50');
INSERT INTO `session` VALUES ('52', '23', '7', '11', '2018-08-07 10:30:00', '50.0', '50');
INSERT INTO `session` VALUES ('53', '22', '7', '12', '2018-08-07 10:30:00', '50.0', '50');
INSERT INTO `session` VALUES ('54', '21', '7', '12', '2018-08-07 10:30:00', '50.0', '50');
INSERT INTO `session` VALUES ('55', '25', '9', '12', '2018-08-07 10:30:00', '50.0', '50');
INSERT INTO `session` VALUES ('56', '26', '9', '12', '2018-08-07 10:30:00', '50.0', '50');
INSERT INTO `session` VALUES ('57', '27', '9', '12', '2018-08-07 10:30:00', '50.0', '50');
INSERT INTO `session` VALUES ('58', '25', '9', '13', '2018-08-07 13:30:00', '50.0', '50');
INSERT INTO `session` VALUES ('59', '26', '9', '13', '2018-08-07 13:30:00', '50.0', '50');
INSERT INTO `session` VALUES ('60', '27', '9', '14', '2018-08-07 13:30:00', '50.0', '48');
INSERT INTO `session` VALUES ('61', '28', '9', '15', '2018-08-07 13:30:00', '50.0', '50');
INSERT INTO `session` VALUES ('62', '28', '9', '15', '2018-08-07 15:30:00', '50.0', '50');
INSERT INTO `session` VALUES ('63', '28', '9', '16', '2018-08-07 18:30:00', '50.0', '50');
INSERT INTO `session` VALUES ('64', '25', '9', '16', '2018-08-07 18:30:00', '50.0', '50');
INSERT INTO `session` VALUES ('65', '26', '9', '16', '2018-08-07 18:30:00', '50.0', '50');
INSERT INTO `session` VALUES ('66', '27', '9', '16', '2018-08-07 18:30:00', '50.0', '50');
INSERT INTO `session` VALUES ('67', '21', '7', '17', '2018-08-07 18:30:00', '50.0', '50');
INSERT INTO `session` VALUES ('68', '29', '10', '11', '2019-06-05 12:30:00', '55.0', '31');

-- ----------------------------
-- Table structure for ticket
-- ----------------------------
DROP TABLE IF EXISTS `ticket`;
CREATE TABLE `ticket` (
  `tId` int(30) NOT NULL AUTO_INCREMENT,
  `uId` int(30) DEFAULT NULL,
  `sId` int(30) DEFAULT NULL,
  `seat` int(15) DEFAULT NULL,
  PRIMARY KEY (`tId`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of ticket
-- ----------------------------
INSERT INTO `ticket` VALUES ('1', '2', '42', '17');
INSERT INTO `ticket` VALUES ('2', '2', '42', '16');
INSERT INTO `ticket` VALUES ('3', '2', '42', '14');
INSERT INTO `ticket` VALUES ('4', '2', '42', '13');
INSERT INTO `ticket` VALUES ('5', '2', '42', '24');
INSERT INTO `ticket` VALUES ('6', '2', '42', '27');
INSERT INTO `ticket` VALUES ('7', '2', '43', '27');
INSERT INTO `ticket` VALUES ('8', '2', '43', '25');
INSERT INTO `ticket` VALUES ('9', '2', '43', '24');
INSERT INTO `ticket` VALUES ('10', '2', '43', '23');
INSERT INTO `ticket` VALUES ('11', '2', '43', '33');
INSERT INTO `ticket` VALUES ('12', '2', '44', '26');
INSERT INTO `ticket` VALUES ('13', '2', '44', '25');
INSERT INTO `ticket` VALUES ('14', '2', '44', '24');
INSERT INTO `ticket` VALUES ('15', '2', '44', '23');
INSERT INTO `ticket` VALUES ('16', '2', '44', '33');
INSERT INTO `ticket` VALUES ('17', '2', '22', '16');
INSERT INTO `ticket` VALUES ('18', '2', '22', '24');
INSERT INTO `ticket` VALUES ('19', '2', '22', '27');
INSERT INTO `ticket` VALUES ('20', '2', '22', '36');
INSERT INTO `ticket` VALUES ('21', '2', '22', '35');
INSERT INTO `ticket` VALUES ('22', '6', '68', '14');
INSERT INTO `ticket` VALUES ('23', '6', '68', '15');
INSERT INTO `ticket` VALUES ('24', '2', '68', '21');
INSERT INTO `ticket` VALUES ('25', '2', '68', '23');
INSERT INTO `ticket` VALUES ('26', '6', '60', '16');
INSERT INTO `ticket` VALUES ('27', '6', '60', '17');

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `uId` int(30) NOT NULL AUTO_INCREMENT,
  `uName` varchar(30) DEFAULT NULL,
  `uPass` varchar(30) DEFAULT NULL,
  `balance` double(10,2) DEFAULT NULL,
  `uType` int(10) DEFAULT NULL,
  PRIMARY KEY (`uId`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('1', 'admin', 'admin', '100.00', '1');
INSERT INTO `user` VALUES ('3', 'zsg', '123', '0.00', '0');
INSERT INTO `user` VALUES ('4', 'zxx', '123', '120.00', '0');
INSERT INTO `user` VALUES ('5', 'test', '111111', '330.00', '0');
