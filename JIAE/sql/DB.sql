/*
Navicat MySQL Data Transfer

Source Server         : giae
Source Server Version : 50611
Source Host           : localhost:3306
Source Database       : jiae

Target Server Type    : MYSQL
Target Server Version : 50611
File Encoding         : 65001

Date: 2017-05-20 12:24:55
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `addressinfo`
-- ----------------------------
DROP TABLE IF EXISTS `addressinfo`;
CREATE TABLE `addressinfo` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(10) NOT NULL DEFAULT '' COMMENT '用户名',
  `area` varchar(30) NOT NULL COMMENT '省市区',
  `address` varchar(50) NOT NULL COMMENT '详细地址',
  `phone` varchar(20) DEFAULT NULL COMMENT '电话号码',
  `mobile` char(11) DEFAULT NULL COMMENT '手机号码',
  `default` smallint(1) DEFAULT NULL COMMENT '是否默认',
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `add_user_id` (`user_id`),
  CONSTRAINT `add_user_id` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='收货地址表';

-- ----------------------------
-- Records of addressinfo
-- ----------------------------
INSERT INTO `addressinfo` VALUES ('1', '张三', '陕西省咸阳市兴平市', '金城路中段68号', '845135485', '1275485455', '1', '5');
INSERT INTO `addressinfo` VALUES ('2', '李四', '陕西省西安市雁塔区', '西八里村69号', '83624512', '1357415244', '1', '5');
INSERT INTO `addressinfo` VALUES ('3', 'tony', '陕西省西安市雁塔区', '小宅基地', '123456', '123123', '2', '6');

-- ----------------------------
-- Table structure for `admin`
-- ----------------------------
DROP TABLE IF EXISTS `admin`;
CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(10) NOT NULL,
  `role_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `role_admin_id` (`role_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of admin
-- ----------------------------
INSERT INTO `admin` VALUES ('1', '小张', '123', '1');
INSERT INTO `admin` VALUES ('2', '小董', '123', '1');
INSERT INTO `admin` VALUES ('3', '小刘', '123', '1');
INSERT INTO `admin` VALUES ('4', '老龚', '666', '2');
INSERT INTO `admin` VALUES ('5', 'pp', '123', '3');
INSERT INTO `admin` VALUES ('6', '尚静', '123', '4');
INSERT INTO `admin` VALUES ('7', '文静', '123', '6');
INSERT INTO `admin` VALUES ('8', '老李', '123', '5');
INSERT INTO `admin` VALUES ('9', '苏阳', '123', '6');
INSERT INTO `admin` VALUES ('10', '老黄', '123', '7');
INSERT INTO `admin` VALUES ('11', 'cc', '666', '8');

-- ----------------------------
-- Table structure for `brand`
-- ----------------------------
DROP TABLE IF EXISTS `brand`;
CREATE TABLE `brand` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL DEFAULT '' COMMENT '品牌名称',
  `country` varchar(20) DEFAULT NULL COMMENT '国家',
  `content` text,
  `html` text,
  `url` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8 COMMENT='品牌信息';

-- ----------------------------
-- Records of brand
-- ----------------------------
INSERT INTO `brand` VALUES ('1', 'TravelBlue', '英国', 'Travel Blue蓝旅于1987年创立，源自英国伦敦，专注于旅行配件和数码配件系列产品。品牌以“让您的旅行更舒适、安全”而著称于世界，已在五大洲100多格国家（包括中国的50多个机场）展示销售。', 'G:\\jiae\\jiae\\JIAE\\app\\public\\assets\\image\\brand\\Travel Blue', 'http://www.jiae.com/branddetai');
INSERT INTO `brand` VALUES ('2', '优尔', '中国', 'youer厦门优尔电器股份有限公司成立于2002年6月，优尔公司是一家创新型优势企业, 专业从事各类型小家电的开发、生产与销售。专利创新，一流的品质和独特的设计是我们的主要优势，促使我们的产品在国际市场更具有竞争力。', '../assets/image/brand/youer/youer.gif', '');
INSERT INTO `brand` VALUES ('3', '唤醒者', '中国-美国', 'awaker  加意新品与Vinaera联合出品的品牌【唤醒者】荣获德国2014年度红点设计大奖，历经5年研究和设计诞生了此款电子醒酒器，唤醒者的专利气压设计让这款电子醒酒器从传统醒酒器中脱颖而出。', '../assets/image/brand/awaker/awaker--LOGO.png', null);
INSERT INTO `brand` VALUES ('4', 'UNIXOO', '中国', 'UIXOO，用创新与技术的完美融合为用户打造更易用、舒适、便捷的产品。即便是瓶塞，UIXOO也可以玩智能，相对于市面上的主流机械瓶塞，UIXOO实现了至少是从卡带录音机到iPod的飞跃。', '../assets/image/brand/UIXOO/unixoo.png', null);
INSERT INTO `brand` VALUES ('5', 'IMM Living', '加拿大', 'IMM Living是来自加拿大多伦多的创意家居品牌，产品风格简单且极具创意，十分注重细节与趣味性。以生活核心为出发点，设计师将可爱的小动物、经典故事人物和各国标志性物件的趣味形象与产品的功能性巧妙结合，创作出既具艺术美学又非常实用的家居用品。', '../assets/image/brand/IMM Living/imm.png', null);
INSERT INTO `brand` VALUES ('6', 'beladesign', '中国', 'beladesign设计师相信，通过设计可以大致控制原木的走向，可以把木纹最美的一面展现给用户，通过将思想与感情注入产品，可以把自己对木的感受传递给用户，把原木的美呈现给更多的简约控和自然爱好者', '../assets/image/brand/beladesign/bela.png', null);
INSERT INTO `brand` VALUES ('7', 'vacu vin ', '荷兰', 'vacu vin 1986年于荷兰由施耐德先生提出真空保存啤酒的想法而创立以来，它把所有的时间花在怎样让你更好地体验喝酒方式及制造厨房惊喜上，Vacu Vin所有产品适用于家庭及其他专业用途。', '../assets/image/brand/Vacu vin/vacu vin.png', null);
INSERT INTO `brand` VALUES ('8', 'Artiart', '台湾', 'Artiart从3位设计师发展成拥有26位成员的创新团队，台湾、香港、大陆、日本的多元化设计师资源为Artiart产品注入了简易、易用、时尚三美的特性，无论是温馨的三口之家还是孜然一身的单身公寓，Artiart的产品总能让你的家看起来不太一样。', '../assets/image/brand/Artiart/arritiart_logo.png', null);
INSERT INTO `brand` VALUES ('9', 'EMIE', '中国', 'EMIE一群80后的年轻专业团队，他们将“追求细致、完美生活”这一理念注输到做精品3C产品的设计上来，亿觅生产的不是配件，而是品味和乐趣。', '../assets/image/brand/EMIE/emie.png', null);
INSERT INTO `brand` VALUES ('10', 'DUUX', '荷兰', 'Duux的设计理念是反对现存市场上复杂冗赘鸡肋的电器设计，换言之，以最简单的设计搞定你所需要的。新潮时尚的外观和靠谱的质量成为年轻父母和儿童电器的不二之选。', '../assets/image/brand/Duux/duux.png', null);
INSERT INTO `brand` VALUES ('11', 'LEITZ', '德国', '1896德国发明家路易斯莱茨寻求一种方式来整理自己的文件，从这个简单的需要开始，杠杆拱文件诞生了。经过数百年的传承和创新，我们的原则历久弥新：今天的工作我还有值得做的事情。\r\nLEITZ 1896德国发明家路易斯莱茨寻求一种方式来整理自己的文件，从这个简单的需要开始，杠杆拱文件诞生了。经过数百年的传承和创新，我们的原则历久弥新：今天的工作我还有值得做的事情。利市–让工作做得更好！', '../assets/image/brand/Leitz/LEITZ.png', null);
INSERT INTO `brand` VALUES ('12', 'shuter', '中国', 'Umbra的成功源于它的第一件作品：印花窗帘布，也正是这第一件收货意外成功的作品不仅让umbra走到了今天，更让umbra成为时尚休闲家居品领导者，如今的umbra做的不止是窗帘，它所拥有的，可能你正在寻找.....', '../assets/image/brand/Umbra/umbra_log.png', null);
INSERT INTO `brand` VALUES ('13', 'Smart Frog', '中国', 'Smart frog卡蛙品牌，追求灵动的创意产品。我们的设计团队屡获德国IF奖、德国红点奖等世界设计“奥斯卡”奖项。我们崇尚工匠精神，在制造之心顺德，为您打造每一件精雕细琢的产品。一流的设计加上一流的制造，用心做事，这就是卡蛙。', '../assets/image/brand/Smart Frog/smart_logo.png', null);
INSERT INTO `brand` VALUES ('14', 'MAWA', '德国', 'MAVA 1948年起，马丁·瓦格纳就想过怎么改善那些悬挂衣服的衣架。从挂裤子的衣架开始着手，MAWA在衣架这个市场带来了无数的创新。在过去的几十年中，MAWA的衣架系列设计出超过500个产品和很多专利。', '../assets/image/brand/MAWA/mawa-logo.png', null);
INSERT INTO `brand` VALUES ('15', '十八纸', '中国', '十八纸  一个是钟情于创意的男屌丝，一个是学平面设计却想成为服装设计师的宅女，一对文艺细胞爆棚的年轻夫妇，用环保的概念打造了全国、首家、纸质、风琴式、家具设计品牌。', '../assets/image/brand/eighteen_paper/E.P._LOGO.png', null);
INSERT INTO `brand` VALUES ('16', 'Bluelounge', '美国', 'Bluelounge 小到收纳电线的各种小工具、多功能iPad支架、iPhone充电插座，大到散热脚垫、外用背包和保护套等等，Bluelounge的各个创意产品都散发着浓浓的苹果风。加上银灰色金属、圆角矩形和精细的细节处理等元素，一眼看去就是为了Apple各类产品量身打造，设计感让人眼前一亮。', '../assets/image/brand/Bluelounge/blue_logo.png', null);
INSERT INTO `brand` VALUES ('17', 'AIKA', '中国', 'AIKA 秉承“科技、时尚、创新”理念，应用前沿科技，坚守科技与时尚生活完美结合的产品主张，旨在为用户打造更加省心、开心的移动互联化的科技生活品', '../assets/image/brand/AIKA/aika_logo.png', null);
INSERT INTO `brand` VALUES ('18', 'Bamboo', '中国', 'Bamboo 我们的诞生正是天堂伞老品牌转型升级的重要战略，我们将继承天堂伞严谨务实、工艺精湛的品牌文化，同时将面向更年轻、更时尚的消费阶层，倡导全新的设计理念，打造全新的品牌形象、传递全新的流行文化', '../assets/image/brand/BamBoo/bamboo_logo.png', null);
INSERT INTO `brand` VALUES ('19', 'Dr.drinks', '中国', 'Dr.drinks 我们的诞生正是天堂伞老品牌转型升级的重要战略，我们将继承天堂伞严谨务实、工艺精湛的品牌文化，同时将面向更年轻、更时尚的消费阶层，倡导全新的设计理念，打造全新的品牌形象、传递全新的流行文化', '../assets/image/brand/Dr.drinks/dr_logo.png', null);
INSERT INTO `brand` VALUES ('20', 'Mrice', '中国', 'Mrice 自成立以来，Mrice系列产品始终以独具前瞻性与创新性的专业化视野,为不同群体的用户提供更高的应用需求、更多的解决方案，致力于在每一次的技术升级和产品革新中不断为用户创造更多的价值与享受', '../assets/image/brand/Mrice/mrice_logo.png', null);
INSERT INTO `brand` VALUES ('21', 'Sty!epie', '中国', 'Sty!epie 从外观到功能，消除冷冰冰的科技感，让令人愉快的设计和友好的使用体验给生活带来更多的乐趣。风格，可以让功能更贴近人心', '../assets/image/brand/Sty!epie/STY!EPIE_LOGO.png', null);
INSERT INTO `brand` VALUES ('22', 'OTOTO', '以色列', 'OTOTO 这个来自以色列的设计品牌设计团队以幽默风趣且功能性完善的产品设计为发展主轴，产品除了功能性为核心发展，借由活泼的创意外形发想，打造令人爱不释手的家用品，摆放在家中使用让人心情愉快。', '../assets/image/brand/OTOTO/OTOO_LOGO.png', null);
INSERT INTO `brand` VALUES ('23', 'Peleg design', '以色列', 'Peleg design工作室就是一个力图发掘和创造生活趣味的设计团队，旗下的设计师用他们对日常生活的观察、想象及创造力，把“率性”和“幽默”融入了工作室设计的产品中，让我们的生活变得友好，充满意趣。', '../assets/image/brand/Peleg design/PELE_LOGO.png', null);
INSERT INTO `brand` VALUES ('24', '壳氏唯', '美国', '壳氏唯  倡导的是一种绿色思想、一种环保态度、一种完美产品、一种追求健康的绿色生活。公认无害，荣获国际权威认可；响应国家节能、减排，提高生活质量政策的号召，追求健康时尚、让创新、绿色更贴近生活品牌概念。', '../assets/image/brand/Husk\'s Ware/husk_logo.png', null);
INSERT INTO `brand` VALUES ('25', '生活演异', '中国', '有品味有个性的家居生活少不了一些有创意有情趣的家品来点缀。\"生活演异\"从这一点出发，在强大的创意研发团队和雄厚企业实力的支持下，秉承原创，力求让每一件家品，在功能性和设计感上独具非凡创意，不但满足人们日常的实用性需求，也能提升家居品质，彰显自身个性。', '../assets/image/brand/kind of life/life_logo.png', null);
INSERT INTO `brand` VALUES ('26', 'lofree', '中国', 'lofree 洛斐产品定位在有品味有格调的年轻人群，洛斐遵循品味生活的设计理念，所创造出来的产品无不极具创新和韵味，并将产品最本质的功能，用最新颖完美的方式，奉献给人们.', '../assets/image/brand/lofree/lofree_logo.png', null);
INSERT INTO `brand` VALUES ('27', 'MONKEY.B', '以色列', 'mnokey.b 无论是在家里，在办公室或户外，我们会在小事情上给您提供一个新鲜的视角，充实您的一天。在这里你可以看到一些人们最喜欢的创意。我们相信，实惠的设计与新颖的想法结合也能使它具备外观与实用性。', '../assets/image/brand/MONKEY.B/MB logo.png', null);
INSERT INTO `brand` VALUES ('28', 'Bewater', '中国香港', 'Bewater  彼我它以香港为基地，受伟大的本土武术哲学家李小龙先生启发，一直追求优质与创新的产品。他们亦相信设计要有弹性不可墨守成规；设计意念如海纳百川，水惠泽大地。设计师在意物件与环境的关系，也留意产品和用家的互动。', '../assets/image/brand/Bewater/bewater---LOGO.png', null);
INSERT INTO `brand` VALUES ('29', 'E-PALACE', '中国', 'E-PALACE属E世代的殿堂，针对E世代生活空间需求，发展“家居优质小品”为主题的六大系列商品，将生活中的情趣、实用功能、视觉美观有机融合于商品中。让产品在生活空间中产生无限的对话,创造一个归属于自己的“空间情感”。', '../assets/image/brand/E-PALACE/e-palace-logo.png', null);
INSERT INTO `brand` VALUES ('30', 'Soirée home', '美国', 'Soirée home 扎根在美国葡萄酒胜地Napa Valley,酒具制造商Soiréehome富有创新精神，致力追求最高品质生活。旗下的产品使品酒更享受，使生活更有趣。Soiréehome团队始终怀着诚意，致力生产新颖有趣的家用品，帮助顾客惬意享受美酒和佳肴。', '../assets/image/brand/Soireehome/SOIREE_LOGO.png', null);
INSERT INTO `brand` VALUES ('31', 'Unique Art', '台湾', 'Unique Art秉持着台湾设计与制造的本土精神，关注生活中隐形的不便，解决那些让人皱眉头的小问题，创造出「体贴」人心的生活物件，展现“Know Your Needs”的设计理念，而Unique Art的合作设计团队更获得IF、Red Dot、Good Design等多项国际奖项的肯定。', '../assets/image/brand/Unique Art/UNIQ_LOGO.png', null);
INSERT INTO `brand` VALUES ('32', 'Siliconezone', '美国', 'Siliconezone 在2003年，当厨房里仍然是“噼里啪啦”的金属器皿时，Sliconezone首先将前卫的硅胶厨具引入市场。它以好清洗、不粘附、易用的灵活品质，一推出就吸引了大众的眼球。在十多年后，Siliconezone用它的独创性证明，它们确实是一种新兴的厨具。', '../assets/image/brand/Siliconezone/SiliconeZONE--Logo.png', null);
INSERT INTO `brand` VALUES ('33', 'ESMA', '德国', 'ESMA 从1949年Franz Wulf先生创立Franz Wulf&Co伊始，EMSA品牌凭借着鼓励创新的精神、责任的感受、顶级的产品原料和持续的品质控制，在生产和市场领域，不断地建立着EMSA在家用产品的领导品牌地位', '../assets/image/brand/EMSA/emsa_logo.png', null);

-- ----------------------------
-- Table structure for `coincertificate`
-- ----------------------------
DROP TABLE IF EXISTS `coincertificate`;
CREATE TABLE `coincertificate` (
  `id` int(11) NOT NULL,
  `price` double NOT NULL,
  `code` varchar(25) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of coincertificate
-- ----------------------------

-- ----------------------------
-- Table structure for `coupon`
-- ----------------------------
DROP TABLE IF EXISTS `coupon`;
CREATE TABLE `coupon` (
  `id` int(11) NOT NULL,
  `price` double NOT NULL,
  `user_id` int(11) NOT NULL,
  `title` varchar(10) NOT NULL,
  `goodstype_id` int(11) DEFAULT NULL,
  `rule` double DEFAULT NULL,
  `starttime` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP,
  `endtime` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `coup_user_id` (`user_id`),
  KEY `coup_goodstype_id` (`goodstype_id`),
  CONSTRAINT `coup_goodstype_id` FOREIGN KEY (`goodstype_id`) REFERENCES `goodstype` (`id`),
  CONSTRAINT `coup_user_id` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of coupon
-- ----------------------------

-- ----------------------------
-- Table structure for `favorite`
-- ----------------------------
DROP TABLE IF EXISTS `favorite`;
CREATE TABLE `favorite` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `goods_id` int(11) NOT NULL COMMENT '商品id',
  `time` datetime DEFAULT NULL COMMENT '收藏时间',
  PRIMARY KEY (`id`),
  KEY `fa_goods_id` (`goods_id`),
  CONSTRAINT `fa_goods_id` FOREIGN KEY (`goods_id`) REFERENCES `goods` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='收藏表';

-- ----------------------------
-- Records of favorite
-- ----------------------------
INSERT INTO `favorite` VALUES ('1', '7', '2017-05-19 17:21:34');
INSERT INTO `favorite` VALUES ('2', '2', '2017-05-19 17:23:32');

-- ----------------------------
-- Table structure for `goods`
-- ----------------------------
DROP TABLE IF EXISTS `goods`;
CREATE TABLE `goods` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(20) NOT NULL DEFAULT '' COMMENT '标题',
  `price` double(10,2) NOT NULL COMMENT '价格',
  `brand_id` int(11) NOT NULL COMMENT '品牌外键',
  `time` varchar(10) NOT NULL DEFAULT '' COMMENT '上市时间',
  `power` varchar(20) NOT NULL DEFAULT '' COMMENT '功能',
  `type_id` int(11) NOT NULL COMMENT '商品类型外键',
  `pic1` varchar(100) DEFAULT NULL,
  `pic2` varchar(100) DEFAULT NULL,
  `pic3` varchar(100) DEFAULT '',
  `pic4` varchar(100) DEFAULT NULL,
  `pic5` varchar(100) DEFAULT NULL,
  `pic6` varchar(100) DEFAULT NULL,
  `details` text,
  `transport_price` double(3,0) DEFAULT NULL COMMENT '运费',
  `state` int(2) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `id` (`id`,`brand_id`),
  KEY `brand_id` (`brand_id`),
  KEY `type_id` (`type_id`),
  CONSTRAINT `brand_id` FOREIGN KEY (`brand_id`) REFERENCES `brand` (`id`),
  CONSTRAINT `type_id` FOREIGN KEY (`type_id`) REFERENCES `goodstype` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COMMENT='商品基本信息表';

-- ----------------------------
-- Records of goods
-- ----------------------------
INSERT INTO `goods` VALUES ('1', '便携折叠式双肩包', '198.00', '1', '03.03', '背包', '1', 'JIAE\\app\\public\\assets\\image\\brand\\Travel Blue\\商品列表\\sku.jpg', 'JIAE\\app\\public\\assets\\image\\brand\\Travel Blue\\introduce\\Travel Blue品牌页.jpg', '', null, null, null, null, null, '1');
INSERT INTO `goods` VALUES ('2', '太空记忆护颈枕', '248.00', '1', '0303', '护颈枕', '1', 'JIAE\\app\\public\\assets\\image\\brand\\Travel Blue\\å±-ç¤ºå-¾.jpg', 'JIAE\\app\\public\\assets\\image\\brand\\Travel Blue\\dsfasdfsadf.jpg', '', null, null, null, null, null, '1');
INSERT INTO `goods` VALUES ('3', '唤醒者电子醒酒器', '780.00', '3', '01.02', '醒酒器', '5', 'JIAE\\app\\public\\assets\\image\\brand\\唤醒者\\a91d9c80f56a48908c4e6ebf29a45bf1.jpg', 'JIAE\\app\\public\\assets\\image\\brand\\唤醒者\\introduce\\3ac59d9a-c557-4214-95ce-1685a4e5330c.j', '', null, null, null, null, null, '1');
INSERT INTO `goods` VALUES ('4', '智能真空保鲜瓶塞', '299.00', '4', '01.02', '红酒瓶塞', '5', 'JIAE\\app\\public\\assets\\image\\brand\\UIXOO\\7b35934cf3e44055a562cc7f045c9a45.jpg', 'JIAE\\app\\public\\assets\\image\\brand\\UIXOO\\introduce\\6a6c9da5-decc-4e56-9307-74eba261d417', '', null, null, null, null, null, '1');
INSERT INTO `goods` VALUES ('5', '小矮人饰品装饰盘', '329.00', '5', '01.04', '装饰盘', '1', 'JIAE\\app\\public\\assets\\image\\brand\\IMM Living\\1.jpg', 'JIAE\\app\\public\\assets\\image\\brand\\IMM Living\\introduce\\IM-品牌详情页----4_01.jpg', 'JIAE\\app\\public\\assets\\image\\brand\\IMM Living\\introduce\\IM-品牌详情页----4_02.jpg', 'JIAE\\app\\public\\assets\\image\\brand\\IMM Living\\introduce\\IM-品牌详情页----4_03.jpg', 'JIAE\\app\\public\\assets\\image\\brand\\IMM Living\\introduce\\IM-品牌详情页----4_04.jpg', null, null, null, '1');
INSERT INTO `goods` VALUES ('6', '榉木台灯(优雅款)', '288.00', '6', '01.05', '台灯', '1', 'JIAE\\app\\public\\assets\\image\\brand\\beladesign\\03261bfb6b634850ab9986d82679bcba.jpg', 'JIAE\\app\\public\\assets\\image\\brand\\beladesign\\af3f030fc4c94124ac5262c6e53bc91b.jpg', 'JIAE\\app\\public\\assets\\image\\brand\\beladesign\\introduce\\.8644a0ca-2050-456f-86e1-24f40e', null, null, null, null, null, '1');
INSERT INTO `goods` VALUES ('7', '酒具礼盒5件套', '249.00', '7', '01.02', '真空抽', '5', 'JIAE\\app\\public\\assets\\image\\brand\\Vacu vin\\d882997c6ade48adb782dff9522628a0.jpg', null, '', null, null, null, null, null, '1');
INSERT INTO `goods` VALUES ('8', '原木音响', '378.00', '9', '03.05', '音响', '4', 'JIAE\\app\\public\\assets\\image\\brand\\EMIE\\aefdcd08160f647a18d3d70c4f272cea4.jpg', 'JIAE\\app\\public\\assets\\image\\brand\\EMIE\\4849d73bbf7549b4a0fe472cfa45938a.jpg', '', null, null, null, null, null, '1');
INSERT INTO `goods` VALUES ('9', 'DUUX 空气净化器', '349.00', '10', '01.08', '空气净化器', '4', 'JIAE\\app\\public\\assets\\image\\brand\\Duux\\1a2be80eba314e7caa5052af37e3266c.jpg', 'JIAE\\app\\public\\assets\\image\\brand\\Duux\\5a1a065617344aeaa7f46049b96d1c7b.jpg', '', null, null, null, null, null, '1');
INSERT INTO `goods` VALUES ('10', '分类索引', '31.00', '11', '01.06', '标签', '6', 'JIAE\\app\\public\\assets\\image\\brand\\Leitz利市\\6.jpg', 'JIAE\\app\\public\\assets\\image\\brand\\Leitz利市\\dsgsdag.jpg', '', null, null, null, null, null, '1');

-- ----------------------------
-- Table structure for `goodspicture`
-- ----------------------------
DROP TABLE IF EXISTS `goodspicture`;
CREATE TABLE `goodspicture` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `goods_id` int(11) NOT NULL COMMENT '商品id外键',
  `picture` varchar(10) DEFAULT NULL COMMENT '图片地址',
  PRIMARY KEY (`id`),
  KEY `goods_pic_id` (`goods_id`),
  CONSTRAINT `goods_pic_id` FOREIGN KEY (`goods_id`) REFERENCES `goods` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='商品大图表';

-- ----------------------------
-- Records of goodspicture
-- ----------------------------

-- ----------------------------
-- Table structure for `goodsremark`
-- ----------------------------
DROP TABLE IF EXISTS `goodsremark`;
CREATE TABLE `goodsremark` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `score` smallint(1) NOT NULL COMMENT '评分',
  `time` datetime NOT NULL COMMENT '时间',
  `content` varchar(100) NOT NULL DEFAULT '' COMMENT '内容',
  `yy` int(10) DEFAULT NULL COMMENT '有用',
  `user_id` int(11) NOT NULL COMMENT '用户id',
  `goods_id` int(11) NOT NULL COMMENT '商品id',
  `goods_name` varchar(20) NOT NULL DEFAULT '' COMMENT '商品名称',
  `user_name` varchar(10) NOT NULL DEFAULT '' COMMENT '用户名',
  `pic1` varchar(10) NOT NULL DEFAULT '',
  `pic2` varchar(10) DEFAULT NULL,
  `pic3` varchar(10) DEFAULT NULL,
  `pic4` varchar(10) DEFAULT NULL,
  `pic5` varchar(10) DEFAULT NULL,
  `pic6` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `remark_goods_id` (`goods_id`),
  KEY `remark_user_id` (`user_id`),
  CONSTRAINT `remark_goods_id` FOREIGN KEY (`goods_id`) REFERENCES `goods` (`id`),
  CONSTRAINT `remark_user_id` FOREIGN KEY (`user_id`) REFERENCES `goods` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='商品评论表';

-- ----------------------------
-- Records of goodsremark
-- ----------------------------

-- ----------------------------
-- Table structure for `goodsresremark`
-- ----------------------------
DROP TABLE IF EXISTS `goodsresremark`;
CREATE TABLE `goodsresremark` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `remark_id` int(11) NOT NULL COMMENT '评论表id',
  `time` datetime NOT NULL COMMENT '评论时间',
  `content` varchar(100) NOT NULL DEFAULT '' COMMENT '评论内容',
  `user_id` int(11) NOT NULL COMMENT '用户id',
  `user_name` varchar(10) NOT NULL DEFAULT '' COMMENT '用户名',
  PRIMARY KEY (`id`),
  KEY `res_remark_id` (`remark_id`),
  CONSTRAINT `res_remark_id` FOREIGN KEY (`remark_id`) REFERENCES `goodsremark` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='评论回复表';

-- ----------------------------
-- Records of goodsresremark
-- ----------------------------

-- ----------------------------
-- Table structure for `goodstype`
-- ----------------------------
DROP TABLE IF EXISTS `goodstype`;
CREATE TABLE `goodstype` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL DEFAULT '' COMMENT '类型名称',
  `parent_id` int(11) NOT NULL COMMENT '父id',
  `remark` varchar(20) DEFAULT NULL,
  `state` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `parent_id` (`parent_id`)
) ENGINE=InnoDB AUTO_INCREMENT=85 DEFAULT CHARSET=utf8 COMMENT='商品类型表';

-- ----------------------------
-- Records of goodstype
-- ----------------------------
INSERT INTO `goodstype` VALUES ('1', '优选家居', '0', null, '1');
INSERT INTO `goodstype` VALUES ('2', '品味厨房', '0', null, '1');
INSERT INTO `goodstype` VALUES ('3', '生活电器', '0', null, '1');
INSERT INTO `goodstype` VALUES ('4', '极客数码', '0', null, '1');
INSERT INTO `goodstype` VALUES ('5', '美酒伴侣', '0', null, '1');
INSERT INTO `goodstype` VALUES ('6', '轻松办公', '0', null, '1');
INSERT INTO `goodstype` VALUES ('45', '贴心设计', '1', null, '1');
INSERT INTO `goodstype` VALUES ('46', '杂物收纳', '1', null, '1');
INSERT INTO `goodstype` VALUES ('47', '竹语伞', '1', null, '1');
INSERT INTO `goodstype` VALUES ('48', '起居日用', '1', null, '1');
INSERT INTO `goodstype` VALUES ('49', '精致生活', '1', null, '1');
INSERT INTO `goodstype` VALUES ('50', '餐具', '2', null, '1');
INSERT INTO `goodstype` VALUES ('51', '刀具', '2', null, '1');
INSERT INTO `goodstype` VALUES ('52', '厨房小帮手', '2', null, '1');
INSERT INTO `goodstype` VALUES ('53', '防潮保鲜', '2', null, '1');
INSERT INTO `goodstype` VALUES ('54', '厨具', '2', null, '1');
INSERT INTO `goodstype` VALUES ('55', '实用小工具', '2', null, '1');
INSERT INTO `goodstype` VALUES ('56', '鸡蛋托&泡茶器', '2', null, '1');
INSERT INTO `goodstype` VALUES ('57', '砧板', '2', null, '1');
INSERT INTO `goodstype` VALUES ('58', '水壶水杯', '2', null, '1');
INSERT INTO `goodstype` VALUES ('59', '空气净化', '3', null, '1');
INSERT INTO `goodstype` VALUES ('60', 'LED灯', '3', null, '1');
INSERT INTO `goodstype` VALUES ('61', '台灯', '3', null, '1');
INSERT INTO `goodstype` VALUES ('62', '小家电', '3', null, '1');
INSERT INTO `goodstype` VALUES ('63', '钟系列', '3', null, '1');
INSERT INTO `goodstype` VALUES ('64', '智能生活', '4', null, '1');
INSERT INTO `goodstype` VALUES ('65', '手机搭档', '4', null, '1');
INSERT INTO `goodstype` VALUES ('66', '电脑周边', '4', null, '1');
INSERT INTO `goodstype` VALUES ('67', '屏幕清洁', '4', null, '1');
INSERT INTO `goodstype` VALUES ('68', '移动电源', '4', null, '1');
INSERT INTO `goodstype` VALUES ('69', '音箱', '4', null, '1');
INSERT INTO `goodstype` VALUES ('70', '耳机', '4', null, '1');
INSERT INTO `goodstype` VALUES ('71', '多功能插座', '4', null, '1');
INSERT INTO `goodstype` VALUES ('72', '红酒', '5', null, '1');
INSERT INTO `goodstype` VALUES ('73', '瓶塞', '5', null, '1');
INSERT INTO `goodstype` VALUES ('74', '酒架', '5', null, '1');
INSERT INTO `goodstype` VALUES ('75', '杯贴', '5', null, '1');
INSERT INTO `goodstype` VALUES ('76', '鸡尾酒', '5', null, '1');
INSERT INTO `goodstype` VALUES ('77', '酒品降温', '5', null, '1');
INSERT INTO `goodstype` VALUES ('78', '办公助手', '6', null, '1');
INSERT INTO `goodstype` VALUES ('79', '桌面收纳', '6', null, '1');
INSERT INTO `goodstype` VALUES ('80', '桌面整理', '6', null, '1');
INSERT INTO `goodstype` VALUES ('81', '卡夹', '6', null, '1');
INSERT INTO `goodstype` VALUES ('82', '多大的v', '0', null, '0');
INSERT INTO `goodstype` VALUES ('83', '的说法都是短发的', '0', null, '0');
INSERT INTO `goodstype` VALUES ('84', '品质生活', '0', null, '0');

-- ----------------------------
-- Table structure for `order`
-- ----------------------------
DROP TABLE IF EXISTS `order`;
CREATE TABLE `order` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `goods_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `count` smallint(6) DEFAULT NULL,
  `singlePrice` double NOT NULL,
  `price` double NOT NULL,
  `address_id` int(11) DEFAULT NULL,
  `time` datetime NOT NULL,
  `state` smallint(6) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `order_user_id` (`user_id`),
  KEY `order_goods_id` (`goods_id`),
  CONSTRAINT `order_goods_id` FOREIGN KEY (`goods_id`) REFERENCES `goods` (`id`),
  CONSTRAINT `order_user_id` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='订单表';

-- ----------------------------
-- Records of order
-- ----------------------------
INSERT INTO `order` VALUES ('1', '1', '5', '1', '198', '198', '1', '0000-00-00 00:00:00', '1');

-- ----------------------------
-- Table structure for `power`
-- ----------------------------
DROP TABLE IF EXISTS `power`;
CREATE TABLE `power` (
  `id` int(11) NOT NULL,
  `menu` varchar(20) NOT NULL,
  `url` varchar(50) NOT NULL,
  `role_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `role_power_id` (`role_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of power
-- ----------------------------

-- ----------------------------
-- Table structure for `role`
-- ----------------------------
DROP TABLE IF EXISTS `role`;
CREATE TABLE `role` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `role` varchar(20) NOT NULL,
  `state` int(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of role
-- ----------------------------
INSERT INTO `role` VALUES ('1', '员工', '1');
INSERT INTO `role` VALUES ('2', '老板', '1');
INSERT INTO `role` VALUES ('3', '经理', '1');
INSERT INTO `role` VALUES ('4', '前台', '1');

-- ----------------------------
-- Table structure for `shopcart`
-- ----------------------------
DROP TABLE IF EXISTS `shopcart`;
CREATE TABLE `shopcart` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `goods_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `count` int(11) DEFAULT NULL,
  `SinglePrice` double NOT NULL,
  `price` double NOT NULL,
  `time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `shopcart_goods_id` (`goods_id`),
  KEY `shopcart_user_id` (`user_id`),
  CONSTRAINT `shopcart_goods_id` FOREIGN KEY (`goods_id`) REFERENCES `goods` (`id`),
  CONSTRAINT `shopcart_user_id` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='购物车';

-- ----------------------------
-- Records of shopcart
-- ----------------------------
INSERT INTO `shopcart` VALUES ('1', '1', '5', '1', '198', '198', '2017-05-18 20:46:19');
INSERT INTO `shopcart` VALUES ('2', '3', '5', '1', '780', '780', '2017-05-18 20:52:05');

-- ----------------------------
-- Table structure for `tracks`
-- ----------------------------
DROP TABLE IF EXISTS `tracks`;
CREATE TABLE `tracks` (
  `id` int(11) NOT NULL,
  `goods_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `track_goods_id` (`goods_id`),
  KEY `track_user_id` (`user_id`),
  CONSTRAINT `track_goods_id` FOREIGN KEY (`goods_id`) REFERENCES `goods` (`id`),
  CONSTRAINT `track_user_id` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tracks
-- ----------------------------

-- ----------------------------
-- Table structure for `user`
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(10) NOT NULL DEFAULT '',
  `password` varchar(50) NOT NULL DEFAULT '',
  `mobile` char(11) DEFAULT NULL COMMENT '手机',
  `email` varchar(20) DEFAULT NULL COMMENT '邮箱',
  `photo` varchar(10) DEFAULT NULL COMMENT '照片',
  `name` varchar(20) DEFAULT NULL COMMENT '真实姓名',
  `nickname` varchar(10) DEFAULT NULL COMMENT '昵称',
  `sex` char(1) DEFAULT NULL COMMENT '性别',
  `birthday` varchar(10) DEFAULT NULL COMMENT '生日',
  `score` int(11) DEFAULT NULL COMMENT '积分',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COMMENT='用户表';

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('5', 'admin', '123', '123', null, null, null, null, null, null, null);
INSERT INTO `user` VALUES ('6', 'admin', '123', '123', null, null, null, null, null, null, null);
INSERT INTO `user` VALUES ('7', 'jack', 'f1c1592588411002af340cbaedd6fc33', '123', null, null, null, null, null, null, null);
INSERT INTO `user` VALUES ('8', '', '4297f44b13955235245b2497399d7a93', '18682920673', null, null, null, null, null, null, null);
INSERT INTO `user` VALUES ('9', '', '96e79218965eb72c92a549dd5a330112', '18682920673', null, null, null, null, null, null, null);
INSERT INTO `user` VALUES ('10', '', '96e79218965eb72c92a549dd5a330112', null, 'gysz12b110@126.com', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('11', '', '698d51a19d8a121ce581499d7b701668', null, 'gysz12b110@126.com', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('12', '', '310dcbbf4cce62f762a2aaa148d556bd', null, 'gysz12b110@126.com', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('13', '', '202cb962ac59075b964b07152d234b70', '111111111', null, null, null, null, null, null, null);
INSERT INTO `user` VALUES ('14', '', '202cb962ac59075b964b07152d234b70', '111111111', null, null, null, null, null, null, null);
