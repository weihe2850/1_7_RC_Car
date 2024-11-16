# 帧头，包含时间戳信息
std_msgs/Header header

# 模块类型
uint8 module_type

# error_code
uint32 error_code

# 模块信息
string chassis_data

# VCU_Torque_Request (0x165)
uint8 TMTorqRqstV       # 电机扭矩请求有效性
float64 TMTorqRqst      # 电机扭矩请求
# uint8 VCUCtrlRqst1RollCnt# 循环计数
# uint8 VCUCtrlRqst1Cksm  # 校验和

# VCU_General_Status_1 (04C5)
uint8 HandBrkSts        # 手刹开关状态
uint8 VecStatRdy        # 整车运行准备就绪
uint8 KyPstn            # 钥匙状态

# VCU_General_Status_2 (0x36A)
uint8 VecSOC            # SOC值
uint8 VehSpdAvgDrvnV    # 车速有效性
float64 VehSpdAvgDrvn   # 车速
uint8 VecTMActSpdV      # 电机当前转速有效性
uint16 VecTMActSpd     # 电机当前转速
# uint8 VCUGenStRollCn    # 循环计数
uint8 VCUVehDrvMod      # VCU驱动模式
# uint8 VCUGenStCksm      # 校验和

# VCU_General_Status_3 0x4C7
float64 LowBatVol       # 低压蓄电池电压

# BMS_General_Status_2 (0x297)
uint8 BatSOC    # 电池电量

# Exterior_Lighting_HS (0x140)
uint8 HhBmIO        # 远光灯指示
uint8 WindscenWipSt # 雨刮状态
uint8 LwBmIO        # 近光灯指示
uint8 HzrdLgtSwAtv  # 危险警报开关状态
uint8 HzrdLtIO      # 危险警报灯指示
uint8 RtTrnLmpAtv   # 右转向灯指示
uint8 LftTrnLmpAtv  # 左转向灯指示
uint8 WipSwStat     # 雨刮控制开关状态
uint8 StpLpSt       # 行车制动灯状态

# Bool Is Turn Light Blinking Status
bool is_left_blinking
bool is_right_blinking

# Airbag_Impact_Data (0x0E1)
uint8 DrSbltAtc     # 驾驶员安全带状态
uint8 DrSbltAtcV    # 安全带状态有效性

# LS_Device_Information (0x12A)
uint8 TDAjrSwAtv        # 尾门门碰开关状态
uint8 PsDoorOpenSwAct   # 右前门锁开关状态
uint8 PDAjrSwAtv        # 右前门门碰开关状态
uint8 DrDoorOpenSwAct   # 驾驶员侧门锁开关状态
uint8 DDAjrSwAct        # 驾驶员侧门碰开关状态
float64 PsWdwOpenDgr    # 副驾驶车窗开度
float64 DrWdwOpenDgr    # 驾驶员车窗开度
uint8 BCMRunMod         # BCM运行模式
uint8 BCMRunModV        # BCM运行模式有效性

# Electric_Park_Brake_Status_1 (0x17E)
uint8 EPBSysWrnIndReq_1     # EPB系统报警显示要求
uint8 EPBSysWrnIndReqV_1    # EPB系统报警显示要求有效性
uint8 EPBSysBrkLtsReq_1     # PB制动灯点亮要求
uint8 EPBSysStatIndReq_1    # EPB系统状态指示灯需求
# uint8 EPBAlvRlCnt_1         # 电子驻车循环计数
uint8 ElecPrkBrkSwStatV_1   # 驻车按键状态有效性
uint8 ElecPrkBrkStat_1      # EPB系统工作状态
uint8 ElecPrkBrkSwStat_1    # 驻车按键状态
# uint8 EPBStaCksm_1          # 校验和


# ADAS_General_Status_11 (0x329)
uint8 ADASWndSnWpCtrl       # ADAS雨刮控制
uint8 ADASHzdLtCtrl         # ADAS双闪控制
uint8 ADASSdTrnLmpRHCtrl    # ADAS右转向控制
uint8 ADASSdTrnLmpLHCtrl    # ADAS左转向控制
uint8 ADASLowBmCtrl         # ADAS近光灯控制
uint8 ADASHighBmCtrl        # ADAS远光灯控制
uint8 ADASLkCtrl            # ADAS锁控功能
uint8 CarWindCtrl           # ADAS车窗控制
uint8 ADASRemtPrkModRqst    # ADAS电源模式请求
uint8 BCMADASCtrlRqst       # ADAS控制请求
uint8 BCMADASCtrlRqstV      # ADAS控制请求有效性

# MCU_General_Status_1 (0x16C)
float64 TMActTorq   # 电机当前扭矩
int32 TMActSpd      # 电机当前转速

# # VCU_General_Status_2 (0x36A)
# uint8 VehSpdAvgDrvnV    # 车速有效性
# float64 VehSpdAvgDrvn   # 车速

# PPEI_Chassis_General_Status_1 (0x1E9)
uint8 VSELatAccV    # 横向加速度有效性
float64 VSELatAcc   # 车辆横向加速度 

# Vehicle_Stability_Information (0x128)
uint8 VSELongAccV   # 纵向加速度有效性
float64 VSELongAcc  # 车辆纵向加速度

# Vehicle_Odometer (0x120)
float64 VehOdo  # 车辆行驶里程
uint8 VehOdoV   # 车辆里程有效性

# VCU_Vehicle_Command_State (0x155)
uint8 BrakPedalPos  # 制动踏板位置
uint8 AccActPos     # 加速踏板位置
uint8 VecActGearStsV    # 整车当前档位状态有效性
uint8 VecActGearSts     # 整车当前档位状态

