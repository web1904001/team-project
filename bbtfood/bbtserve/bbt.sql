SET NAMES UTF8;
DROP DATABASE IF EXISTS bbt;
CREATE DATABASE bbt CHARSET=UTF8;
USE bbt;


/**棒棒糖菜系编号**/
CREATE TABLE bbt_laptop_family(
  fid INT PRIMARY KEY AUTO_INCREMENT,
  name VARCHAR(32)
);

/**棒棒糖美食首页**/
CREATE TABLE bbt_index_product(
  pid INT PRIMARY KEY AUTO_INCREMENT,
  bbt_lid VARCHAR(128),
  href VARCHAR(128)
);

/**棒棒糖详情页**/
CREATE TABLE bbt_laptop(
  lid INT PRIMARY KEY AUTO_INCREMENT,
  family_id INT,              #所属菜系编号
  bbt_tid INT		      #图片编号
);

/**棒棒糖收藏页**/
CREATE TABLE bbt_collect(
  sid INT PRIMARY KEY AUTO_INCREMENT,
  user_id INT,			#用户编号
  bbt_tid INT,		        #图片编号
  href VARCHAR(128)
);

/**棒棒糖图片**/
CREATE TABLE bbt_pic(
  tid INT PRIMARY KEY AUTO_INCREMENT,
  bbt_lid INT,		      #图片详情页编号
  family_id INT,	      #所属菜系编号
  sm VARCHAR(128),            #小图片路径 首页
  md VARCHAR(128),            #中图片路径 收藏
  lg VARCHAR(128),            #大图片路径 详情
  product VARCHAR(128)	      #图片说明
);

/**棒棒糖用户信息**/
CREATE TABLE bbt_user(
  uid INT PRIMARY KEY AUTO_INCREMENT,
  uname VARCHAR(32),
  upwd VARCHAR(32),
  phone VARCHAR(16),
  avatar VARCHAR(128),        #头像图片路径
  user_name VARCHAR(32),      #用户名，如王小明
  gender INT                  #性别  0-女  1-男
);

/****棒棒糖首页轮播广告商品****/
CREATE TABLE bbt_index_carousel(
  cid INT PRIMARY KEY AUTO_INCREMENT,
  img VARCHAR(128),
  href VARCHAR(128)
);

/**棒棒糖详情页食材清单**/
CREATE TABLE bbt_laptop_list(
  qid INT PRIMARY KEY AUTO_INCREMENT,
  bbt_lid INT,		      #图片编号
  introduce1 VARCHAR(128),     #介绍
  introduce2 VARCHAR(128)     #介绍
);

/**棒棒糖详情页菜品步骤说明**/
CREATE TABLE bbt_laptop_title(
  bid INT PRIMARY KEY AUTO_INCREMENT,
  bbt_lid INT,
  img VARCHAR(128),
  introduct VARCHAR(128)
);

/*******************/
/******数据导入******/
/*******************/

/**1.棒棒糖菜系编号**/
INSERT INTO bbt_laptop_family VALUES
(NULL,'首页'),
(NULL,'川菜'),
(NULL,'粤菜'),
(NULL,'湘菜'),
(NULL,'东北菜');

/**棒棒糖详情页**/
INSERT INTO bbt_laptop VALUES
(NULL,2,1),
(NULL,2,2),
(NULL,3,3),
(NULL,3,4),
(NULL,4,5),
(NULL,4,6),
(NULL,5,7),
(NULL,5,8);

/****3.棒棒糖首页****/
INSERT INTO bbt_index_product VALUES
(NULL,1,'href'),
(NULL,2,'href'),
(NULL,3,'href'),
(NULL,4,'href'),
(NULL,5,'href'),
(NULL,6,'href'),
(NULL,7,'href'),
(NULL,8,'href');

/**棒棒糖收藏页**/
INSERT INTO bbt_collect VALUES
(NULL,1,1,'href'),
(NULL,2,2,'href');

