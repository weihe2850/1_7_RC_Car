# 帧头，包含时间戳信息
std_msgs/Header header
# IDU_General_Status_4 (0x312)->[ACAN]<-{循环计数+校验}
uint8 LdskCtrl          # 扬声器控制
uint8 WndSnWpCtrl       # 雨刮控制
uint8 StpLpCtrl         # 刹车灯控制
uint8 HzdLtCtrl         # 双闪灯控制
uint8 ClerLmpCtrl       # 示廓灯控制
uint8 FogLmpCtrl        # 后雾灯控制
uint8 SdTrnLmpRHCtrl    # 右转向灯控制
uint8 SdTrnLmpLHCtrl    # 左转向灯控制
uint8 LowBmCtrl         # 近光灯控制
uint8 HighBmCtrl        # 远光灯控制
uint8 LkCtrl            # 锁控功能
uint8 CarWindCtrl       # 车窗功能控制(预留)
uint8 BCMCtrlModRqstV   # BCM控制模式请求有效性
uint8 BCMCtrlModRqst    # BCM控制模式请求

