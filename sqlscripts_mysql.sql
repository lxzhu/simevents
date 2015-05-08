#用户登陆信息
create table wp_user(
	user_id bigint auto_increment primary key,
	user_name nvarchar(100) not null,
	password nvarchar(36) not null,
	create_datetime datetime default current_timestamp
);

#用户详细信息
create table wp_user_profile(
	user_id bigint not null, #用户ID
	display_name nvarchar(100) not null, #界面显示的名字
  	subdomain_name nvarchar(100) not null,#系统URL中使用的域名
  	emotion nvarchar(100),#心情
  	description nvarchar(4000),#个人介绍
  	image_media_id bigint,#图像
  	mobile nvarchar(32),#电话号码
  	email nvarchar(100),#电子邮件
	mobile_verified bit not null default 0, #电话是否已经验证
	email_verified bit not null default 0 #邮件是否已经验证
);

#用户联系方式验证
create table wp_user_contact_verify(
  	user_id bigint not null,
  	verify_type nvarchar(20) not null, #验证类型,可选值为"mobile"和"email"
  	verify_code nvarchar(36) not null,#验证码, 如果type是"mobile",验证码通常为8位数字，如果是email,验证码通常为GUID.
  	create_date_time datetime not null, #提交验证申请的时间
  	expire_date_time datetime  #该验证过期的时间,用户必须在这个时间点之前通过验证.
);

#用户密码重置的验证
create table wp_user_password_reset(
  	user_id bigint not null,
  	reset_type nvarchar(20) not null, #验证类型，可选值为"mobile"和"email"
  	reset_code nvarchar(36) not null, #验证代码,参考wp_user_contact_verify
  	create_date_time datetime not null,
  	expire_date_time datetime
);
#用户的其它社交账号
create table wp_social_account(
  	social_account_id bigint auto_increment primary key,
  	user_id bigint,
  	account_type nvarchar(100),
  	account_name nvarchar(100),
  	create_date_time not null
);

#简单的地址管理
create table wp_address(
	address_id bigint auto_increment primary key,
	city nvarchar(100) not null,#城市
	street nvarchar(100) not null,#具体地址
	create_user_id bigint,
	create_date_time datetime
);

#多媒体,图片等
create table wp_media(
  	media_id bigint auto_increment primary key,
  	type int not null,
  	name nvarchar(100) not null,
  	content varbinary(max) not null,
  	create_date_time datetime
);

#小组
create table wp_group(
  	group_id bigint auto_increment primary key,
  	name nvarchar(100) not null,
  	description nvarchar(4000) not null,
  	address_id bigint,
  	create_user_id bigint,
  	create_date_time datetime
);

#小组成员
create table wp_group_member(
  group_member_id bigint auto_increment primary key,
  group_id bigint,
  user_id bigint,
  create_date_time
);

#事件/活动
create table wp_event(
  event_id bigint auto_increment primary key
  ,create_user_id bigint not null
  ,contact_user_id bigint not null
  ,group_id bigint not null
  ,address_id bigint
  ,title nvarchar(100)
  ,description nvarchar(4000)
  ,start_datetime datetime
  ,stop_datetime datetime
  ,contact_mobile
  ,contact_email
  ,event_status #draft, published, enrolling, waiting, inprogress, finished, canceled, closed.
  ,create_datetime
);

#关注事件的人
create table wp_event_watch(
  event_watch_id bigint auto_increment not null
  ,event_id bigint not null
  ,user_id bigint not null
  ,create_datetime datetime
);

#正式参与该事件的人
create table wp_event_member(
  event_member_id bigint auto_increment primary key
  ,event_id bigint not null
  ,user_id bigint not null
  ,create_datetime
);

#对该事件的讨论
create table wp_event_comment(
  event_comment_id bigint auto_increment primary key,
  event_id bigint not null,
  parent_event_comment_id bigint,
  create_user_id bigint not null,
  create_datetime datetime
);

#改活动的评价topic
create table wp_event_rate_topic(
  event_rate_topic_id bigint auto_increment primary key,
  event_id bigint not null,
  title nvarchar(100),
  create_datetime datetime
);

#活动的评价的分数
create wp_event_rate(
  event_rate_id bigint auto_increment primary key,
  event_rate_topic_id bigint not null,
  create_user_id bigint not null,
  score int not null,
  comment nvarchar(400),
  create_datetime datetime
);

#活动的标签
create table wp_event_tag(
  event_tag_id bigint auto_increment primary key,
  event_id bigint not null,
  tag_title nvarchar(10),
  tag_count int not null,
  create_datetime datetime,
  update_datetime datetime
);

#邮件列表
create table wp_site_mail(
  site_mail_id bigint auto_increment primary key,
  subject nvarchar(100) not null,
  body nvarchar(40000 not null,
  create_datetime datetime
);

#邮件的收件人信息
create table wp_site_mail_recipient(
  site_mail_recipient_id bigint auto_increment primary key,
  site_mail_id bigint not null,
  recipient_user_id bigint not null,
  recipient_user_name nvarchar(100),
  recipient_email nvarchar(100) not null,
  recipient_type nvarchar(3) not null, #收件人类型,可选值为"to","cc"和"bcc"
);
  

