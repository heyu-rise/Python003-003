/*
Navicat MySQL Data Transfer

Source Server         : alibaba
Source Server Version : 50723
Source Host           : 47.93.30.98:3306
Source Database       : douban

Target Server Type    : MYSQL
Target Server Version : 50723
File Encoding         : 65001

Date: 2020-09-27 23:33:54
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for comment
-- ----------------------------
DROP TABLE IF EXISTS `comment`;
CREATE TABLE `comment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `film_name` varchar(255) DEFAULT NULL COMMENT '电影名称',
  `content` varchar(2000) DEFAULT NULL COMMENT '评论',
  `star` int(4) DEFAULT NULL COMMENT '星级',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COMMENT='豆瓣评论';

-- ----------------------------
-- Records of comment
-- ----------------------------
INSERT INTO `comment` VALUES ('1', '沉默的真相', '非得把事情闹大了，才能被重视。江阳这一辈子啊～', '5');
INSERT INTO `comment` VALUES ('2', '沉默的真相', '前两集有些太粗糙了…演员的演技差，口型和配音错位。不过整体来看，故事很有意思。然而某播放台吃相太难看了，剧中强行插入的广告数不胜数，降低了看剧的投入度。恰了那么多的饭，灯光还是暗到看不见，制作也不算精良。唯一动人的就是江阳和朱伟十年如一日对真理的追寻。当然，更动人的是现实生活中真的报道过警察当送水工蛰伏数十年抓捕罪犯的故事。不知道编剧是不是受到该案的启发？ 长夜难明，但也终将明。致敬为追寻正义和真理苦苦追寻的幕后英雄。', '4');
INSERT INTO `comment` VALUES ('3', '沉默的真相', '不知道怎么说，我没看完。但是每当看到那些狗x 广告强硬植入就瞬时让我出戏，说真的，我不想吃苍蝇了。', '3');
INSERT INTO `comment` VALUES ('4', '沉默的真相', '今年看过的最好的剧，截止目前', '5');
INSERT INTO `comment` VALUES ('5', '沉默的真相', '最后到底捧了个臭脚', '4');
INSERT INTO `comment` VALUES ('6', '沉默的真相', '个人感觉这部比坏小孩难拍，但完成度完全不输隐秘的角落，甚至更好（不敢相信居然还是老妈安利我的', '5');
INSERT INTO `comment` VALUES ('7', '沉默的真相', '江阳真的是光一样的存在啊', '5');
INSERT INTO `comment` VALUES ('8', '沉默的真相', '绝对值得十分，虽然有些情节在程序上错误的很离谱，但是瑕不掩瑜，这么拍更有戏剧效果，good', '5');
INSERT INTO `comment` VALUES ('9', '沉默的真相', '最后几集看得好抑郁啊！好想哭！江阳真的是一道光！他嫉恶如仇，但是他又很温柔。面对黑暗恶势力，正义显得很苍白无力。但是“哪有什么岁月静好，只不过有人替你负罪前行”，现实中有多少能像江阳这样坚持正义的英雄。结局很现实，选择扩大影响力，引起社会巨大反响的行为还是得正义的人买单，他们都没有错，他们都选择了正义。但现实就是很残酷，即使你没有伤人，但是散播谣言，引起社会巨大反响就要负上法律责任坐牢。为什么他们不能减刑？为什么受害者受到如此残酷的对待？为什么正义者最终要付出自己的一生，家人、亲情甚至是性命。正义真的很难，这就是现实。敬佩像江阳，朱伟一样的英雄，他们的存在就是阳春白雪，就是一束照亮长夜的光，给黑暗中恐惧发抖的人带来希望。respect正义！', '5');
INSERT INTO `comment` VALUES ('10', '沉默的真相', '“我们一路向前，不是为了改变世界，而是为了不被世界改变”', '5');
INSERT INTO `comment` VALUES ('11', '沉默的真相', '非常棒', '5');
INSERT INTO `comment` VALUES ('12', '沉默的真相', '和十年前看的电视剧的感觉一样。。。怎么的？一个近视了三百度的人不戴眼镜都找不到地铁站的口？？', '1');
INSERT INTO `comment` VALUES ('13', '沉默的真相', '很感动', '1');
INSERT INTO `comment` VALUES ('14', '沉默的真相', '一个财迷心窍，一个精虫上脑', '4');
INSERT INTO `comment` VALUES ('15', '沉默的真相', '剧情铺陈和节奏掌控不好，时间线之间的切换过于频繁，导致氛围感被破坏，演员也不出彩，整体观感更像一部中规中矩的八点档主旋律。但结尾的审判场面紧接着一个表彰段落，又隐隐觉得是高级黑。', '3');
INSERT INTO `comment` VALUES ('16', '沉默的真相', '永远敬佩那些深陷黑暗但依旧保持正义，勇敢，善良的人。', '5');
INSERT INTO `comment` VALUES ('17', '沉默的真相', '《东方快车谋杀案》+《大卫戈尔的一生》，转场很棒，演技也在线，可。', '5');
INSERT INTO `comment` VALUES ('18', '沉默的真相', '江阳他人又高又帅，是县里检察院唯一一个研究生', '4');
INSERT INTO `comment` VALUES ('19', '沉默的真相', '8.6', '4');
INSERT INTO `comment` VALUES ('20', '沉默的真相', '结局太难受了 271广告好多老是跳戏 看完好想吃火锅 虽然我哭到打嗝', '4');
INSERT INTO `comment` VALUES ('21', '沉默的真相', '好好的检察官，被社会给糟蹋了', '5');
INSERT INTO `comment` VALUES ('22', '沉默的真相', '真好 影帝有电视剧了', '5');
INSERT INTO `comment` VALUES ('23', '沉默的真相', '看到最后真的泪崩为啥最后老陈他们几个都坐了那么多年牢，江阳到死也没获得表彰，看见严良他们表彰心里真的有点不平衡…', '5');
INSERT INTO `comment` VALUES ('24', '沉默的真相', '三星半。白宇演技拖后腿，摄影技术太稚嫩。', '3');
INSERT INTO `comment` VALUES ('25', '沉默的真相', '制作精良，值得表扬！ 可是，不太满意结局，三兄弟均不得善终，两个坐牢一个惨死了都没得到平反！ 实在是看得难受~~', '5');
INSERT INTO `comment` VALUES ('26', '沉默的真相', '从故事性，悬疑的角度说，有很多逻辑不清的地方，好的地方是这几个人的真诚、勇敢、友谊。', '3');
INSERT INTO `comment` VALUES ('27', '沉默的真相', '原著本身已经很优秀，演员也很不错，只是看的时候总替演员捏把汗，为了证明演技有点用力过度，很难带入剧情当中去。', '3');
INSERT INTO `comment` VALUES ('28', '沉默的真相', '想打50颗星星！！！！！震撼无以言表！！！！！！', '5');
INSERT INTO `comment` VALUES ('29', '沉默的真相', '对于看高质剧够多的人来说，三集以后就已经没有了悬疑了，拍摄技法也算不上高超，最终胜在演员水平到位，总之是好的方向。感觉白宇是在这个剧里学到了不少东西的，后半程情感愈发自然到位，将来值得期待', '3');
INSERT INTO `comment` VALUES ('30', '沉默的真相', '感觉还欠点东西。都太明显了，不够有悬念。', '4');
