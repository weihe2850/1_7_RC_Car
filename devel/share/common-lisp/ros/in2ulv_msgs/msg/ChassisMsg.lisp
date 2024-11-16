; Auto-generated. Do not edit!


(cl:in-package in2ulv_msgs-msg)


;//! \htmlinclude ChassisMsg.msg.html

(cl:defclass <ChassisMsg> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (module_type
    :reader module_type
    :initarg :module_type
    :type cl:fixnum
    :initform 0)
   (error_code
    :reader error_code
    :initarg :error_code
    :type cl:integer
    :initform 0)
   (chassis_data
    :reader chassis_data
    :initarg :chassis_data
    :type cl:string
    :initform "")
   (TMTorqRqstV
    :reader TMTorqRqstV
    :initarg :TMTorqRqstV
    :type cl:fixnum
    :initform 0)
   (TMTorqRqst
    :reader TMTorqRqst
    :initarg :TMTorqRqst
    :type cl:float
    :initform 0.0)
   (HandBrkSts
    :reader HandBrkSts
    :initarg :HandBrkSts
    :type cl:fixnum
    :initform 0)
   (VecStatRdy
    :reader VecStatRdy
    :initarg :VecStatRdy
    :type cl:fixnum
    :initform 0)
   (KyPstn
    :reader KyPstn
    :initarg :KyPstn
    :type cl:fixnum
    :initform 0)
   (VecSOC
    :reader VecSOC
    :initarg :VecSOC
    :type cl:fixnum
    :initform 0)
   (VehSpdAvgDrvnV
    :reader VehSpdAvgDrvnV
    :initarg :VehSpdAvgDrvnV
    :type cl:fixnum
    :initform 0)
   (VehSpdAvgDrvn
    :reader VehSpdAvgDrvn
    :initarg :VehSpdAvgDrvn
    :type cl:float
    :initform 0.0)
   (VecTMActSpdV
    :reader VecTMActSpdV
    :initarg :VecTMActSpdV
    :type cl:fixnum
    :initform 0)
   (VecTMActSpd
    :reader VecTMActSpd
    :initarg :VecTMActSpd
    :type cl:fixnum
    :initform 0)
   (VCUVehDrvMod
    :reader VCUVehDrvMod
    :initarg :VCUVehDrvMod
    :type cl:fixnum
    :initform 0)
   (LowBatVol
    :reader LowBatVol
    :initarg :LowBatVol
    :type cl:float
    :initform 0.0)
   (BatSOC
    :reader BatSOC
    :initarg :BatSOC
    :type cl:fixnum
    :initform 0)
   (HhBmIO
    :reader HhBmIO
    :initarg :HhBmIO
    :type cl:fixnum
    :initform 0)
   (WindscenWipSt
    :reader WindscenWipSt
    :initarg :WindscenWipSt
    :type cl:fixnum
    :initform 0)
   (LwBmIO
    :reader LwBmIO
    :initarg :LwBmIO
    :type cl:fixnum
    :initform 0)
   (HzrdLgtSwAtv
    :reader HzrdLgtSwAtv
    :initarg :HzrdLgtSwAtv
    :type cl:fixnum
    :initform 0)
   (HzrdLtIO
    :reader HzrdLtIO
    :initarg :HzrdLtIO
    :type cl:fixnum
    :initform 0)
   (RtTrnLmpAtv
    :reader RtTrnLmpAtv
    :initarg :RtTrnLmpAtv
    :type cl:fixnum
    :initform 0)
   (LftTrnLmpAtv
    :reader LftTrnLmpAtv
    :initarg :LftTrnLmpAtv
    :type cl:fixnum
    :initform 0)
   (WipSwStat
    :reader WipSwStat
    :initarg :WipSwStat
    :type cl:fixnum
    :initform 0)
   (StpLpSt
    :reader StpLpSt
    :initarg :StpLpSt
    :type cl:fixnum
    :initform 0)
   (is_left_blinking
    :reader is_left_blinking
    :initarg :is_left_blinking
    :type cl:boolean
    :initform cl:nil)
   (is_right_blinking
    :reader is_right_blinking
    :initarg :is_right_blinking
    :type cl:boolean
    :initform cl:nil)
   (DrSbltAtc
    :reader DrSbltAtc
    :initarg :DrSbltAtc
    :type cl:fixnum
    :initform 0)
   (DrSbltAtcV
    :reader DrSbltAtcV
    :initarg :DrSbltAtcV
    :type cl:fixnum
    :initform 0)
   (TDAjrSwAtv
    :reader TDAjrSwAtv
    :initarg :TDAjrSwAtv
    :type cl:fixnum
    :initform 0)
   (PsDoorOpenSwAct
    :reader PsDoorOpenSwAct
    :initarg :PsDoorOpenSwAct
    :type cl:fixnum
    :initform 0)
   (PDAjrSwAtv
    :reader PDAjrSwAtv
    :initarg :PDAjrSwAtv
    :type cl:fixnum
    :initform 0)
   (DrDoorOpenSwAct
    :reader DrDoorOpenSwAct
    :initarg :DrDoorOpenSwAct
    :type cl:fixnum
    :initform 0)
   (DDAjrSwAct
    :reader DDAjrSwAct
    :initarg :DDAjrSwAct
    :type cl:fixnum
    :initform 0)
   (PsWdwOpenDgr
    :reader PsWdwOpenDgr
    :initarg :PsWdwOpenDgr
    :type cl:float
    :initform 0.0)
   (DrWdwOpenDgr
    :reader DrWdwOpenDgr
    :initarg :DrWdwOpenDgr
    :type cl:float
    :initform 0.0)
   (BCMRunMod
    :reader BCMRunMod
    :initarg :BCMRunMod
    :type cl:fixnum
    :initform 0)
   (BCMRunModV
    :reader BCMRunModV
    :initarg :BCMRunModV
    :type cl:fixnum
    :initform 0)
   (EPBSysWrnIndReq_1
    :reader EPBSysWrnIndReq_1
    :initarg :EPBSysWrnIndReq_1
    :type cl:fixnum
    :initform 0)
   (EPBSysWrnIndReqV_1
    :reader EPBSysWrnIndReqV_1
    :initarg :EPBSysWrnIndReqV_1
    :type cl:fixnum
    :initform 0)
   (EPBSysBrkLtsReq_1
    :reader EPBSysBrkLtsReq_1
    :initarg :EPBSysBrkLtsReq_1
    :type cl:fixnum
    :initform 0)
   (EPBSysStatIndReq_1
    :reader EPBSysStatIndReq_1
    :initarg :EPBSysStatIndReq_1
    :type cl:fixnum
    :initform 0)
   (ElecPrkBrkSwStatV_1
    :reader ElecPrkBrkSwStatV_1
    :initarg :ElecPrkBrkSwStatV_1
    :type cl:fixnum
    :initform 0)
   (ElecPrkBrkStat_1
    :reader ElecPrkBrkStat_1
    :initarg :ElecPrkBrkStat_1
    :type cl:fixnum
    :initform 0)
   (ElecPrkBrkSwStat_1
    :reader ElecPrkBrkSwStat_1
    :initarg :ElecPrkBrkSwStat_1
    :type cl:fixnum
    :initform 0)
   (ADASWndSnWpCtrl
    :reader ADASWndSnWpCtrl
    :initarg :ADASWndSnWpCtrl
    :type cl:fixnum
    :initform 0)
   (ADASHzdLtCtrl
    :reader ADASHzdLtCtrl
    :initarg :ADASHzdLtCtrl
    :type cl:fixnum
    :initform 0)
   (ADASSdTrnLmpRHCtrl
    :reader ADASSdTrnLmpRHCtrl
    :initarg :ADASSdTrnLmpRHCtrl
    :type cl:fixnum
    :initform 0)
   (ADASSdTrnLmpLHCtrl
    :reader ADASSdTrnLmpLHCtrl
    :initarg :ADASSdTrnLmpLHCtrl
    :type cl:fixnum
    :initform 0)
   (ADASLowBmCtrl
    :reader ADASLowBmCtrl
    :initarg :ADASLowBmCtrl
    :type cl:fixnum
    :initform 0)
   (ADASHighBmCtrl
    :reader ADASHighBmCtrl
    :initarg :ADASHighBmCtrl
    :type cl:fixnum
    :initform 0)
   (ADASLkCtrl
    :reader ADASLkCtrl
    :initarg :ADASLkCtrl
    :type cl:fixnum
    :initform 0)
   (CarWindCtrl
    :reader CarWindCtrl
    :initarg :CarWindCtrl
    :type cl:fixnum
    :initform 0)
   (ADASRemtPrkModRqst
    :reader ADASRemtPrkModRqst
    :initarg :ADASRemtPrkModRqst
    :type cl:fixnum
    :initform 0)
   (BCMADASCtrlRqst
    :reader BCMADASCtrlRqst
    :initarg :BCMADASCtrlRqst
    :type cl:fixnum
    :initform 0)
   (BCMADASCtrlRqstV
    :reader BCMADASCtrlRqstV
    :initarg :BCMADASCtrlRqstV
    :type cl:fixnum
    :initform 0)
   (TMActTorq
    :reader TMActTorq
    :initarg :TMActTorq
    :type cl:float
    :initform 0.0)
   (TMActSpd
    :reader TMActSpd
    :initarg :TMActSpd
    :type cl:integer
    :initform 0)
   (VSELatAccV
    :reader VSELatAccV
    :initarg :VSELatAccV
    :type cl:fixnum
    :initform 0)
   (VSELatAcc
    :reader VSELatAcc
    :initarg :VSELatAcc
    :type cl:float
    :initform 0.0)
   (VSELongAccV
    :reader VSELongAccV
    :initarg :VSELongAccV
    :type cl:fixnum
    :initform 0)
   (VSELongAcc
    :reader VSELongAcc
    :initarg :VSELongAcc
    :type cl:float
    :initform 0.0)
   (VehOdo
    :reader VehOdo
    :initarg :VehOdo
    :type cl:float
    :initform 0.0)
   (VehOdoV
    :reader VehOdoV
    :initarg :VehOdoV
    :type cl:fixnum
    :initform 0)
   (BrakPedalPos
    :reader BrakPedalPos
    :initarg :BrakPedalPos
    :type cl:fixnum
    :initform 0)
   (AccActPos
    :reader AccActPos
    :initarg :AccActPos
    :type cl:fixnum
    :initform 0)
   (VecActGearStsV
    :reader VecActGearStsV
    :initarg :VecActGearStsV
    :type cl:fixnum
    :initform 0)
   (VecActGearSts
    :reader VecActGearSts
    :initarg :VecActGearSts
    :type cl:fixnum
    :initform 0)
   (StrWhAngV
    :reader StrWhAngV
    :initarg :StrWhAngV
    :type cl:fixnum
    :initform 0)
   (StrWhAng
    :reader StrWhAng
    :initarg :StrWhAng
    :type cl:float
    :initform 0.0)
   (EPSProId
    :reader EPSProId
    :initarg :EPSProId
    :type cl:fixnum
    :initform 0)
   (PwrStrIo
    :reader PwrStrIo
    :initarg :PwrStrIo
    :type cl:fixnum
    :initform 0)
   (SterModV
    :reader SterModV
    :initarg :SterModV
    :type cl:fixnum
    :initform 0)
   (SterMod
    :reader SterMod
    :initarg :SterMod
    :type cl:fixnum
    :initform 0)
   (EPS_LKARespTorq
    :reader EPS_LKARespTorq
    :initarg :EPS_LKARespTorq
    :type cl:float
    :initform 0.0)
   (SterFltMod
    :reader SterFltMod
    :initarg :SterFltMod
    :type cl:fixnum
    :initform 0)
   (DrStrTorqV
    :reader DrStrTorqV
    :initarg :DrStrTorqV
    :type cl:fixnum
    :initform 0)
   (DrStrTorqVal
    :reader DrStrTorqVal
    :initarg :DrStrTorqVal
    :type cl:float
    :initform 0.0)
   (SteerWheelRotSpd
    :reader SteerWheelRotSpd
    :initarg :SteerWheelRotSpd
    :type cl:fixnum
    :initform 0)
   (SteerWheelAngle
    :reader SteerWheelAngle
    :initarg :SteerWheelAngle
    :type cl:float
    :initform 0.0)
   (ElecPrkBrkStat
    :reader ElecPrkBrkStat
    :initarg :ElecPrkBrkStat
    :type cl:fixnum
    :initform 0)
   (WhlGrndVlctyLftDrvnV
    :reader WhlGrndVlctyLftDrvnV
    :initarg :WhlGrndVlctyLftDrvnV
    :type cl:fixnum
    :initform 0)
   (WhlGrndVlctyLftDrvn
    :reader WhlGrndVlctyLftDrvn
    :initarg :WhlGrndVlctyLftDrvn
    :type cl:float
    :initform 0.0)
   (WhlGrndVlctyRtDrvnV
    :reader WhlGrndVlctyRtDrvnV
    :initarg :WhlGrndVlctyRtDrvnV
    :type cl:fixnum
    :initform 0)
   (WhlGrndVlctyRtDrvn
    :reader WhlGrndVlctyRtDrvn
    :initarg :WhlGrndVlctyRtDrvn
    :type cl:float
    :initform 0.0)
   (WhlGrndVlctyLftNnDrvnV
    :reader WhlGrndVlctyLftNnDrvnV
    :initarg :WhlGrndVlctyLftNnDrvnV
    :type cl:fixnum
    :initform 0)
   (WhlGrndVlctyLftNnDrvn
    :reader WhlGrndVlctyLftNnDrvn
    :initarg :WhlGrndVlctyLftNnDrvn
    :type cl:float
    :initform 0.0)
   (WhlGrndVlctyRtNnDrvnV
    :reader WhlGrndVlctyRtNnDrvnV
    :initarg :WhlGrndVlctyRtNnDrvnV
    :type cl:fixnum
    :initform 0)
   (WhlGrndVlctyRtNnDrvn
    :reader WhlGrndVlctyRtNnDrvn
    :initarg :WhlGrndVlctyRtNnDrvn
    :type cl:float
    :initform 0.0)
   (LftDrvnWhlDirec
    :reader LftDrvnWhlDirec
    :initarg :LftDrvnWhlDirec
    :type cl:fixnum
    :initform 0)
   (WhlGrndPlsLftDrvnV
    :reader WhlGrndPlsLftDrvnV
    :initarg :WhlGrndPlsLftDrvnV
    :type cl:fixnum
    :initform 0)
   (WhlGrndPlsLftDrvn
    :reader WhlGrndPlsLftDrvn
    :initarg :WhlGrndPlsLftDrvn
    :type cl:fixnum
    :initform 0)
   (RtDrvnWhlDirec
    :reader RtDrvnWhlDirec
    :initarg :RtDrvnWhlDirec
    :type cl:fixnum
    :initform 0)
   (WhlGrndPlsRtDrvnV
    :reader WhlGrndPlsRtDrvnV
    :initarg :WhlGrndPlsRtDrvnV
    :type cl:fixnum
    :initform 0)
   (WhlGrndPlsRtDrvn
    :reader WhlGrndPlsRtDrvn
    :initarg :WhlGrndPlsRtDrvn
    :type cl:fixnum
    :initform 0)
   (LftNnDrvnWhlDirec
    :reader LftNnDrvnWhlDirec
    :initarg :LftNnDrvnWhlDirec
    :type cl:fixnum
    :initform 0)
   (WhlGrndPlsLftNnDrvnV
    :reader WhlGrndPlsLftNnDrvnV
    :initarg :WhlGrndPlsLftNnDrvnV
    :type cl:fixnum
    :initform 0)
   (WhlGrndPlsLftNnDrvn
    :reader WhlGrndPlsLftNnDrvn
    :initarg :WhlGrndPlsLftNnDrvn
    :type cl:fixnum
    :initform 0)
   (RtNnDrvnWhlDirec
    :reader RtNnDrvnWhlDirec
    :initarg :RtNnDrvnWhlDirec
    :type cl:fixnum
    :initform 0)
   (WhlGrndPlsRtNnDrvnV
    :reader WhlGrndPlsRtNnDrvnV
    :initarg :WhlGrndPlsRtNnDrvnV
    :type cl:fixnum
    :initform 0)
   (WhlGrndPlsRtNnDrvn
    :reader WhlGrndPlsRtNnDrvn
    :initarg :WhlGrndPlsRtNnDrvn
    :type cl:fixnum
    :initform 0)
   (BBWSts
    :reader BBWSts
    :initarg :BBWSts
    :type cl:fixnum
    :initform 0)
   (EBSDrvMod
    :reader EBSDrvMod
    :initarg :EBSDrvMod
    :type cl:fixnum
    :initform 0)
   (IDURqst
    :reader IDURqst
    :initarg :IDURqst
    :type cl:fixnum
    :initform 0)
   (EBSMCBrPressure
    :reader EBSMCBrPressure
    :initarg :EBSMCBrPressure
    :type cl:fixnum
    :initform 0)
   (BrakPedalDisp
    :reader BrakPedalDisp
    :initarg :BrakPedalDisp
    :type cl:fixnum
    :initform 0)
   (ADAS_StrAngleRqstV
    :reader ADAS_StrAngleRqstV
    :initarg :ADAS_StrAngleRqstV
    :type cl:fixnum
    :initform 0)
   (ADASBrakRqstPres
    :reader ADASBrakRqstPres
    :initarg :ADASBrakRqstPres
    :type cl:fixnum
    :initform 0)
   (EPB_ADASPrkngRqst
    :reader EPB_ADASPrkngRqst
    :initarg :EPB_ADASPrkngRqst
    :type cl:fixnum
    :initform 0)
   (ADASStrTorqRqst
    :reader ADASStrTorqRqst
    :initarg :ADASStrTorqRqst
    :type cl:fixnum
    :initform 0)
   (ADASStrTorqTgt
    :reader ADASStrTorqTgt
    :initarg :ADASStrTorqTgt
    :type cl:fixnum
    :initform 0)
   (ADAS_StrAngle
    :reader ADAS_StrAngle
    :initarg :ADAS_StrAngle
    :type cl:fixnum
    :initform 0)
   (VCUTTgtAclrtnRqst
    :reader VCUTTgtAclrtnRqst
    :initarg :VCUTTgtAclrtnRqst
    :type cl:fixnum
    :initform 0)
   (VCUTTgtAclrtnRqstVal
    :reader VCUTTgtAclrtnRqstVal
    :initarg :VCUTTgtAclrtnRqstVal
    :type cl:float
    :initform 0.0)
   (GearRqst
    :reader GearRqst
    :initarg :GearRqst
    :type cl:fixnum
    :initform 0)
   (TgtGear
    :reader TgtGear
    :initarg :TgtGear
    :type cl:fixnum
    :initform 0)
   (VCUTTgtSpRqst
    :reader VCUTTgtSpRqst
    :initarg :VCUTTgtSpRqst
    :type cl:fixnum
    :initform 0)
   (VCUTTgtSpRqstVal
    :reader VCUTTgtSpRqstVal
    :initarg :VCUTTgtSpRqstVal
    :type cl:float
    :initform 0.0)
   (SensSt_1st
    :reader SensSt_1st
    :initarg :SensSt_1st
    :type cl:fixnum
    :initform 0)
   (DisFrm1stFrtSens
    :reader DisFrm1stFrtSens
    :initarg :DisFrm1stFrtSens
    :type cl:fixnum
    :initform 0)
   (SensSt_2nd
    :reader SensSt_2nd
    :initarg :SensSt_2nd
    :type cl:fixnum
    :initform 0)
   (DisFrm2ndFrtSens
    :reader DisFrm2ndFrtSens
    :initarg :DisFrm2ndFrtSens
    :type cl:fixnum
    :initform 0)
   (SensSt_3rd
    :reader SensSt_3rd
    :initarg :SensSt_3rd
    :type cl:fixnum
    :initform 0)
   (DisFrm3rdFrtSens
    :reader DisFrm3rdFrtSens
    :initarg :DisFrm3rdFrtSens
    :type cl:fixnum
    :initform 0)
   (SensSt_4th
    :reader SensSt_4th
    :initarg :SensSt_4th
    :type cl:fixnum
    :initform 0)
   (DisFrm4thFrtSens
    :reader DisFrm4thFrtSens
    :initarg :DisFrm4thFrtSens
    :type cl:fixnum
    :initform 0)
   (SensSt_5th
    :reader SensSt_5th
    :initarg :SensSt_5th
    :type cl:fixnum
    :initform 0)
   (DisFrm5thFrtSens
    :reader DisFrm5thFrtSens
    :initarg :DisFrm5thFrtSens
    :type cl:fixnum
    :initform 0)
   (SensSt_6th
    :reader SensSt_6th
    :initarg :SensSt_6th
    :type cl:fixnum
    :initform 0)
   (DisFrm6thFrtSens
    :reader DisFrm6thFrtSens
    :initarg :DisFrm6thFrtSens
    :type cl:fixnum
    :initform 0)
   (SensSt_7th
    :reader SensSt_7th
    :initarg :SensSt_7th
    :type cl:fixnum
    :initform 0)
   (DisFrm7thFrtSens
    :reader DisFrm7thFrtSens
    :initarg :DisFrm7thFrtSens
    :type cl:fixnum
    :initform 0)
   (SensSt_8th
    :reader SensSt_8th
    :initarg :SensSt_8th
    :type cl:fixnum
    :initform 0)
   (DisFrm8thFrtSens
    :reader DisFrm8thFrtSens
    :initarg :DisFrm8thFrtSens
    :type cl:fixnum
    :initform 0)
   (SensSt_9th
    :reader SensSt_9th
    :initarg :SensSt_9th
    :type cl:fixnum
    :initform 0)
   (DisFrm9thFrtSens
    :reader DisFrm9thFrtSens
    :initarg :DisFrm9thFrtSens
    :type cl:fixnum
    :initform 0)
   (SensSt_10th
    :reader SensSt_10th
    :initarg :SensSt_10th
    :type cl:fixnum
    :initform 0)
   (DisFrm10thFrtSens
    :reader DisFrm10thFrtSens
    :initarg :DisFrm10thFrtSens
    :type cl:fixnum
    :initform 0)
   (SensSt_11th
    :reader SensSt_11th
    :initarg :SensSt_11th
    :type cl:fixnum
    :initform 0)
   (DisFrm11thFrtSens
    :reader DisFrm11thFrtSens
    :initarg :DisFrm11thFrtSens
    :type cl:fixnum
    :initform 0)
   (SensSt_12th
    :reader SensSt_12th
    :initarg :SensSt_12th
    :type cl:fixnum
    :initform 0)
   (DisFrm12thFrtSens
    :reader DisFrm12thFrtSens
    :initarg :DisFrm12thFrtSens
    :type cl:fixnum
    :initform 0))
)