/**4.棒棒糖图片**/
INSERT INTO bbt_pic VALUES
(NULL,1,2,'imgs/index_product/sm_1.png','imgs/index_product/md_1.png','imgs/index_product/lg_1.png','#美食新势力#立秋了，这汤多炖给孩子喝'),
(NULL,2,2,'imgs/index_product/sm_2.png','imgs/index_product/md_2.png','imgs/index_product/lg_2.png','米饭三明治——健康美味颜值高'),
(NULL,3,3,'imgs/index_product/sm_3.png','imgs/index_product/md_3.png','imgs/index_product/lg_3.png','锅包肉'),
(NULL,4,3,'imgs/index_product/sm_4.png','imgs/index_product/md_4.png','imgs/index_product/lg_4.png','圆溜胖滚滚的雪媚娘~简单易学'),
(NULL,5,4,'imgs/index_product/sm_5.png','imgs/index_product/md_5.png','imgs/index_product/lg_5.png','快手拌凉皮'),
(NULL,6,4,'imgs/index_product/sm_6.png','imgs/index_product/md_6.png','imgs/index_product/lg_6.png','硬核菜谱制作人#玫瑰柠檬冰红茶'),
(NULL,7,5,'imgs/index_product/sm_7.png','imgs/index_product/md_7.png','imgs/index_product/lg_7.png','土豆丝饼窝蛋'),
(NULL,8,5,'imgs/index_product/sm_8.png','imgs/index_product/md_8.png','imgs/index_product/lg_8.png','糖醋年糕条——Q弹甜酸的美味');


/**2.棒棒糖用户信息**/
INSERT INTO bbt_user VALUES
(NULL, 'dingding', '123456', '13501234567', 'img/avatar/default.png', '丁伟', '1'),
(NULL, 'dangdang', '123456', '13501234568', 'img/avatar/default.png', '林当', '1'),
(NULL, 'doudou', '123456', '13501234569', 'img/avatar/default.png', '窦志强', '1'),
(NULL, 'yaya', '123456', '13501234560', 'img/avatar/default.png', '秦小雅', '0');

/****3.首页轮播广告商品****/
INSERT INTO bbt_index_carousel VALUES
(NULL,'imgs/index/banner1.png','product_details.html'),
(NULL,'imgs/index/banner2.png','product_details.html'),
(NULL,'imgs/index/banner3.png','lookforward.html'),
(NULL,'imgs/index/banner4.png','lookforward.html'),
(NULL,'imgs/index/banner5.png','lookforward.html');

/**棒棒糖详情页食材清单**/
INSERT INTO bbt_laptop_list VALUES
(NULL,1,'母鸡','1只'),
(NULL,1,'香菇','8个'),
(NULL,1,'生姜','5片'),
(NULL,1,'小葱','一根'),
(NULL,1,'枸杞','一把'),
(NULL,1,'食用盐','适量'),
(NULL,2,'剩米饭','半碗'),
(NULL,2,'鸡蛋','1个'),
(NULL,2,'火腿','1片'),
(NULL,2,'生菜','适量'),
(NULL,2,'西红柿','2片'),
(NULL,2,'芝士片','可省'),
(NULL,2,'肉松','可省'),
(NULL,3,'里脊肉','350g'),
(NULL,3,'料酒','10g'),
(NULL,3,'盐','3g'),
(NULL,3,'土豆淀粉','200g'),
(NULL,3,'清水','500g'),
(NULL,3,'胡萝卜','30g'),
(NULL,3,'大葱','30g'),
(NULL,3,'生姜','20g'),
(NULL,3,'白糖','80g'),
(NULL,3,'白醋','80g'),
(NULL,3,'盐','3g'),
(NULL,3,'生抽','5g'),
(NULL,3,'玉米油','适量'),
(NULL,4,'玉米淀粉','20g'),
(NULL,4,'糖粉','30g'),
(NULL,4,'全脂牛奶','120g'),
(NULL,4,'无盐黄油','30g'),
(NULL,4,'水磨糯米粉','70g'),
(NULL,5,'凉皮','一盒'),
(NULL,5,'葱姜蒜','适量'),
(NULL,5,'黄瓜','一根'),
(NULL,5,'洋葱','半个'),
(NULL,5,'资质葱油','二勺'),
(NULL,5,'生抽','一勺'),
(NULL,5,'油辣子','二匙'),
(NULL,6,'红茶包','2包'),
(NULL,6,'柠檬','1个'),
(NULL,6,'玫瑰花','4朵'),
(NULL,6,'薄荷','适量'),
(NULL,6,'蜂蜜','30g'),
(NULL,6,'矿泉水','1000毫升'),
(NULL,7,'土豆','400g'),
(NULL,7,'鸡蛋','3个'),
(NULL,7,'盐','3克'),
(NULL,7,'油','少许'),
(NULL,7,'葱','适量'),
(NULL,8,'年糕条','1袋'),
(NULL,8,'清香米醋','4汤匙'),
(NULL,8,'味极鲜','2汤匙'),
(NULL,8,'白糖','2汤匙'),
(NULL,8,'番茄沙司','1汤匙'),
(NULL,8,'植物油','适量');