# PPEI_Steering_Wheel_Angle (0x1E5)
uint8 StrWhAngV     # 方向盘角度有效性
float64 StrWhAng    # 方向盘角度
uint8 EPSProId      # EPS产品标识符
uint8 PwrStrIo      # EPS故障指示
# uint8 StWhlAngAliveRollCnt  # 循环计数
# uint8 StrWhAngExPrtVal      # 校验和

# PPEI_Steering_Wheel_Angle_Information (0x1E6)
uint8 SterModV          # 转向模式有效性
uint8 SterMod           # 转向模式
float64 EPS_LKARespTorq # EPS LKA的响应扭矩
uint8 SterFltMod        # 转向故障码(预留)
uint8 DrStrTorqV        # 驾驶员转向扭矩有效性
float64 DrStrTorqVal    # 驾驶员转向扭矩
# uint8 StWhlAngInfmtnRollCnt # 循环计数
# uint8 StWhlAngInfmtnCksm    # 校验和

# Steering_Sensor_1 (0x14A)
uint16 SteerWheelRotSpd     # 方向盘角速度
float64 SteerWheelAngle     # 方向盘转角

# Electic_Park_Brake_Status (0x230)
uint8 ElecPrkBrkStat    # EBP系统工作状态

# Electric_Wheel_Grnd_Velocity (0x348)
uint8 WhlGrndVlctyLftDrvnV  # 左驱动轮对地速度有效性
float64 WhlGrndVlctyLftDrvn # 左驱动轮对地速度
uint8 WhlGrndVlctyRtDrvnV   # 右驱动轮对地速度有效性
float64 WhlGrndVlctyRtDrvn  # 右驱动轮对地速度

# NonDriven_Wheel_Grnd_Velocity (0x34A)
uint8 WhlGrndVlctyLftNnDrvnV    # 左从动轮对地速度有效性
float64 WhlGrndVlctyLftNnDrvn   # 左从动轮对地速度
uint8 WhlGrndVlctyRtNnDrvnV     # 右从动轮对地速度有效性
float64 WhlGrndVlctyRtNnDrvn    # 右从动轮对地速度

# PPEI_Driven_Whl_Rotational_Stat (0x0C1)
uint8 LftDrvnWhlDirec       # 左驱动轮方向
uint8 WhlGrndPlsLftDrvnV    # 左驱动轮对地脉冲有效性
uint16 WhlGrndPlsLftDrvn    # 左驱动轮对地脉冲
uint8 RtDrvnWhlDirec        # 右驱动轮方向
uint8 WhlGrndPlsRtDrvnV     # 右驱动轮对地脉冲有效性
uint16 WhlGrndPlsRtDrvn     # 右驱动轮对地脉冲

# PPEI_NonDriven_Whl_Rotational_Stat (0x0C5)
uint8 LftNnDrvnWhlDirec     # 左从动轮方向
uint8 WhlGrndPlsLftNnDrvnV  # 左从动轮对地脉冲有效性
uint16 WhlGrndPlsLftNnDrvn  # 左从动轮对地脉冲
uint8 RtNnDrvnWhlDirec      # 右从动轮方向
uint8 WhlGrndPlsRtNnDrvnV   # 右从动轮对地脉冲有效性
uint16 WhlGrndPlsRtNnDrvn   # 右从动轮对地脉冲

# EBS_General_Status_1 (0x132)
uint8 BBWSts            # 线控制动功能状态
uint8 EBSDrvMod         # EBS运行模式
uint8 IDURqst           # IDU线控制动请求状态
uint8 EBSMCBrPressure   # EBS主缸制动压力
uint8 BrakPedalDisp     # 制动踏板位移量
# uint8 EBSGenSts1RollCnt # 循环计数
# uint8 EBSGenSts1Cksm    # 校验和

# ADAS_General_Status_1 (0x1D1)
uint8 ADAS_StrAngleRqstV    # ADAS期望转向角度请求有效值
uint16 ADASBrakRqstPres     # ADAS制动请求压力
uint8 EPB_ADASPrkngRqst     # EPB ADAS驻车请求
uint8 ADASStrTorqRqst       # ADAS转向扭矩请求
uint16 ADASStrTorqTgt       # ADAS转向扭矩目标值
uint16 ADAS_StrAngle        # ADAS期望转向角度

# ADAS_General_Status_2 (0x1D2)
uint8 VCUTTgtAclrtnRqst         # VCU目标加速度请求
float64 VCUTTgtAclrtnRqstVal    # VCU目标加速度请求值
uint8 GearRqst                  # 档位请求
uint8 TgtGear                   # 档位
uint8 VCUTTgtSpRqst             # VCU目标速度请求
float64 VCUTTgtSpRqstVal        # VCU目标速度请求值

# URC_Genertal_Status_1 (0x211)
uint8 SensSt_1st        # 1号探头状态
uint16 DisFrm1stFrtSens # 1号探头距离
uint8 SensSt_2nd
uint16 DisFrm2ndFrtSens
uint8 SensSt_3rd
uint16 DisFrm3rdFrtSens
uint8 SensSt_4th
uint16 DisFrm4thFrtSens

# URC_Genertal_Status_2 (0x212)
uint8 SensSt_5th
uint16 DisFrm5thFrtSens
uint8 SensSt_6th
uint16 DisFrm6thFrtSens
uint8 SensSt_7th
uint16 DisFrm7thFrtSens
uint8 SensSt_8th
uint16 DisFrm8thFrtSens

# URC_Genertal_Status_3 (0x213)
uint8 SensSt_9th
uint16 DisFrm9thFrtSens
uint8 SensSt_10th
uint16 DisFrm10thFrtSens
uint8 SensSt_11th
uint16 DisFrm11thFrtSens
uint8 SensSt_12th
uint16 DisFrm12thFrtSens

