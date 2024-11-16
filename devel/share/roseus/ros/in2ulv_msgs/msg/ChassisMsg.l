;; Auto-generated. Do not edit!


(when (boundp 'in2ulv_msgs::ChassisMsg)
  (if (not (find-package "IN2ULV_MSGS"))
    (make-package "IN2ULV_MSGS"))
  (shadow 'ChassisMsg (find-package "IN2ULV_MSGS")))
(unless (find-package "IN2ULV_MSGS::CHASSISMSG")
  (make-package "IN2ULV_MSGS::CHASSISMSG"))

(in-package "ROS")
;;//! \htmlinclude ChassisMsg.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass in2ulv_msgs::ChassisMsg
  :super ros::object
  :slots (_header _module_type _error_code _chassis_data _TMTorqRqstV _TMTorqRqst _HandBrkSts _VecStatRdy _KyPstn _VecSOC _VehSpdAvgDrvnV _VehSpdAvgDrvn _VecTMActSpdV _VecTMActSpd _VCUVehDrvMod _LowBatVol _BatSOC _HhBmIO _WindscenWipSt _LwBmIO _HzrdLgtSwAtv _HzrdLtIO _RtTrnLmpAtv _LftTrnLmpAtv _WipSwStat _StpLpSt _is_left_blinking _is_right_blinking _DrSbltAtc _DrSbltAtcV _TDAjrSwAtv _PsDoorOpenSwAct _PDAjrSwAtv _DrDoorOpenSwAct _DDAjrSwAct _PsWdwOpenDgr _DrWdwOpenDgr _BCMRunMod _BCMRunModV _EPBSysWrnIndReq_1 _EPBSysWrnIndReqV_1 _EPBSysBrkLtsReq_1 _EPBSysStatIndReq_1 _ElecPrkBrkSwStatV_1 _ElecPrkBrkStat_1 _ElecPrkBrkSwStat_1 _ADASWndSnWpCtrl _ADASHzdLtCtrl _ADASSdTrnLmpRHCtrl _ADASSdTrnLmpLHCtrl _ADASLowBmCtrl _ADASHighBmCtrl _ADASLkCtrl _CarWindCtrl _ADASRemtPrkModRqst _BCMADASCtrlRqst _BCMADASCtrlRqstV _TMActTorq _TMActSpd _VSELatAccV _VSELatAcc _VSELongAccV _VSELongAcc _VehOdo _VehOdoV _BrakPedalPos _AccActPos _VecActGearStsV _VecActGearSts _StrWhAngV _StrWhAng _EPSProId _PwrStrIo _SterModV _SterMod _EPS_LKARespTorq _SterFltMod _DrStrTorqV _DrStrTorqVal _SteerWheelRotSpd _SteerWheelAngle _ElecPrkBrkStat _WhlGrndVlctyLftDrvnV _WhlGrndVlctyLftDrvn _WhlGrndVlctyRtDrvnV _WhlGrndVlctyRtDrvn _WhlGrndVlctyLftNnDrvnV _WhlGrndVlctyLftNnDrvn _WhlGrndVlctyRtNnDrvnV _WhlGrndVlctyRtNnDrvn _LftDrvnWhlDirec _WhlGrndPlsLftDrvnV _WhlGrndPlsLftDrvn _RtDrvnWhlDirec _WhlGrndPlsRtDrvnV _WhlGrndPlsRtDrvn _LftNnDrvnWhlDirec _WhlGrndPlsLftNnDrvnV _WhlGrndPlsLftNnDrvn _RtNnDrvnWhlDirec _WhlGrndPlsRtNnDrvnV _WhlGrndPlsRtNnDrvn _BBWSts _EBSDrvMod _IDURqst _EBSMCBrPressure _BrakPedalDisp _ADAS_StrAngleRqstV _ADASBrakRqstPres _EPB_ADASPrkngRqst _ADASStrTorqRqst _ADASStrTorqTgt _ADAS_StrAngle _VCUTTgtAclrtnRqst _VCUTTgtAclrtnRqstVal _GearRqst _TgtGear _VCUTTgtSpRqst _VCUTTgtSpRqstVal _SensSt_1st _DisFrm1stFrtSens _SensSt_2nd _DisFrm2ndFrtSens _SensSt_3rd _DisFrm3rdFrtSens _SensSt_4th _DisFrm4thFrtSens _SensSt_5th _DisFrm5thFrtSens _SensSt_6th _DisFrm6thFrtSens _SensSt_7th _DisFrm7thFrtSens _SensSt_8th _DisFrm8thFrtSens _SensSt_9th _DisFrm9thFrtSens _SensSt_10th _DisFrm10thFrtSens _SensSt_11th _DisFrm11thFrtSens _SensSt_12th _DisFrm12thFrtSens ))

(defmethod in2ulv_msgs::ChassisMsg
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:module_type __module_type) 0)
    ((:error_code __error_code) 0)
    ((:chassis_data __chassis_data) "")
    ((:TMTorqRqstV __TMTorqRqstV) 0)
    ((:TMTorqRqst __TMTorqRqst) 0.0)
    ((:HandBrkSts __HandBrkSts) 0)
    ((:VecStatRdy __VecStatRdy) 0)
    ((:KyPstn __KyPstn) 0)
    ((:VecSOC __VecSOC) 0)
    ((:VehSpdAvgDrvnV __VehSpdAvgDrvnV) 0)
    ((:VehSpdAvgDrvn __VehSpdAvgDrvn) 0.0)
    ((:VecTMActSpdV __VecTMActSpdV) 0)
    ((:VecTMActSpd __VecTMActSpd) 0)
    ((:VCUVehDrvMod __VCUVehDrvMod) 0)
    ((:LowBatVol __LowBatVol) 0.0)
    ((:BatSOC __BatSOC) 0)
    ((:HhBmIO __HhBmIO) 0)
    ((:WindscenWipSt __WindscenWipSt) 0)
    ((:LwBmIO __LwBmIO) 0)
    ((:HzrdLgtSwAtv __HzrdLgtSwAtv) 0)
    ((:HzrdLtIO __HzrdLtIO) 0)
    ((:RtTrnLmpAtv __RtTrnLmpAtv) 0)
    ((:LftTrnLmpAtv __LftTrnLmpAtv) 0)
    ((:WipSwStat __WipSwStat) 0)
    ((:StpLpSt __StpLpSt) 0)
    ((:is_left_blinking __is_left_blinking) nil)
    ((:is_right_blinking __is_right_blinking) nil)
    ((:DrSbltAtc __DrSbltAtc) 0)
    ((:DrSbltAtcV __DrSbltAtcV) 0)
    ((:TDAjrSwAtv __TDAjrSwAtv) 0)
    ((:PsDoorOpenSwAct __PsDoorOpenSwAct) 0)
    ((:PDAjrSwAtv __PDAjrSwAtv) 0)
    ((:DrDoorOpenSwAct __DrDoorOpenSwAct) 0)
    ((:DDAjrSwAct __DDAjrSwAct) 0)
    ((:PsWdwOpenDgr __PsWdwOpenDgr) 0.0)
    ((:DrWdwOpenDgr __DrWdwOpenDgr) 0.0)
    ((:BCMRunMod __BCMRunMod) 0)
    ((:BCMRunModV __BCMRunModV) 0)
    ((:EPBSysWrnIndReq_1 __EPBSysWrnIndReq_1) 0)
    ((:EPBSysWrnIndReqV_1 __EPBSysWrnIndReqV_1) 0)
    ((:EPBSysBrkLtsReq_1 __EPBSysBrkLtsReq_1) 0)
    ((:EPBSysStatIndReq_1 __EPBSysStatIndReq_1) 0)
    ((:ElecPrkBrkSwStatV_1 __ElecPrkBrkSwStatV_1) 0)
    ((:ElecPrkBrkStat_1 __ElecPrkBrkStat_1) 0)
    ((:ElecPrkBrkSwStat_1 __ElecPrkBrkSwStat_1) 0)
    ((:ADASWndSnWpCtrl __ADASWndSnWpCtrl) 0)
    ((:ADASHzdLtCtrl __ADASHzdLtCtrl) 0)
    ((:ADASSdTrnLmpRHCtrl __ADASSdTrnLmpRHCtrl) 0)
    ((:ADASSdTrnLmpLHCtrl __ADASSdTrnLmpLHCtrl) 0)
    ((:ADASLowBmCtrl __ADASLowBmCtrl) 0)
    ((:ADASHighBmCtrl __ADASHighBmCtrl) 0)
    ((:ADASLkCtrl __ADASLkCtrl) 0)
    ((:CarWindCtrl __CarWindCtrl) 0)
    ((:ADASRemtPrkModRqst __ADASRemtPrkModRqst) 0)
    ((:BCMADASCtrlRqst __BCMADASCtrlRqst) 0)
    ((:BCMADASCtrlRqstV __BCMADASCtrlRqstV) 0)
    ((:TMActTorq __TMActTorq) 0.0)
    ((:TMActSpd __TMActSpd) 0)
    ((:VSELatAccV __VSELatAccV) 0)
    ((:VSELatAcc __VSELatAcc) 0.0)
    ((:VSELongAccV __VSELongAccV) 0)
    ((:VSELongAcc __VSELongAcc) 0.0)
    ((:VehOdo __VehOdo) 0.0)
    ((:VehOdoV __VehOdoV) 0)
    ((:BrakPedalPos __BrakPedalPos) 0)
    ((:AccActPos __AccActPos) 0)
    ((:VecActGearStsV __VecActGearStsV) 0)
    ((:VecActGearSts __VecActGearSts) 0)
    ((:StrWhAngV __StrWhAngV) 0)
    ((:StrWhAng __StrWhAng) 0.0)
    ((:EPSProId __EPSProId) 0)
    ((:PwrStrIo __PwrStrIo) 0)
    ((:SterModV __SterModV) 0)
    ((:SterMod __SterMod) 0)
    ((:EPS_LKARespTorq __EPS_LKARespTorq) 0.0)
    ((:SterFltMod __SterFltMod) 0)
    ((:DrStrTorqV __DrStrTorqV) 0)
    ((:DrStrTorqVal __DrStrTorqVal) 0.0)
    ((:SteerWheelRotSpd __SteerWheelRotSpd) 0)
    ((:SteerWheelAngle __SteerWheelAngle) 0.0)
    ((:ElecPrkBrkStat __ElecPrkBrkStat) 0)
    ((:WhlGrndVlctyLftDrvnV __WhlGrndVlctyLftDrvnV) 0)
    ((:WhlGrndVlctyLftDrvn __WhlGrndVlctyLftDrvn) 0.0)
    ((:WhlGrndVlctyRtDrvnV __WhlGrndVlctyRtDrvnV) 0)
    ((:WhlGrndVlctyRtDrvn __WhlGrndVlctyRtDrvn) 0.0)
    ((:WhlGrndVlctyLftNnDrvnV __WhlGrndVlctyLftNnDrvnV) 0)
    ((:WhlGrndVlctyLftNnDrvn __WhlGrndVlctyLftNnDrvn) 0.0)
    ((:WhlGrndVlctyRtNnDrvnV __WhlGrndVlctyRtNnDrvnV) 0)
    ((:WhlGrndVlctyRtNnDrvn __WhlGrndVlctyRtNnDrvn) 0.0)
    ((:LftDrvnWhlDirec __LftDrvnWhlDirec) 0)
    ((:WhlGrndPlsLftDrvnV __WhlGrndPlsLftDrvnV) 0)
    ((:WhlGrndPlsLftDrvn __WhlGrndPlsLftDrvn) 0)
    ((:RtDrvnWhlDirec __RtDrvnWhlDirec) 0)
    ((:WhlGrndPlsRtDrvnV __WhlGrndPlsRtDrvnV) 0)
    ((:WhlGrndPlsRtDrvn __WhlGrndPlsRtDrvn) 0)
    ((:LftNnDrvnWhlDirec __LftNnDrvnWhlDirec) 0)
    ((:WhlGrndPlsLftNnDrvnV __WhlGrndPlsLftNnDrvnV) 0)
    ((:WhlGrndPlsLftNnDrvn __WhlGrndPlsLftNnDrvn) 0)
    ((:RtNnDrvnWhlDirec __RtNnDrvnWhlDirec) 0)
    ((:WhlGrndPlsRtNnDrvnV __WhlGrndPlsRtNnDrvnV) 0)
    ((:WhlGrndPlsRtNnDrvn __WhlGrndPlsRtNnDrvn) 0)
    ((:BBWSts __BBWSts) 0)
    ((:EBSDrvMod __EBSDrvMod) 0)
    ((:IDURqst __IDURqst) 0)
    ((:EBSMCBrPressure __EBSMCBrPressure) 0)
    ((:BrakPedalDisp __BrakPedalDisp) 0)
    ((:ADAS_StrAngleRqstV __ADAS_StrAngleRqstV) 0)
    ((:ADASBrakRqstPres __ADASBrakRqstPres) 0)
    ((:EPB_ADASPrkngRqst __EPB_ADASPrkngRqst) 0)
    ((:ADASStrTorqRqst __ADASStrTorqRqst) 0)
    ((:ADASStrTorqTgt __ADASStrTorqTgt) 0)
    ((:ADAS_StrAngle __ADAS_StrAngle) 0)
    ((:VCUTTgtAclrtnRqst __VCUTTgtAclrtnRqst) 0)
    ((:VCUTTgtAclrtnRqstVal __VCUTTgtAclrtnRqstVal) 0.0)
    ((:GearRqst __GearRqst) 0)
    ((:TgtGear __TgtGear) 0)
    ((:VCUTTgtSpRqst __VCUTTgtSpRqst) 0)
    ((:VCUTTgtSpRqstVal __VCUTTgtSpRqstVal) 0.0)
    ((:SensSt_1st __SensSt_1st) 0)
    ((:DisFrm1stFrtSens __DisFrm1stFrtSens) 0)
    ((:SensSt_2nd __SensSt_2nd) 0)
    ((:DisFrm2ndFrtSens __DisFrm2ndFrtSens) 0)
    ((:SensSt_3rd __SensSt_3rd) 0)
    ((:DisFrm3rdFrtSens __DisFrm3rdFrtSens) 0)
    ((:SensSt_4th __SensSt_4th) 0)
    ((:DisFrm4thFrtSens __DisFrm4thFrtSens) 0)
    ((:SensSt_5th __SensSt_5th) 0)
    ((:DisFrm5thFrtSens __DisFrm5thFrtSens) 0)
    ((:SensSt_6th __SensSt_6th) 0)
    ((:DisFrm6thFrtSens __DisFrm6thFrtSens) 0)
    ((:SensSt_7th __SensSt_7th) 0)
    ((:DisFrm7thFrtSens __DisFrm7thFrtSens) 0)
    ((:SensSt_8th __SensSt_8th) 0)
    ((:DisFrm8thFrtSens __DisFrm8thFrtSens) 0)
    ((:SensSt_9th __SensSt_9th) 0)
    ((:DisFrm9thFrtSens __DisFrm9thFrtSens) 0)
    ((:SensSt_10th __SensSt_10th) 0)
    ((:DisFrm10thFrtSens __DisFrm10thFrtSens) 0)
    ((:SensSt_11th __SensSt_11th) 0)
    ((:DisFrm11thFrtSens __DisFrm11thFrtSens) 0)
    ((:SensSt_12th __SensSt_12th) 0)
    ((:DisFrm12thFrtSens __DisFrm12thFrtSens) 0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _module_type (round __module_type))
   (setq _error_code (round __error_code))
   (setq _chassis_data (string __chassis_data))
   (setq _TMTorqRqstV (round __TMTorqRqstV))
   (setq _TMTorqRqst (float __TMTorqRqst))
   (setq _HandBrkSts (round __HandBrkSts))
   (setq _VecStatRdy (round __VecStatRdy))
   (setq _KyPstn (round __KyPstn))
   (setq _VecSOC (round __VecSOC))
   (setq _VehSpdAvgDrvnV (round __VehSpdAvgDrvnV))
   (setq _VehSpdAvgDrvn (float __VehSpdAvgDrvn))
   (setq _VecTMActSpdV (round __VecTMActSpdV))
   (setq _VecTMActSpd (round __VecTMActSpd))
   (setq _VCUVehDrvMod (round __VCUVehDrvMod))
   (setq _LowBatVol (float __LowBatVol))
   (setq _BatSOC (round __BatSOC))
   (setq _HhBmIO (round __HhBmIO))
   (setq _WindscenWipSt (round __WindscenWipSt))
   (setq _LwBmIO (round __LwBmIO))
   (setq _HzrdLgtSwAtv (round __HzrdLgtSwAtv))
   (setq _HzrdLtIO (round __HzrdLtIO))
   (setq _RtTrnLmpAtv (round __RtTrnLmpAtv))
   (setq _LftTrnLmpAtv (round __LftTrnLmpAtv))
   (setq _WipSwStat (round __WipSwStat))
   (setq _StpLpSt (round __StpLpSt))
   (setq _is_left_blinking __is_left_blinking)
   (setq _is_right_blinking __is_right_blinking)
   (setq _DrSbltAtc (round __DrSbltAtc))
   (setq _DrSbltAtcV (round __DrSbltAtcV))
   (setq _TDAjrSwAtv (round __TDAjrSwAtv))
   (setq _PsDoorOpenSwAct (round __PsDoorOpenSwAct))
   (setq _PDAjrSwAtv (round __PDAjrSwAtv))
   (setq _DrDoorOpenSwAct (round __DrDoorOpenSwAct))
   (setq _DDAjrSwAct (round __DDAjrSwAct))
   (setq _PsWdwOpenDgr (float __PsWdwOpenDgr))
   (setq _DrWdwOpenDgr (float __DrWdwOpenDgr))
   (setq _BCMRunMod (round __BCMRunMod))
   (setq _BCMRunModV (round __BCMRunModV))
   (setq _EPBSysWrnIndReq_1 (round __EPBSysWrnIndReq_1))
   (setq _EPBSysWrnIndReqV_1 (round __EPBSysWrnIndReqV_1))
   (setq _EPBSysBrkLtsReq_1 (round __EPBSysBrkLtsReq_1))
   (setq _EPBSysStatIndReq_1 (round __EPBSysStatIndReq_1))
   (setq _ElecPrkBrkSwStatV_1 (round __ElecPrkBrkSwStatV_1))
   (setq _ElecPrkBrkStat_1 (round __ElecPrkBrkStat_1))
   (setq _ElecPrkBrkSwStat_1 (round __ElecPrkBrkSwStat_1))
   (setq _ADASWndSnWpCtrl (round __ADASWndSnWpCtrl))
   (setq _ADASHzdLtCtrl (round __ADASHzdLtCtrl))
   (setq _ADASSdTrnLmpRHCtrl (round __ADASSdTrnLmpRHCtrl))
   (setq _ADASSdTrnLmpLHCtrl (round __ADASSdTrnLmpLHCtrl))
   (setq _ADASLowBmCtrl (round __ADASLowBmCtrl))
   (setq _ADASHighBmCtrl (round __ADASHighBmCtrl))
   (setq _ADASLkCtrl (round __ADASLkCtrl))
   (setq _CarWindCtrl (round __CarWindCtrl))
   (setq _ADASRemtPrkModRqst (round __ADASRemtPrkModRqst))
   (setq _BCMADASCtrlRqst (round __BCMADASCtrlRqst))
   (setq _BCMADASCtrlRqstV (round __BCMADASCtrlRqstV))
   (setq _TMActTorq (float __TMActTorq))
   (setq _TMActSpd (round __TMActSpd))
   (setq _VSELatAccV (round __VSELatAccV))
   (setq _VSELatAcc (float __VSELatAcc))
   (setq _VSELongAccV (round __VSELongAccV))
   (setq _VSELongAcc (float __VSELongAcc))
   (setq _VehOdo (float __VehOdo))
   (setq _VehOdoV (round __VehOdoV))
   (setq _BrakPedalPos (round __BrakPedalPos))
   (setq _AccActPos (round __AccActPos))
   (setq _VecActGearStsV (round __VecActGearStsV))
   (setq _VecActGearSts (round __VecActGearSts))
   (setq _StrWhAngV (round __StrWhAngV))
   (setq _StrWhAng (float __StrWhAng))
   (setq _EPSProId (round __EPSProId))
   (setq _PwrStrIo (round __PwrStrIo))
   (setq _SterModV (round __SterModV))
   (setq _SterMod (round __SterMod))
   (setq _EPS_LKARespTorq (float __EPS_LKARespTorq))
   (setq _SterFltMod (round __SterFltMod))
   (setq _DrStrTorqV (round __DrStrTorqV))
   (setq _DrStrTorqVal (float __DrStrTorqVal))
   (setq _SteerWheelRotSpd (round __SteerWheelRotSpd))
   (setq _SteerWheelAngle (float __SteerWheelAngle))
   (setq _ElecPrkBrkStat (round __ElecPrkBrkStat))
   (setq _WhlGrndVlctyLftDrvnV (round __WhlGrndVlctyLftDrvnV))
   (setq _WhlGrndVlctyLftDrvn (float __WhlGrndVlctyLftDrvn))
   (setq _WhlGrndVlctyRtDrvnV (round __WhlGrndVlctyRtDrvnV))
   (setq _WhlGrndVlctyRtDrvn (float __WhlGrndVlctyRtDrvn))
   (setq _WhlGrndVlctyLftNnDrvnV (round __WhlGrndVlctyLftNnDrvnV))
   (setq _WhlGrndVlctyLftNnDrvn (float __WhlGrndVlctyLftNnDrvn))
   (setq _WhlGrndVlctyRtNnDrvnV (round __WhlGrndVlctyRtNnDrvnV))
   (setq _WhlGrndVlctyRtNnDrvn (float __WhlGrndVlctyRtNnDrvn))
   (setq _LftDrvnWhlDirec (round __LftDrvnWhlDirec))
   (setq _WhlGrndPlsLftDrvnV (round __WhlGrndPlsLftDrvnV))
   (setq _WhlGrndPlsLftDrvn (round __WhlGrndPlsLftDrvn))
   (setq _RtDrvnWhlDirec (round __RtDrvnWhlDirec))
   (setq _WhlGrndPlsRtDrvnV (round __WhlGrndPlsRtDrvnV))
   (setq _WhlGrndPlsRtDrvn (round __WhlGrndPlsRtDrvn))
   (setq _LftNnDrvnWhlDirec (round __LftNnDrvnWhlDirec))
   (setq _WhlGrndPlsLftNnDrvnV (round __WhlGrndPlsLftNnDrvnV))
   (setq _WhlGrndPlsLftNnDrvn (round __WhlGrndPlsLftNnDrvn))
   (setq _RtNnDrvnWhlDirec (round __RtNnDrvnWhlDirec))
   (setq _WhlGrndPlsRtNnDrvnV (round __WhlGrndPlsRtNnDrvnV))
   (setq _WhlGrndPlsRtNnDrvn (round __WhlGrndPlsRtNnDrvn))
   (setq _BBWSts (round __BBWSts))
   (setq _EBSDrvMod (round __EBSDrvMod))
   (setq _IDURqst (round __IDURqst))
   (setq _EBSMCBrPressure (round __EBSMCBrPressure))
   (setq _BrakPedalDisp (round __BrakPedalDisp))
   (setq _ADAS_StrAngleRqstV (round __ADAS_StrAngleRqstV))
   (setq _ADASBrakRqstPres (round __ADASBrakRqstPres))
   (setq _EPB_ADASPrkngRqst (round __EPB_ADASPrkngRqst))
   (setq _ADASStrTorqRqst (round __ADASStrTorqRqst))
   (setq _ADASStrTorqTgt (round __ADASStrTorqTgt))
   (setq _ADAS_StrAngle (round __ADAS_StrAngle))
   (setq _VCUTTgtAclrtnRqst (round __VCUTTgtAclrtnRqst))
   (setq _VCUTTgtAclrtnRqstVal (float __VCUTTgtAclrtnRqstVal))
   (setq _GearRqst (round __GearRqst))
   (setq _TgtGear (round __TgtGear))
   (setq _VCUTTgtSpRqst (round __VCUTTgtSpRqst))
   (setq _VCUTTgtSpRqstVal (float __VCUTTgtSpRqstVal))
   (setq _SensSt_1st (round __SensSt_1st))
   (setq _DisFrm1stFrtSens (round __DisFrm1stFrtSens))
   (setq _SensSt_2nd (round __SensSt_2nd))
   (setq _DisFrm2ndFrtSens (round __DisFrm2ndFrtSens))
   (setq _SensSt_3rd (round __SensSt_3rd))
   (setq _DisFrm3rdFrtSens (round __DisFrm3rdFrtSens))
   (setq _SensSt_4th (round __SensSt_4th))
   (setq _DisFrm4thFrtSens (round __DisFrm4thFrtSens))
   (setq _SensSt_5th (round __SensSt_5th))
   (setq _DisFrm5thFrtSens (round __DisFrm5thFrtSens))
   (setq _SensSt_6th (round __SensSt_6th))
   (setq _DisFrm6thFrtSens (round __DisFrm6thFrtSens))
   (setq _SensSt_7th (round __SensSt_7th))
   (setq _DisFrm7thFrtSens (round __DisFrm7thFrtSens))
   (setq _SensSt_8th (round __SensSt_8th))
   (setq _DisFrm8thFrtSens (round __DisFrm8thFrtSens))
   (setq _SensSt_9th (round __SensSt_9th))
   (setq _DisFrm9thFrtSens (round __DisFrm9thFrtSens))
   (setq _SensSt_10th (round __SensSt_10th))
   (setq _DisFrm10thFrtSens (round __DisFrm10thFrtSens))
   (setq _SensSt_11th (round __SensSt_11th))
   (setq _DisFrm11thFrtSens (round __DisFrm11thFrtSens))
   (setq _SensSt_12th (round __SensSt_12th))
   (setq _DisFrm12thFrtSens (round __DisFrm12thFrtSens))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:module_type
   (&optional __module_type)
   (if __module_type (setq _module_type __module_type)) _module_type)
  (:error_code
   (&optional __error_code)
   (if __error_code (setq _error_code __error_code)) _error_code)
  (:chassis_data
   (&optional __chassis_data)
   (if __chassis_data (setq _chassis_data __chassis_data)) _chassis_data)
  (:TMTorqRqstV
   (&optional __TMTorqRqstV)
   (if __TMTorqRqstV (setq _TMTorqRqstV __TMTorqRqstV)) _TMTorqRqstV)
  (:TMTorqRqst
   (&optional __TMTorqRqst)
   (if __TMTorqRqst (setq _TMTorqRqst __TMTorqRqst)) _TMTorqRqst)
  (:HandBrkSts
   (&optional __HandBrkSts)
   (if __HandBrkSts (setq _HandBrkSts __HandBrkSts)) _HandBrkSts)
  (:VecStatRdy
   (&optional __VecStatRdy)
   (if __VecStatRdy (setq _VecStatRdy __VecStatRdy)) _VecStatRdy)
  (:KyPstn
   (&optional __KyPstn)
   (if __KyPstn (setq _KyPstn __KyPstn)) _KyPstn)
  (:VecSOC
   (&optional __VecSOC)
   (if __VecSOC (setq _VecSOC __VecSOC)) _VecSOC)
  (:VehSpdAvgDrvnV
   (&optional __VehSpdAvgDrvnV)
   (if __VehSpdAvgDrvnV (setq _VehSpdAvgDrvnV __VehSpdAvgDrvnV)) _VehSpdAvgDrvnV)
  (:VehSpdAvgDrvn
   (&optional __VehSpdAvgDrvn)
   (if __VehSpdAvgDrvn (setq _VehSpdAvgDrvn __VehSpdAvgDrvn)) _VehSpdAvgDrvn)
  (:VecTMActSpdV
   (&optional __VecTMActSpdV)
   (if __VecTMActSpdV (setq _VecTMActSpdV __VecTMActSpdV)) _VecTMActSpdV)
  (:VecTMActSpd
   (&optional __VecTMActSpd)
   (if __VecTMActSpd (setq _VecTMActSpd __VecTMActSpd)) _VecTMActSpd)
  (:VCUVehDrvMod
   (&optional __VCUVehDrvMod)
   (if __VCUVehDrvMod (setq _VCUVehDrvMod __VCUVehDrvMod)) _VCUVehDrvMod)
  (:LowBatVol
   (&optional __LowBatVol)
   (if __LowBatVol (setq _LowBatVol __LowBatVol)) _LowBatVol)
  (:BatSOC
   (&optional __BatSOC)
   (if __BatSOC (setq _BatSOC __BatSOC)) _BatSOC)
  (:HhBmIO
   (&optional __HhBmIO)
   (if __HhBmIO (setq _HhBmIO __HhBmIO)) _HhBmIO)
  (:WindscenWipSt
   (&optional __WindscenWipSt)
   (if __WindscenWipSt (setq _WindscenWipSt __WindscenWipSt)) _WindscenWipSt)
  (:LwBmIO
   (&optional __LwBmIO)
   (if __LwBmIO (setq _LwBmIO __LwBmIO)) _LwBmIO)
  (:HzrdLgtSwAtv
   (&optional __HzrdLgtSwAtv)
   (if __HzrdLgtSwAtv (setq _HzrdLgtSwAtv __HzrdLgtSwAtv)) _HzrdLgtSwAtv)
  (:HzrdLtIO
   (&optional __HzrdLtIO)
   (if __HzrdLtIO (setq _HzrdLtIO __HzrdLtIO)) _HzrdLtIO)
  (:RtTrnLmpAtv
   (&optional __RtTrnLmpAtv)
   (if __RtTrnLmpAtv (setq _RtTrnLmpAtv __RtTrnLmpAtv)) _RtTrnLmpAtv)
  (:LftTrnLmpAtv
   (&optional __LftTrnLmpAtv)
   (if __LftTrnLmpAtv (setq _LftTrnLmpAtv __LftTrnLmpAtv)) _LftTrnLmpAtv)
  (:WipSwStat
   (&optional __WipSwStat)
   (if __WipSwStat (setq _WipSwStat __WipSwStat)) _WipSwStat)
  (:StpLpSt
   (&optional __StpLpSt)
   (if __StpLpSt (setq _StpLpSt __StpLpSt)) _StpLpSt)
  (:is_left_blinking
   (&optional (__is_left_blinking :null))
   (if (not (eq __is_left_blinking :null)) (setq _is_left_blinking __is_left_blinking)) _is_left_blinking)
  (:is_right_blinking
   (&optional (__is_right_blinking :null))
   (if (not (eq __is_right_blinking :null)) (setq _is_right_blinking __is_right_blinking)) _is_right_blinking)
  (:DrSbltAtc
   (&optional __DrSbltAtc)
   (if __DrSbltAtc (setq _DrSbltAtc __DrSbltAtc)) _DrSbltAtc)
  (:DrSbltAtcV
   (&optional __DrSbltAtcV)
   (if __DrSbltAtcV (setq _DrSbltAtcV __DrSbltAtcV)) _DrSbltAtcV)
  (:TDAjrSwAtv
   (&optional __TDAjrSwAtv)
   (if __TDAjrSwAtv (setq _TDAjrSwAtv __TDAjrSwAtv)) _TDAjrSwAtv)
  (:PsDoorOpenSwAct
   (&optional __PsDoorOpenSwAct)
   (if __PsDoorOpenSwAct (setq _PsDoorOpenSwAct __PsDoorOpenSwAct)) _PsDoorOpenSwAct)
  (:PDAjrSwAtv
   (&optional __PDAjrSwAtv)
   (if __PDAjrSwAtv (setq _PDAjrSwAtv __PDAjrSwAtv)) _PDAjrSwAtv)
  (:DrDoorOpenSwAct
   (&optional __DrDoorOpenSwAct)
   (if __DrDoorOpenSwAct (setq _DrDoorOpenSwAct __DrDoorOpenSwAct)) _DrDoorOpenSwAct)
  (:DDAjrSwAct
   (&optional __DDAjrSwAct)
   (if __DDAjrSwAct (setq _DDAjrSwAct __DDAjrSwAct)) _DDAjrSwAct)
  (:PsWdwOpenDgr
   (&optional __PsWdwOpenDgr)
   (if __PsWdwOpenDgr (setq _PsWdwOpenDgr __PsWdwOpenDgr)) _PsWdwOpenDgr)
  (:DrWdwOpenDgr
   (&optional __DrWdwOpenDgr)
   (if __DrWdwOpenDgr (setq _DrWdwOpenDgr __DrWdwOpenDgr)) _DrWdwOpenDgr)
  (:BCMRunMod
   (&optional __BCMRunMod)
   (if __BCMRunMod (setq _BCMRunMod __BCMRunMod)) _BCMRunMod)
  (:BCMRunModV
   (&optional __BCMRunModV)
   (if __BCMRunModV (setq _BCMRunModV __BCMRunModV)) _BCMRunModV)
  (:EPBSysWrnIndReq_1
   (&optional __EPBSysWrnIndReq_1)
   (if __EPBSysWrnIndReq_1 (setq _EPBSysWrnIndReq_1 __EPBSysWrnIndReq_1)) _EPBSysWrnIndReq_1)
  (:EPBSysWrnIndReqV_1
   (&optional __EPBSysWrnIndReqV_1)
   (if __EPBSysWrnIndReqV_1 (setq _EPBSysWrnIndReqV_1 __EPBSysWrnIndReqV_1)) _EPBSysWrnIndReqV_1)
  (:EPBSysBrkLtsReq_1
   (&optional __EPBSysBrkLtsReq_1)
   (if __EPBSysBrkLtsReq_1 (setq _EPBSysBrkLtsReq_1 __EPBSysBrkLtsReq_1)) _EPBSysBrkLtsReq_1)
  (:EPBSysStatIndReq_1
   (&optional __EPBSysStatIndReq_1)
   (if __EPBSysStatIndReq_1 (setq _EPBSysStatIndReq_1 __EPBSysStatIndReq_1)) _EPBSysStatIndReq_1)
  (:ElecPrkBrkSwStatV_1
   (&optional __ElecPrkBrkSwStatV_1)
   (if __ElecPrkBrkSwStatV_1 (setq _ElecPrkBrkSwStatV_1 __ElecPrkBrkSwStatV_1)) _ElecPrkBrkSwStatV_1)
  (:ElecPrkBrkStat_1
   (&optional __ElecPrkBrkStat_1)
   (if __ElecPrkBrkStat_1 (setq _ElecPrkBrkStat_1 __ElecPrkBrkStat_1)) _ElecPrkBrkStat_1)
  (:ElecPrkBrkSwStat_1
   (&optional __ElecPrkBrkSwStat_1)
   (if __ElecPrkBrkSwStat_1 (setq _ElecPrkBrkSwStat_1 __ElecPrkBrkSwStat_1)) _ElecPrkBrkSwStat_1)
  (:ADASWndSnWpCtrl
   (&optional __ADASWndSnWpCtrl)
   (if __ADASWndSnWpCtrl (setq _ADASWndSnWpCtrl __ADASWndSnWpCtrl)) _ADASWndSnWpCtrl)
  (:ADASHzdLtCtrl
   (&optional __ADASHzdLtCtrl)
   (if __ADASHzdLtCtrl (setq _ADASHzdLtCtrl __ADASHzdLtCtrl)) _ADASHzdLtCtrl)
  (:ADASSdTrnLmpRHCtrl
   (&optional __ADASSdTrnLmpRHCtrl)
   (if __ADASSdTrnLmpRHCtrl (setq _ADASSdTrnLmpRHCtrl __ADASSdTrnLmpRHCtrl)) _ADASSdTrnLmpRHCtrl)
  (:ADASSdTrnLmpLHCtrl
   (&optional __ADASSdTrnLmpLHCtrl)
   (if __ADASSdTrnLmpLHCtrl (setq _ADASSdTrnLmpLHCtrl __ADASSdTrnLmpLHCtrl)) _ADASSdTrnLmpLHCtrl)
  (:ADASLowBmCtrl
   (&optional __ADASLowBmCtrl)
   (if __ADASLowBmCtrl (setq _ADASLowBmCtrl __ADASLowBmCtrl)) _ADASLowBmCtrl)
  (:ADASHighBmCtrl
   (&optional __ADASHighBmCtrl)
   (if __ADASHighBmCtrl (setq _ADASHighBmCtrl __ADASHighBmCtrl)) _ADASHighBmCtrl)
  (:ADASLkCtrl
   (&optional __ADASLkCtrl)
   (if __ADASLkCtrl (setq _ADASLkCtrl __ADASLkCtrl)) _ADASLkCtrl)
  (:CarWindCtrl
   (&optional __CarWindCtrl)
   (if __CarWindCtrl (setq _CarWindCtrl __CarWindCtrl)) _CarWindCtrl)
  (:ADASRemtPrkModRqst
   (&optional __ADASRemtPrkModRqst)
   (if __ADASRemtPrkModRqst (setq _ADASRemtPrkModRqst __ADASRemtPrkModRqst)) _ADASRemtPrkModRqst)
  (:BCMADASCtrlRqst
   (&optional __BCMADASCtrlRqst)
   (if __BCMADASCtrlRqst (setq _BCMADASCtrlRqst __BCMADASCtrlRqst)) _BCMADASCtrlRqst)
  (:BCMADASCtrlRqstV
   (&optional __BCMADASCtrlRqstV)
   (if __BCMADASCtrlRqstV (setq _BCMADASCtrlRqstV __BCMADASCtrlRqstV)) _BCMADASCtrlRqstV)
  (:TMActTorq
   (&optional __TMActTorq)
   (if __TMActTorq (setq _TMActTorq __TMActTorq)) _TMActTorq)
  (:TMActSpd
   (&optional __TMActSpd)
   (if __TMActSpd (setq _TMActSpd __TMActSpd)) _TMActSpd)
  (:VSELatAccV
   (&optional __VSELatAccV)
   (if __VSELatAccV (setq _VSELatAccV __VSELatAccV)) _VSELatAccV)
  (:VSELatAcc
   (&optional __VSELatAcc)
   (if __VSELatAcc (setq _VSELatAcc __VSELatAcc)) _VSELatAcc)
  (:VSELongAccV
   (&optional __VSELongAccV)
   (if __VSELongAccV (setq _VSELongAccV __VSELongAccV)) _VSELongAccV)
  (:VSELongAcc
   (&optional __VSELongAcc)
   (if __VSELongAcc (setq _VSELongAcc __VSELongAcc)) _VSELongAcc)
  (:VehOdo
   (&optional __VehOdo)
   (if __VehOdo (setq _VehOdo __VehOdo)) _VehOdo)
  (:VehOdoV
   (&optional __VehOdoV)
   (if __VehOdoV (setq _VehOdoV __VehOdoV)) _VehOdoV)
  (:BrakPedalPos
   (&optional __BrakPedalPos)
   (if __BrakPedalPos (setq _BrakPedalPos __BrakPedalPos)) _BrakPedalPos)
  (:AccActPos
   (&optional __AccActPos)
   (if __AccActPos (setq _AccActPos __AccActPos)) _AccActPos)
  (:VecActGearStsV
   (&optional __VecActGearStsV)
   (if __VecActGearStsV (setq _VecActGearStsV __VecActGearStsV)) _VecActGearStsV)
  (:VecActGearSts
   (&optional __VecActGearSts)
   (if __VecActGearSts (setq _VecActGearSts __VecActGearSts)) _VecActGearSts)
  (:StrWhAngV
   (&optional __StrWhAngV)
   (if __StrWhAngV (setq _StrWhAngV __StrWhAngV)) _StrWhAngV)
  (:StrWhAng
   (&optional __StrWhAng)
   (if __StrWhAng (setq _StrWhAng __StrWhAng)) _StrWhAng)
  (:EPSProId
   (&optional __EPSProId)
   (if __EPSProId (setq _EPSProId __EPSProId)) _EPSProId)
  (:PwrStrIo
   (&optional __PwrStrIo)
   (if __PwrStrIo (setq _PwrStrIo __PwrStrIo)) _PwrStrIo)
  (:SterModV
   (&optional __SterModV)
   (if __SterModV (setq _SterModV __SterModV)) _SterModV)
  (:SterMod
   (&optional __SterMod)
   (if __SterMod (setq _SterMod __SterMod)) _SterMod)
  (:EPS_LKARespTorq
   (&optional __EPS_LKARespTorq)
   (if __EPS_LKARespTorq (setq _EPS_LKARespTorq __EPS_LKARespTorq)) _EPS_LKARespTorq)
  (:SterFltMod
   (&optional __SterFltMod)
   (if __SterFltMod (setq _SterFltMod __SterFltMod)) _SterFltMod)
  (:DrStrTorqV
   (&optional __DrStrTorqV)
   (if __DrStrTorqV (setq _DrStrTorqV __DrStrTorqV)) _DrStrTorqV)
  (:DrStrTorqVal
   (&optional __DrStrTorqVal)
   (if __DrStrTorqVal (setq _DrStrTorqVal __DrStrTorqVal)) _DrStrTorqVal)
  (:SteerWheelRotSpd
   (&optional __SteerWheelRotSpd)
   (if __SteerWheelRotSpd (setq _SteerWheelRotSpd __SteerWheelRotSpd)) _SteerWheelRotSpd)
  (:SteerWheelAngle
   (&optional __SteerWheelAngle)
   (if __SteerWheelAngle (setq _SteerWheelAngle __SteerWheelAngle)) _SteerWheelAngle)
  (:ElecPrkBrkStat
   (&optional __ElecPrkBrkStat)
   (if __ElecPrkBrkStat (setq _ElecPrkBrkStat __ElecPrkBrkStat)) _ElecPrkBrkStat)
  (:WhlGrndVlctyLftDrvnV
   (&optional __WhlGrndVlctyLftDrvnV)
   (if __WhlGrndVlctyLftDrvnV (setq _WhlGrndVlctyLftDrvnV __WhlGrndVlctyLftDrvnV)) _WhlGrndVlctyLftDrvnV)
  (:WhlGrndVlctyLftDrvn
   (&optional __WhlGrndVlctyLftDrvn)
   (if __WhlGrndVlctyLftDrvn (setq _WhlGrndVlctyLftDrvn __WhlGrndVlctyLftDrvn)) _WhlGrndVlctyLftDrvn)
  (:WhlGrndVlctyRtDrvnV
   (&optional __WhlGrndVlctyRtDrvnV)
   (if __WhlGrndVlctyRtDrvnV (setq _WhlGrndVlctyRtDrvnV __WhlGrndVlctyRtDrvnV)) _WhlGrndVlctyRtDrvnV)
  (:WhlGrndVlctyRtDrvn
   (&optional __WhlGrndVlctyRtDrvn)
   (if __WhlGrndVlctyRtDrvn (setq _WhlGrndVlctyRtDrvn __WhlGrndVlctyRtDrvn)) _WhlGrndVlctyRtDrvn)
  (:WhlGrndVlctyLftNnDrvnV
   (&optional __WhlGrndVlctyLftNnDrvnV)
   (if __WhlGrndVlctyLftNnDrvnV (setq _WhlGrndVlctyLftNnDrvnV __WhlGrndVlctyLftNnDrvnV)) _WhlGrndVlctyLftNnDrvnV)
  (:WhlGrndVlctyLftNnDrvn
   (&optional __WhlGrndVlctyLftNnDrvn)
   (if __WhlGrndVlctyLftNnDrvn (setq _WhlGrndVlctyLftNnDrvn __WhlGrndVlctyLftNnDrvn)) _WhlGrndVlctyLftNnDrvn)
  (:WhlGrndVlctyRtNnDrvnV
   (&optional __WhlGrndVlctyRtNnDrvnV)
   (if __WhlGrndVlctyRtNnDrvnV (setq _WhlGrndVlctyRtNnDrvnV __WhlGrndVlctyRtNnDrvnV)) _WhlGrndVlctyRtNnDrvnV)
  (:WhlGrndVlctyRtNnDrvn
   (&optional __WhlGrndVlctyRtNnDrvn)
   (if __WhlGrndVlctyRtNnDrvn (setq _WhlGrndVlctyRtNnDrvn __WhlGrndVlctyRtNnDrvn)) _WhlGrndVlctyRtNnDrvn)
  (:LftDrvnWhlDirec
   (&optional __LftDrvnWhlDirec)
   (if __LftDrvnWhlDirec (setq _LftDrvnWhlDirec __LftDrvnWhlDirec)) _LftDrvnWhlDirec)
  (:WhlGrndPlsLftDrvnV
   (&optional __WhlGrndPlsLftDrvnV)
   (if __WhlGrndPlsLftDrvnV (setq _WhlGrndPlsLftDrvnV __WhlGrndPlsLftDrvnV)) _WhlGrndPlsLftDrvnV)
  (:WhlGrndPlsLftDrvn
   (&optional __WhlGrndPlsLftDrvn)
   (if __WhlGrndPlsLftDrvn (setq _WhlGrndPlsLftDrvn __WhlGrndPlsLftDrvn)) _WhlGrndPlsLftDrvn)
  (:RtDrvnWhlDirec
   (&optional __RtDrvnWhlDirec)
   (if __RtDrvnWhlDirec (setq _RtDrvnWhlDirec __RtDrvnWhlDirec)) _RtDrvnWhlDirec)
  (:WhlGrndPlsRtDrvnV
   (&optional __WhlGrndPlsRtDrvnV)
   (if __WhlGrndPlsRtDrvnV (setq _WhlGrndPlsRtDrvnV __WhlGrndPlsRtDrvnV)) _WhlGrndPlsRtDrvnV)
  (:WhlGrndPlsRtDrvn
   (&optional __WhlGrndPlsRtDrvn)
   (if __WhlGrndPlsRtDrvn (setq _WhlGrndPlsRtDrvn __WhlGrndPlsRtDrvn)) _WhlGrndPlsRtDrvn)
  (:LftNnDrvnWhlDirec
   (&optional __LftNnDrvnWhlDirec)
   (if __LftNnDrvnWhlDirec (setq _LftNnDrvnWhlDirec __LftNnDrvnWhlDirec)) _LftNnDrvnWhlDirec)
  (:WhlGrndPlsLftNnDrvnV
   (&optional __WhlGrndPlsLftNnDrvnV)
   (if __WhlGrndPlsLftNnDrvnV (setq _WhlGrndPlsLftNnDrvnV __WhlGrndPlsLftNnDrvnV)) _WhlGrndPlsLftNnDrvnV)
  (:WhlGrndPlsLftNnDrvn
   (&optional __WhlGrndPlsLftNnDrvn)
   (if __WhlGrndPlsLftNnDrvn (setq _WhlGrndPlsLftNnDrvn __WhlGrndPlsLftNnDrvn)) _WhlGrndPlsLftNnDrvn)
  (:RtNnDrvnWhlDirec
   (&optional __RtNnDrvnWhlDirec)
   (if __RtNnDrvnWhlDirec (setq _RtNnDrvnWhlDirec __RtNnDrvnWhlDirec)) _RtNnDrvnWhlDirec)
  (:WhlGrndPlsRtNnDrvnV
   (&optional __WhlGrndPlsRtNnDrvnV)
   (if __WhlGrndPlsRtNnDrvnV (setq _WhlGrndPlsRtNnDrvnV __WhlGrndPlsRtNnDrvnV)) _WhlGrndPlsRtNnDrvnV)
  (:WhlGrndPlsRtNnDrvn
   (&optional __WhlGrndPlsRtNnDrvn)
   (if __WhlGrndPlsRtNnDrvn (setq _WhlGrndPlsRtNnDrvn __WhlGrndPlsRtNnDrvn)) _WhlGrndPlsRtNnDrvn)
  (:BBWSts
   (&optional __BBWSts)
   (if __BBWSts (setq _BBWSts __BBWSts)) _BBWSts)
  (:EBSDrvMod
   (&optional __EBSDrvMod)
   (if __EBSDrvMod (setq _EBSDrvMod __EBSDrvMod)) _EBSDrvMod)
  (:IDURqst
   (&optional __IDURqst)
   (if __IDURqst (setq _IDURqst __IDURqst)) _IDURqst)
  (:EBSMCBrPressure
   (&optional __EBSMCBrPressure)
   (if __EBSMCBrPressure (setq _EBSMCBrPressure __EBSMCBrPressure)) _EBSMCBrPressure)
  (:BrakPedalDisp
   (&optional __BrakPedalDisp)
   (if __BrakPedalDisp (setq _BrakPedalDisp __BrakPedalDisp)) _BrakPedalDisp)
  (:ADAS_StrAngleRqstV
   (&optional __ADAS_StrAngleRqstV)
   (if __ADAS_StrAngleRqstV (setq _ADAS_StrAngleRqstV __ADAS_StrAngleRqstV)) _ADAS_StrAngleRqstV)
  (:ADASBrakRqstPres
   (&optional __ADASBrakRqstPres)
   (if __ADASBrakRqstPres (setq _ADASBrakRqstPres __ADASBrakRqstPres)) _ADASBrakRqstPres)
  (:EPB_ADASPrkngRqst
   (&optional __EPB_ADASPrkngRqst)
   (if __EPB_ADASPrkngRqst (setq _EPB_ADASPrkngRqst __EPB_ADASPrkngRqst)) _EPB_ADASPrkngRqst)
  (:ADASStrTorqRqst
   (&optional __ADASStrTorqRqst)
   (if __ADASStrTorqRqst (setq _ADASStrTorqRqst __ADASStrTorqRqst)) _ADASStrTorqRqst)
  (:ADASStrTorqTgt
   (&optional __ADASStrTorqTgt)
   (if __ADASStrTorqTgt (setq _ADASStrTorqTgt __ADASStrTorqTgt)) _ADASStrTorqTgt)
  (:ADAS_StrAngle
   (&optional __ADAS_StrAngle)
   (if __ADAS_StrAngle (setq _ADAS_StrAngle __ADAS_StrAngle)) _ADAS_StrAngle)
  (:VCUTTgtAclrtnRqst
   (&optional __VCUTTgtAclrtnRqst)
   (if __VCUTTgtAclrtnRqst (setq _VCUTTgtAclrtnRqst __VCUTTgtAclrtnRqst)) _VCUTTgtAclrtnRqst)
  (:VCUTTgtAclrtnRqstVal
   (&optional __VCUTTgtAclrtnRqstVal)
   (if __VCUTTgtAclrtnRqstVal (setq _VCUTTgtAclrtnRqstVal __VCUTTgtAclrtnRqstVal)) _VCUTTgtAclrtnRqstVal)
  (:GearRqst
   (&optional __GearRqst)
   (if __GearRqst (setq _GearRqst __GearRqst)) _GearRqst)
  (:TgtGear
   (&optional __TgtGear)
   (if __TgtGear (setq _TgtGear __TgtGear)) _TgtGear)
  (:VCUTTgtSpRqst
   (&optional __VCUTTgtSpRqst)
   (if __VCUTTgtSpRqst (setq _VCUTTgtSpRqst __VCUTTgtSpRqst)) _VCUTTgtSpRqst)
  (:VCUTTgtSpRqstVal
   (&optional __VCUTTgtSpRqstVal)
   (if __VCUTTgtSpRqstVal (setq _VCUTTgtSpRqstVal __VCUTTgtSpRqstVal)) _VCUTTgtSpRqstVal)
  (:SensSt_1st
   (&optional __SensSt_1st)
   (if __SensSt_1st (setq _SensSt_1st __SensSt_1st)) _SensSt_1st)
  (:DisFrm1stFrtSens
   (&optional __DisFrm1stFrtSens)
   (if __DisFrm1stFrtSens (setq _DisFrm1stFrtSens __DisFrm1stFrtSens)) _DisFrm1stFrtSens)
  (:SensSt_2nd
   (&optional __SensSt_2nd)
   (if __SensSt_2nd (setq _SensSt_2nd __SensSt_2nd)) _SensSt_2nd)
  (:DisFrm2ndFrtSens
   (&optional __DisFrm2ndFrtSens)
   (if __DisFrm2ndFrtSens (setq _DisFrm2ndFrtSens __DisFrm2ndFrtSens)) _DisFrm2ndFrtSens)
  (:SensSt_3rd
   (&optional __SensSt_3rd)
   (if __SensSt_3rd (setq _SensSt_3rd __SensSt_3rd)) _SensSt_3rd)
  (:DisFrm3rdFrtSens
   (&optional __DisFrm3rdFrtSens)
   (if __DisFrm3rdFrtSens (setq _DisFrm3rdFrtSens __DisFrm3rdFrtSens)) _DisFrm3rdFrtSens)
  (:SensSt_4th
   (&optional __SensSt_4th)
   (if __SensSt_4th (setq _SensSt_4th __SensSt_4th)) _SensSt_4th)
  (:DisFrm4thFrtSens
   (&optional __DisFrm4thFrtSens)
   (if __DisFrm4thFrtSens (setq _DisFrm4thFrtSens __DisFrm4thFrtSens)) _DisFrm4thFrtSens)
  (:SensSt_5th
   (&optional __SensSt_5th)
   (if __SensSt_5th (setq _SensSt_5th __SensSt_5th)) _SensSt_5th)
  (:DisFrm5thFrtSens
   (&optional __DisFrm5thFrtSens)
   (if __DisFrm5thFrtSens (setq _DisFrm5thFrtSens __DisFrm5thFrtSens)) _DisFrm5thFrtSens)
  (:SensSt_6th
   (&optional __SensSt_6th)
   (if __SensSt_6th (setq _SensSt_6th __SensSt_6th)) _SensSt_6th)
  (:DisFrm6thFrtSens
   (&optional __DisFrm6thFrtSens)
   (if __DisFrm6thFrtSens (setq _DisFrm6thFrtSens __DisFrm6thFrtSens)) _DisFrm6thFrtSens)
  (:SensSt_7th
   (&optional __SensSt_7th)
   (if __SensSt_7th (setq _SensSt_7th __SensSt_7th)) _SensSt_7th)
  (:DisFrm7thFrtSens
   (&optional __DisFrm7thFrtSens)
   (if __DisFrm7thFrtSens (setq _DisFrm7thFrtSens __DisFrm7thFrtSens)) _DisFrm7thFrtSens)
  (:SensSt_8th
   (&optional __SensSt_8th)
   (if __SensSt_8th (setq _SensSt_8th __SensSt_8th)) _SensSt_8th)
  (:DisFrm8thFrtSens
   (&optional __DisFrm8thFrtSens)
   (if __DisFrm8thFrtSens (setq _DisFrm8thFrtSens __DisFrm8thFrtSens)) _DisFrm8thFrtSens)
  (:SensSt_9th
   (&optional __SensSt_9th)
   (if __SensSt_9th (setq _SensSt_9th __SensSt_9th)) _SensSt_9th)
  (:DisFrm9thFrtSens
   (&optional __DisFrm9thFrtSens)
   (if __DisFrm9thFrtSens (setq _DisFrm9thFrtSens __DisFrm9thFrtSens)) _DisFrm9thFrtSens)
  (:SensSt_10th
   (&optional __SensSt_10th)
   (if __SensSt_10th (setq _SensSt_10th __SensSt_10th)) _SensSt_10th)
  (:DisFrm10thFrtSens
   (&optional __DisFrm10thFrtSens)
   (if __DisFrm10thFrtSens (setq _DisFrm10thFrtSens __DisFrm10thFrtSens)) _DisFrm10thFrtSens)
  (:SensSt_11th
   (&optional __SensSt_11th)
   (if __SensSt_11th (setq _SensSt_11th __SensSt_11th)) _SensSt_11th)
  (:DisFrm11thFrtSens
   (&optional __DisFrm11thFrtSens)
   (if __DisFrm11thFrtSens (setq _DisFrm11thFrtSens __DisFrm11thFrtSens)) _DisFrm11thFrtSens)
  (:SensSt_12th
   (&optional __SensSt_12th)
   (if __SensSt_12th (setq _SensSt_12th __SensSt_12th)) _SensSt_12th)
  (:DisFrm12thFrtSens
   (&optional __DisFrm12thFrtSens)
   (if __DisFrm12thFrtSens (setq _DisFrm12thFrtSens __DisFrm12thFrtSens)) _DisFrm12thFrtSens)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; uint8 _module_type
    1
    ;; uint32 _error_code
    4
    ;; string _chassis_data
    4 (length _chassis_data)
    ;; uint8 _TMTorqRqstV
    1
    ;; float64 _TMTorqRqst
    8
    ;; uint8 _HandBrkSts
    1
    ;; uint8 _VecStatRdy
    1
    ;; uint8 _KyPstn
    1
    ;; uint8 _VecSOC
    1
    ;; uint8 _VehSpdAvgDrvnV
    1
    ;; float64 _VehSpdAvgDrvn
    8
    ;; uint8 _VecTMActSpdV
    1
    ;; uint16 _VecTMActSpd
    2
    ;; uint8 _VCUVehDrvMod
    1
    ;; float64 _LowBatVol
    8
    ;; uint8 _BatSOC
    1
    ;; uint8 _HhBmIO
    1
    ;; uint8 _WindscenWipSt
    1
    ;; uint8 _LwBmIO
    1
    ;; uint8 _HzrdLgtSwAtv
    1
    ;; uint8 _HzrdLtIO
    1
    ;; uint8 _RtTrnLmpAtv
    1
    ;; uint8 _LftTrnLmpAtv
    1
    ;; uint8 _WipSwStat
    1
    ;; uint8 _StpLpSt
    1
    ;; bool _is_left_blinking
    1
    ;; bool _is_right_blinking
    1
    ;; uint8 _DrSbltAtc
    1
    ;; uint8 _DrSbltAtcV
    1
    ;; uint8 _TDAjrSwAtv
    1
    ;; uint8 _PsDoorOpenSwAct
    1
    ;; uint8 _PDAjrSwAtv
    1
    ;; uint8 _DrDoorOpenSwAct
    1
    ;; uint8 _DDAjrSwAct
    1
    ;; float64 _PsWdwOpenDgr
    8
    ;; float64 _DrWdwOpenDgr
    8
    ;; uint8 _BCMRunMod
    1
    ;; uint8 _BCMRunModV
    1
    ;; uint8 _EPBSysWrnIndReq_1
    1
    ;; uint8 _EPBSysWrnIndReqV_1
    1
    ;; uint8 _EPBSysBrkLtsReq_1
    1
    ;; uint8 _EPBSysStatIndReq_1
    1
    ;; uint8 _ElecPrkBrkSwStatV_1
    1
    ;; uint8 _ElecPrkBrkStat_1
    1
    ;; uint8 _ElecPrkBrkSwStat_1
    1
    ;; uint8 _ADASWndSnWpCtrl
    1
    ;; uint8 _ADASHzdLtCtrl
    1
    ;; uint8 _ADASSdTrnLmpRHCtrl
    1
    ;; uint8 _ADASSdTrnLmpLHCtrl
    1
    ;; uint8 _ADASLowBmCtrl
    1
    ;; uint8 _ADASHighBmCtrl
    1
    ;; uint8 _ADASLkCtrl
    1
    ;; uint8 _CarWindCtrl
    1
    ;; uint8 _ADASRemtPrkModRqst
    1
    ;; uint8 _BCMADASCtrlRqst
    1
    ;; uint8 _BCMADASCtrlRqstV
    1
    ;; float64 _TMActTorq
    8
    ;; int32 _TMActSpd
    4
    ;; uint8 _VSELatAccV
    1
    ;; float64 _VSELatAcc
    8
    ;; uint8 _VSELongAccV
    1
    ;; float64 _VSELongAcc
    8
    ;; float64 _VehOdo
    8
    ;; uint8 _VehOdoV
    1
    ;; uint8 _BrakPedalPos
    1
    ;; uint8 _AccActPos
    1
    ;; uint8 _VecActGearStsV
    1
    ;; uint8 _VecActGearSts
    1
    ;; uint8 _StrWhAngV
    1
    ;; float64 _StrWhAng
    8
    ;; uint8 _EPSProId
    1
    ;; uint8 _PwrStrIo
    1
    ;; uint8 _SterModV
    1
    ;; uint8 _SterMod
    1
    ;; float64 _EPS_LKARespTorq
    8
    ;; uint8 _SterFltMod
    1
    ;; uint8 _DrStrTorqV
    1
    ;; float64 _DrStrTorqVal
    8
    ;; uint16 _SteerWheelRotSpd
    2
    ;; float64 _SteerWheelAngle
    8
    ;; uint8 _ElecPrkBrkStat
    1
    ;; uint8 _WhlGrndVlctyLftDrvnV
    1
    ;; float64 _WhlGrndVlctyLftDrvn
    8
    ;; uint8 _WhlGrndVlctyRtDrvnV
    1
    ;; float64 _WhlGrndVlctyRtDrvn
    8
    ;; uint8 _WhlGrndVlctyLftNnDrvnV
    1
    ;; float64 _WhlGrndVlctyLftNnDrvn
    8
    ;; uint8 _WhlGrndVlctyRtNnDrvnV
    1
    ;; float64 _WhlGrndVlctyRtNnDrvn
    8
    ;; uint8 _LftDrvnWhlDirec
    1
    ;; uint8 _WhlGrndPlsLftDrvnV
    1
    ;; uint16 _WhlGrndPlsLftDrvn
    2
    ;; uint8 _RtDrvnWhlDirec
    1
    ;; uint8 _WhlGrndPlsRtDrvnV
    1
    ;; uint16 _WhlGrndPlsRtDrvn
    2
    ;; uint8 _LftNnDrvnWhlDirec
    1
    ;; uint8 _WhlGrndPlsLftNnDrvnV
    1
    ;; uint16 _WhlGrndPlsLftNnDrvn
    2
    ;; uint8 _RtNnDrvnWhlDirec
    1
    ;; uint8 _WhlGrndPlsRtNnDrvnV
    1
    ;; uint16 _WhlGrndPlsRtNnDrvn
    2
    ;; uint8 _BBWSts
    1
    ;; uint8 _EBSDrvMod
    1
    ;; uint8 _IDURqst
    1
    ;; uint8 _EBSMCBrPressure
    1
    ;; uint8 _BrakPedalDisp
    1
    ;; uint8 _ADAS_StrAngleRqstV
    1
    ;; uint16 _ADASBrakRqstPres
    2
    ;; uint8 _EPB_ADASPrkngRqst
    1
    ;; uint8 _ADASStrTorqRqst
    1
    ;; uint16 _ADASStrTorqTgt
    2
    ;; uint16 _ADAS_StrAngle
    2
    ;; uint8 _VCUTTgtAclrtnRqst
    1
    ;; float64 _VCUTTgtAclrtnRqstVal
    8
    ;; uint8 _GearRqst
    1
    ;; uint8 _TgtGear
    1
    ;; uint8 _VCUTTgtSpRqst
    1
    ;; float64 _VCUTTgtSpRqstVal
    8
    ;; uint8 _SensSt_1st
    1
    ;; uint16 _DisFrm1stFrtSens
    2
    ;; uint8 _SensSt_2nd
    1
    ;; uint16 _DisFrm2ndFrtSens
    2
    ;; uint8 _SensSt_3rd
    1
    ;; uint16 _DisFrm3rdFrtSens
    2
    ;; uint8 _SensSt_4th
    1
    ;; uint16 _DisFrm4thFrtSens
    2
    ;; uint8 _SensSt_5th
    1
    ;; uint16 _DisFrm5thFrtSens
    2
    ;; uint8 _SensSt_6th
    1
    ;; uint16 _DisFrm6thFrtSens
    2
    ;; uint8 _SensSt_7th
    1
    ;; uint16 _DisFrm7thFrtSens
    2
    ;; uint8 _SensSt_8th
    1
    ;; uint16 _DisFrm8thFrtSens
    2
    ;; uint8 _SensSt_9th
    1
    ;; uint16 _DisFrm9thFrtSens
    2
    ;; uint8 _SensSt_10th
    1
    ;; uint16 _DisFrm10thFrtSens
    2
    ;; uint8 _SensSt_11th
    1
    ;; uint16 _DisFrm11thFrtSens
    2
    ;; uint8 _SensSt_12th
    1
    ;; uint16 _DisFrm12thFrtSens
    2
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; uint8 _module_type
       (write-byte _module_type s)
     ;; uint32 _error_code
       (write-long _error_code s)
     ;; string _chassis_data
       (write-long (length _chassis_data) s) (princ _chassis_data s)
     ;; uint8 _TMTorqRqstV
       (write-byte _TMTorqRqstV s)
     ;; float64 _TMTorqRqst
       (sys::poke _TMTorqRqst (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; uint8 _HandBrkSts
       (write-byte _HandBrkSts s)
     ;; uint8 _VecStatRdy
       (write-byte _VecStatRdy s)
     ;; uint8 _KyPstn
       (write-byte _KyPstn s)
     ;; uint8 _VecSOC
       (write-byte _VecSOC s)
     ;; uint8 _VehSpdAvgDrvnV
       (write-byte _VehSpdAvgDrvnV s)
     ;; float64 _VehSpdAvgDrvn
       (sys::poke _VehSpdAvgDrvn (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; uint8 _VecTMActSpdV
       (write-byte _VecTMActSpdV s)
     ;; uint16 _VecTMActSpd
       (write-word _VecTMActSpd s)
     ;; uint8 _VCUVehDrvMod
       (write-byte _VCUVehDrvMod s)
     ;; float64 _LowBatVol
       (sys::poke _LowBatVol (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; uint8 _BatSOC
       (write-byte _BatSOC s)
     ;; uint8 _HhBmIO
       (write-byte _HhBmIO s)
     ;; uint8 _WindscenWipSt
       (write-byte _WindscenWipSt s)
     ;; uint8 _LwBmIO
       (write-byte _LwBmIO s)
     ;; uint8 _HzrdLgtSwAtv
       (write-byte _HzrdLgtSwAtv s)
     ;; uint8 _HzrdLtIO
       (write-byte _HzrdLtIO s)
     ;; uint8 _RtTrnLmpAtv
       (write-byte _RtTrnLmpAtv s)
     ;; uint8 _LftTrnLmpAtv
       (write-byte _LftTrnLmpAtv s)
     ;; uint8 _WipSwStat
       (write-byte _WipSwStat s)
     ;; uint8 _StpLpSt
       (write-byte _StpLpSt s)
     ;; bool _is_left_blinking
       (if _is_left_blinking (write-byte -1 s) (write-byte 0 s))
     ;; bool _is_right_blinking
       (if _is_right_blinking (write-byte -1 s) (write-byte 0 s))
     ;; uint8 _DrSbltAtc
       (write-byte _DrSbltAtc s)
     ;; uint8 _DrSbltAtcV
       (write-byte _DrSbltAtcV s)
     ;; uint8 _TDAjrSwAtv
       (write-byte _TDAjrSwAtv s)
     ;; uint8 _PsDoorOpenSwAct
       (write-byte _PsDoorOpenSwAct s)
     ;; uint8 _PDAjrSwAtv
       (write-byte _PDAjrSwAtv s)
     ;; uint8 _DrDoorOpenSwAct
       (write-byte _DrDoorOpenSwAct s)
     ;; uint8 _DDAjrSwAct
       (write-byte _DDAjrSwAct s)
     ;; float64 _PsWdwOpenDgr
       (sys::poke _PsWdwOpenDgr (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _DrWdwOpenDgr
       (sys::poke _DrWdwOpenDgr (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; uint8 _BCMRunMod
       (write-byte _BCMRunMod s)
     ;; uint8 _BCMRunModV
       (write-byte _BCMRunModV s)
     ;; uint8 _EPBSysWrnIndReq_1
       (write-byte _EPBSysWrnIndReq_1 s)
     ;; uint8 _EPBSysWrnIndReqV_1
       (write-byte _EPBSysWrnIndReqV_1 s)
     ;; uint8 _EPBSysBrkLtsReq_1
       (write-byte _EPBSysBrkLtsReq_1 s)
     ;; uint8 _EPBSysStatIndReq_1
       (write-byte _EPBSysStatIndReq_1 s)
     ;; uint8 _ElecPrkBrkSwStatV_1
       (write-byte _ElecPrkBrkSwStatV_1 s)
     ;; uint8 _ElecPrkBrkStat_1
       (write-byte _ElecPrkBrkStat_1 s)
     ;; uint8 _ElecPrkBrkSwStat_1
       (write-byte _ElecPrkBrkSwStat_1 s)
     ;; uint8 _ADASWndSnWpCtrl
       (write-byte _ADASWndSnWpCtrl s)
     ;; uint8 _ADASHzdLtCtrl
       (write-byte _ADASHzdLtCtrl s)
     ;; uint8 _ADASSdTrnLmpRHCtrl
       (write-byte _ADASSdTrnLmpRHCtrl s)
     ;; uint8 _ADASSdTrnLmpLHCtrl
       (write-byte _ADASSdTrnLmpLHCtrl s)
     ;; uint8 _ADASLowBmCtrl
       (write-byte _ADASLowBmCtrl s)
     ;; uint8 _ADASHighBmCtrl
       (write-byte _ADASHighBmCtrl s)
     ;; uint8 _ADASLkCtrl
       (write-byte _ADASLkCtrl s)
     ;; uint8 _CarWindCtrl
       (write-byte _CarWindCtrl s)
     ;; uint8 _ADASRemtPrkModRqst
       (write-byte _ADASRemtPrkModRqst s)
     ;; uint8 _BCMADASCtrlRqst
       (write-byte _BCMADASCtrlRqst s)
     ;; uint8 _BCMADASCtrlRqstV
       (write-byte _BCMADASCtrlRqstV s)
     ;; float64 _TMActTorq
       (sys::poke _TMActTorq (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; int32 _TMActSpd
       (write-long _TMActSpd s)
     ;; uint8 _VSELatAccV
       (write-byte _VSELatAccV s)
     ;; float64 _VSELatAcc
       (sys::poke _VSELatAcc (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; uint8 _VSELongAccV
       (write-byte _VSELongAccV s)
     ;; float64 _VSELongAcc
       (sys::poke _VSELongAcc (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _VehOdo
       (sys::poke _VehOdo (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; uint8 _VehOdoV
       (write-byte _VehOdoV s)
     ;; uint8 _BrakPedalPos
       (write-byte _BrakPedalPos s)
     ;; uint8 _AccActPos
       (write-byte _AccActPos s)
     ;; uint8 _VecActGearStsV
       (write-byte _VecActGearStsV s)
     ;; uint8 _VecActGearSts
       (write-byte _VecActGearSts s)
     ;; uint8 _StrWhAngV
       (write-byte _StrWhAngV s)
     ;; float64 _StrWhAng
       (sys::poke _StrWhAng (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; uint8 _EPSProId
       (write-byte _EPSProId s)
     ;; uint8 _PwrStrIo
       (write-byte _PwrStrIo s)
     ;; uint8 _SterModV
       (write-byte _SterModV s)
     ;; uint8 _SterMod
       (write-byte _SterMod s)
     ;; float64 _EPS_LKARespTorq
       (sys::poke _EPS_LKARespTorq (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; uint8 _SterFltMod
       (write-byte _SterFltMod s)
     ;; uint8 _DrStrTorqV
       (write-byte _DrStrTorqV s)
     ;; float64 _DrStrTorqVal
       (sys::poke _DrStrTorqVal (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; uint16 _SteerWheelRotSpd
       (write-word _SteerWheelRotSpd s)
     ;; float64 _SteerWheelAngle
       (sys::poke _SteerWheelAngle (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; uint8 _ElecPrkBrkStat
       (write-byte _ElecPrkBrkStat s)
     ;; uint8 _WhlGrndVlctyLftDrvnV
       (write-byte _WhlGrndVlctyLftDrvnV s)
     ;; float64 _WhlGrndVlctyLftDrvn
       (sys::poke _WhlGrndVlctyLftDrvn (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; uint8 _WhlGrndVlctyRtDrvnV
       (write-byte _WhlGrndVlctyRtDrvnV s)
     ;; float64 _WhlGrndVlctyRtDrvn
       (sys::poke _WhlGrndVlctyRtDrvn (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; uint8 _WhlGrndVlctyLftNnDrvnV
       (write-byte _WhlGrndVlctyLftNnDrvnV s)
     ;; float64 _WhlGrndVlctyLftNnDrvn
       (sys::poke _WhlGrndVlctyLftNnDrvn (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; uint8 _WhlGrndVlctyRtNnDrvnV
       (write-byte _WhlGrndVlctyRtNnDrvnV s)
     ;; float64 _WhlGrndVlctyRtNnDrvn
       (sys::poke _WhlGrndVlctyRtNnDrvn (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; uint8 _LftDrvnWhlDirec
       (write-byte _LftDrvnWhlDirec s)
     ;; uint8 _WhlGrndPlsLftDrvnV
       (write-byte _WhlGrndPlsLftDrvnV s)
     ;; uint16 _WhlGrndPlsLftDrvn
       (write-word _WhlGrndPlsLftDrvn s)
     ;; uint8 _RtDrvnWhlDirec
       (write-byte _RtDrvnWhlDirec s)
     ;; uint8 _WhlGrndPlsRtDrvnV
       (write-byte _WhlGrndPlsRtDrvnV s)
     ;; uint16 _WhlGrndPlsRtDrvn
       (write-word _WhlGrndPlsRtDrvn s)
     ;; uint8 _LftNnDrvnWhlDirec
       (write-byte _LftNnDrvnWhlDirec s)
     ;; uint8 _WhlGrndPlsLftNnDrvnV
       (write-byte _WhlGrndPlsLftNnDrvnV s)
     ;; uint16 _WhlGrndPlsLftNnDrvn
       (write-word _WhlGrndPlsLftNnDrvn s)
     ;; uint8 _RtNnDrvnWhlDirec
       (write-byte _RtNnDrvnWhlDirec s)
     ;; uint8 _WhlGrndPlsRtNnDrvnV
       (write-byte _WhlGrndPlsRtNnDrvnV s)
     ;; uint16 _WhlGrndPlsRtNnDrvn
       (write-word _WhlGrndPlsRtNnDrvn s)
     ;; uint8 _BBWSts
       (write-byte _BBWSts s)
     ;; uint8 _EBSDrvMod
       (write-byte _EBSDrvMod s)
     ;; uint8 _IDURqst
       (write-byte _IDURqst s)
     ;; uint8 _EBSMCBrPressure
       (write-byte _EBSMCBrPressure s)
     ;; uint8 _BrakPedalDisp
       (write-byte _BrakPedalDisp s)
     ;; uint8 _ADAS_StrAngleRqstV
       (write-byte _ADAS_StrAngleRqstV s)
     ;; uint16 _ADASBrakRqstPres
       (write-word _ADASBrakRqstPres s)
     ;; uint8 _EPB_ADASPrkngRqst
       (write-byte _EPB_ADASPrkngRqst s)
     ;; uint8 _ADASStrTorqRqst
       (write-byte _ADASStrTorqRqst s)
     ;; uint16 _ADASStrTorqTgt
       (write-word _ADASStrTorqTgt s)
     ;; uint16 _ADAS_StrAngle
       (write-word _ADAS_StrAngle s)
     ;; uint8 _VCUTTgtAclrtnRqst
       (write-byte _VCUTTgtAclrtnRqst s)
     ;; float64 _VCUTTgtAclrtnRqstVal
       (sys::poke _VCUTTgtAclrtnRqstVal (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; uint8 _GearRqst
       (write-byte _GearRqst s)
     ;; uint8 _TgtGear
       (write-byte _TgtGear s)
     ;; uint8 _VCUTTgtSpRqst
       (write-byte _VCUTTgtSpRqst s)
     ;; float64 _VCUTTgtSpRqstVal
       (sys::poke _VCUTTgtSpRqstVal (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; uint8 _SensSt_1st
       (write-byte _SensSt_1st s)
     ;; uint16 _DisFrm1stFrtSens
       (write-word _DisFrm1stFrtSens s)
     ;; uint8 _SensSt_2nd
       (write-byte _SensSt_2nd s)
     ;; uint16 _DisFrm2ndFrtSens
       (write-word _DisFrm2ndFrtSens s)
     ;; uint8 _SensSt_3rd
       (write-byte _SensSt_3rd s)
     ;; uint16 _DisFrm3rdFrtSens
       (write-word _DisFrm3rdFrtSens s)
     ;; uint8 _SensSt_4th
       (write-byte _SensSt_4th s)
     ;; uint16 _DisFrm4thFrtSens
       (write-word _DisFrm4thFrtSens s)
     ;; uint8 _SensSt_5th
       (write-byte _SensSt_5th s)
     ;; uint16 _DisFrm5thFrtSens
       (write-word _DisFrm5thFrtSens s)
     ;; uint8 _SensSt_6th
       (write-byte _SensSt_6th s)
     ;; uint16 _DisFrm6thFrtSens
       (write-word _DisFrm6thFrtSens s)
     ;; uint8 _SensSt_7th
       (write-byte _SensSt_7th s)
     ;; uint16 _DisFrm7thFrtSens
       (write-word _DisFrm7thFrtSens s)
     ;; uint8 _SensSt_8th
       (write-byte _SensSt_8th s)
     ;; uint16 _DisFrm8thFrtSens
       (write-word _DisFrm8thFrtSens s)
     ;; uint8 _SensSt_9th
       (write-byte _SensSt_9th s)
     ;; uint16 _DisFrm9thFrtSens
       (write-word _DisFrm9thFrtSens s)
     ;; uint8 _SensSt_10th
       (write-byte _SensSt_10th s)
     ;; uint16 _DisFrm10thFrtSens
       (write-word _DisFrm10thFrtSens s)
     ;; uint8 _SensSt_11th
       (write-byte _SensSt_11th s)
     ;; uint16 _DisFrm11thFrtSens
       (write-word _DisFrm11thFrtSens s)
     ;; uint8 _SensSt_12th
       (write-byte _SensSt_12th s)
     ;; uint16 _DisFrm12thFrtSens
       (write-word _DisFrm12thFrtSens s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; uint8 _module_type
     (setq _module_type (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint32 _error_code
     (setq _error_code (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; string _chassis_data
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _chassis_data (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; uint8 _TMTorqRqstV
     (setq _TMTorqRqstV (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; float64 _TMTorqRqst
     (setq _TMTorqRqst (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; uint8 _HandBrkSts
     (setq _HandBrkSts (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _VecStatRdy
     (setq _VecStatRdy (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _KyPstn
     (setq _KyPstn (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _VecSOC
     (setq _VecSOC (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _VehSpdAvgDrvnV
     (setq _VehSpdAvgDrvnV (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; float64 _VehSpdAvgDrvn
     (setq _VehSpdAvgDrvn (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; uint8 _VecTMActSpdV
     (setq _VecTMActSpdV (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint16 _VecTMActSpd
     (setq _VecTMActSpd (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; uint8 _VCUVehDrvMod
     (setq _VCUVehDrvMod (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; float64 _LowBatVol
     (setq _LowBatVol (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; uint8 _BatSOC
     (setq _BatSOC (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _HhBmIO
     (setq _HhBmIO (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _WindscenWipSt
     (setq _WindscenWipSt (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _LwBmIO
     (setq _LwBmIO (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _HzrdLgtSwAtv
     (setq _HzrdLgtSwAtv (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _HzrdLtIO
     (setq _HzrdLtIO (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _RtTrnLmpAtv
     (setq _RtTrnLmpAtv (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _LftTrnLmpAtv
     (setq _LftTrnLmpAtv (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _WipSwStat
     (setq _WipSwStat (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _StpLpSt
     (setq _StpLpSt (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; bool _is_left_blinking
     (setq _is_left_blinking (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _is_right_blinking
     (setq _is_right_blinking (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; uint8 _DrSbltAtc
     (setq _DrSbltAtc (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _DrSbltAtcV
     (setq _DrSbltAtcV (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _TDAjrSwAtv
     (setq _TDAjrSwAtv (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _PsDoorOpenSwAct
     (setq _PsDoorOpenSwAct (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _PDAjrSwAtv
     (setq _PDAjrSwAtv (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _DrDoorOpenSwAct
     (setq _DrDoorOpenSwAct (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _DDAjrSwAct
     (setq _DDAjrSwAct (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; float64 _PsWdwOpenDgr
     (setq _PsWdwOpenDgr (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _DrWdwOpenDgr
     (setq _DrWdwOpenDgr (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; uint8 _BCMRunMod
     (setq _BCMRunMod (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _BCMRunModV
     (setq _BCMRunModV (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _EPBSysWrnIndReq_1
     (setq _EPBSysWrnIndReq_1 (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _EPBSysWrnIndReqV_1
     (setq _EPBSysWrnIndReqV_1 (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _EPBSysBrkLtsReq_1
     (setq _EPBSysBrkLtsReq_1 (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _EPBSysStatIndReq_1
     (setq _EPBSysStatIndReq_1 (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _ElecPrkBrkSwStatV_1
     (setq _ElecPrkBrkSwStatV_1 (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _ElecPrkBrkStat_1
     (setq _ElecPrkBrkStat_1 (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _ElecPrkBrkSwStat_1
     (setq _ElecPrkBrkSwStat_1 (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _ADASWndSnWpCtrl
     (setq _ADASWndSnWpCtrl (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _ADASHzdLtCtrl
     (setq _ADASHzdLtCtrl (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _ADASSdTrnLmpRHCtrl
     (setq _ADASSdTrnLmpRHCtrl (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _ADASSdTrnLmpLHCtrl
     (setq _ADASSdTrnLmpLHCtrl (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _ADASLowBmCtrl
     (setq _ADASLowBmCtrl (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _ADASHighBmCtrl
     (setq _ADASHighBmCtrl (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _ADASLkCtrl
     (setq _ADASLkCtrl (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _CarWindCtrl
     (setq _CarWindCtrl (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _ADASRemtPrkModRqst
     (setq _ADASRemtPrkModRqst (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _BCMADASCtrlRqst
     (setq _BCMADASCtrlRqst (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _BCMADASCtrlRqstV
     (setq _BCMADASCtrlRqstV (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; float64 _TMActTorq
     (setq _TMActTorq (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; int32 _TMActSpd
     (setq _TMActSpd (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint8 _VSELatAccV
     (setq _VSELatAccV (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; float64 _VSELatAcc
     (setq _VSELatAcc (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; uint8 _VSELongAccV
     (setq _VSELongAccV (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; float64 _VSELongAcc
     (setq _VSELongAcc (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _VehOdo
     (setq _VehOdo (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; uint8 _VehOdoV
     (setq _VehOdoV (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _BrakPedalPos
     (setq _BrakPedalPos (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _AccActPos
     (setq _AccActPos (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _VecActGearStsV
     (setq _VecActGearStsV (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _VecActGearSts
     (setq _VecActGearSts (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _StrWhAngV
     (setq _StrWhAngV (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; float64 _StrWhAng
     (setq _StrWhAng (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; uint8 _EPSProId
     (setq _EPSProId (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _PwrStrIo
     (setq _PwrStrIo (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _SterModV
     (setq _SterModV (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _SterMod
     (setq _SterMod (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; float64 _EPS_LKARespTorq
     (setq _EPS_LKARespTorq (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; uint8 _SterFltMod
     (setq _SterFltMod (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _DrStrTorqV
     (setq _DrStrTorqV (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; float64 _DrStrTorqVal
     (setq _DrStrTorqVal (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; uint16 _SteerWheelRotSpd
     (setq _SteerWheelRotSpd (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; float64 _SteerWheelAngle
     (setq _SteerWheelAngle (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; uint8 _ElecPrkBrkStat
     (setq _ElecPrkBrkStat (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _WhlGrndVlctyLftDrvnV
     (setq _WhlGrndVlctyLftDrvnV (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; float64 _WhlGrndVlctyLftDrvn
     (setq _WhlGrndVlctyLftDrvn (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; uint8 _WhlGrndVlctyRtDrvnV
     (setq _WhlGrndVlctyRtDrvnV (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; float64 _WhlGrndVlctyRtDrvn
     (setq _WhlGrndVlctyRtDrvn (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; uint8 _WhlGrndVlctyLftNnDrvnV
     (setq _WhlGrndVlctyLftNnDrvnV (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; float64 _WhlGrndVlctyLftNnDrvn
     (setq _WhlGrndVlctyLftNnDrvn (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; uint8 _WhlGrndVlctyRtNnDrvnV
     (setq _WhlGrndVlctyRtNnDrvnV (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; float64 _WhlGrndVlctyRtNnDrvn
     (setq _WhlGrndVlctyRtNnDrvn (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; uint8 _LftDrvnWhlDirec
     (setq _LftDrvnWhlDirec (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _WhlGrndPlsLftDrvnV
     (setq _WhlGrndPlsLftDrvnV (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint16 _WhlGrndPlsLftDrvn
     (setq _WhlGrndPlsLftDrvn (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; uint8 _RtDrvnWhlDirec
     (setq _RtDrvnWhlDirec (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _WhlGrndPlsRtDrvnV
     (setq _WhlGrndPlsRtDrvnV (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint16 _WhlGrndPlsRtDrvn
     (setq _WhlGrndPlsRtDrvn (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; uint8 _LftNnDrvnWhlDirec
     (setq _LftNnDrvnWhlDirec (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _WhlGrndPlsLftNnDrvnV
     (setq _WhlGrndPlsLftNnDrvnV (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint16 _WhlGrndPlsLftNnDrvn
     (setq _WhlGrndPlsLftNnDrvn (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; uint8 _RtNnDrvnWhlDirec
     (setq _RtNnDrvnWhlDirec (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _WhlGrndPlsRtNnDrvnV
     (setq _WhlGrndPlsRtNnDrvnV (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint16 _WhlGrndPlsRtNnDrvn
     (setq _WhlGrndPlsRtNnDrvn (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; uint8 _BBWSts
     (setq _BBWSts (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _EBSDrvMod
     (setq _EBSDrvMod (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _IDURqst
     (setq _IDURqst (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _EBSMCBrPressure
     (setq _EBSMCBrPressure (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _BrakPedalDisp
     (setq _BrakPedalDisp (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _ADAS_StrAngleRqstV
     (setq _ADAS_StrAngleRqstV (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint16 _ADASBrakRqstPres
     (setq _ADASBrakRqstPres (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; uint8 _EPB_ADASPrkngRqst
     (setq _EPB_ADASPrkngRqst (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _ADASStrTorqRqst
     (setq _ADASStrTorqRqst (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint16 _ADASStrTorqTgt
     (setq _ADASStrTorqTgt (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; uint16 _ADAS_StrAngle
     (setq _ADAS_StrAngle (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; uint8 _VCUTTgtAclrtnRqst
     (setq _VCUTTgtAclrtnRqst (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; float64 _VCUTTgtAclrtnRqstVal
     (setq _VCUTTgtAclrtnRqstVal (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; uint8 _GearRqst
     (setq _GearRqst (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _TgtGear
     (setq _TgtGear (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _VCUTTgtSpRqst
     (setq _VCUTTgtSpRqst (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; float64 _VCUTTgtSpRqstVal
     (setq _VCUTTgtSpRqstVal (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; uint8 _SensSt_1st
     (setq _SensSt_1st (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint16 _DisFrm1stFrtSens
     (setq _DisFrm1stFrtSens (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; uint8 _SensSt_2nd
     (setq _SensSt_2nd (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint16 _DisFrm2ndFrtSens
     (setq _DisFrm2ndFrtSens (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; uint8 _SensSt_3rd
     (setq _SensSt_3rd (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint16 _DisFrm3rdFrtSens
     (setq _DisFrm3rdFrtSens (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; uint8 _SensSt_4th
     (setq _SensSt_4th (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint16 _DisFrm4thFrtSens
     (setq _DisFrm4thFrtSens (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; uint8 _SensSt_5th
     (setq _SensSt_5th (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint16 _DisFrm5thFrtSens
     (setq _DisFrm5thFrtSens (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; uint8 _SensSt_6th
     (setq _SensSt_6th (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint16 _DisFrm6thFrtSens
     (setq _DisFrm6thFrtSens (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; uint8 _SensSt_7th
     (setq _SensSt_7th (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint16 _DisFrm7thFrtSens
     (setq _DisFrm7thFrtSens (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; uint8 _SensSt_8th
     (setq _SensSt_8th (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint16 _DisFrm8thFrtSens
     (setq _DisFrm8thFrtSens (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; uint8 _SensSt_9th
     (setq _SensSt_9th (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint16 _DisFrm9thFrtSens
     (setq _DisFrm9thFrtSens (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; uint8 _SensSt_10th
     (setq _SensSt_10th (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint16 _DisFrm10thFrtSens
     (setq _DisFrm10thFrtSens (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; uint8 _SensSt_11th
     (setq _SensSt_11th (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint16 _DisFrm11thFrtSens
     (setq _DisFrm11thFrtSens (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; uint8 _SensSt_12th
     (setq _SensSt_12th (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint16 _DisFrm12thFrtSens
     (setq _DisFrm12thFrtSens (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;;
   self)
  )

(setf (get in2ulv_msgs::ChassisMsg :md5sum-) "4afd528f4d1ffe906c0a12d9e60847f2")
(setf (get in2ulv_msgs::ChassisMsg :datatype-) "in2ulv_msgs/ChassisMsg")
(setf (get in2ulv_msgs::ChassisMsg :definition-)
      "# 帧头，包含时间戳信息
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


================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
string frame_id

")



(provide :in2ulv_msgs/ChassisMsg "4afd528f4d1ffe906c0a12d9e60847f2")