/**棒棒糖详情页菜品步骤说明**/
INSERT INTO bbt_laptop_title VALUES
(NULL,1,'imgs/index/title_01.png','买鸡肉时让摊主将鸡杀好后剁成小块，回来处理下毛针，然后清洗干净，香菇剪去根部，清洗干净备用'),
(NULL,1,'imgs/index/title_02.png','炒锅中加入适量清水，加入鸡肉焯水（焯水一来可以去除鸡身上附着的一些浮沫，二来还可以使鸡汤在煮的过程，肉不容易散烂、保持皮跟肉的完整性)'),
(NULL,1,'imgs/index/title_03.png','将生姜切片、枸杞、小葱洗净'),
(NULL,1,'imgs/index/title_04.png','将炒好的鸡肉清洗干净'),
(NULL,1,'imgs/index/title_05.png','鸡肉倒入电压锅中，加入生姜片'),
(NULL,1,'imgs/index/title_06.png','加入香菇，加入适量清水，喜欢喝汤的话就多加点水，盖上盖子，按煲汤键，就静等美味的鸡汤啦'),
(NULL,1,'imgs/index/title_07.png','加入枸杞'),
(NULL,1,'imgs/index/title_08.png','加入食用盐和少许鸡精搅拌均匀，（盐煮时间长了会与鸡肉发生化学反应，鸡肉里的蛋白质被锁定，汤味淡，肉也炖不烂，盐和别的调味品一定要在鸡汤已炖好时放）'),
(NULL,1,'imgs/index/title_09.png','最后撒上葱花，味道非常鲜美，有油但不腻'),
(NULL,1,'imgs/index/title_010.png','味道鲜美'),
(NULL,2,'imgs/index/title_11.png','剩米饭在微波炉里30秒打热，一个人小半碗就够了，鸡蛋和火腿煎好备用，生菜洗好沥干备用，西红柿切片备用'),
(NULL,2,'imgs/index/title_12.png','小的米饭碗准备一个，铺入保鲜膜！'),
(NULL,2,'imgs/index/title_13.png','米饭一半量加入进去，用勺子用力压平，做好的米饼拿出来放一边备用，这一片用在最上面哦，然后再把剩下一半米饭加进去，压平！就是总共做两片米饼 一片用在上面，一片在碗底！'),
(NULL,2,'imgs/index/title_14.png','生菜铺进去，在加入火腿铺好'),
(NULL,2,'imgs/index/title_15.png','鸡蛋铺进去再铺上一片番茄片'),
(NULL,2,'imgs/index/title_16.png','再把芝士铺上去再加一片番茄，我加了一片番茄啊 ，做的过程娃把一片偷吃了'),
(NULL,2,'imgs/index/title_17.png','撒上肉松，肉松和芝士可以替换，其实配料都可以替换，你们平时三明治加什么就加什么！我没有加任何酱料，因为火腿芝士都有味道，你们可以加自己喜欢的沙拉酱等'),
(NULL,2,'imgs/index/title_18.png','生菜铺进去，把盘子里备用的另一块米饼扣上去即可'),
(NULL,2,'imgs/index/title_19.png','好啦保鲜膜包起来，拉紧一点，'),
(NULL,2,'imgs/index/title_110.png','倒扣出来即可，是不是很美腻，保鲜膜包住吃的时候就会很方便 不会撒得到处都是，我用的小碗就是图上蓝花的那个，点大图看哦！'),
(NULL,2,'imgs/index/title_111.png','切开，切面很美腻啊，可以摆盘开吃啦！'),
(NULL,2,'imgs/index/title_112.png','搭配点水果就可以开吃啦'),
(NULL,2,'imgs/index/title_113.png','早餐营养指南：这是一个人的量哦，吃完很撑了，米饭量不大提供了早晨所需碳水，火腿鸡蛋芝士提供了早晨所需的蛋白脂肪，三明治里搭配了蔬菜量比较少所以早餐搭配一些水果，和喝豆浆什么的都可以！美美的一顿早餐开吃吧！喜欢给个关注10分钟就能做好的早餐，快给我交作业❤️'),
(NULL,2,'imgs/index/title_113.png','剩米饭在微波炉里30秒打热，一个人小半碗就够了，鸡蛋和火腿煎好备用，生菜洗好沥干备用，西红柿切片备用'),
(NULL,3,'imgs/index/title_21.png','先在200g土豆淀粉中加入500g清水。'),
(NULL,3,'imgs/index/title_22.png','用筷子调匀，然后静置待用，因为我们需要等水淀粉先沉淀下来。'),
(NULL,3,'imgs/index/title_23.png','趁着空档，处理一下蔬菜。把30g大葱切丝。'),
(NULL,3,'imgs/index/title_24.png','还有30g胡萝卜切丝。'),
(NULL,3,'imgs/index/title_25.png','以及20g生姜切丝。三丝切好放一边备用。'),
(NULL,3,'imgs/index/title_26.png','将80g白糖、80g白醋、3g盐和5g生抽混合。'),
(NULL,3,'imgs/index/title_27.png','用筷子将糖醋水搅拌均匀待用。'),
(NULL,3,'imgs/index/title_28.png','将350g里脊肉切成3毫米的薄片。'),
(NULL,3,'imgs/index/title_29.png','然后用刀背轻拍，将肉片拍松。'),
(NULL,3,'imgs/index/title_210.png','在肉片中加10g料酒和3g盐抓匀，腌10分钟。'),
(NULL,3,'imgs/index/title_211.png','最后倒入肉片适度翻炒，滚上糖醋汁即可出锅。'),
(NULL,3,'imgs/index/title_212.png','外酥内嫩，酸甜生津的锅包肉就做好了！'),
(NULL,4,'imgs/index/title_21.png','先在200g土豆淀粉中加入500g清水。'),
(NULL,4,'imgs/index/title_22.png','用筷子调匀，然后静置待用，因为我们需要等水淀粉先沉淀下来。'),
(NULL,4,'imgs/index/title_23.png','趁着空档，处理一下蔬菜。把30g大葱切丝。'),
(NULL,4,'imgs/index/title_24.png','还有30g胡萝卜切丝。'),
(NULL,4,'imgs/index/title_25.png','以及20g生姜切丝。三丝切好放一边备用。'),
(NULL,4,'imgs/index/title_26.png','将80g白糖、80g白醋、3g盐和5g生抽混合。'),
(NULL,4,'imgs/index/title_27.png','用筷子将糖醋水搅拌均匀待用。'),
(NULL,4,'imgs/index/title_28.png','将350g里脊肉切成3毫米的薄片。'),
(NULL,4,'imgs/index/title_29.png','然后用刀背轻拍，将肉片拍松。'),
(NULL,4,'imgs/index/title_210.png','在肉片中加10g料酒和3g盐抓匀，腌10分钟。'),
(NULL,4,'imgs/index/title_211.png','最后倒入肉片适度翻炒，滚上糖醋汁即可出锅。'),
(NULL,4,'imgs/index/title_212.png','外酥内嫩，酸甜生津的锅包肉就做好了！'),
(NULL,5,'imgs/index/title_21.png','先在200g土豆淀粉中加入500g清水。'),
(NULL,5,'imgs/index/title_22.png','用筷子调匀，然后静置待用，因为我们需要等水淀粉先沉淀下来。'),
(NULL,5,'imgs/index/title_23.png','趁着空档，处理一下蔬菜。把30g大葱切丝。'),
(NULL,5,'imgs/index/title_24.png','还有30g胡萝卜切丝。'),
(NULL,5,'imgs/index/title_25.png','以及20g生姜切丝。三丝切好放一边备用。'),
(NULL,5,'imgs/index/title_26.png','将80g白糖、80g白醋、3g盐和5g生抽混合。'),
(NULL,5,'imgs/index/title_27.png','用筷子将糖醋水搅拌均匀待用。'),
(NULL,5,'imgs/index/title_28.png','将350g里脊肉切成3毫米的薄片。'),
(NULL,5,'imgs/index/title_29.png','然后用刀背轻拍，将肉片拍松。'),
(NULL,5,'imgs/index/title_210.png','在肉片中加10g料酒和3g盐抓匀，腌10分钟。'),
(NULL,5,'imgs/index/title_211.png','最后倒入肉片适度翻炒，滚上糖醋汁即可出锅。'),
(NULL,5,'imgs/index/title_212.png','外酥内嫩，酸甜生津的锅包肉就做好了！'),
(NULL,6,'imgs/index/title_21.png','先在200g土豆淀粉中加入500g清水。'),
(NULL,6,'imgs/index/title_22.png','用筷子调匀，然后静置待用，因为我们需要等水淀粉先沉淀下来。'),
(NULL,6,'imgs/index/title_23.png','趁着空档，处理一下蔬菜。把30g大葱切丝。'),
(NULL,6,'imgs/index/title_24.png','还有30g胡萝卜切丝。'),
(NULL,6,'imgs/index/title_25.png','以及20g生姜切丝。三丝切好放一边备用。'),
(NULL,6,'imgs/index/title_26.png','将80g白糖、80g白醋、3g盐和5g生抽混合。'),
(NULL,6,'imgs/index/title_27.png','用筷子将糖醋水搅拌均匀待用。'),
(NULL,6,'imgs/index/title_28.png','将350g里脊肉切成3毫米的薄片。'),
(NULL,6,'imgs/index/title_29.png','然后用刀背轻拍，将肉片拍松。'),
(NULL,6,'imgs/index/title_210.png','在肉片中加10g料酒和3g盐抓匀，腌10分钟。'),
(NULL,6,'imgs/index/title_211.png','最后倒入肉片适度翻炒，滚上糖醋汁即可出锅。'),
(NULL,6,'imgs/index/title_212.png','外酥内嫩，酸甜生津的锅包肉就做好了！'),
(NULL,7,'imgs/index/title_21.png','先在200g土豆淀粉中加入500g清水。'),
(NULL,7,'imgs/index/title_22.png','用筷子调匀，然后静置待用，因为我们需要等水淀粉先沉淀下来。'),
(NULL,7,'imgs/index/title_23.png','趁着空档，处理一下蔬菜。把30g大葱切丝。'),
(NULL,7,'imgs/index/title_24.png','还有30g胡萝卜切丝。'),
(NULL,7,'imgs/index/title_25.png','以及20g生姜切丝。三丝切好放一边备用。'),
(NULL,7,'imgs/index/title_26.png','将80g白糖、80g白醋、3g盐和5g生抽混合。'),
(NULL,7,'imgs/index/title_27.png','用筷子将糖醋水搅拌均匀待用。'),
(NULL,7,'imgs/index/title_28.png','将350g里脊肉切成3毫米的薄片。'),
(NULL,7,'imgs/index/title_29.png','然后用刀背轻拍，将肉片拍松。'),
(NULL,7,'imgs/index/title_210.png','在肉片中加10g料酒和3g盐抓匀，腌10分钟。'),
(NULL,7,'imgs/index/title_211.png','最后倒入肉片适度翻炒，滚上糖醋汁即可出锅。'),
(NULL,7,'imgs/index/title_212.png','外酥内嫩，酸甜生津的锅包肉就做好了！'),
(NULL,8,'imgs/index/title_21.png','先在200g土豆淀粉中加入500g清水。'),
(NULL,8,'imgs/index/title_22.png','用筷子调匀，然后静置待用，因为我们需要等水淀粉先沉淀下来。'),
(NULL,8,'imgs/index/title_23.png','趁着空档，处理一下蔬菜。把30g大葱切丝。'),
(NULL,8,'imgs/index/title_24.png','还有30g胡萝卜切丝。'),
(NULL,8,'imgs/index/title_25.png','以及20g生姜切丝。三丝切好放一边备用。'),
(NULL,8,'imgs/index/title_26.png','将80g白糖、80g白醋、3g盐和5g生抽混合。'),
(NULL,8,'imgs/index/title_27.png','用筷子将糖醋水搅拌均匀待用。'),
(NULL,8,'imgs/index/title_28.png','将350g里脊肉切成3毫米的薄片。'),
(NULL,8,'imgs/index/title_29.png','然后用刀背轻拍，将肉片拍松。'),
(NULL,8,'imgs/index/title_210.png','在肉片中加10g料酒和3g盐抓匀，腌10分钟。'),
(NULL,8,'imgs/index/title_211.png','最后倒入肉片适度翻炒，滚上糖醋汁即可出锅。'),
(NULL,8,'imgs/index/title_212.png','外酥内嫩，酸甜生津的锅包肉就做好了！');