(cl:defclass ChassisMsg (<ChassisMsg>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ChassisMsg>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ChassisMsg)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name in2ulv_msgs-msg:<ChassisMsg> is deprecated: use in2ulv_msgs-msg:ChassisMsg instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <ChassisMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader in2ulv_msgs-msg:header-val is deprecated.  Use in2ulv_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'module_type-val :lambda-list '(m))
(cl:defmethod module_type-val ((m <ChassisMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader in2ulv_msgs-msg:module_type-val is deprecated.  Use in2ulv_msgs-msg:module_type instead.")
  (module_type m))

(cl:ensure-generic-function 'error_code-val :lambda-list '(m))
(cl:defmethod error_code-val ((m <ChassisMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader in2ulv_msgs-msg:error_code-val is deprecated.  Use in2ulv_msgs-msg:error_code instead.")
  (error_code m))

(cl:ensure-generic-function 'chassis_data-val :lambda-list '(m))
(cl:defmethod chassis_data-val ((m <ChassisMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader in2ulv_msgs-msg:chassis_data-val is deprecated.  Use in2ulv_msgs-msg:chassis_data instead.")
  (chassis_data m))

(cl:ensure-generic-function 'TMTorqRqstV-val :lambda-list '(m))
(cl:defmethod TMTorqRqstV-val ((m <ChassisMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader in2ulv_msgs-msg:TMTorqRqstV-val is deprecated.  Use in2ulv_msgs-msg:TMTorqRqstV instead.")
  (TMTorqRqstV m))

(cl:ensure-generic-function 'TMTorqRqst-val :lambda-list '(m))
(cl:defmethod TMTorqRqst-val ((m <ChassisMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader in2ulv_msgs-msg:TMTorqRqst-val is deprecated.  Use in2ulv_msgs-msg:TMTorqRqst instead.")
  (TMTorqRqst m))

(cl:ensure-generic-function 'HandBrkSts-val :lambda-list '(m))
(cl:defmethod HandBrkSts-val ((m <ChassisMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader in2ulv_msgs-msg:HandBrkSts-val is deprecated.  Use in2ulv_msgs-msg:HandBrkSts instead.")
  (HandBrkSts m))

(cl:ensure-generic-function 'VecStatRdy-val :lambda-list '(m))
(cl:defmethod VecStatRdy-val ((m <ChassisMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader in2ulv_msgs-msg:VecStatRdy-val is deprecated.  Use in2ulv_msgs-msg:VecStatRdy instead.")
  (VecStatRdy m))

(cl:ensure-generic-function 'KyPstn-val :lambda-list '(m))
(cl:defmethod KyPstn-val ((m <ChassisMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader in2ulv_msgs-msg:KyPstn-val is deprecated.  Use in2ulv_msgs-msg:KyPstn instead.")
  (KyPstn m))

(cl:ensure-generic-function 'VecSOC-val :lambda-list '(m))
(cl:defmethod VecSOC-val ((m <ChassisMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader in2ulv_msgs-msg:VecSOC-val is deprecated.  Use in2ulv_msgs-msg:VecSOC instead.")
  (VecSOC m))

(cl:ensure-generic-function 'VehSpdAvgDrvnV-val :lambda-list '(m))
(cl:defmethod VehSpdAvgDrvnV-val ((m <ChassisMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader in2ulv_msgs-msg:VehSpdAvgDrvnV-val is deprecated.  Use in2ulv_msgs-msg:VehSpdAvgDrvnV instead.")
  (VehSpdAvgDrvnV m))

(cl:ensure-generic-function 'VehSpdAvgDrvn-val :lambda-list '(m))
(cl:defmethod VehSpdAvgDrvn-val ((m <ChassisMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader in2ulv_msgs-msg:VehSpdAvgDrvn-val is deprecated.  Use in2ulv_msgs-msg:VehSpdAvgDrvn instead.")
  (VehSpdAvgDrvn m))

(cl:ensure-generic-function 'VecTMActSpdV-val :lambda-list '(m))
(cl:defmethod VecTMActSpdV-val ((m <ChassisMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader in2ulv_msgs-msg:VecTMActSpdV-val is deprecated.  Use in2ulv_msgs-msg:VecTMActSpdV instead.")
  (VecTMActSpdV m))

(cl:ensure-generic-function 'VecTMActSpd-val :lambda-list '(m))
(cl:defmethod VecTMActSpd-val ((m <ChassisMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader in2ulv_msgs-msg:VecTMActSpd-val is deprecated.  Use in2ulv_msgs-msg:VecTMActSpd instead.")
  (VecTMActSpd m))

(cl:ensure-generic-function 'VCUVehDrvMod-val :lambda-list '(m))
(cl:defmethod VCUVehDrvMod-val ((m <ChassisMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader in2ulv_msgs-msg:VCUVehDrvMod-val is deprecated.  Use in2ulv_msgs-msg:VCUVehDrvMod instead.")
  (VCUVehDrvMod m))

(cl:ensure-generic-function 'LowBatVol-val :lambda-list '(m))
(cl:defmethod LowBatVol-val ((m <ChassisMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader in2ulv_msgs-msg:LowBatVol-val is deprecated.  Use in2ulv_msgs-msg:LowBatVol instead.")
  (LowBatVol m))

(cl:ensure-generic-function 'BatSOC-val :lambda-list '(m))
(cl:defmethod BatSOC-val ((m <ChassisMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader in2ulv_msgs-msg:BatSOC-val is deprecated.  Use in2ulv_msgs-msg:BatSOC instead.")
  (BatSOC m))

(cl:ensure-generic-function 'HhBmIO-val :lambda-list '(m))
(cl:defmethod HhBmIO-val ((m <ChassisMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader in2ulv_msgs-msg:HhBmIO-val is deprecated.  Use in2ulv_msgs-msg:HhBmIO instead.")
  (HhBmIO m))

(cl:ensure-generic-function 'WindscenWipSt-val :lambda-list '(m))
(cl:defmethod WindscenWipSt-val ((m <ChassisMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader in2ulv_msgs-msg:WindscenWipSt-val is deprecated.  Use in2ulv_msgs-msg:WindscenWipSt instead.")
  (WindscenWipSt m))

(cl:ensure-generic-function 'LwBmIO-val :lambda-list '(m))
(cl:defmethod LwBmIO-val ((m <ChassisMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader in2ulv_msgs-msg:LwBmIO-val is deprecated.  Use in2ulv_msgs-msg:LwBmIO instead.")
  (LwBmIO m))

(cl:ensure-generic-function 'HzrdLgtSwAtv-val :lambda-list '(m))
(cl:defmethod HzrdLgtSwAtv-val ((m <ChassisMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader in2ulv_msgs-msg:HzrdLgtSwAtv-val is deprecated.  Use in2ulv_msgs-msg:HzrdLgtSwAtv instead.")
  (HzrdLgtSwAtv m))

(cl:ensure-generic-function 'HzrdLtIO-val :lambda-list '(m))
(cl:defmethod HzrdLtIO-val ((m <ChassisMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader in2ulv_msgs-msg:HzrdLtIO-val is deprecated.  Use in2ulv_msgs-msg:HzrdLtIO instead.")
  (HzrdLtIO m))

(cl:ensure-generic-function 'RtTrnLmpAtv-val :lambda-list '(m))
(cl:defmethod RtTrnLmpAtv-val ((m <ChassisMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader in2ulv_msgs-msg:RtTrnLmpAtv-val is deprecated.  Use in2ulv_msgs-msg:RtTrnLmpAtv instead.")
  (RtTrnLmpAtv m))

(cl:ensure-generic-function 'LftTrnLmpAtv-val :lambda-list '(m))
(cl:defmethod LftTrnLmpAtv-val ((m <ChassisMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader in2ulv_msgs-msg:LftTrnLmpAtv-val is deprecated.  Use in2ulv_msgs-msg:LftTrnLmpAtv instead.")
  (LftTrnLmpAtv m))

(cl:ensure-generic-function 'WipSwStat-val :lambda-list '(m))
(cl:defmethod WipSwStat-val ((m <ChassisMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader in2ulv_msgs-msg:WipSwStat-val is deprecated.  Use in2ulv_msgs-msg:WipSwStat instead.")
  (WipSwStat m))

(cl:ensure-generic-function 'StpLpSt-val :lambda-list '(m))
(cl:defmethod StpLpSt-val ((m <ChassisMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader in2ulv_msgs-msg:StpLpSt-val is deprecated.  Use in2ulv_msgs-msg:StpLpSt instead.")
  (StpLpSt m))

(cl:ensure-generic-function 'is_left_blinking-val :lambda-list '(m))
(cl:defmethod is_left_blinking-val ((m <ChassisMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader in2ulv_msgs-msg:is_left_blinking-val is deprecated.  Use in2ulv_msgs-msg:is_left_blinking instead.")
  (is_left_blinking m))

(cl:ensure-generic-function 'is_right_blinking-val :lambda-list '(m))
(cl:defmethod is_right_blinking-val ((m <ChassisMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader in2ulv_msgs-msg:is_right_blinking-val is deprecated.  Use in2ulv_msgs-msg:is_right_blinking instead.")
  (is_right_blinking m))

(cl:ensure-generic-function 'DrSbltAtc-val :lambda-list '(m))
(cl:defmethod DrSbltAtc-val ((m <ChassisMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader in2ulv_msgs-msg:DrSbltAtc-val is deprecated.  Use in2ulv_msgs-msg:DrSbltAtc instead.")
  (DrSbltAtc m))

(cl:ensure-generic-function 'DrSbltAtcV-val :lambda-list '(m))
(cl:defmethod DrSbltAtcV-val ((m <ChassisMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader in2ulv_msgs-msg:DrSbltAtcV-val is deprecated.  Use in2ulv_msgs-msg:DrSbltAtcV instead.")
  (DrSbltAtcV m))

(cl:ensure-generic-function 'TDAjrSwAtv-val :lambda-list '(m))
(cl:defmethod TDAjrSwAtv-val ((m <ChassisMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader in2ulv_msgs-msg:TDAjrSwAtv-val is deprecated.  Use in2ulv_msgs-msg:TDAjrSwAtv instead.")
  (TDAjrSwAtv m))

(cl:ensure-generic-function 'PsDoorOpenSwAct-val :lambda-list '(m))
(cl:defmethod PsDoorOpenSwAct-val ((m <ChassisMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader in2ulv_msgs-msg:PsDoorOpenSwAct-val is deprecated.  Use in2ulv_msgs-msg:PsDoorOpenSwAct instead.")
  (PsDoorOpenSwAct m))

(cl:ensure-generic-function 'PDAjrSwAtv-val :lambda-list '(m))
(cl:defmethod PDAjrSwAtv-val ((m <ChassisMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader in2ulv_msgs-msg:PDAjrSwAtv-val is deprecated.  Use in2ulv_msgs-msg:PDAjrSwAtv instead.")
  (PDAjrSwAtv m))

(cl:ensure-generic-function 'DrDoorOpenSwAct-val :lambda-list '(m))
(cl:defmethod DrDoorOpenSwAct-val ((m <ChassisMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader in2ulv_msgs-msg:DrDoorOpenSwAct-val is deprecated.  Use in2ulv_msgs-msg:DrDoorOpenSwAct instead.")
  (DrDoorOpenSwAct m))

(cl:ensure-generic-function 'DDAjrSwAct-val :lambda-list '(m))
(cl:defmethod DDAjrSwAct-val ((m <ChassisMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader in2ulv_msgs-msg:DDAjrSwAct-val is deprecated.  Use in2ulv_msgs-msg:DDAjrSwAct instead.")
  (DDAjrSwAct m))

(cl:ensure-generic-function 'PsWdwOpenDgr-val :lambda-list '(m))
(cl:defmethod PsWdwOpenDgr-val ((m <ChassisMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader in2ulv_msgs-msg:PsWdwOpenDgr-val is deprecated.  Use in2ulv_msgs-msg:PsWdwOpenDgr instead.")
  (PsWdwOpenDgr m))

(cl:ensure-generic-function 'DrWdwOpenDgr-val :lambda-list '(m))
(cl:defmethod DrWdwOpenDgr-val ((m <ChassisMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader in2ulv_msgs-msg:DrWdwOpenDgr-val is deprecated.  Use in2ulv_msgs-msg:DrWdwOpenDgr instead.")
  (DrWdwOpenDgr m))

(cl:ensure-generic-function 'BCMRunMod-val :lambda-list '(m))
(cl:defmethod BCMRunMod-val ((m <ChassisMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader in2ulv_msgs-msg:BCMRunMod-val is deprecated.  Use in2ulv_msgs-msg:BCMRunMod instead.")
  (BCMRunMod m))

(cl:ensure-generic-function 'BCMRunModV-val :lambda-list '(m))
(cl:defmethod BCMRunModV-val ((m <ChassisMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader in2ulv_msgs-msg:BCMRunModV-val is deprecated.  Use in2ulv_msgs-msg:BCMRunModV instead.")
  (BCMRunModV m))

(cl:ensure-generic-function 'EPBSysWrnIndReq_1-val :lambda-list '(m))
(cl:defmethod EPBSysWrnIndReq_1-val ((m <ChassisMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader in2ulv_msgs-msg:EPBSysWrnIndReq_1-val is deprecated.  Use in2ulv_msgs-msg:EPBSysWrnIndReq_1 instead.")
  (EPBSysWrnIndReq_1 m))

(cl:ensure-generic-function 'EPBSysWrnIndReqV_1-val :lambda-list '(m))
(cl:defmethod EPBSysWrnIndReqV_1-val ((m <ChassisMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader in2ulv_msgs-msg:EPBSysWrnIndReqV_1-val is deprecated.  Use in2ulv_msgs-msg:EPBSysWrnIndReqV_1 instead.")
  (EPBSysWrnIndReqV_1 m))

(cl:ensure-generic-function 'EPBSysBrkLtsReq_1-val :lambda-list '(m))
(cl:defmethod EPBSysBrkLtsReq_1-val ((m <ChassisMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader in2ulv_msgs-msg:EPBSysBrkLtsReq_1-val is deprecated.  Use in2ulv_msgs-msg:EPBSysBrkLtsReq_1 instead.")
  (EPBSysBrkLtsReq_1 m))

(cl:ensure-generic-function 'EPBSysStatIndReq_1-val :lambda-list '(m))
(cl:defmethod EPBSysStatIndReq_1-val ((m <ChassisMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader in2ulv_msgs-msg:EPBSysStatIndReq_1-val is deprecated.  Use in2ulv_msgs-msg:EPBSysStatIndReq_1 instead.")
  (EPBSysStatIndReq_1 m))

(cl:ensure-generic-function 'ElecPrkBrkSwStatV_1-val :lambda-list '(m))
(cl:defmethod ElecPrkBrkSwStatV_1-val ((m <ChassisMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader in2ulv_msgs-msg:ElecPrkBrkSwStatV_1-val is deprecated.  Use in2ulv_msgs-msg:ElecPrkBrkSwStatV_1 instead.")
  (ElecPrkBrkSwStatV_1 m))

(cl:ensure-generic-function 'ElecPrkBrkStat_1-val :lambda-list '(m))
(cl:defmethod ElecPrkBrkStat_1-val ((m <ChassisMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader in2ulv_msgs-msg:ElecPrkBrkStat_1-val is deprecated.  Use in2ulv_msgs-msg:ElecPrkBrkStat_1 instead.")
  (ElecPrkBrkStat_1 m))

(cl:ensure-generic-function 'ElecPrkBrkSwStat_1-val :lambda-list '(m))
(cl:defmethod ElecPrkBrkSwStat_1-val ((m <ChassisMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader in2ulv_msgs-msg:ElecPrkBrkSwStat_1-val is deprecated.  Use in2ulv_msgs-msg:ElecPrkBrkSwStat_1 instead.")
  (ElecPrkBrkSwStat_1 m))

(cl:ensure-generic-function 'ADASWndSnWpCtrl-val :lambda-list '(m))
(cl:defmethod ADASWndSnWpCtrl-val ((m <ChassisMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader in2ulv_msgs-msg:ADASWndSnWpCtrl-val is deprecated.  Use in2ulv_msgs-msg:ADASWndSnWpCtrl instead.")
  (ADASWndSnWpCtrl m))

(cl:ensure-generic-function 'ADASHzdLtCtrl-val :lambda-list '(m))
(cl:defmethod ADASHzdLtCtrl-val ((m <ChassisMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader in2ulv_msgs-msg:ADASHzdLtCtrl-val is deprecated.  Use in2ulv_msgs-msg:ADASHzdLtCtrl instead.")
  (ADASHzdLtCtrl m))

(cl:ensure-generic-function 'ADASSdTrnLmpRHCtrl-val :lambda-list '(m))
(cl:defmethod ADASSdTrnLmpRHCtrl-val ((m <ChassisMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader in2ulv_msgs-msg:ADASSdTrnLmpRHCtrl-val is deprecated.  Use in2ulv_msgs-msg:ADASSdTrnLmpRHCtrl instead.")
  (ADASSdTrnLmpRHCtrl m))

(cl:ensure-generic-function 'ADASSdTrnLmpLHCtrl-val :lambda-list '(m))
(cl:defmethod ADASSdTrnLmpLHCtrl-val ((m <ChassisMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader in2ulv_msgs-msg:ADASSdTrnLmpLHCtrl-val is deprecated.  Use in2ulv_msgs-msg:ADASSdTrnLmpLHCtrl instead.")
  (ADASSdTrnLmpLHCtrl m))

(cl:ensure-generic-function 'ADASLowBmCtrl-val :lambda-list '(m))
(cl:defmethod ADASLowBmCtrl-val ((m <ChassisMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader in2ulv_msgs-msg:ADASLowBmCtrl-val is deprecated.  Use in2ulv_msgs-msg:ADASLowBmCtrl instead.")
  (ADASLowBmCtrl m))

(cl:ensure-generic-function 'ADASHighBmCtrl-val :lambda-list '(m))
(cl:defmethod ADASHighBmCtrl-val ((m <ChassisMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader in2ulv_msgs-msg:ADASHighBmCtrl-val is deprecated.  Use in2ulv_msgs-msg:ADASHighBmCtrl instead.")
  (ADASHighBmCtrl m))

(cl:ensure-generic-function 'ADASLkCtrl-val :lambda-list '(m))
(cl:defmethod ADASLkCtrl-val ((m <ChassisMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader in2ulv_msgs-msg:ADASLkCtrl-val is deprecated.  Use in2ulv_msgs-msg:ADASLkCtrl instead.")
  (ADASLkCtrl m))

(cl:ensure-generic-function 'CarWindCtrl-val :lambda-list '(m))
(cl:defmethod CarWindCtrl-val ((m <ChassisMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader in2ulv_msgs-msg:CarWindCtrl-val is deprecated.  Use in2ulv_msgs-msg:CarWindCtrl instead.")
  (CarWindCtrl m))

(cl:ensure-generic-function 'ADASRemtPrkModRqst-val :lambda-list '(m))
(cl:defmethod ADASRemtPrkModRqst-val ((m <ChassisMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader in2ulv_msgs-msg:ADASRemtPrkModRqst-val is deprecated.  Use in2ulv_msgs-msg:ADASRemtPrkModRqst instead.")
  (ADASRemtPrkModRqst m))

(cl:ensure-generic-function 'BCMADASCtrlRqst-val :lambda-list '(m))
(cl:defmethod BCMADASCtrlRqst-val ((m <ChassisMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader in2ulv_msgs-msg:BCMADASCtrlRqst-val is deprecated.  Use in2ulv_msgs-msg:BCMADASCtrlRqst instead.")
  (BCMADASCtrlRqst m))

(cl:ensure-generic-function 'BCMADASCtrlRqstV-val :lambda-list '(m))
(cl:defmethod BCMADASCtrlRqstV-val ((m <ChassisMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader in2ulv_msgs-msg:BCMADASCtrlRqstV-val is deprecated.  Use in2ulv_msgs-msg:BCMADASCtrlRqstV instead.")
  (BCMADASCtrlRqstV m))

(cl:ensure-generic-function 'TMActTorq-val :lambda-list '(m))
(cl:defmethod TMActTorq-val ((m <ChassisMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader in2ulv_msgs-msg:TMActTorq-val is deprecated.  Use in2ulv_msgs-msg:TMActTorq instead.")
  (TMActTorq m))

(cl:ensure-generic-function 'TMActSpd-val :lambda-list '(m))
(cl:defmethod TMActSpd-val ((m <ChassisMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader in2ulv_msgs-msg:TMActSpd-val is deprecated.  Use in2ulv_msgs-msg:TMActSpd instead.")
  (TMActSpd m))

(cl:ensure-generic-function 'VSELatAccV-val :lambda-list '(m))
(cl:defmethod VSELatAccV-val ((m <ChassisMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader in2ulv_msgs-msg:VSELatAccV-val is deprecated.  Use in2ulv_msgs-msg:VSELatAccV instead.")
  (VSELatAccV m))

(cl:ensure-generic-function 'VSELatAcc-val :lambda-list '(m))
(cl:defmethod VSELatAcc-val ((m <ChassisMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader in2ulv_msgs-msg:VSELatAcc-val is deprecated.  Use in2ulv_msgs-msg:VSELatAcc instead.")
  (VSELatAcc m))

(cl:ensure-generic-function 'VSELongAccV-val :lambda-list '(m))
(cl:defmethod VSELongAccV-val ((m <ChassisMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader in2ulv_msgs-msg:VSELongAccV-val is deprecated.  Use in2ulv_msgs-msg:VSELongAccV instead.")
  (VSELongAccV m))

(cl:ensure-generic-function 'VSELongAcc-val :lambda-list '(m))
(cl:defmethod VSELongAcc-val ((m <ChassisMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader in2ulv_msgs-msg:VSELongAcc-val is deprecated.  Use in2ulv_msgs-msg:VSELongAcc instead.")
  (VSELongAcc m))

(cl:ensure-generic-function 'VehOdo-val :lambda-list '(m))
(cl:defmethod VehOdo-val ((m <ChassisMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader in2ulv_msgs-msg:VehOdo-val is deprecated.  Use in2ulv_msgs-msg:VehOdo instead.")
  (VehOdo m))

(cl:ensure-generic-function 'VehOdoV-val :lambda-list '(m))
(cl:defmethod VehOdoV-val ((m <ChassisMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader in2ulv_msgs-msg:VehOdoV-val is deprecated.  Use in2ulv_msgs-msg:VehOdoV instead.")
  (VehOdoV m))

(cl:ensure-generic-function 'BrakPedalPos-val :lambda-list '(m))
(cl:defmethod BrakPedalPos-val ((m <ChassisMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader in2ulv_msgs-msg:BrakPedalPos-val is deprecated.  Use in2ulv_msgs-msg:BrakPedalPos instead.")
  (BrakPedalPos m))

(cl:ensure-generic-function 'AccActPos-val :lambda-list '(m))
(cl:defmethod AccActPos-val ((m <ChassisMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader in2ulv_msgs-msg:AccActPos-val is deprecated.  Use in2ulv_msgs-msg:AccActPos instead.")
  (AccActPos m))

(cl:ensure-generic-function 'VecActGearStsV-val :lambda-list '(m))
(cl:defmethod VecActGearStsV-val ((m <ChassisMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader in2ulv_msgs-msg:VecActGearStsV-val is deprecated.  Use in2ulv_msgs-msg:VecActGearStsV instead.")
  (VecActGearStsV m))

(cl:ensure-generic-function 'VecActGearSts-val :lambda-list '(m))
(cl:defmethod VecActGearSts-val ((m <ChassisMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader in2ulv_msgs-msg:VecActGearSts-val is deprecated.  Use in2ulv_msgs-msg:VecActGearSts instead.")
  (VecActGearSts m))

(cl:ensure-generic-function 'StrWhAngV-val :lambda-list '(m))
(cl:defmethod StrWhAngV-val ((m <ChassisMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader in2ulv_msgs-msg:StrWhAngV-val is deprecated.  Use in2ulv_msgs-msg:StrWhAngV instead.")
  (StrWhAngV m))

(cl:ensure-generic-function 'StrWhAng-val :lambda-list '(m))
(cl:defmethod StrWhAng-val ((m <ChassisMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader in2ulv_msgs-msg:StrWhAng-val is deprecated.  Use in2ulv_msgs-msg:StrWhAng instead.")
  (StrWhAng m))

(cl:ensure-generic-function 'EPSProId-val :lambda-list '(m))
(cl:defmethod EPSProId-val ((m <ChassisMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader in2ulv_msgs-msg:EPSProId-val is deprecated.  Use in2ulv_msgs-msg:EPSProId instead.")
  (EPSProId m))

(cl:ensure-generic-function 'PwrStrIo-val :lambda-list '(m))
(cl:defmethod PwrStrIo-val ((m <ChassisMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader in2ulv_msgs-msg:PwrStrIo-val is deprecated.  Use in2ulv_msgs-msg:PwrStrIo instead.")
  (PwrStrIo m))

(cl:ensure-generic-function 'SterModV-val :lambda-list '(m))
(cl:defmethod SterModV-val ((m <ChassisMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader in2ulv_msgs-msg:SterModV-val is deprecated.  Use in2ulv_msgs-msg:SterModV instead.")
  (SterModV m))

(cl:ensure-generic-function 'SterMod-val :lambda-list '(m))
(cl:defmethod SterMod-val ((m <ChassisMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader in2ulv_msgs-msg:SterMod-val is deprecated.  Use in2ulv_msgs-msg:SterMod instead.")
  (SterMod m))

(cl:ensure-generic-function 'EPS_LKARespTorq-val :lambda-list '(m))
(cl:defmethod EPS_LKARespTorq-val ((m <ChassisMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader in2ulv_msgs-msg:EPS_LKARespTorq-val is deprecated.  Use in2ulv_msgs-msg:EPS_LKARespTorq instead.")
  (EPS_LKARespTorq m))

(cl:ensure-generic-function 'SterFltMod-val :lambda-list '(m))
(cl:defmethod SterFltMod-val ((m <ChassisMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader in2ulv_msgs-msg:SterFltMod-val is deprecated.  Use in2ulv_msgs-msg:SterFltMod instead.")
  (SterFltMod m))

(cl:ensure-generic-function 'DrStrTorqV-val :lambda-list '(m))
(cl:defmethod DrStrTorqV-val ((m <ChassisMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader in2ulv_msgs-msg:DrStrTorqV-val is deprecated.  Use in2ulv_msgs-msg:DrStrTorqV instead.")
  (DrStrTorqV m))

(cl:ensure-generic-function 'DrStrTorqVal-val :lambda-list '(m))
(cl:defmethod DrStrTorqVal-val ((m <ChassisMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader in2ulv_msgs-msg:DrStrTorqVal-val is deprecated.  Use in2ulv_msgs-msg:DrStrTorqVal instead.")
  (DrStrTorqVal m))

(cl:ensure-generic-function 'SteerWheelRotSpd-val :lambda-list '(m))
(cl:defmethod SteerWheelRotSpd-val ((m <ChassisMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader in2ulv_msgs-msg:SteerWheelRotSpd-val is deprecated.  Use in2ulv_msgs-msg:SteerWheelRotSpd instead.")
  (SteerWheelRotSpd m))

(cl:ensure-generic-function 'SteerWheelAngle-val :lambda-list '(m))
(cl:defmethod SteerWheelAngle-val ((m <ChassisMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader in2ulv_msgs-msg:SteerWheelAngle-val is deprecated.  Use in2ulv_msgs-msg:SteerWheelAngle instead.")
  (SteerWheelAngle m))

(cl:ensure-generic-function 'ElecPrkBrkStat-val :lambda-list '(m))
(cl:defmethod ElecPrkBrkStat-val ((m <ChassisMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader in2ulv_msgs-msg:ElecPrkBrkStat-val is deprecated.  Use in2ulv_msgs-msg:ElecPrkBrkStat instead.")
  (ElecPrkBrkStat m))

(cl:ensure-generic-function 'WhlGrndVlctyLftDrvnV-val :lambda-list '(m))
(cl:defmethod WhlGrndVlctyLftDrvnV-val ((m <ChassisMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader in2ulv_msgs-msg:WhlGrndVlctyLftDrvnV-val is deprecated.  Use in2ulv_msgs-msg:WhlGrndVlctyLftDrvnV instead.")
  (WhlGrndVlctyLftDrvnV m))

(cl:ensure-generic-function 'WhlGrndVlctyLftDrvn-val :lambda-list '(m))
(cl:defmethod WhlGrndVlctyLftDrvn-val ((m <ChassisMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader in2ulv_msgs-msg:WhlGrndVlctyLftDrvn-val is deprecated.  Use in2ulv_msgs-msg:WhlGrndVlctyLftDrvn instead.")
  (WhlGrndVlctyLftDrvn m))

(cl:ensure-generic-function 'WhlGrndVlctyRtDrvnV-val :lambda-list '(m))
(cl:defmethod WhlGrndVlctyRtDrvnV-val ((m <ChassisMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader in2ulv_msgs-msg:WhlGrndVlctyRtDrvnV-val is deprecated.  Use in2ulv_msgs-msg:WhlGrndVlctyRtDrvnV instead.")
  (WhlGrndVlctyRtDrvnV m))

(cl:ensure-generic-function 'WhlGrndVlctyRtDrvn-val :lambda-list '(m))
(cl:defmethod WhlGrndVlctyRtDrvn-val ((m <ChassisMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader in2ulv_msgs-msg:WhlGrndVlctyRtDrvn-val is deprecated.  Use in2ulv_msgs-msg:WhlGrndVlctyRtDrvn instead.")
  (WhlGrndVlctyRtDrvn m))

(cl:ensure-generic-function 'WhlGrndVlctyLftNnDrvnV-val :lambda-list '(m))
(cl:defmethod WhlGrndVlctyLftNnDrvnV-val ((m <ChassisMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader in2ulv_msgs-msg:WhlGrndVlctyLftNnDrvnV-val is deprecated.  Use in2ulv_msgs-msg:WhlGrndVlctyLftNnDrvnV instead.")
  (WhlGrndVlctyLftNnDrvnV m))

(cl:ensure-generic-function 'WhlGrndVlctyLftNnDrvn-val :lambda-list '(m))
(cl:defmethod WhlGrndVlctyLftNnDrvn-val ((m <ChassisMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader in2ulv_msgs-msg:WhlGrndVlctyLftNnDrvn-val is deprecated.  Use in2ulv_msgs-msg:WhlGrndVlctyLftNnDrvn instead.")
  (WhlGrndVlctyLftNnDrvn m))

(cl:ensure-generic-function 'WhlGrndVlctyRtNnDrvnV-val :lambda-list '(m))
(cl:defmethod WhlGrndVlctyRtNnDrvnV-val ((m <ChassisMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader in2ulv_msgs-msg:WhlGrndVlctyRtNnDrvnV-val is deprecated.  Use in2ulv_msgs-msg:WhlGrndVlctyRtNnDrvnV instead.")
  (WhlGrndVlctyRtNnDrvnV m))

(cl:ensure-generic-function 'WhlGrndVlctyRtNnDrvn-val :lambda-list '(m))
(cl:defmethod WhlGrndVlctyRtNnDrvn-val ((m <ChassisMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader in2ulv_msgs-msg:WhlGrndVlctyRtNnDrvn-val is deprecated.  Use in2ulv_msgs-msg:WhlGrndVlctyRtNnDrvn instead.")
  (WhlGrndVlctyRtNnDrvn m))

(cl:ensure-generic-function 'LftDrvnWhlDirec-val :lambda-list '(m))
(cl:defmethod LftDrvnWhlDirec-val ((m <ChassisMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader in2ulv_msgs-msg:LftDrvnWhlDirec-val is deprecated.  Use in2ulv_msgs-msg:LftDrvnWhlDirec instead.")
  (LftDrvnWhlDirec m))

(cl:ensure-generic-function 'WhlGrndPlsLftDrvnV-val :lambda-list '(m))
(cl:defmethod WhlGrndPlsLftDrvnV-val ((m <ChassisMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader in2ulv_msgs-msg:WhlGrndPlsLftDrvnV-val is deprecated.  Use in2ulv_msgs-msg:WhlGrndPlsLftDrvnV instead.")
  (WhlGrndPlsLftDrvnV m))

(cl:ensure-generic-function 'WhlGrndPlsLftDrvn-val :lambda-list '(m))
(cl:defmethod WhlGrndPlsLftDrvn-val ((m <ChassisMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader in2ulv_msgs-msg:WhlGrndPlsLftDrvn-val is deprecated.  Use in2ulv_msgs-msg:WhlGrndPlsLftDrvn instead.")
  (WhlGrndPlsLftDrvn m))

(cl:ensure-generic-function 'RtDrvnWhlDirec-val :lambda-list '(m))
(cl:defmethod RtDrvnWhlDirec-val ((m <ChassisMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader in2ulv_msgs-msg:RtDrvnWhlDirec-val is deprecated.  Use in2ulv_msgs-msg:RtDrvnWhlDirec instead.")
  (RtDrvnWhlDirec m))

(cl:ensure-generic-function 'WhlGrndPlsRtDrvnV-val :lambda-list '(m))
(cl:defmethod WhlGrndPlsRtDrvnV-val ((m <ChassisMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader in2ulv_msgs-msg:WhlGrndPlsRtDrvnV-val is deprecated.  Use in2ulv_msgs-msg:WhlGrndPlsRtDrvnV instead.")
  (WhlGrndPlsRtDrvnV m))

(cl:ensure-generic-function 'WhlGrndPlsRtDrvn-val :lambda-list '(m))
(cl:defmethod WhlGrndPlsRtDrvn-val ((m <ChassisMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader in2ulv_msgs-msg:WhlGrndPlsRtDrvn-val is deprecated.  Use in2ulv_msgs-msg:WhlGrndPlsRtDrvn instead.")
  (WhlGrndPlsRtDrvn m))

(cl:ensure-generic-function 'LftNnDrvnWhlDirec-val :lambda-list '(m))
(cl:defmethod LftNnDrvnWhlDirec-val ((m <ChassisMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader in2ulv_msgs-msg:LftNnDrvnWhlDirec-val is deprecated.  Use in2ulv_msgs-msg:LftNnDrvnWhlDirec instead.")
  (LftNnDrvnWhlDirec m))

(cl:ensure-generic-function 'WhlGrndPlsLftNnDrvnV-val :lambda-list '(m))
(cl:defmethod WhlGrndPlsLftNnDrvnV-val ((m <ChassisMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader in2ulv_msgs-msg:WhlGrndPlsLftNnDrvnV-val is deprecated.  Use in2ulv_msgs-msg:WhlGrndPlsLftNnDrvnV instead.")
  (WhlGrndPlsLftNnDrvnV m))

(cl:ensure-generic-function 'WhlGrndPlsLftNnDrvn-val :lambda-list '(m))
(cl:defmethod WhlGrndPlsLftNnDrvn-val ((m <ChassisMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader in2ulv_msgs-msg:WhlGrndPlsLftNnDrvn-val is deprecated.  Use in2ulv_msgs-msg:WhlGrndPlsLftNnDrvn instead.")
  (WhlGrndPlsLftNnDrvn m))

(cl:ensure-generic-function 'RtNnDrvnWhlDirec-val :lambda-list '(m))
(cl:defmethod RtNnDrvnWhlDirec-val ((m <ChassisMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader in2ulv_msgs-msg:RtNnDrvnWhlDirec-val is deprecated.  Use in2ulv_msgs-msg:RtNnDrvnWhlDirec instead.")
  (RtNnDrvnWhlDirec m))

(cl:ensure-generic-function 'WhlGrndPlsRtNnDrvnV-val :lambda-list '(m))
(cl:defmethod WhlGrndPlsRtNnDrvnV-val ((m <ChassisMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader in2ulv_msgs-msg:WhlGrndPlsRtNnDrvnV-val is deprecated.  Use in2ulv_msgs-msg:WhlGrndPlsRtNnDrvnV instead.")
  (WhlGrndPlsRtNnDrvnV m))

(cl:ensure-generic-function 'WhlGrndPlsRtNnDrvn-val :lambda-list '(m))
(cl:defmethod WhlGrndPlsRtNnDrvn-val ((m <ChassisMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader in2ulv_msgs-msg:WhlGrndPlsRtNnDrvn-val is deprecated.  Use in2ulv_msgs-msg:WhlGrndPlsRtNnDrvn instead.")
  (WhlGrndPlsRtNnDrvn m))

(cl:ensure-generic-function 'BBWSts-val :lambda-list '(m))
(cl:defmethod BBWSts-val ((m <ChassisMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader in2ulv_msgs-msg:BBWSts-val is deprecated.  Use in2ulv_msgs-msg:BBWSts instead.")
  (BBWSts m))

(cl:ensure-generic-function 'EBSDrvMod-val :lambda-list '(m))
(cl:defmethod EBSDrvMod-val ((m <ChassisMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader in2ulv_msgs-msg:EBSDrvMod-val is deprecated.  Use in2ulv_msgs-msg:EBSDrvMod instead.")
  (EBSDrvMod m))

(cl:ensure-generic-function 'IDURqst-val :lambda-list '(m))
(cl:defmethod IDURqst-val ((m <ChassisMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader in2ulv_msgs-msg:IDURqst-val is deprecated.  Use in2ulv_msgs-msg:IDURqst instead.")
  (IDURqst m))

(cl:ensure-generic-function 'EBSMCBrPressure-val :lambda-list '(m))
(cl:defmethod EBSMCBrPressure-val ((m <ChassisMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader in2ulv_msgs-msg:EBSMCBrPressure-val is deprecated.  Use in2ulv_msgs-msg:EBSMCBrPressure instead.")
  (EBSMCBrPressure m))

(cl:ensure-generic-function 'BrakPedalDisp-val :lambda-list '(m))
(cl:defmethod BrakPedalDisp-val ((m <ChassisMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader in2ulv_msgs-msg:BrakPedalDisp-val is deprecated.  Use in2ulv_msgs-msg:BrakPedalDisp instead.")
  (BrakPedalDisp m))

(cl:ensure-generic-function 'ADAS_StrAngleRqstV-val :lambda-list '(m))
(cl:defmethod ADAS_StrAngleRqstV-val ((m <ChassisMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader in2ulv_msgs-msg:ADAS_StrAngleRqstV-val is deprecated.  Use in2ulv_msgs-msg:ADAS_StrAngleRqstV instead.")
  (ADAS_StrAngleRqstV m))

(cl:ensure-generic-function 'ADASBrakRqstPres-val :lambda-list '(m))
(cl:defmethod ADASBrakRqstPres-val ((m <ChassisMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader in2ulv_msgs-msg:ADASBrakRqstPres-val is deprecated.  Use in2ulv_msgs-msg:ADASBrakRqstPres instead.")
  (ADASBrakRqstPres m))

(cl:ensure-generic-function 'EPB_ADASPrkngRqst-val :lambda-list '(m))
(cl:defmethod EPB_ADASPrkngRqst-val ((m <ChassisMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader in2ulv_msgs-msg:EPB_ADASPrkngRqst-val is deprecated.  Use in2ulv_msgs-msg:EPB_ADASPrkngRqst instead.")
  (EPB_ADASPrkngRqst m))

(cl:ensure-generic-function 'ADASStrTorqRqst-val :lambda-list '(m))
(cl:defmethod ADASStrTorqRqst-val ((m <ChassisMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader in2ulv_msgs-msg:ADASStrTorqRqst-val is deprecated.  Use in2ulv_msgs-msg:ADASStrTorqRqst instead.")
  (ADASStrTorqRqst m))

(cl:ensure-generic-function 'ADASStrTorqTgt-val :lambda-list '(m))
(cl:defmethod ADASStrTorqTgt-val ((m <ChassisMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader in2ulv_msgs-msg:ADASStrTorqTgt-val is deprecated.  Use in2ulv_msgs-msg:ADASStrTorqTgt instead.")
  (ADASStrTorqTgt m))

(cl:ensure-generic-function 'ADAS_StrAngle-val :lambda-list '(m))
(cl:defmethod ADAS_StrAngle-val ((m <ChassisMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader in2ulv_msgs-msg:ADAS_StrAngle-val is deprecated.  Use in2ulv_msgs-msg:ADAS_StrAngle instead.")
  (ADAS_StrAngle m))

(cl:ensure-generic-function 'VCUTTgtAclrtnRqst-val :lambda-list '(m))
(cl:defmethod VCUTTgtAclrtnRqst-val ((m <ChassisMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader in2ulv_msgs-msg:VCUTTgtAclrtnRqst-val is deprecated.  Use in2ulv_msgs-msg:VCUTTgtAclrtnRqst instead.")
  (VCUTTgtAclrtnRqst m))

(cl:ensure-generic-function 'VCUTTgtAclrtnRqstVal-val :lambda-list '(m))
(cl:defmethod VCUTTgtAclrtnRqstVal-val ((m <ChassisMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader in2ulv_msgs-msg:VCUTTgtAclrtnRqstVal-val is deprecated.  Use in2ulv_msgs-msg:VCUTTgtAclrtnRqstVal instead.")
  (VCUTTgtAclrtnRqstVal m))

(cl:ensure-generic-function 'GearRqst-val :lambda-list '(m))
(cl:defmethod GearRqst-val ((m <ChassisMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader in2ulv_msgs-msg:GearRqst-val is deprecated.  Use in2ulv_msgs-msg:GearRqst instead.")
  (GearRqst m))

(cl:ensure-generic-function 'TgtGear-val :lambda-list '(m))
(cl:defmethod TgtGear-val ((m <ChassisMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader in2ulv_msgs-msg:TgtGear-val is deprecated.  Use in2ulv_msgs-msg:TgtGear instead.")
  (TgtGear m))

(cl:ensure-generic-function 'VCUTTgtSpRqst-val :lambda-list '(m))
(cl:defmethod VCUTTgtSpRqst-val ((m <ChassisMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader in2ulv_msgs-msg:VCUTTgtSpRqst-val is deprecated.  Use in2ulv_msgs-msg:VCUTTgtSpRqst instead.")
  (VCUTTgtSpRqst m))

(cl:ensure-generic-function 'VCUTTgtSpRqstVal-val :lambda-list '(m))
(cl:defmethod VCUTTgtSpRqstVal-val ((m <ChassisMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader in2ulv_msgs-msg:VCUTTgtSpRqstVal-val is deprecated.  Use in2ulv_msgs-msg:VCUTTgtSpRqstVal instead.")
  (VCUTTgtSpRqstVal m))

(cl:ensure-generic-function 'SensSt_1st-val :lambda-list '(m))
(cl:defmethod SensSt_1st-val ((m <ChassisMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader in2ulv_msgs-msg:SensSt_1st-val is deprecated.  Use in2ulv_msgs-msg:SensSt_1st instead.")
  (SensSt_1st m))

(cl:ensure-generic-function 'DisFrm1stFrtSens-val :lambda-list '(m))
(cl:defmethod DisFrm1stFrtSens-val ((m <ChassisMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader in2ulv_msgs-msg:DisFrm1stFrtSens-val is deprecated.  Use in2ulv_msgs-msg:DisFrm1stFrtSens instead.")
  (DisFrm1stFrtSens m))

(cl:ensure-generic-function 'SensSt_2nd-val :lambda-list '(m))
(cl:defmethod SensSt_2nd-val ((m <ChassisMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader in2ulv_msgs-msg:SensSt_2nd-val is deprecated.  Use in2ulv_msgs-msg:SensSt_2nd instead.")
  (SensSt_2nd m))

(cl:ensure-generic-function 'DisFrm2ndFrtSens-val :lambda-list '(m))
(cl:defmethod DisFrm2ndFrtSens-val ((m <ChassisMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader in2ulv_msgs-msg:DisFrm2ndFrtSens-val is deprecated.  Use in2ulv_msgs-msg:DisFrm2ndFrtSens instead.")
  (DisFrm2ndFrtSens m))

(cl:ensure-generic-function 'SensSt_3rd-val :lambda-list '(m))
(cl:defmethod SensSt_3rd-val ((m <ChassisMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader in2ulv_msgs-msg:SensSt_3rd-val is deprecated.  Use in2ulv_msgs-msg:SensSt_3rd instead.")
  (SensSt_3rd m))

(cl:ensure-generic-function 'DisFrm3rdFrtSens-val :lambda-list '(m))
(cl:defmethod DisFrm3rdFrtSens-val ((m <ChassisMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader in2ulv_msgs-msg:DisFrm3rdFrtSens-val is deprecated.  Use in2ulv_msgs-msg:DisFrm3rdFrtSens instead.")
  (DisFrm3rdFrtSens m))

(cl:ensure-generic-function 'SensSt_4th-val :lambda-list '(m))
(cl:defmethod SensSt_4th-val ((m <ChassisMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader in2ulv_msgs-msg:SensSt_4th-val is deprecated.  Use in2ulv_msgs-msg:SensSt_4th instead.")
  (SensSt_4th m))

(cl:ensure-generic-function 'DisFrm4thFrtSens-val :lambda-list '(m))
(cl:defmethod DisFrm4thFrtSens-val ((m <ChassisMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader in2ulv_msgs-msg:DisFrm4thFrtSens-val is deprecated.  Use in2ulv_msgs-msg:DisFrm4thFrtSens instead.")
  (DisFrm4thFrtSens m))

(cl:ensure-generic-function 'SensSt_5th-val :lambda-list '(m))
(cl:defmethod SensSt_5th-val ((m <ChassisMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader in2ulv_msgs-msg:SensSt_5th-val is deprecated.  Use in2ulv_msgs-msg:SensSt_5th instead.")
  (SensSt_5th m))

(cl:ensure-generic-function 'DisFrm5thFrtSens-val :lambda-list '(m))
(cl:defmethod DisFrm5thFrtSens-val ((m <ChassisMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader in2ulv_msgs-msg:DisFrm5thFrtSens-val is deprecated.  Use in2ulv_msgs-msg:DisFrm5thFrtSens instead.")
  (DisFrm5thFrtSens m))

(cl:ensure-generic-function 'SensSt_6th-val :lambda-list '(m))
(cl:defmethod SensSt_6th-val ((m <ChassisMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader in2ulv_msgs-msg:SensSt_6th-val is deprecated.  Use in2ulv_msgs-msg:SensSt_6th instead.")
  (SensSt_6th m))

(cl:ensure-generic-function 'DisFrm6thFrtSens-val :lambda-list '(m))
(cl:defmethod DisFrm6thFrtSens-val ((m <ChassisMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader in2ulv_msgs-msg:DisFrm6thFrtSens-val is deprecated.  Use in2ulv_msgs-msg:DisFrm6thFrtSens instead.")
  (DisFrm6thFrtSens m))

(cl:ensure-generic-function 'SensSt_7th-val :lambda-list '(m))
(cl:defmethod SensSt_7th-val ((m <ChassisMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader in2ulv_msgs-msg:SensSt_7th-val is deprecated.  Use in2ulv_msgs-msg:SensSt_7th instead.")
  (SensSt_7th m))

(cl:ensure-generic-function 'DisFrm7thFrtSens-val :lambda-list '(m))
(cl:defmethod DisFrm7thFrtSens-val ((m <ChassisMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader in2ulv_msgs-msg:DisFrm7thFrtSens-val is deprecated.  Use in2ulv_msgs-msg:DisFrm7thFrtSens instead.")
  (DisFrm7thFrtSens m))

(cl:ensure-generic-function 'SensSt_8th-val :lambda-list '(m))
(cl:defmethod SensSt_8th-val ((m <ChassisMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader in2ulv_msgs-msg:SensSt_8th-val is deprecated.  Use in2ulv_msgs-msg:SensSt_8th instead.")
  (SensSt_8th m))

(cl:ensure-generic-function 'DisFrm8thFrtSens-val :lambda-list '(m))
(cl:defmethod DisFrm8thFrtSens-val ((m <ChassisMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader in2ulv_msgs-msg:DisFrm8thFrtSens-val is deprecated.  Use in2ulv_msgs-msg:DisFrm8thFrtSens instead.")
  (DisFrm8thFrtSens m))

(cl:ensure-generic-function 'SensSt_9th-val :lambda-list '(m))
(cl:defmethod SensSt_9th-val ((m <ChassisMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader in2ulv_msgs-msg:SensSt_9th-val is deprecated.  Use in2ulv_msgs-msg:SensSt_9th instead.")
  (SensSt_9th m))

(cl:ensure-generic-function 'DisFrm9thFrtSens-val :lambda-list '(m))
(cl:defmethod DisFrm9thFrtSens-val ((m <ChassisMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader in2ulv_msgs-msg:DisFrm9thFrtSens-val is deprecated.  Use in2ulv_msgs-msg:DisFrm9thFrtSens instead.")
  (DisFrm9thFrtSens m))

(cl:ensure-generic-function 'SensSt_10th-val :lambda-list '(m))
(cl:defmethod SensSt_10th-val ((m <ChassisMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader in2ulv_msgs-msg:SensSt_10th-val is deprecated.  Use in2ulv_msgs-msg:SensSt_10th instead.")
  (SensSt_10th m))

(cl:ensure-generic-function 'DisFrm10thFrtSens-val :lambda-list '(m))
(cl:defmethod DisFrm10thFrtSens-val ((m <ChassisMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader in2ulv_msgs-msg:DisFrm10thFrtSens-val is deprecated.  Use in2ulv_msgs-msg:DisFrm10thFrtSens instead.")
  (DisFrm10thFrtSens m))

(cl:ensure-generic-function 'SensSt_11th-val :lambda-list '(m))
(cl:defmethod SensSt_11th-val ((m <ChassisMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader in2ulv_msgs-msg:SensSt_11th-val is deprecated.  Use in2ulv_msgs-msg:SensSt_11th instead.")
  (SensSt_11th m))

(cl:ensure-generic-function 'DisFrm11thFrtSens-val :lambda-list '(m))
(cl:defmethod DisFrm11thFrtSens-val ((m <ChassisMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader in2ulv_msgs-msg:DisFrm11thFrtSens-val is deprecated.  Use in2ulv_msgs-msg:DisFrm11thFrtSens instead.")
  (DisFrm11thFrtSens m))

(cl:ensure-generic-function 'SensSt_12th-val :lambda-list '(m))
(cl:defmethod SensSt_12th-val ((m <ChassisMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader in2ulv_msgs-msg:SensSt_12th-val is deprecated.  Use in2ulv_msgs-msg:SensSt_12th instead.")
  (SensSt_12th m))

(cl:ensure-generic-function 'DisFrm12thFrtSens-val :lambda-list '(m))
(cl:defmethod DisFrm12thFrtSens-val ((m <ChassisMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader in2ulv_msgs-msg:DisFrm12thFrtSens-val is deprecated.  Use in2ulv_msgs-msg:DisFrm12thFrtSens instead.")
  (DisFrm12thFrtSens m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ChassisMsg>) ostream)
  "Serializes a message object of type '<ChassisMsg>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'module_type)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'error_code)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'error_code)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'error_code)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'error_code)) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'chassis_data))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'chassis_data))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'TMTorqRqstV)) ostream)
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'TMTorqRqst))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'HandBrkSts)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'VecStatRdy)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'KyPstn)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'VecSOC)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'VehSpdAvgDrvnV)) ostream)
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'VehSpdAvgDrvn))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'VecTMActSpdV)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'VecTMActSpd)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'VecTMActSpd)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'VCUVehDrvMod)) ostream)
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'LowBatVol))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'BatSOC)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'HhBmIO)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'WindscenWipSt)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'LwBmIO)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'HzrdLgtSwAtv)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'HzrdLtIO)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'RtTrnLmpAtv)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'LftTrnLmpAtv)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'WipSwStat)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'StpLpSt)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'is_left_blinking) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'is_right_blinking) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'DrSbltAtc)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'DrSbltAtcV)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'TDAjrSwAtv)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'PsDoorOpenSwAct)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'PDAjrSwAtv)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'DrDoorOpenSwAct)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'DDAjrSwAct)) ostream)
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'PsWdwOpenDgr))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'DrWdwOpenDgr))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'BCMRunMod)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'BCMRunModV)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'EPBSysWrnIndReq_1)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'EPBSysWrnIndReqV_1)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'EPBSysBrkLtsReq_1)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'EPBSysStatIndReq_1)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'ElecPrkBrkSwStatV_1)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'ElecPrkBrkStat_1)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'ElecPrkBrkSwStat_1)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'ADASWndSnWpCtrl)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'ADASHzdLtCtrl)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'ADASSdTrnLmpRHCtrl)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'ADASSdTrnLmpLHCtrl)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'ADASLowBmCtrl)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'ADASHighBmCtrl)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'ADASLkCtrl)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'CarWindCtrl)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'ADASRemtPrkModRqst)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'BCMADASCtrlRqst)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'BCMADASCtrlRqstV)) ostream)
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'TMActTorq))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let* ((signed (cl:slot-value msg 'TMActSpd)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'VSELatAccV)) ostream)
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'VSELatAcc))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'VSELongAccV)) ostream)
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'VSELongAcc))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'VehOdo))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'VehOdoV)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'BrakPedalPos)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'AccActPos)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'VecActGearStsV)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'VecActGearSts)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'StrWhAngV)) ostream)
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'StrWhAng))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'EPSProId)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'PwrStrIo)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'SterModV)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'SterMod)) ostream)
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'EPS_LKARespTorq))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'SterFltMod)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'DrStrTorqV)) ostream)
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'DrStrTorqVal))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'SteerWheelRotSpd)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'SteerWheelRotSpd)) ostream)
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'SteerWheelAngle))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'ElecPrkBrkStat)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'WhlGrndVlctyLftDrvnV)) ostream)
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'WhlGrndVlctyLftDrvn))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'WhlGrndVlctyRtDrvnV)) ostream)
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'WhlGrndVlctyRtDrvn))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'WhlGrndVlctyLftNnDrvnV)) ostream)
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'WhlGrndVlctyLftNnDrvn))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'WhlGrndVlctyRtNnDrvnV)) ostream)
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'WhlGrndVlctyRtNnDrvn))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'LftDrvnWhlDirec)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'WhlGrndPlsLftDrvnV)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'WhlGrndPlsLftDrvn)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'WhlGrndPlsLftDrvn)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'RtDrvnWhlDirec)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'WhlGrndPlsRtDrvnV)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'WhlGrndPlsRtDrvn)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'WhlGrndPlsRtDrvn)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'LftNnDrvnWhlDirec)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'WhlGrndPlsLftNnDrvnV)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'WhlGrndPlsLftNnDrvn)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'WhlGrndPlsLftNnDrvn)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'RtNnDrvnWhlDirec)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'WhlGrndPlsRtNnDrvnV)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'WhlGrndPlsRtNnDrvn)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'WhlGrndPlsRtNnDrvn)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'BBWSts)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'EBSDrvMod)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'IDURqst)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'EBSMCBrPressure)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'BrakPedalDisp)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'ADAS_StrAngleRqstV)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'ADASBrakRqstPres)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'ADASBrakRqstPres)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'EPB_ADASPrkngRqst)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'ADASStrTorqRqst)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'ADASStrTorqTgt)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'ADASStrTorqTgt)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'ADAS_StrAngle)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'ADAS_StrAngle)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'VCUTTgtAclrtnRqst)) ostream)
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'VCUTTgtAclrtnRqstVal))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'GearRqst)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'TgtGear)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'VCUTTgtSpRqst)) ostream)
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'VCUTTgtSpRqstVal))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'SensSt_1st)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'DisFrm1stFrtSens)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'DisFrm1stFrtSens)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'SensSt_2nd)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'DisFrm2ndFrtSens)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'DisFrm2ndFrtSens)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'SensSt_3rd)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'DisFrm3rdFrtSens)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'DisFrm3rdFrtSens)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'SensSt_4th)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'DisFrm4thFrtSens)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'DisFrm4thFrtSens)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'SensSt_5th)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'DisFrm5thFrtSens)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'DisFrm5thFrtSens)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'SensSt_6th)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'DisFrm6thFrtSens)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'DisFrm6thFrtSens)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'SensSt_7th)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'DisFrm7thFrtSens)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'DisFrm7thFrtSens)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'SensSt_8th)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'DisFrm8thFrtSens)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'DisFrm8thFrtSens)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'SensSt_9th)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'DisFrm9thFrtSens)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'DisFrm9thFrtSens)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'SensSt_10th)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'DisFrm10thFrtSens)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'DisFrm10thFrtSens)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'SensSt_11th)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'DisFrm11thFrtSens)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'DisFrm11thFrtSens)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'SensSt_12th)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'DisFrm12thFrtSens)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'DisFrm12thFrtSens)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ChassisMsg>) istream)
  "Deserializes a message object of type '<ChassisMsg>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'module_type)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'error_code)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'error_code)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'error_code)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'error_code)) (cl:read-byte istream))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'chassis_data) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'chassis_data) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'TMTorqRqstV)) (cl:read-byte istream))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'TMTorqRqst) (roslisp-utils:decode-double-float-bits bits)))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'HandBrkSts)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'VecStatRdy)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'KyPstn)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'VecSOC)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'VehSpdAvgDrvnV)) (cl:read-byte istream))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'VehSpdAvgDrvn) (roslisp-utils:decode-double-float-bits bits)))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'VecTMActSpdV)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'VecTMActSpd)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'VecTMActSpd)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'VCUVehDrvMod)) (cl:read-byte istream))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'LowBatVol) (roslisp-utils:decode-double-float-bits bits)))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'BatSOC)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'HhBmIO)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'WindscenWipSt)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'LwBmIO)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'HzrdLgtSwAtv)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'HzrdLtIO)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'RtTrnLmpAtv)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'LftTrnLmpAtv)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'WipSwStat)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'StpLpSt)) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'is_left_blinking) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'is_right_blinking) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'DrSbltAtc)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'DrSbltAtcV)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'TDAjrSwAtv)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'PsDoorOpenSwAct)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'PDAjrSwAtv)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'DrDoorOpenSwAct)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'DDAjrSwAct)) (cl:read-byte istream))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'PsWdwOpenDgr) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'DrWdwOpenDgr) (roslisp-utils:decode-double-float-bits bits)))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'BCMRunMod)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'BCMRunModV)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'EPBSysWrnIndReq_1)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'EPBSysWrnIndReqV_1)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'EPBSysBrkLtsReq_1)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'EPBSysStatIndReq_1)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'ElecPrkBrkSwStatV_1)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'ElecPrkBrkStat_1)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'ElecPrkBrkSwStat_1)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'ADASWndSnWpCtrl)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'ADASHzdLtCtrl)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'ADASSdTrnLmpRHCtrl)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'ADASSdTrnLmpLHCtrl)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'ADASLowBmCtrl)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'ADASHighBmCtrl)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'ADASLkCtrl)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'CarWindCtrl)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'ADASRemtPrkModRqst)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'BCMADASCtrlRqst)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'BCMADASCtrlRqstV)) (cl:read-byte istream))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'TMActTorq) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'TMActSpd) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'VSELatAccV)) (cl:read-byte istream))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'VSELatAcc) (roslisp-utils:decode-double-float-bits bits)))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'VSELongAccV)) (cl:read-byte istream))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'VSELongAcc) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'VehOdo) (roslisp-utils:decode-double-float-bits bits)))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'VehOdoV)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'BrakPedalPos)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'AccActPos)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'VecActGearStsV)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'VecActGearSts)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'StrWhAngV)) (cl:read-byte istream))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'StrWhAng) (roslisp-utils:decode-double-float-bits bits)))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'EPSProId)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'PwrStrIo)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'SterModV)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'SterMod)) (cl:read-byte istream))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'EPS_LKARespTorq) (roslisp-utils:decode-double-float-bits bits)))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'SterFltMod)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'DrStrTorqV)) (cl:read-byte istream))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'DrStrTorqVal) (roslisp-utils:decode-double-float-bits bits)))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'SteerWheelRotSpd)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'SteerWheelRotSpd)) (cl:read-byte istream))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'SteerWheelAngle) (roslisp-utils:decode-double-float-bits bits)))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'ElecPrkBrkStat)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'WhlGrndVlctyLftDrvnV)) (cl:read-byte istream))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'WhlGrndVlctyLftDrvn) (roslisp-utils:decode-double-float-bits bits)))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'WhlGrndVlctyRtDrvnV)) (cl:read-byte istream))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'WhlGrndVlctyRtDrvn) (roslisp-utils:decode-double-float-bits bits)))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'WhlGrndVlctyLftNnDrvnV)) (cl:read-byte istream))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'WhlGrndVlctyLftNnDrvn) (roslisp-utils:decode-double-float-bits bits)))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'WhlGrndVlctyRtNnDrvnV)) (cl:read-byte istream))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'WhlGrndVlctyRtNnDrvn) (roslisp-utils:decode-double-float-bits bits)))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'LftDrvnWhlDirec)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'WhlGrndPlsLftDrvnV)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'WhlGrndPlsLftDrvn)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'WhlGrndPlsLftDrvn)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'RtDrvnWhlDirec)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'WhlGrndPlsRtDrvnV)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'WhlGrndPlsRtDrvn)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'WhlGrndPlsRtDrvn)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'LftNnDrvnWhlDirec)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'WhlGrndPlsLftNnDrvnV)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'WhlGrndPlsLftNnDrvn)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'WhlGrndPlsLftNnDrvn)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'RtNnDrvnWhlDirec)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'WhlGrndPlsRtNnDrvnV)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'WhlGrndPlsRtNnDrvn)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'WhlGrndPlsRtNnDrvn)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'BBWSts)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'EBSDrvMod)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'IDURqst)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'EBSMCBrPressure)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'BrakPedalDisp)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'ADAS_StrAngleRqstV)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'ADASBrakRqstPres)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'ADASBrakRqstPres)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'EPB_ADASPrkngRqst)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'ADASStrTorqRqst)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'ADASStrTorqTgt)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'ADASStrTorqTgt)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'ADAS_StrAngle)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'ADAS_StrAngle)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'VCUTTgtAclrtnRqst)) (cl:read-byte istream))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'VCUTTgtAclrtnRqstVal) (roslisp-utils:decode-double-float-bits bits)))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'GearRqst)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'TgtGear)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'VCUTTgtSpRqst)) (cl:read-byte istream))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'VCUTTgtSpRqstVal) (roslisp-utils:decode-double-float-bits bits)))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'SensSt_1st)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'DisFrm1stFrtSens)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'DisFrm1stFrtSens)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'SensSt_2nd)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'DisFrm2ndFrtSens)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'DisFrm2ndFrtSens)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'SensSt_3rd)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'DisFrm3rdFrtSens)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'DisFrm3rdFrtSens)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'SensSt_4th)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'DisFrm4thFrtSens)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'DisFrm4thFrtSens)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'SensSt_5th)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'DisFrm5thFrtSens)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'DisFrm5thFrtSens)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'SensSt_6th)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'DisFrm6thFrtSens)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'DisFrm6thFrtSens)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'SensSt_7th)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'DisFrm7thFrtSens)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'DisFrm7thFrtSens)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'SensSt_8th)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'DisFrm8thFrtSens)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'DisFrm8thFrtSens)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'SensSt_9th)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'DisFrm9thFrtSens)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'DisFrm9thFrtSens)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'SensSt_10th)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'DisFrm10thFrtSens)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'DisFrm10thFrtSens)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'SensSt_11th)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'DisFrm11thFrtSens)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'DisFrm11thFrtSens)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'SensSt_12th)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'DisFrm12thFrtSens)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'DisFrm12thFrtSens)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ChassisMsg>)))
  "Returns string type for a message object of type '<ChassisMsg>"
  "in2ulv_msgs/ChassisMsg")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ChassisMsg)))
  "Returns string type for a message object of type 'ChassisMsg"
  "in2ulv_msgs/ChassisMsg")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ChassisMsg>)))
  "Returns md5sum for a message object of type '<ChassisMsg>"
  "4afd528f4d1ffe906c0a12d9e60847f2")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ChassisMsg)))
  "Returns md5sum for a message object of type 'ChassisMsg"
  "4afd528f4d1ffe906c0a12d9e60847f2")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ChassisMsg>)))
  "Returns full string definition for message of type '<ChassisMsg>"
  (cl:format cl:nil "# 帧头，包含时间戳信息~%std_msgs/Header header~%~%# 模块类型~%uint8 module_type~%~%# error_code~%uint32 error_code~%~%# 模块信息~%string chassis_data~%~%# VCU_Torque_Request (0x165)~%uint8 TMTorqRqstV       # 电机扭矩请求有效性~%float64 TMTorqRqst      # 电机扭矩请求~%# uint8 VCUCtrlRqst1RollCnt# 循环计数~%# uint8 VCUCtrlRqst1Cksm  # 校验和~%~%# VCU_General_Status_1 (04C5)~%uint8 HandBrkSts        # 手刹开关状态~%uint8 VecStatRdy        # 整车运行准备就绪~%uint8 KyPstn            # 钥匙状态~%~%# VCU_General_Status_2 (0x36A)~%uint8 VecSOC            # SOC值~%uint8 VehSpdAvgDrvnV    # 车速有效性~%float64 VehSpdAvgDrvn   # 车速~%uint8 VecTMActSpdV      # 电机当前转速有效性~%uint16 VecTMActSpd     # 电机当前转速~%# uint8 VCUGenStRollCn    # 循环计数~%uint8 VCUVehDrvMod      # VCU驱动模式~%# uint8 VCUGenStCksm      # 校验和~%~%# VCU_General_Status_3 0x4C7~%float64 LowBatVol       # 低压蓄电池电压~%~%# BMS_General_Status_2 (0x297)~%uint8 BatSOC    # 电池电量~%~%# Exterior_Lighting_HS (0x140)~%uint8 HhBmIO        # 远光灯指示~%uint8 WindscenWipSt # 雨刮状态~%uint8 LwBmIO        # 近光灯指示~%uint8 HzrdLgtSwAtv  # 危险警报开关状态~%uint8 HzrdLtIO      # 危险警报灯指示~%uint8 RtTrnLmpAtv   # 右转向灯指示~%uint8 LftTrnLmpAtv  # 左转向灯指示~%uint8 WipSwStat     # 雨刮控制开关状态~%uint8 StpLpSt       # 行车制动灯状态~%~%# Bool Is Turn Light Blinking Status~%bool is_left_blinking~%bool is_right_blinking~%~%# Airbag_Impact_Data (0x0E1)~%uint8 DrSbltAtc     # 驾驶员安全带状态~%uint8 DrSbltAtcV    # 安全带状态有效性~%~%# LS_Device_Information (0x12A)~%uint8 TDAjrSwAtv        # 尾门门碰开关状态~%uint8 PsDoorOpenSwAct   # 右前门锁开关状态~%uint8 PDAjrSwAtv        # 右前门门碰开关状态~%uint8 DrDoorOpenSwAct   # 驾驶员侧门锁开关状态~%uint8 DDAjrSwAct        # 驾驶员侧门碰开关状态~%float64 PsWdwOpenDgr    # 副驾驶车窗开度~%float64 DrWdwOpenDgr    # 驾驶员车窗开度~%uint8 BCMRunMod         # BCM运行模式~%uint8 BCMRunModV        # BCM运行模式有效性~%~%# Electric_Park_Brake_Status_1 (0x17E)~%uint8 EPBSysWrnIndReq_1     # EPB系统报警显示要求~%uint8 EPBSysWrnIndReqV_1    # EPB系统报警显示要求有效性~%uint8 EPBSysBrkLtsReq_1     # PB制动灯点亮要求~%uint8 EPBSysStatIndReq_1    # EPB系统状态指示灯需求~%# uint8 EPBAlvRlCnt_1         # 电子驻车循环计数~%uint8 ElecPrkBrkSwStatV_1   # 驻车按键状态有效性~%uint8 ElecPrkBrkStat_1      # EPB系统工作状态~%uint8 ElecPrkBrkSwStat_1    # 驻车按键状态~%# uint8 EPBStaCksm_1          # 校验和~%~%~%# ADAS_General_Status_11 (0x329)~%uint8 ADASWndSnWpCtrl       # ADAS雨刮控制~%uint8 ADASHzdLtCtrl         # ADAS双闪控制~%uint8 ADASSdTrnLmpRHCtrl    # ADAS右转向控制~%uint8 ADASSdTrnLmpLHCtrl    # ADAS左转向控制~%uint8 ADASLowBmCtrl         # ADAS近光灯控制~%uint8 ADASHighBmCtrl        # ADAS远光灯控制~%uint8 ADASLkCtrl            # ADAS锁控功能~%uint8 CarWindCtrl           # ADAS车窗控制~%uint8 ADASRemtPrkModRqst    # ADAS电源模式请求~%uint8 BCMADASCtrlRqst       # ADAS控制请求~%uint8 BCMADASCtrlRqstV      # ADAS控制请求有效性~%~%# MCU_General_Status_1 (0x16C)~%float64 TMActTorq   # 电机当前扭矩~%int32 TMActSpd      # 电机当前转速~%~%# # VCU_General_Status_2 (0x36A)~%# uint8 VehSpdAvgDrvnV    # 车速有效性~%# float64 VehSpdAvgDrvn   # 车速~%~%# PPEI_Chassis_General_Status_1 (0x1E9)~%uint8 VSELatAccV    # 横向加速度有效性~%float64 VSELatAcc   # 车辆横向加速度 ~%~%# Vehicle_Stability_Information (0x128)~%uint8 VSELongAccV   # 纵向加速度有效性~%float64 VSELongAcc  # 车辆纵向加速度~%~%# Vehicle_Odometer (0x120)~%float64 VehOdo  # 车辆行驶里程~%uint8 VehOdoV   # 车辆里程有效性~%~%# VCU_Vehicle_Command_State (0x155)~%uint8 BrakPedalPos  # 制动踏板位置~%uint8 AccActPos     # 加速踏板位置~%uint8 VecActGearStsV    # 整车当前档位状态有效性~%uint8 VecActGearSts     # 整车当前档位状态~%~%# PPEI_Steering_Wheel_Angle (0x1E5)~%uint8 StrWhAngV     # 方向盘角度有效性~%float64 StrWhAng    # 方向盘角度~%uint8 EPSProId      # EPS产品标识符~%uint8 PwrStrIo      # EPS故障指示~%# uint8 StWhlAngAliveRollCnt  # 循环计数~%# uint8 StrWhAngExPrtVal      # 校验和~%~%# PPEI_Steering_Wheel_Angle_Information (0x1E6)~%uint8 SterModV          # 转向模式有效性~%uint8 SterMod           # 转向模式~%float64 EPS_LKARespTorq # EPS LKA的响应扭矩~%uint8 SterFltMod        # 转向故障码(预留)~%uint8 DrStrTorqV        # 驾驶员转向扭矩有效性~%float64 DrStrTorqVal    # 驾驶员转向扭矩~%# uint8 StWhlAngInfmtnRollCnt # 循环计数~%# uint8 StWhlAngInfmtnCksm    # 校验和~%~%# Steering_Sensor_1 (0x14A)~%uint16 SteerWheelRotSpd     # 方向盘角速度~%float64 SteerWheelAngle     # 方向盘转角~%~%# Electic_Park_Brake_Status (0x230)~%uint8 ElecPrkBrkStat    # EBP系统工作状态~%~%# Electric_Wheel_Grnd_Velocity (0x348)~%uint8 WhlGrndVlctyLftDrvnV  # 左驱动轮对地速度有效性~%float64 WhlGrndVlctyLftDrvn # 左驱动轮对地速度~%uint8 WhlGrndVlctyRtDrvnV   # 右驱动轮对地速度有效性~%float64 WhlGrndVlctyRtDrvn  # 右驱动轮对地速度~%~%# NonDriven_Wheel_Grnd_Velocity (0x34A)~%uint8 WhlGrndVlctyLftNnDrvnV    # 左从动轮对地速度有效性~%float64 WhlGrndVlctyLftNnDrvn   # 左从动轮对地速度~%uint8 WhlGrndVlctyRtNnDrvnV     # 右从动轮对地速度有效性~%float64 WhlGrndVlctyRtNnDrvn    # 右从动轮对地速度~%~%# PPEI_Driven_Whl_Rotational_Stat (0x0C1)~%uint8 LftDrvnWhlDirec       # 左驱动轮方向~%uint8 WhlGrndPlsLftDrvnV    # 左驱动轮对地脉冲有效性~%uint16 WhlGrndPlsLftDrvn    # 左驱动轮对地脉冲~%uint8 RtDrvnWhlDirec        # 右驱动轮方向~%uint8 WhlGrndPlsRtDrvnV     # 右驱动轮对地脉冲有效性~%uint16 WhlGrndPlsRtDrvn     # 右驱动轮对地脉冲~%~%# PPEI_NonDriven_Whl_Rotational_Stat (0x0C5)~%uint8 LftNnDrvnWhlDirec     # 左从动轮方向~%uint8 WhlGrndPlsLftNnDrvnV  # 左从动轮对地脉冲有效性~%uint16 WhlGrndPlsLftNnDrvn  # 左从动轮对地脉冲~%uint8 RtNnDrvnWhlDirec      # 右从动轮方向~%uint8 WhlGrndPlsRtNnDrvnV   # 右从动轮对地脉冲有效性~%uint16 WhlGrndPlsRtNnDrvn   # 右从动轮对地脉冲~%~%# EBS_General_Status_1 (0x132)~%uint8 BBWSts            # 线控制动功能状态~%uint8 EBSDrvMod         # EBS运行模式~%uint8 IDURqst           # IDU线控制动请求状态~%uint8 EBSMCBrPressure   # EBS主缸制动压力~%uint8 BrakPedalDisp     # 制动踏板位移量~%# uint8 EBSGenSts1RollCnt # 循环计数~%# uint8 EBSGenSts1Cksm    # 校验和~%~%# ADAS_General_Status_1 (0x1D1)~%uint8 ADAS_StrAngleRqstV    # ADAS期望转向角度请求有效值~%uint16 ADASBrakRqstPres     # ADAS制动请求压力~%uint8 EPB_ADASPrkngRqst     # EPB ADAS驻车请求~%uint8 ADASStrTorqRqst       # ADAS转向扭矩请求~%uint16 ADASStrTorqTgt       # ADAS转向扭矩目标值~%uint16 ADAS_StrAngle        # ADAS期望转向角度~%~%# ADAS_General_Status_2 (0x1D2)~%uint8 VCUTTgtAclrtnRqst         # VCU目标加速度请求~%float64 VCUTTgtAclrtnRqstVal    # VCU目标加速度请求值~%uint8 GearRqst                  # 档位请求~%uint8 TgtGear                   # 档位~%uint8 VCUTTgtSpRqst             # VCU目标速度请求~%float64 VCUTTgtSpRqstVal        # VCU目标速度请求值~%~%# URC_Genertal_Status_1 (0x211)~%uint8 SensSt_1st        # 1号探头状态~%uint16 DisFrm1stFrtSens # 1号探头距离~%uint8 SensSt_2nd~%uint16 DisFrm2ndFrtSens~%uint8 SensSt_3rd~%uint16 DisFrm3rdFrtSens~%uint8 SensSt_4th~%uint16 DisFrm4thFrtSens~%~%# URC_Genertal_Status_2 (0x212)~%uint8 SensSt_5th~%uint16 DisFrm5thFrtSens~%uint8 SensSt_6th~%uint16 DisFrm6thFrtSens~%uint8 SensSt_7th~%uint16 DisFrm7thFrtSens~%uint8 SensSt_8th~%uint16 DisFrm8thFrtSens~%~%# URC_Genertal_Status_3 (0x213)~%uint8 SensSt_9th~%uint16 DisFrm9thFrtSens~%uint8 SensSt_10th~%uint16 DisFrm10thFrtSens~%uint8 SensSt_11th~%uint16 DisFrm11thFrtSens~%uint8 SensSt_12th~%uint16 DisFrm12thFrtSens~%~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ChassisMsg)))
  "Returns full string definition for message of type 'ChassisMsg"
  (cl:format cl:nil "# 帧头，包含时间戳信息~%std_msgs/Header header~%~%# 模块类型~%uint8 module_type~%~%# error_code~%uint32 error_code~%~%# 模块信息~%string chassis_data~%~%# VCU_Torque_Request (0x165)~%uint8 TMTorqRqstV       # 电机扭矩请求有效性~%float64 TMTorqRqst      # 电机扭矩请求~%# uint8 VCUCtrlRqst1RollCnt# 循环计数~%# uint8 VCUCtrlRqst1Cksm  # 校验和~%~%# VCU_General_Status_1 (04C5)~%uint8 HandBrkSts        # 手刹开关状态~%uint8 VecStatRdy        # 整车运行准备就绪~%uint8 KyPstn            # 钥匙状态~%~%# VCU_General_Status_2 (0x36A)~%uint8 VecSOC            # SOC值~%uint8 VehSpdAvgDrvnV    # 车速有效性~%float64 VehSpdAvgDrvn   # 车速~%uint8 VecTMActSpdV      # 电机当前转速有效性~%uint16 VecTMActSpd     # 电机当前转速~%# uint8 VCUGenStRollCn    # 循环计数~%uint8 VCUVehDrvMod      # VCU驱动模式~%# uint8 VCUGenStCksm      # 校验和~%~%# VCU_General_Status_3 0x4C7~%float64 LowBatVol       # 低压蓄电池电压~%~%# BMS_General_Status_2 (0x297)~%uint8 BatSOC    # 电池电量~%~%# Exterior_Lighting_HS (0x140)~%uint8 HhBmIO        # 远光灯指示~%uint8 WindscenWipSt # 雨刮状态~%uint8 LwBmIO        # 近光灯指示~%uint8 HzrdLgtSwAtv  # 危险警报开关状态~%uint8 HzrdLtIO      # 危险警报灯指示~%uint8 RtTrnLmpAtv   # 右转向灯指示~%uint8 LftTrnLmpAtv  # 左转向灯指示~%uint8 WipSwStat     # 雨刮控制开关状态~%uint8 StpLpSt       # 行车制动灯状态~%~%# Bool Is Turn Light Blinking Status~%bool is_left_blinking~%bool is_right_blinking~%~%# Airbag_Impact_Data (0x0E1)~%uint8 DrSbltAtc     # 驾驶员安全带状态~%uint8 DrSbltAtcV    # 安全带状态有效性~%~%# LS_Device_Information (0x12A)~%uint8 TDAjrSwAtv        # 尾门门碰开关状态~%uint8 PsDoorOpenSwAct   # 右前门锁开关状态~%uint8 PDAjrSwAtv        # 右前门门碰开关状态~%uint8 DrDoorOpenSwAct   # 驾驶员侧门锁开关状态~%uint8 DDAjrSwAct        # 驾驶员侧门碰开关状态~%float64 PsWdwOpenDgr    # 副驾驶车窗开度~%float64 DrWdwOpenDgr    # 驾驶员车窗开度~%uint8 BCMRunMod         # BCM运行模式~%uint8 BCMRunModV        # BCM运行模式有效性~%~%# Electric_Park_Brake_Status_1 (0x17E)~%uint8 EPBSysWrnIndReq_1     # EPB系统报警显示要求~%uint8 EPBSysWrnIndReqV_1    # EPB系统报警显示要求有效性~%uint8 EPBSysBrkLtsReq_1     # PB制动灯点亮要求~%uint8 EPBSysStatIndReq_1    # EPB系统状态指示灯需求~%# uint8 EPBAlvRlCnt_1         # 电子驻车循环计数~%uint8 ElecPrkBrkSwStatV_1   # 驻车按键状态有效性~%uint8 ElecPrkBrkStat_1      # EPB系统工作状态~%uint8 ElecPrkBrkSwStat_1    # 驻车按键状态~%# uint8 EPBStaCksm_1          # 校验和~%~%~%# ADAS_General_Status_11 (0x329)~%uint8 ADASWndSnWpCtrl       # ADAS雨刮控制~%uint8 ADASHzdLtCtrl         # ADAS双闪控制~%uint8 ADASSdTrnLmpRHCtrl    # ADAS右转向控制~%uint8 ADASSdTrnLmpLHCtrl    # ADAS左转向控制~%uint8 ADASLowBmCtrl         # ADAS近光灯控制~%uint8 ADASHighBmCtrl        # ADAS远光灯控制~%uint8 ADASLkCtrl            # ADAS锁控功能~%uint8 CarWindCtrl           # ADAS车窗控制~%uint8 ADASRemtPrkModRqst    # ADAS电源模式请求~%uint8 BCMADASCtrlRqst       # ADAS控制请求~%uint8 BCMADASCtrlRqstV      # ADAS控制请求有效性~%~%# MCU_General_Status_1 (0x16C)~%float64 TMActTorq   # 电机当前扭矩~%int32 TMActSpd      # 电机当前转速~%~%# # VCU_General_Status_2 (0x36A)~%# uint8 VehSpdAvgDrvnV    # 车速有效性~%# float64 VehSpdAvgDrvn   # 车速~%~%# PPEI_Chassis_General_Status_1 (0x1E9)~%uint8 VSELatAccV    # 横向加速度有效性~%float64 VSELatAcc   # 车辆横向加速度 ~%~%# Vehicle_Stability_Information (0x128)~%uint8 VSELongAccV   # 纵向加速度有效性~%float64 VSELongAcc  # 车辆纵向加速度~%~%# Vehicle_Odometer (0x120)~%float64 VehOdo  # 车辆行驶里程~%uint8 VehOdoV   # 车辆里程有效性~%~%# VCU_Vehicle_Command_State (0x155)~%uint8 BrakPedalPos  # 制动踏板位置~%uint8 AccActPos     # 加速踏板位置~%uint8 VecActGearStsV    # 整车当前档位状态有效性~%uint8 VecActGearSts     # 整车当前档位状态~%~%# PPEI_Steering_Wheel_Angle (0x1E5)~%uint8 StrWhAngV     # 方向盘角度有效性~%float64 StrWhAng    # 方向盘角度~%uint8 EPSProId      # EPS产品标识符~%uint8 PwrStrIo      # EPS故障指示~%# uint8 StWhlAngAliveRollCnt  # 循环计数~%# uint8 StrWhAngExPrtVal      # 校验和~%~%# PPEI_Steering_Wheel_Angle_Information (0x1E6)~%uint8 SterModV          # 转向模式有效性~%uint8 SterMod           # 转向模式~%float64 EPS_LKARespTorq # EPS LKA的响应扭矩~%uint8 SterFltMod        # 转向故障码(预留)~%uint8 DrStrTorqV        # 驾驶员转向扭矩有效性~%float64 DrStrTorqVal    # 驾驶员转向扭矩~%# uint8 StWhlAngInfmtnRollCnt # 循环计数~%# uint8 StWhlAngInfmtnCksm    # 校验和~%~%# Steering_Sensor_1 (0x14A)~%uint16 SteerWheelRotSpd     # 方向盘角速度~%float64 SteerWheelAngle     # 方向盘转角~%~%# Electic_Park_Brake_Status (0x230)~%uint8 ElecPrkBrkStat    # EBP系统工作状态~%~%# Electric_Wheel_Grnd_Velocity (0x348)~%uint8 WhlGrndVlctyLftDrvnV  # 左驱动轮对地速度有效性~%float64 WhlGrndVlctyLftDrvn # 左驱动轮对地速度~%uint8 WhlGrndVlctyRtDrvnV   # 右驱动轮对地速度有效性~%float64 WhlGrndVlctyRtDrvn  # 右驱动轮对地速度~%~%# NonDriven_Wheel_Grnd_Velocity (0x34A)~%uint8 WhlGrndVlctyLftNnDrvnV    # 左从动轮对地速度有效性~%float64 WhlGrndVlctyLftNnDrvn   # 左从动轮对地速度~%uint8 WhlGrndVlctyRtNnDrvnV     # 右从动轮对地速度有效性~%float64 WhlGrndVlctyRtNnDrvn    # 右从动轮对地速度~%~%# PPEI_Driven_Whl_Rotational_Stat (0x0C1)~%uint8 LftDrvnWhlDirec       # 左驱动轮方向~%uint8 WhlGrndPlsLftDrvnV    # 左驱动轮对地脉冲有效性~%uint16 WhlGrndPlsLftDrvn    # 左驱动轮对地脉冲~%uint8 RtDrvnWhlDirec        # 右驱动轮方向~%uint8 WhlGrndPlsRtDrvnV     # 右驱动轮对地脉冲有效性~%uint16 WhlGrndPlsRtDrvn     # 右驱动轮对地脉冲~%~%# PPEI_NonDriven_Whl_Rotational_Stat (0x0C5)~%uint8 LftNnDrvnWhlDirec     # 左从动轮方向~%uint8 WhlGrndPlsLftNnDrvnV  # 左从动轮对地脉冲有效性~%uint16 WhlGrndPlsLftNnDrvn  # 左从动轮对地脉冲~%uint8 RtNnDrvnWhlDirec      # 右从动轮方向~%uint8 WhlGrndPlsRtNnDrvnV   # 右从动轮对地脉冲有效性~%uint16 WhlGrndPlsRtNnDrvn   # 右从动轮对地脉冲~%~%# EBS_General_Status_1 (0x132)~%uint8 BBWSts            # 线控制动功能状态~%uint8 EBSDrvMod         # EBS运行模式~%uint8 IDURqst           # IDU线控制动请求状态~%uint8 EBSMCBrPressure   # EBS主缸制动压力~%uint8 BrakPedalDisp     # 制动踏板位移量~%# uint8 EBSGenSts1RollCnt # 循环计数~%# uint8 EBSGenSts1Cksm    # 校验和~%~%# ADAS_General_Status_1 (0x1D1)~%uint8 ADAS_StrAngleRqstV    # ADAS期望转向角度请求有效值~%uint16 ADASBrakRqstPres     # ADAS制动请求压力~%uint8 EPB_ADASPrkngRqst     # EPB ADAS驻车请求~%uint8 ADASStrTorqRqst       # ADAS转向扭矩请求~%uint16 ADASStrTorqTgt       # ADAS转向扭矩目标值~%uint16 ADAS_StrAngle        # ADAS期望转向角度~%~%# ADAS_General_Status_2 (0x1D2)~%uint8 VCUTTgtAclrtnRqst         # VCU目标加速度请求~%float64 VCUTTgtAclrtnRqstVal    # VCU目标加速度请求值~%uint8 GearRqst                  # 档位请求~%uint8 TgtGear                   # 档位~%uint8 VCUTTgtSpRqst             # VCU目标速度请求~%float64 VCUTTgtSpRqstVal        # VCU目标速度请求值~%~%# URC_Genertal_Status_1 (0x211)~%uint8 SensSt_1st        # 1号探头状态~%uint16 DisFrm1stFrtSens # 1号探头距离~%uint8 SensSt_2nd~%uint16 DisFrm2ndFrtSens~%uint8 SensSt_3rd~%uint16 DisFrm3rdFrtSens~%uint8 SensSt_4th~%uint16 DisFrm4thFrtSens~%~%# URC_Genertal_Status_2 (0x212)~%uint8 SensSt_5th~%uint16 DisFrm5thFrtSens~%uint8 SensSt_6th~%uint16 DisFrm6thFrtSens~%uint8 SensSt_7th~%uint16 DisFrm7thFrtSens~%uint8 SensSt_8th~%uint16 DisFrm8thFrtSens~%~%# URC_Genertal_Status_3 (0x213)~%uint8 SensSt_9th~%uint16 DisFrm9thFrtSens~%uint8 SensSt_10th~%uint16 DisFrm10thFrtSens~%uint8 SensSt_11th~%uint16 DisFrm11thFrtSens~%uint8 SensSt_12th~%uint16 DisFrm12thFrtSens~%~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ChassisMsg>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     1
     4
     4 (cl:length (cl:slot-value msg 'chassis_data))
     1
     8
     1
     1
     1
     1
     1
     8
     1
     2
     1
     8
     1
     1
     1
     1
     1
     1
     1
     1
     1
     1
     1
     1
     1
     1
     1
     1
     1
     1
     1
     8
     8
     1
     1
     1
     1
     1
     1
     1
     1
     1
     1
     1
     1
     1
     1
     1
     1
     1
     1
     1
     1
     8
     4
     1
     8
     1
     8
     8
     1
     1
     1
     1
     1
     1
     8
     1
     1
     1
     1
     8
     1
     1
     8
     2
     8
     1
     1
     8
     1
     8
     1
     8
     1
     8
     1
     1
     2
     1
     1
     2
     1
     1
     2
     1
     1
     2
     1
     1
     1
     1
     1
     1
     2
     1
     1
     2
     2
     1
     8
     1
     1
     1
     8
     1
     2
     1
     2
     1
     2
     1
     2
     1
     2
     1
     2
     1
     2
     1
     2
     1
     2
     1
     2
     1
     2
     1
     2
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ChassisMsg>))
  "Converts a ROS message object to a list"
  (cl:list 'ChassisMsg
    (cl:cons ':header (header msg))
    (cl:cons ':module_type (module_type msg))
    (cl:cons ':error_code (error_code msg))
    (cl:cons ':chassis_data (chassis_data msg))
    (cl:cons ':TMTorqRqstV (TMTorqRqstV msg))
    (cl:cons ':TMTorqRqst (TMTorqRqst msg))
    (cl:cons ':HandBrkSts (HandBrkSts msg))
    (cl:cons ':VecStatRdy (VecStatRdy msg))
    (cl:cons ':KyPstn (KyPstn msg))
    (cl:cons ':VecSOC (VecSOC msg))
    (cl:cons ':VehSpdAvgDrvnV (VehSpdAvgDrvnV msg))
    (cl:cons ':VehSpdAvgDrvn (VehSpdAvgDrvn msg))
    (cl:cons ':VecTMActSpdV (VecTMActSpdV msg))
    (cl:cons ':VecTMActSpd (VecTMActSpd msg))
    (cl:cons ':VCUVehDrvMod (VCUVehDrvMod msg))
    (cl:cons ':LowBatVol (LowBatVol msg))
    (cl:cons ':BatSOC (BatSOC msg))
    (cl:cons ':HhBmIO (HhBmIO msg))
    (cl:cons ':WindscenWipSt (WindscenWipSt msg))
    (cl:cons ':LwBmIO (LwBmIO msg))
    (cl:cons ':HzrdLgtSwAtv (HzrdLgtSwAtv msg))
    (cl:cons ':HzrdLtIO (HzrdLtIO msg))
    (cl:cons ':RtTrnLmpAtv (RtTrnLmpAtv msg))
    (cl:cons ':LftTrnLmpAtv (LftTrnLmpAtv msg))
    (cl:cons ':WipSwStat (WipSwStat msg))
    (cl:cons ':StpLpSt (StpLpSt msg))
    (cl:cons ':is_left_blinking (is_left_blinking msg))
    (cl:cons ':is_right_blinking (is_right_blinking msg))
    (cl:cons ':DrSbltAtc (DrSbltAtc msg))
    (cl:cons ':DrSbltAtcV (DrSbltAtcV msg))
    (cl:cons ':TDAjrSwAtv (TDAjrSwAtv msg))
    (cl:cons ':PsDoorOpenSwAct (PsDoorOpenSwAct msg))
    (cl:cons ':PDAjrSwAtv (PDAjrSwAtv msg))
    (cl:cons ':DrDoorOpenSwAct (DrDoorOpenSwAct msg))
    (cl:cons ':DDAjrSwAct (DDAjrSwAct msg))
    (cl:cons ':PsWdwOpenDgr (PsWdwOpenDgr msg))
    (cl:cons ':DrWdwOpenDgr (DrWdwOpenDgr msg))
    (cl:cons ':BCMRunMod (BCMRunMod msg))
    (cl:cons ':BCMRunModV (BCMRunModV msg))
    (cl:cons ':EPBSysWrnIndReq_1 (EPBSysWrnIndReq_1 msg))
    (cl:cons ':EPBSysWrnIndReqV_1 (EPBSysWrnIndReqV_1 msg))
    (cl:cons ':EPBSysBrkLtsReq_1 (EPBSysBrkLtsReq_1 msg))
    (cl:cons ':EPBSysStatIndReq_1 (EPBSysStatIndReq_1 msg))
    (cl:cons ':ElecPrkBrkSwStatV_1 (ElecPrkBrkSwStatV_1 msg))
    (cl:cons ':ElecPrkBrkStat_1 (ElecPrkBrkStat_1 msg))
    (cl:cons ':ElecPrkBrkSwStat_1 (ElecPrkBrkSwStat_1 msg))
    (cl:cons ':ADASWndSnWpCtrl (ADASWndSnWpCtrl msg))
    (cl:cons ':ADASHzdLtCtrl (ADASHzdLtCtrl msg))
    (cl:cons ':ADASSdTrnLmpRHCtrl (ADASSdTrnLmpRHCtrl msg))
    (cl:cons ':ADASSdTrnLmpLHCtrl (ADASSdTrnLmpLHCtrl msg))
    (cl:cons ':ADASLowBmCtrl (ADASLowBmCtrl msg))
    (cl:cons ':ADASHighBmCtrl (ADASHighBmCtrl msg))
    (cl:cons ':ADASLkCtrl (ADASLkCtrl msg))
    (cl:cons ':CarWindCtrl (CarWindCtrl msg))
    (cl:cons ':ADASRemtPrkModRqst (ADASRemtPrkModRqst msg))
    (cl:cons ':BCMADASCtrlRqst (BCMADASCtrlRqst msg))
    (cl:cons ':BCMADASCtrlRqstV (BCMADASCtrlRqstV msg))
    (cl:cons ':TMActTorq (TMActTorq msg))
    (cl:cons ':TMActSpd (TMActSpd msg))
    (cl:cons ':VSELatAccV (VSELatAccV msg))
    (cl:cons ':VSELatAcc (VSELatAcc msg))
    (cl:cons ':VSELongAccV (VSELongAccV msg))
    (cl:cons ':VSELongAcc (VSELongAcc msg))
    (cl:cons ':VehOdo (VehOdo msg))
    (cl:cons ':VehOdoV (VehOdoV msg))
    (cl:cons ':BrakPedalPos (BrakPedalPos msg))
    (cl:cons ':AccActPos (AccActPos msg))
    (cl:cons ':VecActGearStsV (VecActGearStsV msg))
    (cl:cons ':VecActGearSts (VecActGearSts msg))
    (cl:cons ':StrWhAngV (StrWhAngV msg))
    (cl:cons ':StrWhAng (StrWhAng msg))
    (cl:cons ':EPSProId (EPSProId msg))
    (cl:cons ':PwrStrIo (PwrStrIo msg))
    (cl:cons ':SterModV (SterModV msg))
    (cl:cons ':SterMod (SterMod msg))
    (cl:cons ':EPS_LKARespTorq (EPS_LKARespTorq msg))
    (cl:cons ':SterFltMod (SterFltMod msg))
    (cl:cons ':DrStrTorqV (DrStrTorqV msg))
    (cl:cons ':DrStrTorqVal (DrStrTorqVal msg))
    (cl:cons ':SteerWheelRotSpd (SteerWheelRotSpd msg))
    (cl:cons ':SteerWheelAngle (SteerWheelAngle msg))
    (cl:cons ':ElecPrkBrkStat (ElecPrkBrkStat msg))
    (cl:cons ':WhlGrndVlctyLftDrvnV (WhlGrndVlctyLftDrvnV msg))
    (cl:cons ':WhlGrndVlctyLftDrvn (WhlGrndVlctyLftDrvn msg))
    (cl:cons ':WhlGrndVlctyRtDrvnV (WhlGrndVlctyRtDrvnV msg))
    (cl:cons ':WhlGrndVlctyRtDrvn (WhlGrndVlctyRtDrvn msg))
    (cl:cons ':WhlGrndVlctyLftNnDrvnV (WhlGrndVlctyLftNnDrvnV msg))
    (cl:cons ':WhlGrndVlctyLftNnDrvn (WhlGrndVlctyLftNnDrvn msg))
    (cl:cons ':WhlGrndVlctyRtNnDrvnV (WhlGrndVlctyRtNnDrvnV msg))
    (cl:cons ':WhlGrndVlctyRtNnDrvn (WhlGrndVlctyRtNnDrvn msg))
    (cl:cons ':LftDrvnWhlDirec (LftDrvnWhlDirec msg))
    (cl:cons ':WhlGrndPlsLftDrvnV (WhlGrndPlsLftDrvnV msg))
    (cl:cons ':WhlGrndPlsLftDrvn (WhlGrndPlsLftDrvn msg))
    (cl:cons ':RtDrvnWhlDirec (RtDrvnWhlDirec msg))
    (cl:cons ':WhlGrndPlsRtDrvnV (WhlGrndPlsRtDrvnV msg))
    (cl:cons ':WhlGrndPlsRtDrvn (WhlGrndPlsRtDrvn msg))
    (cl:cons ':LftNnDrvnWhlDirec (LftNnDrvnWhlDirec msg))
    (cl:cons ':WhlGrndPlsLftNnDrvnV (WhlGrndPlsLftNnDrvnV msg))
    (cl:cons ':WhlGrndPlsLftNnDrvn (WhlGrndPlsLftNnDrvn msg))
    (cl:cons ':RtNnDrvnWhlDirec (RtNnDrvnWhlDirec msg))
    (cl:cons ':WhlGrndPlsRtNnDrvnV (WhlGrndPlsRtNnDrvnV msg))
    (cl:cons ':WhlGrndPlsRtNnDrvn (WhlGrndPlsRtNnDrvn msg))
    (cl:cons ':BBWSts (BBWSts msg))
    (cl:cons ':EBSDrvMod (EBSDrvMod msg))
    (cl:cons ':IDURqst (IDURqst msg))
    (cl:cons ':EBSMCBrPressure (EBSMCBrPressure msg))
    (cl:cons ':BrakPedalDisp (BrakPedalDisp msg))
    (cl:cons ':ADAS_StrAngleRqstV (ADAS_StrAngleRqstV msg))
    (cl:cons ':ADASBrakRqstPres (ADASBrakRqstPres msg))
    (cl:cons ':EPB_ADASPrkngRqst (EPB_ADASPrkngRqst msg))
    (cl:cons ':ADASStrTorqRqst (ADASStrTorqRqst msg))
    (cl:cons ':ADASStrTorqTgt (ADASStrTorqTgt msg))
    (cl:cons ':ADAS_StrAngle (ADAS_StrAngle msg))
    (cl:cons ':VCUTTgtAclrtnRqst (VCUTTgtAclrtnRqst msg))
    (cl:cons ':VCUTTgtAclrtnRqstVal (VCUTTgtAclrtnRqstVal msg))
    (cl:cons ':GearRqst (GearRqst msg))
    (cl:cons ':TgtGear (TgtGear msg))
    (cl:cons ':VCUTTgtSpRqst (VCUTTgtSpRqst msg))
    (cl:cons ':VCUTTgtSpRqstVal (VCUTTgtSpRqstVal msg))
    (cl:cons ':SensSt_1st (SensSt_1st msg))
    (cl:cons ':DisFrm1stFrtSens (DisFrm1stFrtSens msg))
    (cl:cons ':SensSt_2nd (SensSt_2nd msg))
    (cl:cons ':DisFrm2ndFrtSens (DisFrm2ndFrtSens msg))
    (cl:cons ':SensSt_3rd (SensSt_3rd msg))
    (cl:cons ':DisFrm3rdFrtSens (DisFrm3rdFrtSens msg))
    (cl:cons ':SensSt_4th (SensSt_4th msg))
    (cl:cons ':DisFrm4thFrtSens (DisFrm4thFrtSens msg))
    (cl:cons ':SensSt_5th (SensSt_5th msg))
    (cl:cons ':DisFrm5thFrtSens (DisFrm5thFrtSens msg))
    (cl:cons ':SensSt_6th (SensSt_6th msg))
    (cl:cons ':DisFrm6thFrtSens (DisFrm6thFrtSens msg))
    (cl:cons ':SensSt_7th (SensSt_7th msg))
    (cl:cons ':DisFrm7thFrtSens (DisFrm7thFrtSens msg))
    (cl:cons ':SensSt_8th (SensSt_8th msg))
    (cl:cons ':DisFrm8thFrtSens (DisFrm8thFrtSens msg))
    (cl:cons ':SensSt_9th (SensSt_9th msg))
    (cl:cons ':DisFrm9thFrtSens (DisFrm9thFrtSens msg))
    (cl:cons ':SensSt_10th (SensSt_10th msg))
    (cl:cons ':DisFrm10thFrtSens (DisFrm10thFrtSens msg))
    (cl:cons ':SensSt_11th (SensSt_11th msg))
    (cl:cons ':DisFrm11thFrtSens (DisFrm11thFrtSens msg))
    (cl:cons ':SensSt_12th (SensSt_12th msg))
    (cl:cons ':DisFrm12thFrtSens (DisFrm12thFrtSens msg))
))
