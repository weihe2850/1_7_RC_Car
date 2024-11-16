# 帧头，包含时间戳信息
std_msgs/Header header

# 模块类型
uint8 module_type

# error_code
uint32 error_code

# 模块信息
string ctrl_command

# IDU_General_Status_1 (0x131)->[ACAN]<-{循环计数+校验}
uint8 VclDrvModRqstV    # 驱动模式请求有效性：默认0有效(false有效)
uint8 VclDrvModRqst     # 驱动模式请求
uint8 PakBrkRqstV       # 驻车请求有效性：默认0有效(false有效)
uint8 PakBrkRqst        # IDU驻车请求
uint8 VclAclRqstV       # 加速度请求有效性：默认0有效(false有效)
uint8 BrkPressureTgtV   # 制动压力目标值有效性：默认0有效(false有效)
uint8 VclVelRqstV       # 速度请求有效性：默认0有效(false有效)
float64 VclAclRqst      # 加速度请求
float64 BrkPressureTgt  # 制动压力目标值
float64 VclVelRqst      # 速度请求
uint8 IDUFltIndOn       # IDU故障指示:默认False(不指示)
uint8 PowOnRqst         # 上电请求：默认False(不请求有效性)
uint8 VclShiftRqst      # 档位请求

# IDU_General_Status_2 (0x121)->[CCAN]<-{循环计数+校验}
uint8 StrAglRqstV       # 期望转向角度有效性
float64 StrAglRqst      # 期望转向角度
uint8 TgtStrAglVlcV     # 期望转向角速度有效性(预留)
float64 TgtStrAglVlc    # 期望转向角速度(预留)
uint8 EPSCtrlModRqstV   # EPS控制模式请求有效性
uint8 EPSCtrlModRqst    # EPS控制模式请求

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

# VT_Requestment_Messge_2 (0x316)->[BCAN] {??循环发送}
uint8 RemtPowOnRqst     # 远程上电请求
uint8 RemtPowOnRqstV    # 远程上电请求有效性：默认0有效(false有效)
uint8 RemtPowDwnRqst    # 远程下电请求
uint8 RemtPowDwnRqstV   # 远程下电请求有效性：默认0有效(false有效)
# 车辆泊车启动请求/关闭
bool CANB_ParkingStartRequest
bool CANB_ParkingCloseRequest

# 车辆移动控制
    # ADAS_General_Status_1 (0x1D1)
uint8 ADAS_StrAngleRqstV    # ADAS期望转向角度请求有效值
float64 ADASBrakRqstPres     # ADAS制动请求压力      float->uint
uint8 EPB_ADASPrkngRqst     # EPB ADAS驻车请求
uint8 ADASStrTorqRqst       # ADAS转向扭矩请求
float64 ADASStrTorqTgt       # ADAS转向扭矩目标值    float->uint
float64 ADAS_StrAngle        # ADAS期望转向角度      float->uint
    # ADAS_General_Status_2 (0x1D2)
uint8 VCUTTgtAclrtnRqst         # VCU目标加速度请求
float64 VCUTTgtAclrtnRqstVal    # VCU目标加速度请求值
uint8 GearRqst                  # 档位请求
uint8 TgtGear                   # 档位
uint8 VCUTTgtSpRqst             # VCU目标速度请求
float64 VCUTTgtSpRqstVal        # VCU目标速度请求值

# 车辆外设控制
    # ADAS_General_Status_11 (0x329)
uint8 ADASWndSnWpCtrl       # ADAS雨刮控制
uint8 ADASHzdLtCtrl         # ADAS双闪控制
uint8 ADASSdTrnLmpRHCtrl    # ADAS右转向控制
uint8 ADASSdTrnLmpLHCtrl    # ADAS左转向控制
uint8 ADASLowBmCtrl         # ADAS近光灯控制
uint8 ADASHighBmCtrl        # ADAS远光灯控制
uint8 ADASLkCtrl            # ADAS锁控功能
# uint8 CarWindCtrl           # ADAS车窗控制

# 车辆ADAS请求
    # ADAS_General_Status_11 (0x329)
uint8 ADASRemtPrkModRqst    # ADAS电源模式请求
uint8 BCMADASCtrlRqst       # ADAS控制请求
uint8 BCMADASCtrlRqstV      # ADAS控制请求有效性