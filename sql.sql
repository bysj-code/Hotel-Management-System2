DROP TABLE IF EXISTS `slides`;
CREATE TABLE `slides` (
  `slides_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '轮播图ID：',
  `title` varchar(64) DEFAULT NULL COMMENT '标题：',
  `content` varchar(255) DEFAULT NULL COMMENT '内容：',
  `url` varchar(255) DEFAULT NULL COMMENT '链接：',
  `img` varchar(255) DEFAULT NULL COMMENT '轮播图：',
  `hits` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '点击量：',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间：',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间：',
  PRIMARY KEY (`slides_id`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='轮播图';
DROP TABLE IF EXISTS `auth`;
CREATE TABLE `auth` (
  `auth_id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '授权ID：',
  `user_group` varchar(64) DEFAULT NULL COMMENT '用户组：',
  `mod_name` varchar(64) DEFAULT NULL COMMENT '模块名：',
  `table_name` varchar(64) DEFAULT NULL COMMENT '表名：',
  `page_title` varchar(255) DEFAULT NULL COMMENT '页面标题：',
  `path` varchar(255) DEFAULT NULL COMMENT '路由路径：',
  `position` varchar(32) DEFAULT NULL COMMENT '位置：',
  `mode` varchar(32) NOT NULL DEFAULT '_blank' COMMENT '跳转方式：',
  `add` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '是否可增加：',
  `del` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '是否可删除：',
  `set` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '是否可修改：',
  `get` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '是否可查看：',
  `field_add` text COMMENT '添加字段：',
  `field_set` text COMMENT '修改字段：',
  `field_get` text COMMENT '查询字段：',
  `table_nav_name` varchar(500) DEFAULT NULL COMMENT '跨表导航名称：',
  `table_nav` varchar(500) DEFAULT NULL COMMENT '跨表导航：',
  `option` text COMMENT '配置：',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间：',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间：',
  PRIMARY KEY (`auth_id`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='用户权限管理';
DROP TABLE IF EXISTS `upload`;
CREATE TABLE `upload` (
  `upload_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '上传ID',
  `name` varchar(64) DEFAULT NULL COMMENT '文件名',
  `path` varchar(255) DEFAULT NULL COMMENT '访问路径',
  `file` varchar(255) DEFAULT NULL COMMENT '文件路径',
  `display` varchar(255) DEFAULT NULL COMMENT '显示顺序',
  `father_id` int(11) DEFAULT '0' COMMENT '父级ID',
  `dir` varchar(255) DEFAULT NULL COMMENT '文件夹',
  `type` varchar(32) DEFAULT NULL COMMENT '文件类型',
  PRIMARY KEY (`upload_id`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='文件上传';
insert into `upload` values ('1','movie.mp4','/upload/movie.mp4','',null,'0',null,'video');
DROP TABLE IF EXISTS `goods`;
CREATE TABLE `goods` (
  `goods_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT COMMENT '产品id：[0,8388607]',
  `title` varchar(125) DEFAULT NULL COMMENT '标题：[0,125]用于产品和html的<title>标签中',
  `img` text COMMENT '封面图：用于显示于产品列表页',
  `description` varchar(255) DEFAULT NULL COMMENT '描述：[0,255]用于产品规格描述',
  `price_ago` double(8,2) unsigned NOT NULL DEFAULT '0.00' COMMENT '原价：[1]',
  `price` double(8,2) unsigned NOT NULL DEFAULT '0.00' COMMENT '卖价：[1]',
  `sales` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '销量：[0,1000000000]',
  `inventory` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '商品库存',
  `type` varchar(64) NOT NULL DEFAULT '' COMMENT '商品分类：',
  `hits` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '点击量：[0,1000000000]访问这篇产品的人次',
  `content` longtext COMMENT '正文：产品的主体内容',
  `img_1` text COMMENT '主图1：',
  `img_2` text COMMENT '主图2：',
  `img_3` text COMMENT '主图3：',
  `img_4` text COMMENT '主图4：',
  `img_5` text COMMENT '主图5：',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间：',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间：',
  `customize_field` text COMMENT '自定义字段',
  `source_table` varchar(255) CHARACTER SET utf8 DEFAULT NULL COMMENT '来源表：',
  `source_field` varchar(255) CHARACTER SET utf8 DEFAULT NULL COMMENT '来源字段：',
  `source_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '来源ID：',
  `user_id` int(11) unsigned DEFAULT '0' COMMENT '添加人',
  PRIMARY KEY (`goods_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC COMMENT='商品信息';
insert into `goods` values ('1','测试商品1','/upload/goods.jpg','测试商品1','110.0','99.0','0','80','分类一','0','','/upload/img_1.jpg','/upload/img_2.jpg','/upload/img_3.jpg','/upload/img_4.jpg','/upload/img_5.jpg','2023-04-28 18:21:49.0','2023-04-28 16:21:46.0','[{"field_name":"品牌","field_value":""},{"field_name":"规格","field_value":""}]','mall_center','mall_center_id','5','1');
insert into `goods` values ('2','测试商品2','/upload/goods.jpg','测试商品2','220.0','110.0','0','10','分类二','0','','/upload/img_1.jpg','/upload/img_2.jpg','/upload/img_3.jpg','/upload/img_4.jpg','/upload/img_5.jpg','2023-04-28 18:21:49.0','2023-04-28 16:21:46.0','[{"field_name":"品牌","field_value":""},{"field_name":"规格","field_value":""}]','mall_center','mall_center_id','6','1');
insert into `goods` values ('3','测试商品3','/upload/goods.jpg','测试商品3','20.0','10.0','0','10','分类二','0','','/upload/img_1.jpg','/upload/img_2.jpg','/upload/img_3.jpg','/upload/img_4.jpg','/upload/img_5.jpg','2023-04-28 18:21:49.0','2023-04-28 16:21:46.0','[{"field_name":"品牌","field_value":""},{"field_name":"规格","field_value":""}]','mall_center','mall_center_id','7','1');
insert into `goods` values ('4','测试商品4','/upload/goods.jpg','测试商品4','199.0','99.0','0','20','分类二','0','','/upload/img_1.jpg','/upload/img_2.jpg','/upload/img_3.jpg','/upload/img_4.jpg','/upload/img_5.jpg','2023-04-28 18:21:49.0','2023-04-28 16:21:46.0','[{"field_name":"品牌","field_value":""},{"field_name":"规格","field_value":""}]','mall_center','mall_center_id','8','1');
insert into `goods` values ('5','测试商品5','/upload/goods.jpg','测试商品5','110.0','99.0','0','30','分类二','0','','/upload/img_1.jpg','/upload/img_2.jpg','/upload/img_3.jpg','/upload/img_4.jpg','/upload/img_5.jpg','2023-04-28 18:21:49.0','2023-04-28 16:21:46.0','[{"field_name":"品牌","field_value":""},{"field_name":"规格","field_value":""}]','mall_center','mall_center_id','9','1');
insert into `goods` values ('6','测试商品6','/upload/goods.jpg','测试商品6','999.0','888.0','0','40','分类三','0','','/upload/img_1.jpg','/upload/img_2.jpg','/upload/img_3.jpg','/upload/img_4.jpg','/upload/img_5.jpg','2023-04-28 18:21:49.0','2023-04-28 16:21:46.0','[{"field_name":"品牌","field_value":""},{"field_name":"规格","field_value":""}]','mall_center','mall_center_id','10','1');
insert into `goods` values ('7','测试商品7','/upload/goods.jpg','测试商品7','20.0','220.0','0','110','分类一','0','<p>测试商品7</p>','/upload/img_1.jpg','/upload/img_2.jpg','/upload/img_3.jpg','/upload/img_4.jpg','/upload/img_5.jpg','2023-04-28 18:21:49.0','2023-04-28 16:21:46.0','[{"field_name":"品牌","field_value":""},{"field_name":"规格","field_value":""}]','mall_center','mall_center_id','11','1');
insert into `goods` values ('8','测试商品8','/upload/goods.jpg','测试商品8','20.0','30.0','0','30','分类二','0','','/upload/img_1.jpg','/upload/img_2.jpg','/upload/img_3.jpg','/upload/img_4.jpg','/upload/img_5.jpg','2023-04-28 18:21:49.0','2023-04-28 16:21:46.0','[{"field_name":"品牌","field_value":""},{"field_name":"规格","field_value":""}]','mall_center','mall_center_id','12','1');
DROP TABLE IF EXISTS `cart`;
CREATE TABLE `cart` (
  `cart_id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '购物车ID：',
  `title` varchar(64) DEFAULT NULL COMMENT '标题：',
  `img` varchar(255) NOT NULL DEFAULT '0' COMMENT '图片：',
  `user_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '用户ID：',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间：',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间：',
  `state` int(1) unsigned NOT NULL DEFAULT '0' COMMENT '状态：使用中，已失效',
  `price` double(8,2) NOT NULL DEFAULT '0.00' COMMENT '单价：',
  `price_ago` double(8,2) NOT NULL DEFAULT '0.00' COMMENT '原价：',
  `price_count` double(10,2) NOT NULL DEFAULT '0.00' COMMENT '总价：',
  `num` int(8) unsigned NOT NULL DEFAULT '1' COMMENT '数量：',
  `goods_id` mediumint(8) unsigned NOT NULL COMMENT '商品id：[0,8388607]',
  `type` varchar(64) CHARACTER SET utf8mb4 NOT NULL DEFAULT '未分类' COMMENT '商品分类：',
  `description` varchar(255) CHARACTER SET utf8mb4 DEFAULT NULL COMMENT '描述：[0,255]用于产品规格描述',
  PRIMARY KEY (`cart_id`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='购物车';
DROP TABLE IF EXISTS `notice`;
CREATE TABLE `notice` (
  `notice_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT COMMENT '公告id：',
  `title` varchar(125) NOT NULL DEFAULT '' COMMENT '标题：',
  `content` longtext COMMENT '正文：',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间：',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间：',
  PRIMARY KEY (`notice_id`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='公告';
insert into `notice` values ('1','网站公告','<p>公告，是指政府、团体对重大事件当众正式公布或者公开宣告，宣布。国务院2012年4月16日发布、2012年7月1日起施行的《党政机关公文处理工作条例》，对公告的使用表述为：“适用于向国内外宣布重要事项或者法定事项”。其中包含两方面的内容：一是向国内外宣布重要事项，公布依据政策、法令采取的重大行动等；二是向国内外宣布法定事项，公布依据法律规定告知国内外的有关重要规定和重大行动等。</p>','2023-04-28 18:21:49.0','2023-04-28 18:21:49.0');
insert into `notice` values ('2','关于我们','<p>       一个网站要取得成功，要有先进的理念、先进的思想，更为重要的是抢占先机，及时行动。网络世界可谓一日千里、 日新月异，一个网站只有把握先机，抓住机遇，才</p><p>可能有更多的机会获得成功，可能处于网络行业发展的致高点，可能创建出成功的网站，才能能获得成功。要知道一种网站新模式在网络上只有保持几天的优势,因为人们很容易“COPY" 和模仿，因此，唯有不</p><p>断创新，不失时机地推出新的服务、新的模式、新的思想，网站才可能长久立于不败之地。</p>','2023-04-28 18:21:49.0','2023-04-28 18:21:49.0');
insert into `notice` values ('3','联系方式','<h3>网站内容及品牌合作</h3><p>Email：xxxx@qq.com</p><h3>商务合作</h3><p>电话：010-xxxxxxx</p><p>Email：xxxx@qq.com</p><h3><br></h3><h3><br></h3><p><br></p>','2023-04-28 18:21:49.0','2023-04-28 18:21:49.0');
insert into `notice` values ('4','网站介绍','<p>此处可上传文字、图片、视频、超链接、表格等内容区</p>','2023-04-28 18:21:49.0','2023-04-28 18:21:49.0');
DROP TABLE IF EXISTS `order`;
CREATE TABLE `order` (
  `order_id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '订单ID：',
  `order_number` varchar(64) DEFAULT NULL COMMENT '订单号：',
  `goods_id` mediumint(8) unsigned NOT NULL COMMENT '商品id：[0,8388607]',
  `title` varchar(32) DEFAULT NULL COMMENT '商品标题：',
  `img` varchar(255) DEFAULT NULL COMMENT '商品图片：',
  `price` double(10,2) unsigned NOT NULL DEFAULT '0.00' COMMENT '价格：',
  `price_ago` double(10,2) unsigned NOT NULL DEFAULT '0.00' COMMENT '原价：',
  `num` int(8) NOT NULL DEFAULT '1' COMMENT '数量：',
  `price_count` double(8,2) unsigned NOT NULL DEFAULT '0.00' COMMENT '总价：',
  `norms` varchar(255) DEFAULT NULL COMMENT '规格：',
  `type` varchar(64) CHARACTER SET utf8mb4 NOT NULL DEFAULT '未分类' COMMENT '商品分类：',
  `contact_name` varchar(32) DEFAULT NULL COMMENT '联系人姓名：',
  `contact_email` varchar(125) DEFAULT NULL COMMENT '联系人邮箱：',
  `contact_phone` varchar(11) DEFAULT NULL COMMENT '联系人手机：',
  `contact_address` varchar(255) DEFAULT NULL COMMENT '收件地址：',
  `postal_code` varchar(9) DEFAULT NULL COMMENT '邮政编码：',
  `user_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '买家ID：',
  `merchant_id` mediumint(8) unsigned NOT NULL DEFAULT '0' COMMENT '商家ID：',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间：',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间：',
  `description` varchar(255) CHARACTER SET utf8mb4 DEFAULT NULL COMMENT '描述：[0,255]用于产品规格描述',
  `state` varchar(16) NOT NULL DEFAULT '待付款' COMMENT '订单状态：待付款，待发货，待签收，已签收，待退款，已退款，已拒绝，已完成',
  PRIMARY KEY (`order_id`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='订单';
DROP TABLE IF EXISTS `user_group`;
CREATE TABLE `user_group` (
  `group_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT COMMENT '用户组ID：[0,8388607]',
  `display` smallint(4) unsigned NOT NULL DEFAULT '100' COMMENT '显示顺序：[0,1000]',
  `name` varchar(16) NOT NULL DEFAULT '' COMMENT '名称：[0,16]',
  `description` varchar(255) DEFAULT NULL COMMENT '描述：[0,255]描述该用户组的特点或权限范围',
  `source_table` varchar(255) DEFAULT NULL COMMENT '来源表：',
  `source_field` varchar(255) DEFAULT NULL COMMENT '来源字段：',
  `source_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '来源ID：',
  `register` smallint(1) unsigned DEFAULT '0' COMMENT '注册位置:',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间：',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间：',
  PRIMARY KEY (`group_id`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='用户组：用于用户前端身份和鉴权';
DROP TABLE IF EXISTS `address`;
CREATE TABLE `address` (
  `address_id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '收货地址：',
  `name` varchar(32) DEFAULT NULL COMMENT '姓名：',
  `phone` varchar(13) DEFAULT NULL COMMENT '手机：',
  `postcode` varchar(8) DEFAULT NULL COMMENT '邮编：',
  `address` varchar(255) NOT NULL COMMENT '地址：',
  `user_id` mediumint(8) unsigned NOT NULL COMMENT '用户ID：[0,8388607]用户获取其他与用户相关的数据',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间：',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间：',
  `default` tinyint(1) NOT NULL DEFAULT '0' COMMENT '默认判断',
  PRIMARY KEY (`address_id`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='收货地址：';
insert into `address` values ('3','田七','13590509090',null,'广州市越秀区东风西路187号','1','2023-04-28 18:21:49.0','2023-04-28 18:21:49.0',1);
DROP TABLE IF EXISTS `praise`;
CREATE TABLE `praise` (
  `praise_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '点赞ID：',
  `user_id` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '点赞人：',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间：',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间：',
  `source_table` varchar(255) DEFAULT NULL COMMENT '来源表：',
  `source_field` varchar(255) DEFAULT NULL COMMENT '来源字段：',
  `source_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '来源ID：',
  `status` tinyint(1) NOT NULL DEFAULT '1' COMMENT '点赞状态:1为点赞，0已取消',
  PRIMARY KEY (`praise_id`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='点赞';
DROP TABLE IF EXISTS `access_token`;
CREATE TABLE `access_token` (
  `token_id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '临时访问牌ID',
  `token` varchar(64) DEFAULT NULL COMMENT '临时访问牌',
  `info` text,
  `maxage` int(2) NOT NULL DEFAULT '2' COMMENT '最大寿命：默认2小时',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间：',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间：',
  `user_id` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '用户编号:',
  PRIMARY KEY (`token_id`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='登陆访问时长';
insert into `access_token` values ('57','5accf85cb6a7f06f0aa2968deadaec1b',null,'2','2023-04-28 18:21:49.0','2023-04-28 18:21:49.0','1');
insert into `access_token` values ('58','46ff1d4d07714f046ba07b34bffe0af9',null,'2','2023-04-28 18:21:49.0','2023-04-28 18:21:49.0','1');
insert into `access_token` values ('59','ed9d6cba9826fda1beafcd9326be7a86',null,'2','2023-04-28 18:21:49.0','2023-04-28 18:21:49.0','1');
insert into `access_token` values ('60','c99763c1833ea0785d9e2b81da3fd28f',null,'2','2023-04-28 18:21:49.0','2023-04-28 18:21:49.0','1');
insert into `access_token` values ('61','33fbfaccd6d1cb9143e4129bd919d4b0',null,'2','2023-04-28 18:21:49.0','2023-04-28 18:21:49.0','1');
insert into `access_token` values ('62','493e13da5f293ba67a56a0fe3e1fa6cf',null,'2','2023-04-28 18:21:49.0','2023-04-28 18:21:49.0','1');
insert into `access_token` values ('63','c4b48e9e2160db09c703041a8fee0a1f',null,'2','2023-04-28 18:21:49.0','2023-04-28 18:21:49.0','1');
insert into `access_token` values ('64','d13cdaefd3823c360c959a02a262f71d',null,'2','2023-04-28 18:21:49.0','2023-04-28 18:21:49.0','1');
insert into `access_token` values ('65','6c6ff426fd77ea5a2025ce5ed2e42c8a',null,'2','2023-04-28 18:21:49.0','2023-04-28 18:21:49.0','1');
insert into `access_token` values ('66','80930065a61ffcdd5cbb75f60932973c',null,'2','2023-04-28 18:21:49.0','2023-04-28 18:21:49.0','1');
insert into `access_token` values ('67','94114763cf2e3b020495d8a27096d4ef',null,'2','2023-04-28 18:21:49.0','2023-04-28 18:21:49.0','1');
insert into `access_token` values ('68','761052c551c97c9317bc3aa475c85b84',null,'2','2023-04-28 18:21:49.0','2023-04-28 18:21:49.0','1');
insert into `access_token` values ('69','7c44ef14131a0ba7c16aa16cef104065',null,'2','2023-04-28 18:21:49.0','2023-04-28 18:21:49.0','1');
insert into `access_token` values ('70','96380f3d9542c80d04bdade1cf7635a5',null,'2','2023-04-28 18:21:49.0','2023-04-28 18:21:49.0','1');
insert into `access_token` values ('71','bfdc7acfcbf5763fda81945b60961222',null,'2','2023-04-28 18:21:49.0','2023-04-28 18:21:49.0','1');
insert into `access_token` values ('72','170a598e51ae8ae2badde20a42fe171d',null,'2','2023-04-28 18:21:49.0','2023-04-28 18:21:49.0','1');
insert into `access_token` values ('73','c82c357488c75926a92d8a9608d4b367',null,'2','2023-04-28 18:21:49.0','2023-04-28 18:21:49.0','1');
insert into `access_token` values ('74','4d35290c023f407a820f37dbbb1ceb09',null,'2','2023-04-28 18:21:49.0','2023-04-28 18:21:49.0','1');
insert into `access_token` values ('75','8d19162776682b695c0f62f3c7a92fec',null,'2','2023-04-28 18:21:49.0','2023-04-28 18:21:49.0','1');
insert into `access_token` values ('76','a7ea2cdc9a2be179e19200e593ad5a69',null,'2','2023-04-28 18:21:49.0','2023-04-28 18:21:49.0','1');
insert into `access_token` values ('77','c79a554f9832adc01f19682c5d576bc4',null,'2','2023-04-28 18:21:49.0','2023-04-28 18:21:49.0','1');
insert into `access_token` values ('78','1c7d95001fa09951a679841c8100ad1f',null,'2','2023-04-28 18:21:49.0','2023-04-28 18:21:49.0','1');
insert into `access_token` values ('79','776da1bcdd01ddb3cbf0a37fa13fc5b0',null,'2','2023-04-28 18:21:49.0','2023-04-28 18:21:49.0','1');
insert into `access_token` values ('80','d336e88e57c329d0166931292c1fac41',null,'2','2023-04-28 18:21:49.0','2023-04-28 18:21:49.0','1');
insert into `access_token` values ('81','37a40f526a6c82fc6110b512802d35bf',null,'2','2023-04-28 18:21:49.0','2023-04-28 18:21:49.0','1');
insert into `access_token` values ('82','691ad331771f4109206d58aeee572371',null,'2','2023-04-28 18:21:49.0','2023-04-28 18:21:49.0','1');
insert into `access_token` values ('83','9942e458886219960d3344b4a6a6fbec',null,'2','2023-04-28 18:21:49.0','2023-04-28 18:21:49.0','1');
insert into `access_token` values ('84','e9939a8b7ccf9f548f0bbb5664981f96',null,'2','2023-04-28 18:21:49.0','2023-04-28 18:21:49.0','1');
insert into `access_token` values ('85','f5b27912060d1909bef61fab9d96faae',null,'2','2023-04-28 18:21:49.0','2023-04-28 18:21:49.0','1');
insert into `access_token` values ('86','7c5888682f1d449eb1b62f0054a79fbf',null,'2','2023-04-28 18:21:49.0','2023-04-28 18:21:49.0','1');
insert into `access_token` values ('87','00dfdc6ac21c4a9da80fd71c990764d1',null,'2','2023-04-28 18:21:49.0','2023-04-28 18:21:49.0','1');
insert into `access_token` values ('88','3cce592bc72840ab932ce96d85a194da',null,'2','2023-04-28 18:21:49.0','2023-04-28 18:21:49.0','1');
insert into `access_token` values ('89','43fdaa989a644ad683ef4b4d488e8629',null,'2','2023-04-28 18:21:49.0','2023-04-28 18:21:49.0','1');
insert into `access_token` values ('90','d6a3cecadacff0dbd6b43b25372cc2a2',null,'2','2023-04-28 18:21:49.0','2023-04-28 18:21:49.0','1');
insert into `access_token` values ('91','5570bc5b07b3589f4ef8553bd46eb0d1',null,'2','2023-04-28 18:21:49.0','2023-04-28 18:21:49.0','1');
insert into `access_token` values ('92','5570bc5b07b3589f4ef8553bd46eb0d1',null,'2','2023-04-28 18:21:49.0','2023-04-28 18:21:49.0','1');
insert into `access_token` values ('93','26c553bd2ee2ab6605d18dfd310d85f9',null,'2','2023-04-28 18:21:49.0','2023-04-28 18:21:49.0','1');
insert into `access_token` values ('94','3fd52f81236ed2c37ff91a6696d4e47a',null,'2','2023-04-28 18:21:49.0','2023-04-28 18:21:49.0','1');
insert into `access_token` values ('95','893332e9ee67d60d8312b3700c58a359',null,'2','2023-04-28 18:21:49.0','2023-04-28 18:21:49.0','1');
insert into `access_token` values ('96','b7844068ade535b2e517df4a40948703',null,'2','2023-04-28 18:21:49.0','2023-04-28 18:21:49.0','1');
insert into `access_token` values ('97','179b37a5e1893c3af6b946bd5a1c8625',null,'2','2023-04-28 18:21:49.0','2023-04-28 18:21:49.0','1');
insert into `access_token` values ('98','3a47b8a040a83ebbc9194cb255dc668c',null,'2','2023-04-28 18:21:49.0','2023-04-28 18:21:49.0','1');
insert into `access_token` values ('99','afa60196afb77dcc2b520ed13a817560',null,'2','2023-04-28 18:21:49.0','2023-04-28 18:21:49.0','1');
insert into `access_token` values ('100','7fc6d9b324f8c0a3a1784d04ef132692',null,'2','2023-04-28 18:21:49.0','2023-04-28 18:21:49.0','1');
insert into `access_token` values ('101','84e31b291f2bde6b7ceb27af5fe8eee3',null,'2','2023-04-28 18:21:49.0','2023-04-28 18:21:49.0','1');
DROP TABLE IF EXISTS `hits`;
CREATE TABLE `hits` (
  `hits_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '点赞ID：',
  `user_id` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '点赞人：',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间：',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间：',
  `source_table` varchar(255) CHARACTER SET utf8 DEFAULT NULL COMMENT '来源表：',
  `source_field` varchar(255) CHARACTER SET utf8 DEFAULT NULL COMMENT '来源字段：',
  `source_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '来源ID：',
  PRIMARY KEY (`hits_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC COMMENT='用户点击';
DROP TABLE IF EXISTS `comment`;
CREATE TABLE `comment` (
  `comment_id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '评论ID：',
  `user_id` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '评论人ID：',
  `reply_to_id` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '回复评论ID：空为0',
  `content` longtext COMMENT '内容：',
  `nickname` varchar(255) DEFAULT NULL COMMENT '昵称：',
  `avatar` varchar(255) DEFAULT NULL COMMENT '头像地址：[0,255]',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间：',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间：',
  `source_table` varchar(255) DEFAULT NULL COMMENT '来源表：',
  `source_field` varchar(255) DEFAULT NULL COMMENT '来源字段：',
  `source_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '来源ID：',
  PRIMARY KEY (`comment_id`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='评论';
DROP TABLE IF EXISTS `goods_type`;
CREATE TABLE `goods_type` (
  `type_id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '商品分类ID：',
  `father_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT '上级分类ID：[0,32767]',
  `name` varchar(255) DEFAULT NULL COMMENT '商品名称：',
  `desc` varchar(255) DEFAULT NULL COMMENT '描述：',
  `icon` varchar(255) DEFAULT NULL COMMENT '图标：',
  `source_table` varchar(255) DEFAULT NULL COMMENT '来源表：',
  `source_field` varchar(255) DEFAULT NULL COMMENT '来源字段：',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间：',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间：',
  PRIMARY KEY (`type_id`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='商品类型';
insert into `goods_type` values ('1','0','分类一','','',null,null,'2023-04-28 18:21:49.0','2023-04-28 18:21:49.0');
insert into `goods_type` values ('2','0','分类二','','',null,null,'2023-04-28 18:21:49.0','2023-04-28 18:21:49.0');
insert into `goods_type` values ('3','0','分类三','','',null,null,'2023-04-28 18:21:49.0','2023-04-28 18:21:49.0');
DROP TABLE IF EXISTS `collect`;
CREATE TABLE `collect` (
  `collect_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '收藏ID：',
  `user_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '收藏人ID：',
  `source_table` varchar(255) DEFAULT NULL COMMENT '来源表：',
  `source_field` varchar(255) DEFAULT NULL COMMENT '来源字段：',
  `source_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '来源ID：',
  `title` varchar(255) DEFAULT NULL COMMENT '标题：',
  `img` varchar(255) DEFAULT NULL COMMENT '封面：',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间：',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间：',
  PRIMARY KEY (`collect_id`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='收藏';
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `user_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT COMMENT '用户ID：[0,8388607]用户获取其他与用户相关的数据',
  `state` smallint(1) unsigned NOT NULL DEFAULT '1' COMMENT '账户状态：[0,10](1可用|2异常|3已冻结|4已注销)',
  `user_group` varchar(32) DEFAULT NULL COMMENT '所在用户组：[0,32767]决定用户身份和权限',
  `login_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '上次登录时间：',
  `phone` varchar(11) DEFAULT NULL COMMENT '手机号码：[0,11]用户的手机号码，用于找回密码时或登录时',
  `phone_state` smallint(1) unsigned NOT NULL DEFAULT '0' COMMENT '手机认证：[0,1](0未认证|1审核中|2已认证)',
  `username` varchar(16) NOT NULL DEFAULT '' COMMENT '用户名：[0,16]用户登录时所用的账户名称',
  `nickname` varchar(16) DEFAULT '' COMMENT '昵称：[0,16]',
  `password` varchar(64) NOT NULL DEFAULT '' COMMENT '密码：[0,32]用户登录所需的密码，由6-16位数字或英文组成',
  `email` varchar(64) DEFAULT '' COMMENT '邮箱：[0,64]用户的邮箱，用于找回密码时或登录时',
  `email_state` smallint(1) unsigned NOT NULL DEFAULT '0' COMMENT '邮箱认证：[0,1](0未认证|1审核中|2已认证)',
  `avatar` varchar(255) DEFAULT NULL COMMENT '头像地址：[0,255]',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间：',
  PRIMARY KEY (`user_id`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='用户账户：用于保存用户登录信息';
insert into `user` values ('1','1','管理员','2023-04-07 16:29:25.0',null,'0','admin','admin','bfd59291e825b5f2bbf1eb76569f8fe7','','0','/api/upload/admin_avatar.jpg','2023-04-28 17:35:13.0');
DROP TABLE IF EXISTS `customer_users`;
CREATE TABLE `customer_users`(customer_users_id int(11) NOT NULL AUTO_INCREMENT COMMENT '顾客用户ID',
`user_name` varchar(64) comment '用户姓名',
`user_gender` varchar(64) comment '用户性别',
`user_age` varchar(64) comment '用户年龄',
`examine_state` varchar(16) DEFAULT '已通过' NOT NULL comment '审核状态',
`recommend` int(11) DEFAULT '0' NOT NULL comment '智能推荐',
`user_id` int(11) DEFAULT '0' NOT NULL comment '用户ID',
`create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
`update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
PRIMARY KEY (customer_users_id))ENGINE=InnoDB DEFAULT CHARSET=utf8 comment '顾客用户';

DROP TABLE IF EXISTS `food_information`;
CREATE TABLE `food_information`(food_information_id int(11) NOT NULL AUTO_INCREMENT COMMENT '食物信息ID',
`remarks` varchar(64) comment '备注信息',
`recommend` int(11) DEFAULT '0' NOT NULL comment '智能推荐',
`cart_title` varchar(125) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '标题：[0,125]用于产品html的标签中',
`cart_img` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL COMMENT '封面图：用于显示于产品列表页',
`cart_description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '描述：[0,255]用于产品规格描述',
`cart_price_ago` double(8, 2) UNSIGNED NOT NULL DEFAULT 0.00 COMMENT '原价：[1]',
`cart_price` double(8, 2) UNSIGNED NOT NULL DEFAULT 0.00 COMMENT '卖价：[1]',
`cart_inventory` int(11) NOT NULL DEFAULT 0 COMMENT '商品库存',
`cart_type` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '未分类' COMMENT '商品分类：',
`cart_content` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL COMMENT '正文：产品的主体内容',
`cart_img_1` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL COMMENT '主图1：',
`cart_img_2` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL COMMENT '主图2：',
`cart_img_3` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL COMMENT '主图3：',
`cart_img_4` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL COMMENT '主图4：',
`cart_img_5` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL COMMENT '主图5：',
`create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
`update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
PRIMARY KEY (food_information_id))ENGINE=InnoDB DEFAULT CHARSET=utf8 comment '食物信息';
insert into `food_information` values (1,'备注信息1',0,'测试商品1','/upload/goods.jpg','测试商品1','110.00','99.00','80','分类一','','/upload/img_1.jpg','/upload/img_2.jpg','/upload/img_3.jpg','/upload/img_4.jpg','/upload/img_5.jpg','2023-04-16 21:59:11','2023-04-16 21:59:11');
insert into `food_information` values (2,'备注信息2',0,'测试商品2','/upload/goods.jpg','测试商品2','220.00','110.00','10','分类二','','/upload/img_1.jpg','/upload/img_2.jpg','/upload/img_3.jpg','/upload/img_4.jpg','/upload/img_5.jpg','2023-04-16 21:59:11','2023-04-16 21:59:11');
insert into `food_information` values (3,'备注信息3',0,'测试商品3','/upload/goods.jpg','测试商品3','20.00','10.00','10','分类二','','/upload/img_1.jpg','/upload/img_2.jpg','/upload/img_3.jpg','/upload/img_4.jpg','/upload/img_5.jpg','2023-04-16 21:59:11','2023-04-16 21:59:11');
insert into `food_information` values (4,'备注信息4',0,'测试商品4','/upload/goods.jpg','测试商品4','199.00','99.00','20','分类二','','/upload/img_1.jpg','/upload/img_2.jpg','/upload/img_3.jpg','/upload/img_4.jpg','/upload/img_5.jpg','2023-04-16 21:59:11','2023-04-16 21:59:11');
insert into `food_information` values (5,'备注信息5',0,'测试商品5','/upload/goods.jpg','测试商品5','110.00','99.00','30','分类二','','/upload/img_1.jpg','/upload/img_2.jpg','/upload/img_3.jpg','/upload/img_4.jpg','/upload/img_5.jpg','2023-04-16 21:59:11','2023-04-16 21:59:11');
insert into `food_information` values (6,'备注信息6',0,'测试商品6','/upload/goods.jpg','测试商品6','999.00','888.00','40','分类三','','/upload/img_1.jpg','/upload/img_2.jpg','/upload/img_3.jpg','/upload/img_4.jpg','/upload/img_5.jpg','2023-04-16 21:59:11','2023-04-16 21:59:11');
insert into `food_information` values (7,'备注信息7',0,'测试商品7','/upload/goods.jpg','测试商品7','20.00','220.00','110','分类一','<p>测试商品7</p>','/upload/img_1.jpg','/upload/img_2.jpg','/upload/img_3.jpg','/upload/img_4.jpg','/upload/img_5.jpg','2023-04-16 21:59:11','2023-04-16 21:59:11');
insert into `food_information` values (8,'备注信息8',0,'测试商品8','/upload/goods.jpg','测试商品8','20.00','30.00','30','分类二','','/upload/img_1.jpg','/upload/img_2.jpg','/upload/img_3.jpg','/upload/img_4.jpg','/upload/img_5.jpg','2023-04-16 21:59:11','2023-04-16 21:59:11');

update `goods` set customize_field = '[{"field_name":"备注信息","field_value":"备注信息1"}]' , source_table = 'food_information' , source_field = 'food_information_id' , source_id = 1 where goods_id = 1;
update `goods` set customize_field = '[{"field_name":"备注信息","field_value":"备注信息2"}]' , source_table = 'food_information' , source_field = 'food_information_id' , source_id = 2 where goods_id = 2;
update `goods` set customize_field = '[{"field_name":"备注信息","field_value":"备注信息3"}]' , source_table = 'food_information' , source_field = 'food_information_id' , source_id = 3 where goods_id = 3;
update `goods` set customize_field = '[{"field_name":"备注信息","field_value":"备注信息4"}]' , source_table = 'food_information' , source_field = 'food_information_id' , source_id = 4 where goods_id = 4;
update `goods` set customize_field = '[{"field_name":"备注信息","field_value":"备注信息5"}]' , source_table = 'food_information' , source_field = 'food_information_id' , source_id = 5 where goods_id = 5;
update `goods` set customize_field = '[{"field_name":"备注信息","field_value":"备注信息6"}]' , source_table = 'food_information' , source_field = 'food_information_id' , source_id = 6 where goods_id = 6;
update `goods` set customize_field = '[{"field_name":"备注信息","field_value":"备注信息7"}]' , source_table = 'food_information' , source_field = 'food_information_id' , source_id = 7 where goods_id = 7;
update `goods` set customize_field = '[{"field_name":"备注信息","field_value":"备注信息8"}]' , source_table = 'food_information' , source_field = 'food_information_id' , source_id = 8 where goods_id = 8;
DROP TABLE IF EXISTS `food_orders`;
CREATE TABLE `food_orders`(food_orders_id int(11) NOT NULL AUTO_INCREMENT COMMENT '食物订单ID',
`order_number` varchar(64) comment '订单编号',
`customer_users` int(11) DEFAULT 0 comment '顾客用户',
`food_name` varchar(64) comment '食物名称',
`purchase_quantity` int(11) DEFAULT 0 comment '购买数量',
`total_order_price` varchar(64) comment '订单总价',
`production_status` varchar(64) comment '制作状态',
`order_remarks` text comment '订单备注',
`recommend` int(11) DEFAULT '0' NOT NULL comment '智能推荐',
`create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
`update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
PRIMARY KEY (food_orders_id))ENGINE=InnoDB DEFAULT CHARSET=utf8 comment '食物订单';
insert into `food_orders` values (1,'订单编号1',0,'食物名称1',1,'订单总价1','制作状态1','订单备注1',0,'2023-04-16 21:59:11','2023-04-16 21:59:11');
insert into `food_orders` values (2,'订单编号2',0,'食物名称2',2,'订单总价2','制作状态2','订单备注2',0,'2023-04-16 21:59:11','2023-04-16 21:59:11');
insert into `food_orders` values (3,'订单编号3',0,'食物名称3',3,'订单总价3','制作状态3','订单备注3',0,'2023-04-16 21:59:11','2023-04-16 21:59:11');
insert into `food_orders` values (4,'订单编号4',0,'食物名称4',4,'订单总价4','制作状态4','订单备注4',0,'2023-04-16 21:59:11','2023-04-16 21:59:11');
insert into `food_orders` values (5,'订单编号5',0,'食物名称5',5,'订单总价5','制作状态5','订单备注5',0,'2023-04-16 21:59:11','2023-04-16 21:59:11');
insert into `food_orders` values (6,'订单编号6',0,'食物名称6',6,'订单总价6','制作状态6','订单备注6',0,'2023-04-16 21:59:11','2023-04-16 21:59:11');
insert into `food_orders` values (7,'订单编号7',0,'食物名称7',7,'订单总价7','制作状态7','订单备注7',0,'2023-04-16 21:59:11','2023-04-16 21:59:11');
insert into `food_orders` values (8,'订单编号8',0,'食物名称8',8,'订单总价8','制作状态8','订单备注8',0,'2023-04-16 21:59:11','2023-04-16 21:59:11');

DROP TABLE IF EXISTS `room_information`;
CREATE TABLE `room_information`(room_information_id int(11) NOT NULL AUTO_INCREMENT COMMENT '房间信息ID',
`room_name` varchar(64) comment '房间名称',
`room_type` varchar(64) comment '房间房型',
`room_price` int(11) DEFAULT 0 comment '房间价格',
`room_location` varchar(64) comment '房间位置',
`room_image` varchar(255) comment '房间图片',
`room_introduction` text comment '房间介绍',
`hits` int(11) DEFAULT 0 NOT NULL comment '点击数',
`praise_len` int(11) DEFAULT 0 NOT NULL comment '点赞数',
`recommend` int(11) DEFAULT '0' NOT NULL comment '智能推荐',
`create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
`update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
PRIMARY KEY (room_information_id))ENGINE=InnoDB DEFAULT CHARSET=utf8 comment '房间信息';
insert into `room_information` values (1,'房间名称1','房间房型1',1,'房间位置1','/api/upload/1580812488918695936.jpg','房间介绍1',981,454,0,'2023-04-16 21:59:11','2023-04-16 21:59:11');
insert into `room_information` values (2,'房间名称2','房间房型2',2,'房间位置2','/api/upload/1580812636965044225.jpg','房间介绍2',987,523,0,'2023-04-16 21:59:11','2023-04-16 21:59:11');
insert into `room_information` values (3,'房间名称3','房间房型3',3,'房间位置3','/api/upload/1580812590471184384.jpg','房间介绍3',763,156,0,'2023-04-16 21:59:11','2023-04-16 21:59:11');
insert into `room_information` values (4,'房间名称4','房间房型4',4,'房间位置4','/api/upload/1580812700605218816.jpg','房间介绍4',293,883,0,'2023-04-16 21:59:11','2023-04-16 21:59:11');
insert into `room_information` values (5,'房间名称5','房间房型5',5,'房间位置5','/api/upload/1580812747514314753.jpg','房间介绍5',222,891,0,'2023-04-16 21:59:11','2023-04-16 21:59:11');
insert into `room_information` values (6,'房间名称6','房间房型6',6,'房间位置6','/api/upload/1580812803919314945.jpg','房间介绍6',363,418,0,'2023-04-16 21:59:11','2023-04-16 21:59:11');
insert into `room_information` values (7,'房间名称7','房间房型7',7,'房间位置7','/api/upload/1580812537169969152.jpg','房间介绍7',771,28,0,'2023-04-16 21:59:11','2023-04-16 21:59:11');
insert into `room_information` values (8,'房间名称8','房间房型8',8,'房间位置8','/api/upload/1580812434413715457.jpg','房间介绍8',739,656,0,'2023-04-16 21:59:11','2023-04-16 21:59:11');

DROP TABLE IF EXISTS `room_orders`;
CREATE TABLE `room_orders`(room_orders_id int(11) NOT NULL AUTO_INCREMENT COMMENT '房间订单ID',
`order_number` varchar(64) comment '订单编号',
`room_name` varchar(64) comment '房间名称',
`room_type` varchar(64) comment '房间房型',
`room_price` varchar(64) comment '房间价格',
`customer_users` int(11) DEFAULT 0 comment '顾客用户',
`user_name` varchar(64) comment '用户姓名',
`contact_number` varchar(64) comment '联系电话',
`check_in_time` datetime comment '入住时间',
`booking_days` int(11) DEFAULT 0 comment '预订天数',
`total_order_price` varchar(64) comment '订单总价',
`booking_remarks` text comment '预订备注',
`reservation_status` varchar(64) comment '预订状态',
`reservation_response` text comment '预订回复',
`pay_state` varchar(16) DEFAULT '未支付' NOT NULL comment '支付状态',
`pay_type` varchar(16) DEFAULT '' comment '支付类型: 微信、支付宝、网银',
`recommend` int(11) DEFAULT '0' NOT NULL comment '智能推荐',
`create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
`update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
PRIMARY KEY (room_orders_id))ENGINE=InnoDB DEFAULT CHARSET=utf8 comment '房间订单';
insert into `room_orders` values (1,'订单编号1','房间名称1','房间房型1','房间价格1',0,'用户姓名1','联系电话1','2023-04-16 21:59:11',1,'订单总价1','预订备注1','预订状态1','预订回复1','未支付','支付宝',0,'2023-04-16 21:59:11','2023-04-16 21:59:11');
insert into `room_orders` values (2,'订单编号2','房间名称2','房间房型2','房间价格2',0,'用户姓名2','联系电话2','2023-04-16 21:59:11',2,'订单总价2','预订备注2','预订状态2','预订回复2','未支付','支付宝',0,'2023-04-16 21:59:11','2023-04-16 21:59:11');
insert into `room_orders` values (3,'订单编号3','房间名称3','房间房型3','房间价格3',0,'用户姓名3','联系电话3','2023-04-16 21:59:11',3,'订单总价3','预订备注3','预订状态3','预订回复3','未支付','支付宝',0,'2023-04-16 21:59:11','2023-04-16 21:59:11');
insert into `room_orders` values (4,'订单编号4','房间名称4','房间房型4','房间价格4',0,'用户姓名4','联系电话4','2023-04-16 21:59:11',4,'订单总价4','预订备注4','预订状态4','预订回复4','未支付','支付宝',0,'2023-04-16 21:59:11','2023-04-16 21:59:11');
insert into `room_orders` values (5,'订单编号5','房间名称5','房间房型5','房间价格5',0,'用户姓名5','联系电话5','2023-04-16 21:59:11',5,'订单总价5','预订备注5','预订状态5','预订回复5','未支付','支付宝',0,'2023-04-16 21:59:11','2023-04-16 21:59:11');
insert into `room_orders` values (6,'订单编号6','房间名称6','房间房型6','房间价格6',0,'用户姓名6','联系电话6','2023-04-16 21:59:11',6,'订单总价6','预订备注6','预订状态6','预订回复6','未支付','支付宝',0,'2023-04-16 21:59:11','2023-04-16 21:59:11');
insert into `room_orders` values (7,'订单编号7','房间名称7','房间房型7','房间价格7',0,'用户姓名7','联系电话7','2023-04-16 21:59:11',7,'订单总价7','预订备注7','预订状态7','预订回复7','未支付','支付宝',0,'2023-04-16 21:59:11','2023-04-16 21:59:11');
insert into `room_orders` values (8,'订单编号8','房间名称8','房间房型8','房间价格8',0,'用户姓名8','联系电话8','2023-04-16 21:59:11',8,'订单总价8','预订备注8','预订状态8','预订回复8','未支付','支付宝',0,'2023-04-16 21:59:11','2023-04-16 21:59:11');

DROP TABLE IF EXISTS `room_type_management`;
CREATE TABLE `room_type_management`(room_type_management_id int(11) NOT NULL AUTO_INCREMENT COMMENT '房型管理ID',
`room_type` varchar(64) comment '房间房型',
`recommend` int(11) DEFAULT '0' NOT NULL comment '智能推荐',
`create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
`update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
PRIMARY KEY (room_type_management_id))ENGINE=InnoDB DEFAULT CHARSET=utf8 comment '房型管理';
insert into `room_type_management` values (1,'房间房型1',0,'2023-04-16 21:59:11','2023-04-16 21:59:11');
insert into `room_type_management` values (2,'房间房型2',0,'2023-04-16 21:59:11','2023-04-16 21:59:11');
insert into `room_type_management` values (3,'房间房型3',0,'2023-04-16 21:59:11','2023-04-16 21:59:11');
insert into `room_type_management` values (4,'房间房型4',0,'2023-04-16 21:59:11','2023-04-16 21:59:11');
insert into `room_type_management` values (5,'房间房型5',0,'2023-04-16 21:59:11','2023-04-16 21:59:11');
insert into `room_type_management` values (6,'房间房型6',0,'2023-04-16 21:59:11','2023-04-16 21:59:11');
insert into `room_type_management` values (7,'房间房型7',0,'2023-04-16 21:59:11','2023-04-16 21:59:11');
insert into `room_type_management` values (8,'房间房型8',0,'2023-04-16 21:59:11','2023-04-16 21:59:11');

insert into `auth` values ('1','管理员','顾客用户','customer_users','顾客用户','/customer_users/table','','_blank','1','1','1','1','user_name,user_gender,user_age','user_name,user_gender,user_age','user_name,user_gender,user_age',null,'0','{}','2023-04-16 21:59:11.0','2023-04-16 21:59:11.0');
insert into `auth` values ('2','管理员','顾客用户','customer_users','顾客用户详情','/customer_users/view','','_blank','1','1','1','1','user_name,user_gender,user_age','user_name,user_gender,user_age','user_name,user_gender,user_age',null,'0','{}','2023-04-16 21:59:11.0','2023-04-16 21:59:11.0');
insert into `auth` values ('3','管理员','食物信息','food_information','食物信息','/food_information/table','','_blank','1','1','1','1','remarks','remarks','remarks',null,'0','{}','2023-04-16 21:59:11.0','2023-04-16 21:59:11.0');
insert into `auth` values ('4','管理员','食物信息','food_information','食物信息详情','/food_information/view','','_blank','1','1','1','1','remarks','remarks','remarks',null,'0','{}','2023-04-16 21:59:11.0','2023-04-16 21:59:11.0');
insert into `auth` values ('5','管理员','食物信息','food_information','食物信息','/food_information/list','','_blank','1','1','1','1','remarks','remarks','remarks',null,'0','{"cart_page":true}','2023-04-16 21:59:11.0','2023-04-16 21:59:11.0');
insert into `auth` values ('6','管理员','食物信息','food_information','食物信息详情','/food_information/details','','_blank','1','1','1','1','remarks','remarks','remarks',null,'0','{"cart_page":true}','2023-04-16 21:59:11.0','2023-04-16 21:59:11.0');
insert into `auth` values ('7','管理员','食物订单','food_orders','食物订单','/food_orders/table','','_blank','1','1','1','1','order_number,customer_users,food_name,purchase_quantity,total_order_price,production_status,order_remarks','order_number,customer_users,food_name,purchase_quantity,total_order_price,production_status,order_remarks','order_number,customer_users,food_name,purchase_quantity,total_order_price,production_status,order_remarks',null,'0','{}','2023-04-16 21:59:11.0','2023-04-16 21:59:11.0');
insert into `auth` values ('8','管理员','食物订单','food_orders','食物订单详情','/food_orders/view','','_blank','1','1','1','1','order_number,customer_users,food_name,purchase_quantity,total_order_price,production_status,order_remarks','order_number,customer_users,food_name,purchase_quantity,total_order_price,production_status,order_remarks','order_number,customer_users,food_name,purchase_quantity,total_order_price,production_status,order_remarks',null,'0','{}','2023-04-16 21:59:11.0','2023-04-16 21:59:11.0');
insert into `auth` values ('9','管理员','房间信息','room_information','房间信息','/room_information/table','','_blank','1','1','1','1','room_name,room_type,room_price,room_location,room_image,room_introduction','room_name,room_type,room_price,room_location,room_image,room_introduction','room_name,room_type,room_price,room_location,room_image,room_introduction',null,'0','{"can_show_comment":true}','2023-04-16 21:59:11.0','2023-04-16 21:59:11.0');
insert into `auth` values ('10','管理员','房间信息','room_information','房间信息详情','/room_information/view','','_blank','1','1','1','1','room_name,room_type,room_price,room_location,room_image,room_introduction','room_name,room_type,room_price,room_location,room_image,room_introduction','room_name,room_type,room_price,room_location,room_image,room_introduction',null,'0','{}','2023-04-16 21:59:11.0','2023-04-16 21:59:11.0');
insert into `auth` values ('11','管理员','房间信息','room_information','房间信息','/room_information/list','top','_blank','1','1','1','1','room_name,room_type,room_price,room_location,room_image,room_introduction','room_name,room_type,room_price,room_location,room_image,room_introduction','room_name,room_type,room_price,room_location,room_image,room_introduction',null,'0','{}','2023-04-16 21:59:11.0','2023-04-16 21:59:11.0');
insert into `auth` values ('12','管理员','房间信息','room_information','房间信息详情','/room_information/details','','_blank','1','1','1','1','room_name,room_type,room_price,room_location,room_image,room_introduction','room_name,room_type,room_price,room_location,room_image,room_introduction','room_name,room_type,room_price,room_location,room_image,room_introduction',null,'0','{"can_comment":true,"can_show_comment":true}','2023-04-16 21:59:11.0','2023-04-16 21:59:11.0');
insert into `auth` values ('13','管理员','房间订单','room_orders','房间订单','/room_orders/table','','_blank','1','1','1','1','order_number,room_name,room_type,room_price,customer_users,user_name,contact_number,check_in_time,booking_days,total_order_price,booking_remarks,reservation_status,reservation_response','order_number,room_name,room_type,room_price,customer_users,user_name,contact_number,check_in_time,booking_days,total_order_price,booking_remarks,reservation_status,reservation_response','order_number,room_name,room_type,room_price,customer_users,user_name,contact_number,check_in_time,booking_days,total_order_price,booking_remarks,reservation_status,reservation_response',null,'0','{"pay":true}','2023-04-16 21:59:11.0','2023-04-16 21:59:11.0');
insert into `auth` values ('14','管理员','房间订单','room_orders','房间订单详情','/room_orders/view','','_blank','1','1','1','1','order_number,room_name,room_type,room_price,customer_users,user_name,contact_number,check_in_time,booking_days,total_order_price,booking_remarks,reservation_status,reservation_response','order_number,room_name,room_type,room_price,customer_users,user_name,contact_number,check_in_time,booking_days,total_order_price,booking_remarks,reservation_status,reservation_response','order_number,room_name,room_type,room_price,customer_users,user_name,contact_number,check_in_time,booking_days,total_order_price,booking_remarks,reservation_status,reservation_response',null,'0','{}','2023-04-16 21:59:11.0','2023-04-16 21:59:11.0');
insert into `auth` values ('15','管理员','房间订单','room_orders','房间订单','/room_orders/edit','','_blank','1','1','1','1','order_number,room_name,room_type,room_price,customer_users,user_name,contact_number,check_in_time,booking_days,total_order_price,booking_remarks,reservation_status,reservation_response','order_number,room_name,room_type,room_price,customer_users,user_name,contact_number,check_in_time,booking_days,total_order_price,booking_remarks,reservation_status,reservation_response','order_number,room_name,room_type,room_price,customer_users,user_name,contact_number,check_in_time,booking_days,total_order_price,booking_remarks,reservation_status,reservation_response',null,'0','{}','2023-04-16 21:59:11.0','2023-04-16 21:59:11.0');
insert into `auth` values ('16','管理员','房型管理','room_type_management','房型管理','/room_type_management/table','','_blank','1','1','1','1','room_type','room_type','room_type',null,'0','{}','2023-04-16 21:59:11.0','2023-04-16 21:59:11.0');
insert into `auth` values ('17','管理员','房型管理','room_type_management','房型管理详情','/room_type_management/view','','_blank','1','1','1','1','room_type','room_type','room_type',null,'0','{}','2023-04-16 21:59:11.0','2023-04-16 21:59:11.0');
insert into `auth` values ('18','管理员','我的收藏','collect','我的收藏','/collect/list','','_blank','1','1','1','1','','','',null,'0','{}','2023-04-16 21:59:11.0','2023-04-16 21:59:11.0');
insert into `auth` values ('19','管理员','订单','order','订单列表','/order/table','','_blank','1','1','1','1','','','',null,'0','{"print":true,"export_db":true}','2023-04-16 21:59:11.0','2023-04-16 21:59:11.0');
insert into `auth` values ('20','管理员','订单','order','订单详情','/order/view','','_blank','1','1','1','1','','','',null,'0','{"print":true}','2023-04-16 21:59:11.0','2023-04-16 21:59:11.0');
insert into `auth` values ('21','管理员','订单','order','我的订单','/order/list','','_blank','1','1','1','1','','','',null,'0','{}','2023-04-16 21:59:11.0','2023-04-16 21:59:11.0');
insert into `auth` values ('22','管理员','订单','order','订单详情','/order/details','','_blank','1','1','1','1','','','',null,'0','{"can_comment":true,"can_score":true,"can_show_comment":true,"can_show_score":true}','2023-04-16 21:59:11.0','2023-04-16 21:59:11.0');
insert into `auth` values ('23','管理员','商品','goods','商品列表','/goods/table','','_blank','1','1','1','1','','','',null,'0','{"print":true,"export_db":true,"import_db":true}','2023-04-16 21:59:11.0','2023-04-16 21:59:11.0');
insert into `auth` values ('24','管理员','商品','goods','商品详情','/goods/view','','_blank','1','1','1','1','','','',null,'0','{"print":true}','2023-04-16 21:59:11.0','2023-04-16 21:59:11.0');
insert into `auth` values ('25','管理员','商品','goods','商品列表','/goods/list','','_blank','1','1','1','1','','','',null,'0','{}','2023-04-16 21:59:11.0','2023-04-16 21:59:11.0');
insert into `auth` values ('26','管理员','商品','goods','商品详情','/goods/details','','_blank','1','1','1','1','','','',null,'0','{"can_comment":true,"can_score":true,"can_show_comment":true,"can_show_score":true}','2023-04-16 21:59:11.0','2023-04-16 21:59:11.0');
insert into `auth` values ('27','管理员','收货地址','address','收货地址','/address/list','','_blank','1','1','1','1','','','',null,'0','{}','2023-04-16 21:59:11.0','2023-04-16 21:59:11.0');
insert into `auth` values ('28','管理员','收货地址','address','地址详情','/address/details','','_blank','1','1','1','1','','','',null,'0','{}','2023-04-16 21:59:11.0','2023-04-16 21:59:11.0');
insert into `auth` values ('29','管理员','评论','comment','评论列表','/comment/table','','_blank','1','1','1','1','','','',null,'0','{}','2023-04-16 21:59:11.0','2023-04-16 21:59:11.0');
insert into `auth` values ('30','管理员','评论','comment','评论详情','/comment/view','','_blank','1','1','1','1','','','',null,'0','{}','2023-04-16 21:59:11.0','2023-04-16 21:59:11.0');
insert into `auth` values ('31','管理员','评论','comment','我的评论','/comment/list','','_blank','1','1','1','1','','','',null,'0','{}','2023-04-16 21:59:11.0','2023-04-16 21:59:11.0');
insert into `auth` values ('32','管理员','评论','comment','评论详情','/comment/details','','_blank','1','1','1','1','','','',null,'0','{}','2023-04-16 21:59:11.0','2023-04-16 21:59:11.0');
insert into `auth` values ('33','管理员','公告','notice','公告列表','/notice/table','','_blank','1','1','1','1','','','',null,'0','{}','2023-04-16 21:59:11.0','2023-04-16 21:59:11.0');
insert into `auth` values ('34','管理员','公告','notice','公告详情','/notice/view','','_blank','1','1','1','1','','','',null,'0','{}','2023-04-16 21:59:11.0','2023-04-16 21:59:11.0');
insert into `auth` values ('35','管理员','公告','notice','公告','/notice/list','','_blank','1','1','1','1','','','',null,'0','{}','2023-04-16 21:59:11.0','2023-04-16 21:59:11.0');
insert into `auth` values ('36','管理员','公告','notice','公告详情','/notice/details','','_blank','1','1','1','1','','','',null,'0','{}','2023-04-16 21:59:11.0','2023-04-16 21:59:11.0');
insert into `auth` values ('37','游客','顾客用户','customer_users','顾客用户','/customer_users/table','','_blank','1','0','0','0','user_name,user_gender,user_age','user_name,user_gender,user_age','user_name,user_gender,user_age',null,'0','{}','2023-04-16 21:59:11.0','2023-04-16 21:59:11.0');
insert into `auth` values ('38','游客','顾客用户','customer_users','顾客用户详情','/customer_users/view','','_blank','1','0','0','0','user_name,user_gender,user_age','user_name,user_gender,user_age','user_name,user_gender,user_age',null,'0','{}','2023-04-16 21:59:11.0','2023-04-16 21:59:11.0');
insert into `auth` values ('39','游客','食物信息','food_information','食物信息','/food_information/table','','_blank','0','0','0','0','remarks','remarks','remarks',null,'0','{}','2023-04-16 21:59:11.0','2023-04-16 21:59:11.0');
insert into `auth` values ('40','游客','食物信息','food_information','食物信息详情','/food_information/view','','_blank','0','0','0','0','remarks','remarks','remarks',null,'0','{}','2023-04-16 21:59:11.0','2023-04-16 21:59:11.0');
insert into `auth` values ('41','游客','食物信息','food_information','食物信息','/food_information/list','','_blank','0','0','0','1','remarks','remarks','remarks',null,'0','{"cart_page":false}','2023-04-16 21:59:11.0','2023-04-16 21:59:11.0');
insert into `auth` values ('42','游客','食物信息','food_information','食物信息详情','/food_information/details','','_blank','0','0','0','1','remarks','remarks','remarks',null,'0','{"cart_page":false}','2023-04-16 21:59:11.0','2023-04-16 21:59:11.0');
insert into `auth` values ('43','游客','食物订单','food_orders','食物订单','/food_orders/table','','_blank','0','0','0','0','order_number,customer_users,food_name,purchase_quantity,total_order_price,production_status,order_remarks','order_number,customer_users,food_name,purchase_quantity,total_order_price,production_status,order_remarks','order_number,customer_users,food_name,purchase_quantity,total_order_price,production_status,order_remarks',null,'0','{}','2023-04-16 21:59:11.0','2023-04-16 21:59:11.0');
insert into `auth` values ('44','游客','食物订单','food_orders','食物订单详情','/food_orders/view','','_blank','0','0','0','0','order_number,customer_users,food_name,purchase_quantity,total_order_price,production_status,order_remarks','order_number,customer_users,food_name,purchase_quantity,total_order_price,production_status,order_remarks','order_number,customer_users,food_name,purchase_quantity,total_order_price,production_status,order_remarks',null,'0','{}','2023-04-16 21:59:11.0','2023-04-16 21:59:11.0');
insert into `auth` values ('45','游客','房间信息','room_information','房间信息','/room_information/table','','_blank','0','0','0','0','room_name,room_type,room_price,room_location,room_image,room_introduction','room_name,room_type,room_price,room_location,room_image,room_introduction','room_name,room_type,room_price,room_location,room_image,room_introduction',null,'0','{"can_show_comment":false}','2023-04-16 21:59:11.0','2023-04-16 21:59:11.0');
insert into `auth` values ('46','游客','房间信息','room_information','房间信息详情','/room_information/view','','_blank','0','0','0','0','room_name,room_type,room_price,room_location,room_image,room_introduction','room_name,room_type,room_price,room_location,room_image,room_introduction','room_name,room_type,room_price,room_location,room_image,room_introduction',null,'0','{}','2023-04-16 21:59:11.0','2023-04-16 21:59:11.0');
insert into `auth` values ('47','游客','房间信息','room_information','房间信息','/room_information/list','top','_blank','0','0','0','1','room_name,room_type,room_price,room_location,room_image,room_introduction','room_name,room_type,room_price,room_location,room_image,room_introduction','room_name,room_type,room_price,room_location,room_image,room_introduction',null,'0','{}','2023-04-16 21:59:11.0','2023-04-16 21:59:11.0');
insert into `auth` values ('48','游客','房间信息','room_information','房间信息详情','/room_information/details','','_blank','0','0','0','1','room_name,room_type,room_price,room_location,room_image,room_introduction','room_name,room_type,room_price,room_location,room_image,room_introduction','room_name,room_type,room_price,room_location,room_image,room_introduction',null,'0','{"can_comment":false,"can_show_comment":true}','2023-04-16 21:59:11.0','2023-04-16 21:59:11.0');
insert into `auth` values ('49','游客','房间订单','room_orders','房间订单','/room_orders/table','','_blank','0','0','0','0','order_number,room_name,room_type,room_price,customer_users,user_name,contact_number,check_in_time,booking_days,total_order_price,booking_remarks,reservation_status,reservation_response','order_number,room_name,room_type,room_price,customer_users,user_name,contact_number,check_in_time,booking_days,total_order_price,booking_remarks,reservation_status,reservation_response','order_number,room_name,room_type,room_price,customer_users,user_name,contact_number,check_in_time,booking_days,total_order_price,booking_remarks,reservation_status,reservation_response',null,'0','{"pay":false}','2023-04-16 21:59:11.0','2023-04-16 21:59:11.0');
insert into `auth` values ('50','游客','房间订单','room_orders','房间订单详情','/room_orders/view','','_blank','0','0','0','0','order_number,room_name,room_type,room_price,customer_users,user_name,contact_number,check_in_time,booking_days,total_order_price,booking_remarks,reservation_status,reservation_response','order_number,room_name,room_type,room_price,customer_users,user_name,contact_number,check_in_time,booking_days,total_order_price,booking_remarks,reservation_status,reservation_response','order_number,room_name,room_type,room_price,customer_users,user_name,contact_number,check_in_time,booking_days,total_order_price,booking_remarks,reservation_status,reservation_response',null,'0','{}','2023-04-16 21:59:11.0','2023-04-16 21:59:11.0');
insert into `auth` values ('51','游客','房间订单','room_orders','房间订单','/room_orders/edit','','_blank','0','0','0','0','order_number,room_name,room_type,room_price,customer_users,user_name,contact_number,check_in_time,booking_days,total_order_price,booking_remarks,reservation_status,reservation_response','order_number,room_name,room_type,room_price,customer_users,user_name,contact_number,check_in_time,booking_days,total_order_price,booking_remarks,reservation_status,reservation_response','order_number,room_name,room_type,room_price,customer_users,user_name,contact_number,check_in_time,booking_days,total_order_price,booking_remarks,reservation_status,reservation_response',null,'0','{}','2023-04-16 21:59:11.0','2023-04-16 21:59:11.0');
insert into `auth` values ('52','游客','房型管理','room_type_management','房型管理','/room_type_management/table','','_blank','0','0','0','0','room_type','room_type','room_type',null,'0','{}','2023-04-16 21:59:11.0','2023-04-16 21:59:11.0');
insert into `auth` values ('53','游客','房型管理','room_type_management','房型管理详情','/room_type_management/view','','_blank','0','0','0','0','room_type','room_type','room_type',null,'0','{}','2023-04-16 21:59:11.0','2023-04-16 21:59:11.0');
insert into `auth` values ('54','游客','我的收藏','collect','我的收藏','/collect/list','','_blank','0','0','0','0','','','',null,'0','{}','2023-04-16 21:59:11.0','2023-04-16 21:59:11.0');
insert into `auth` values ('55','游客','订单','order','订单列表','/order/table','','_blank','0','0','0','0','','','',null,'0','{"print":false,"export_db":false}','2023-04-16 21:59:11.0','2023-04-16 21:59:11.0');
insert into `auth` values ('56','游客','订单','order','订单详情','/order/view','','_blank','0','0','0','0','','','',null,'0','{"print":false}','2023-04-16 21:59:11.0','2023-04-16 21:59:11.0');
insert into `auth` values ('57','游客','订单','order','我的订单','/order/list','','_blank','0','0','0','0','','','',null,'0','{}','2023-04-16 21:59:11.0','2023-04-16 21:59:11.0');
insert into `auth` values ('58','游客','订单','order','订单详情','/order/details','','_blank','0','0','0','0','','','',null,'0','{"can_comment":false,"can_score":false,"can_show_comment":false,"can_show_score":false}','2023-04-16 21:59:11.0','2023-04-16 21:59:11.0');
insert into `auth` values ('59','游客','商品','goods','商品列表','/goods/table','','_blank','0','0','0','0','','','',null,'0','{"print":false,"export_db":false,"import_db":false}','2023-04-16 21:59:11.0','2023-04-16 21:59:11.0');
insert into `auth` values ('60','游客','商品','goods','商品详情','/goods/view','','_blank','0','0','0','0','','','',null,'0','{"print":false}','2023-04-16 21:59:11.0','2023-04-16 21:59:11.0');
insert into `auth` values ('61','游客','商品','goods','商品列表','/goods/list','','_blank','0','0','0','1','','','',null,'0','{}','2023-04-16 21:59:11.0','2023-04-16 21:59:11.0');
insert into `auth` values ('62','游客','商品','goods','商品详情','/goods/details','','_blank','0','0','0','1','','','',null,'0','{"can_comment":false,"can_score":false,"can_show_comment":true,"can_show_score":false}','2023-04-16 21:59:11.0','2023-04-16 21:59:11.0');
insert into `auth` values ('63','游客','收货地址','address','收货地址','/address/list','','_blank','0','0','0','0','','','',null,'0','{}','2023-04-16 21:59:11.0','2023-04-16 21:59:11.0');
insert into `auth` values ('64','游客','收货地址','address','地址详情','/address/details','','_blank','0','0','0','0','','','',null,'0','{}','2023-04-16 21:59:11.0','2023-04-16 21:59:11.0');
insert into `auth` values ('65','游客','评论','comment','评论列表','/comment/table','','_blank','0','0','0','0','','','',null,'0','{}','2023-04-16 21:59:11.0','2023-04-16 21:59:11.0');
insert into `auth` values ('66','游客','评论','comment','评论详情','/comment/view','','_blank','0','0','0','0','','','',null,'0','{}','2023-04-16 21:59:11.0','2023-04-16 21:59:11.0');
insert into `auth` values ('67','游客','评论','comment','我的评论','/comment/list','','_blank','0','0','0','1','','','',null,'0','{}','2023-04-16 21:59:11.0','2023-04-16 21:59:11.0');
insert into `auth` values ('68','游客','评论','comment','评论详情','/comment/details','','_blank','0','0','0','1','','','',null,'0','{}','2023-04-16 21:59:11.0','2023-04-16 21:59:11.0');
insert into `auth` values ('69','游客','公告','notice','公告列表','/notice/table','','_blank','0','0','0','0','','','',null,'0','{}','2023-04-16 21:59:11.0','2023-04-16 21:59:11.0');
insert into `auth` values ('70','游客','公告','notice','公告详情','/notice/view','','_blank','0','0','0','0','','','',null,'0','{}','2023-04-16 21:59:11.0','2023-04-16 21:59:11.0');
insert into `auth` values ('71','游客','公告','notice','公告','/notice/list','','_blank','0','0','0','1','','','',null,'0','{}','2023-04-16 21:59:11.0','2023-04-16 21:59:11.0');
insert into `auth` values ('72','游客','公告','notice','公告详情','/notice/details','','_blank','0','0','0','1','','','',null,'0','{}','2023-04-16 21:59:11.0','2023-04-16 21:59:11.0');
insert into `auth` values ('73','顾客用户','顾客用户','customer_users','顾客用户','/customer_users/table','','_blank','0','0','0','0','user_name,user_gender,user_age','user_name,user_gender,user_age','user_name,user_gender,user_age',null,'0','{}','2023-04-16 21:59:11.0','2023-04-16 21:59:11.0');
insert into `auth` values ('74','顾客用户','顾客用户','customer_users','顾客用户详情','/customer_users/view','','_blank','0','0','0','0','user_name,user_gender,user_age','user_name,user_gender,user_age','user_name,user_gender,user_age',null,'0','{}','2023-04-16 21:59:11.0','2023-04-16 21:59:11.0');
insert into `auth` values ('75','顾客用户','食物信息','food_information','食物信息','/food_information/table','','_blank','0','0','0','0','remarks','remarks','remarks',null,'0','{}','2023-04-16 21:59:11.0','2023-04-16 21:59:11.0');
insert into `auth` values ('76','顾客用户','食物信息','food_information','食物信息详情','/food_information/view','','_blank','0','0','0','0','remarks','remarks','remarks',null,'0','{}','2023-04-16 21:59:11.0','2023-04-16 21:59:11.0');
insert into `auth` values ('77','顾客用户','食物信息','food_information','食物信息','/food_information/list','','_blank','1','1','1','1','remarks','remarks','remarks',null,'0','{"cart_page":true}','2023-04-16 21:59:11.0','2023-04-16 21:59:11.0');
insert into `auth` values ('78','顾客用户','食物信息','food_information','食物信息详情','/food_information/details','','_blank','1','1','1','1','remarks','remarks','remarks',null,'0','{"cart_page":true}','2023-04-16 21:59:11.0','2023-04-16 21:59:11.0');
insert into `auth` values ('79','顾客用户','食物订单','food_orders','食物订单','/food_orders/table','','_blank','0','0','0','1','order_number,customer_users,food_name,purchase_quantity,total_order_price,production_status,order_remarks','order_number,customer_users,food_name,purchase_quantity,total_order_price,production_status,order_remarks','order_number,customer_users,food_name,purchase_quantity,total_order_price,production_status,order_remarks',null,'0','{}','2023-04-16 21:59:11.0','2023-04-16 21:59:11.0');
insert into `auth` values ('80','顾客用户','食物订单','food_orders','食物订单详情','/food_orders/view','','_blank','0','0','0','1','order_number,customer_users,food_name,purchase_quantity,total_order_price,production_status,order_remarks','order_number,customer_users,food_name,purchase_quantity,total_order_price,production_status,order_remarks','order_number,customer_users,food_name,purchase_quantity,total_order_price,production_status,order_remarks',null,'0','{}','2023-04-16 21:59:11.0','2023-04-16 21:59:11.0');
insert into `auth` values ('81','顾客用户','房间信息','room_information','房间信息','/room_information/table','','_blank','0','0','0','0','room_name,room_type,room_price,room_location,room_image,room_introduction','room_name,room_type,room_price,room_location,room_image,room_introduction','room_name,room_type,room_price,room_location,room_image,room_introduction',null,'0','{"can_show_comment":false}','2023-04-16 21:59:11.0','2023-04-16 21:59:11.0');
insert into `auth` values ('82','顾客用户','房间信息','room_information','房间信息详情','/room_information/view','','_blank','0','0','0','0','room_name,room_type,room_price,room_location,room_image,room_introduction','room_name,room_type,room_price,room_location,room_image,room_introduction','room_name,room_type,room_price,room_location,room_image,room_introduction',null,'0','{}','2023-04-16 21:59:11.0','2023-04-16 21:59:11.0');
insert into `auth` values ('83','顾客用户','房间信息','room_information','房间信息','/room_information/list','top','_blank','1','1','1','1','room_name,room_type,room_price,room_location,room_image,room_introduction','room_name,room_type,room_price,room_location,room_image,room_introduction','room_name,room_type,room_price,room_location,room_image,room_introduction',null,'0','{}','2023-04-16 21:59:11.0','2023-04-16 21:59:11.0');
insert into `auth` values ('84','顾客用户','房间信息','room_information','房间信息详情','/room_information/details','','_blank','1','1','1','1','room_name,room_type,room_price,room_location,room_image,room_introduction','room_name,room_type,room_price,room_location,room_image,room_introduction','room_name,room_type,room_price,room_location,room_image,room_introduction',null,'0','{"can_comment":true,"can_show_comment":true}','2023-04-16 21:59:11.0','2023-04-16 21:59:11.0');
insert into `auth` values ('85','顾客用户','房间订单','room_orders','房间订单','/room_orders/table','','_blank','0','0','0','1','order_number,room_name,room_type,room_price,customer_users,user_name,contact_number,check_in_time,booking_days,total_order_price,booking_remarks,reservation_status,reservation_response','order_number,room_name,room_type,room_price,customer_users,user_name,contact_number,check_in_time,booking_days,total_order_price,booking_remarks,reservation_status,reservation_response','order_number,room_name,room_type,room_price,customer_users,user_name,contact_number,check_in_time,booking_days,total_order_price,booking_remarks,reservation_status,reservation_response',null,'0','{"pay":true}','2023-04-16 21:59:11.0','2023-04-16 21:59:11.0');
insert into `auth` values ('86','顾客用户','房间订单','room_orders','房间订单详情','/room_orders/view','','_blank','0','0','0','1','order_number,room_name,room_type,room_price,customer_users,user_name,contact_number,check_in_time,booking_days,total_order_price,booking_remarks,reservation_status,reservation_response','order_number,room_name,room_type,room_price,customer_users,user_name,contact_number,check_in_time,booking_days,total_order_price,booking_remarks,reservation_status,reservation_response','order_number,room_name,room_type,room_price,customer_users,user_name,contact_number,check_in_time,booking_days,total_order_price,booking_remarks,reservation_status,reservation_response',null,'0','{}','2023-04-16 21:59:11.0','2023-04-16 21:59:11.0');
insert into `auth` values ('87','顾客用户','房间订单','room_orders','房间订单','/room_orders/edit','','_blank','1','1','1','1','order_number,room_name,room_type,room_price,customer_users,user_name,contact_number,check_in_time,booking_days,total_order_price,booking_remarks','order_number,room_name,room_type,room_price,customer_users,user_name,contact_number,check_in_time,booking_days,total_order_price,booking_remarks','order_number,room_name,room_type,room_price,customer_users,user_name,contact_number,check_in_time,booking_days,total_order_price,booking_remarks',null,'0','{}','2023-04-16 21:59:11.0','2023-04-16 21:59:11.0');
insert into `auth` values ('88','顾客用户','房型管理','room_type_management','房型管理','/room_type_management/table','','_blank','0','0','0','0','room_type','room_type','room_type',null,'0','{}','2023-04-16 21:59:11.0','2023-04-16 21:59:11.0');
insert into `auth` values ('89','顾客用户','房型管理','room_type_management','房型管理详情','/room_type_management/view','','_blank','0','0','0','0','room_type','room_type','room_type',null,'0','{}','2023-04-16 21:59:11.0','2023-04-16 21:59:11.0');
insert into `auth` values ('90','顾客用户','我的收藏','collect','我的收藏','/collect/list','','_blank','1','1','1','1','','','',null,'0','{}','2023-04-16 21:59:11.0','2023-04-16 21:59:11.0');
insert into `auth` values ('91','顾客用户','订单','order','订单列表','/order/table','','_blank','0','0','0','0','','','',null,'0','{"print":false,"export_db":false}','2023-04-16 21:59:11.0','2023-04-16 21:59:11.0');
insert into `auth` values ('92','顾客用户','订单','order','订单详情','/order/view','','_blank','0','0','0','0','','','',null,'0','{"print":false}','2023-04-16 21:59:11.0','2023-04-16 21:59:11.0');
insert into `auth` values ('93','顾客用户','订单','order','我的订单','/order/list','','_blank','1','1','1','1','','','',null,'0','{}','2023-04-16 21:59:11.0','2023-04-16 21:59:11.0');
insert into `auth` values ('94','顾客用户','订单','order','订单详情','/order/details','','_blank','1','1','1','1','','','',null,'0','{"can_comment":true,"can_score":true,"can_show_comment":true,"can_show_score":true}','2023-04-16 21:59:11.0','2023-04-16 21:59:11.0');
insert into `auth` values ('95','顾客用户','商品','goods','商品列表','/goods/table','','_blank','0','0','0','0','','','',null,'0','{"print":false,"export_db":false,"import_db":false}','2023-04-16 21:59:11.0','2023-04-16 21:59:11.0');
insert into `auth` values ('96','顾客用户','商品','goods','商品详情','/goods/view','','_blank','0','0','0','0','','','',null,'0','{"print":false}','2023-04-16 21:59:11.0','2023-04-16 21:59:11.0');
insert into `auth` values ('97','顾客用户','商品','goods','商品列表','/goods/list','','_blank','1','1','1','1','','','',null,'0','{}','2023-04-16 21:59:11.0','2023-04-16 21:59:11.0');
insert into `auth` values ('98','顾客用户','商品','goods','商品详情','/goods/details','','_blank','1','1','1','1','','','',null,'0','{"can_comment":true,"can_score":true,"can_show_comment":true,"can_show_score":true}','2023-04-16 21:59:11.0','2023-04-16 21:59:11.0');
insert into `auth` values ('99','顾客用户','收货地址','address','收货地址','/address/list','','_blank','1','1','1','1','','','',null,'0','{}','2023-04-16 21:59:11.0','2023-04-16 21:59:11.0');
insert into `auth` values ('100','顾客用户','收货地址','address','地址详情','/address/details','','_blank','1','1','1','1','','','',null,'0','{}','2023-04-16 21:59:11.0','2023-04-16 21:59:11.0');
insert into `auth` values ('101','顾客用户','评论','comment','评论列表','/comment/table','','_blank','0','0','0','0','','','',null,'0','{}','2023-04-16 21:59:11.0','2023-04-16 21:59:11.0');
insert into `auth` values ('102','顾客用户','评论','comment','评论详情','/comment/view','','_blank','0','0','0','0','','','',null,'0','{}','2023-04-16 21:59:11.0','2023-04-16 21:59:11.0');
insert into `auth` values ('103','顾客用户','评论','comment','我的评论','/comment/list','','_blank','1','1','1','1','','','',null,'0','{}','2023-04-16 21:59:11.0','2023-04-16 21:59:11.0');
insert into `auth` values ('104','顾客用户','评论','comment','评论详情','/comment/details','','_blank','1','1','1','1','','','',null,'0','{}','2023-04-16 21:59:11.0','2023-04-16 21:59:11.0');
insert into `auth` values ('105','顾客用户','公告','notice','公告列表','/notice/table','','_blank','0','0','0','0','','','',null,'0','{}','2023-04-16 21:59:11.0','2023-04-16 21:59:11.0');
insert into `auth` values ('106','顾客用户','公告','notice','公告详情','/notice/view','','_blank','0','0','0','0','','','',null,'0','{}','2023-04-16 21:59:11.0','2023-04-16 21:59:11.0');
insert into `auth` values ('107','顾客用户','公告','notice','公告','/notice/list','','_blank','1','1','1','1','','','',null,'0','{}','2023-04-16 21:59:11.0','2023-04-16 21:59:11.0');
insert into `auth` values ('108','顾客用户','公告','notice','公告详情','/notice/details','','_blank','1','1','1','1','','','',null,'0','{}','2023-04-16 21:59:11.0','2023-04-16 21:59:11.0');
insert into `user_group` values ('1','100','管理员',null,'','','0','0','2023-04-16 21:59:11.0','2023-04-16 21:59:11.0');
insert into `user_group` values ('2','100','游客',null,'','','0','0','2023-04-16 21:59:11.0','2023-04-16 21:59:11.0');
insert into `user_group` values ('3','100','顾客用户',null,'customer_users','customer_users_id','0','3','2023-04-16 21:59:11.0','2023-04-16 21:59:11.0');
insert into `slides` values ('1','轮播图1','内容1','/article/details?article=1','/api/upload/1580763145708765185.jpg','351','2023-04-16 21:59:11.0','2023-04-16 21:59:11.0');
insert into `slides` values ('2','轮播图2','内容2','/article/details?article=2','/api/upload/1580763333630361601.jpg','609','2023-04-16 21:59:11.0','2023-04-16 21:59:11.0');
insert into `slides` values ('3','轮播图3','内容3','/article/details?article=3','/api/upload/1580763277141475328.jpg','701','2023-04-16 21:59:11.0','2023-04-16 21:59:11.0');

UPDATE goods 
SET img = CONCAT('/api',img),
img_1 = CONCAT('/api',img_1),
img_2 = CONCAT('/api',img_2),
img_3 = CONCAT('/api',img_3),
img_4 = CONCAT('/api',img_4),
img_5 = CONCAT('/api',img_5);

UPDATE `food_information` 
SET cart_img = CONCAT('/api',cart_img),
cart_img_1 = CONCAT('/api',cart_img_1),
cart_img_2 = CONCAT('/api',cart_img_2),
cart_img_3 = CONCAT('/api',cart_img_3),
cart_img_4 = CONCAT('/api',cart_img_4),
cart_img_5 = CONCAT('/api',cart_img_5);
