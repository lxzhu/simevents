<?php
#注册活动
class EventRegisterRequest{}
class EventRegisterResponse{}

#修改活动信息
class EventUpdateRequest{}
class EventUpdateResponse{}

#关注活动
class EventWatchRequest{}
class EventWatchResponse{}

#不在关注活动
class EventUnwatchRequest{}
class EventUnwatchResponse{}

#参加活动
class EventAttendRequest{}
class EventAttendResponse{}

#退出活动
class EventQuitRequest{}
class EventQuitResponse{}

#搜索活动
class EventSearchRequest{}
class EventSearchResponse{}

#发布活动
class EventPublishRequest{}
class EventPublishResponse{}

#开始活动
class EventStartRequest{}
class EventStartResponse{}

#结束活动
class EventFinishRequest{}
class EventFinishResponse{}
class EventFinish{}

#取消活动
class EventCancelRequest{}
class EventCancelResponse{}


#关闭活动,活动关闭后,不能在接受评论
class EventCloseRequest{}
class EventCloseResponse{}

#发表评论
class EventAddCommentRequest{}
class EventAddCommentResponse{}

#搜索评论
class EventSearchCommentRequest{}
class EventSearchCommentResponse{}

#设置评价主题
class EventAddRateTopicRequest{}
class EventAddRateTopicResponse{}

#获取评价主题
class EventSearchRateTopicRequest{}
class EventSearchRateTopicResponse{}

#设置评价
class EventSetRateRequest{}
class EventSetRateResponse{}

#设置标签
class EventSetTagRequest{}
class EventSetTagResponse{}

#获取标签
class EventSearchTagRequest{}
class EventSearchTagResponse{}
?>
