;; Auto-generated. Do not edit!


(when (boundp 'in2ulv_msgs::ChassisCtrlMsg)
  (if (not (find-package "IN2ULV_MSGS"))
    (make-package "IN2ULV_MSGS"))
  (shadow 'ChassisCtrlMsg (find-package "IN2ULV_MSGS")))
(unless (find-package "IN2ULV_MSGS::CHASSISCTRLMSG")
  (make-package "IN2ULV_MSGS::CHASSISCTRLMSG"))

(in-package "ROS")
;;//! \htmlinclude ChassisCtrlMsg.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass in2ulv_msgs::ChassisCtrlMsg
  :super ros::object
  :slots (_header _module_type _error_code _ctrl_command _VclDrvModRqstV _VclDrvModRqst _PakBrkRqstV _PakBrkRqst _VclAclRqstV _BrkPressureTgtV _VclVelRqstV _VclAclRqst _BrkPressureTgt _VclVelRqst _IDUFltIndOn _PowOnRqst _VclShiftRqst _StrAglRqstV _StrAglRqst _TgtStrAglVlcV _TgtStrAglVlc _EPSCtrlModRqstV _EPSCtrlModRqst _LdskCtrl _WndSnWpCtrl _StpLpCtrl _HzdLtCtrl _ClerLmpCtrl _FogLmpCtrl _SdTrnLmpRHCtrl _SdTrnLmpLHCtrl _LowBmCtrl _HighBmCtrl _LkCtrl _CarWindCtrl _BCMCtrlModRqstV _BCMCtrlModRqst _RemtPowOnRqst _RemtPowOnRqstV _RemtPowDwnRqst _RemtPowDwnRqstV _CANB_ParkingStartRequest _CANB_ParkingCloseRequest _ADAS_StrAngleRqstV _ADASBrakRqstPres _EPB_ADASPrkngRqst _ADASStrTorqRqst _ADASStrTorqTgt _ADAS_StrAngle _VCUTTgtAclrtnRqst _VCUTTgtAclrtnRqstVal _GearRqst _TgtGear _VCUTTgtSpRqst _VCUTTgtSpRqstVal _ADASWndSnWpCtrl _ADASHzdLtCtrl _ADASSdTrnLmpRHCtrl _ADASSdTrnLmpLHCtrl _ADASLowBmCtrl _ADASHighBmCtrl _ADASLkCtrl _ADASRemtPrkModRqst _BCMADASCtrlRqst _BCMADASCtrlRqstV ))

(defmethod in2ulv_msgs::ChassisCtrlMsg
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:module_type __module_type) 0)
    ((:error_code __error_code) 0)
    ((:ctrl_command __ctrl_command) "")
    ((:VclDrvModRqstV __VclDrvModRqstV) 0)
    ((:VclDrvModRqst __VclDrvModRqst) 0)
    ((:PakBrkRqstV __PakBrkRqstV) 0)
    ((:PakBrkRqst __PakBrkRqst) 0)
    ((:VclAclRqstV __VclAclRqstV) 0)
    ((:BrkPressureTgtV __BrkPressureTgtV) 0)
    ((:VclVelRqstV __VclVelRqstV) 0)
    ((:VclAclRqst __VclAclRqst) 0.0)
    ((:BrkPressureTgt __BrkPressureTgt) 0.0)
    ((:VclVelRqst __VclVelRqst) 0.0)
    ((:IDUFltIndOn __IDUFltIndOn) 0)
    ((:PowOnRqst __PowOnRqst) 0)
    ((:VclShiftRqst __VclShiftRqst) 0)
    ((:StrAglRqstV __StrAglRqstV) 0)
    ((:StrAglRqst __StrAglRqst) 0.0)
    ((:TgtStrAglVlcV __TgtStrAglVlcV) 0)
    ((:TgtStrAglVlc __TgtStrAglVlc) 0.0)
    ((:EPSCtrlModRqstV __EPSCtrlModRqstV) 0)
    ((:EPSCtrlModRqst __EPSCtrlModRqst) 0)
    ((:LdskCtrl __LdskCtrl) 0)
    ((:WndSnWpCtrl __WndSnWpCtrl) 0)
    ((:StpLpCtrl __StpLpCtrl) 0)
    ((:HzdLtCtrl __HzdLtCtrl) 0)
    ((:ClerLmpCtrl __ClerLmpCtrl) 0)
    ((:FogLmpCtrl __FogLmpCtrl) 0)
    ((:SdTrnLmpRHCtrl __SdTrnLmpRHCtrl) 0)
    ((:SdTrnLmpLHCtrl __SdTrnLmpLHCtrl) 0)
    ((:LowBmCtrl __LowBmCtrl) 0)
    ((:HighBmCtrl __HighBmCtrl) 0)
    ((:LkCtrl __LkCtrl) 0)
    ((:CarWindCtrl __CarWindCtrl) 0)
    ((:BCMCtrlModRqstV __BCMCtrlModRqstV) 0)
    ((:BCMCtrlModRqst __BCMCtrlModRqst) 0)
    ((:RemtPowOnRqst __RemtPowOnRqst) 0)
    ((:RemtPowOnRqstV __RemtPowOnRqstV) 0)
    ((:RemtPowDwnRqst __RemtPowDwnRqst) 0)
    ((:RemtPowDwnRqstV __RemtPowDwnRqstV) 0)
    ((:CANB_ParkingStartRequest __CANB_ParkingStartRequest) nil)
    ((:CANB_ParkingCloseRequest __CANB_ParkingCloseRequest) nil)
    ((:ADAS_StrAngleRqstV __ADAS_StrAngleRqstV) 0)
    ((:ADASBrakRqstPres __ADASBrakRqstPres) 0.0)
    ((:EPB_ADASPrkngRqst __EPB_ADASPrkngRqst) 0)
    ((:ADASStrTorqRqst __ADASStrTorqRqst) 0)
    ((:ADASStrTorqTgt __ADASStrTorqTgt) 0.0)
    ((:ADAS_StrAngle __ADAS_StrAngle) 0.0)
    ((:VCUTTgtAclrtnRqst __VCUTTgtAclrtnRqst) 0)
    ((:VCUTTgtAclrtnRqstVal __VCUTTgtAclrtnRqstVal) 0.0)
    ((:GearRqst __GearRqst) 0)
    ((:TgtGear __TgtGear) 0)
    ((:VCUTTgtSpRqst __VCUTTgtSpRqst) 0)
    ((:VCUTTgtSpRqstVal __VCUTTgtSpRqstVal) 0.0)
    ((:ADASWndSnWpCtrl __ADASWndSnWpCtrl) 0)
    ((:ADASHzdLtCtrl __ADASHzdLtCtrl) 0)
    ((:ADASSdTrnLmpRHCtrl __ADASSdTrnLmpRHCtrl) 0)
    ((:ADASSdTrnLmpLHCtrl __ADASSdTrnLmpLHCtrl) 0)
    ((:ADASLowBmCtrl __ADASLowBmCtrl) 0)
    ((:ADASHighBmCtrl __ADASHighBmCtrl) 0)
    ((:ADASLkCtrl __ADASLkCtrl) 0)
    ((:ADASRemtPrkModRqst __ADASRemtPrkModRqst) 0)
    ((:BCMADASCtrlRqst __BCMADASCtrlRqst) 0)
    ((:BCMADASCtrlRqstV __BCMADASCtrlRqstV) 0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _module_type (round __module_type))
   (setq _error_code (round __error_code))
   (setq _ctrl_command (string __ctrl_command))
   (setq _VclDrvModRqstV (round __VclDrvModRqstV))
   (setq _VclDrvModRqst (round __VclDrvModRqst))
   (setq _PakBrkRqstV (round __PakBrkRqstV))
   (setq _PakBrkRqst (round __PakBrkRqst))
   (setq _VclAclRqstV (round __VclAclRqstV))
   (setq _BrkPressureTgtV (round __BrkPressureTgtV))
   (setq _VclVelRqstV (round __VclVelRqstV))
   (setq _VclAclRqst (float __VclAclRqst))
   (setq _BrkPressureTgt (float __BrkPressureTgt))
   (setq _VclVelRqst (float __VclVelRqst))
   (setq _IDUFltIndOn (round __IDUFltIndOn))
   (setq _PowOnRqst (round __PowOnRqst))
   (setq _VclShiftRqst (round __VclShiftRqst))
   (setq _StrAglRqstV (round __StrAglRqstV))
   (setq _StrAglRqst (float __StrAglRqst))
   (setq _TgtStrAglVlcV (round __TgtStrAglVlcV))
   (setq _TgtStrAglVlc (float __TgtStrAglVlc))
   (setq _EPSCtrlModRqstV (round __EPSCtrlModRqstV))
   (setq _EPSCtrlModRqst (round __EPSCtrlModRqst))
   (setq _LdskCtrl (round __LdskCtrl))
   (setq _WndSnWpCtrl (round __WndSnWpCtrl))
   (setq _StpLpCtrl (round __StpLpCtrl))
   (setq _HzdLtCtrl (round __HzdLtCtrl))
   (setq _ClerLmpCtrl (round __ClerLmpCtrl))
   (setq _FogLmpCtrl (round __FogLmpCtrl))
   (setq _SdTrnLmpRHCtrl (round __SdTrnLmpRHCtrl))
   (setq _SdTrnLmpLHCtrl (round __SdTrnLmpLHCtrl))
   (setq _LowBmCtrl (round __LowBmCtrl))
   (setq _HighBmCtrl (round __HighBmCtrl))
   (setq _LkCtrl (round __LkCtrl))
   (setq _CarWindCtrl (round __CarWindCtrl))
   (setq _BCMCtrlModRqstV (round __BCMCtrlModRqstV))
   (setq _BCMCtrlModRqst (round __BCMCtrlModRqst))
   (setq _RemtPowOnRqst (round __RemtPowOnRqst))
   (setq _RemtPowOnRqstV (round __RemtPowOnRqstV))
   (setq _RemtPowDwnRqst (round __RemtPowDwnRqst))
   (setq _RemtPowDwnRqstV (round __RemtPowDwnRqstV))
   (setq _CANB_ParkingStartRequest __CANB_ParkingStartRequest)
   (setq _CANB_ParkingCloseRequest __CANB_ParkingCloseRequest)
   (setq _ADAS_StrAngleRqstV (round __ADAS_StrAngleRqstV))
   (setq _ADASBrakRqstPres (float __ADASBrakRqstPres))
   (setq _EPB_ADASPrkngRqst (round __EPB_ADASPrkngRqst))
   (setq _ADASStrTorqRqst (round __ADASStrTorqRqst))
   (setq _ADASStrTorqTgt (float __ADASStrTorqTgt))
   (setq _ADAS_StrAngle (float __ADAS_StrAngle))
   (setq _VCUTTgtAclrtnRqst (round __VCUTTgtAclrtnRqst))
   (setq _VCUTTgtAclrtnRqstVal (float __VCUTTgtAclrtnRqstVal))
   (setq _GearRqst (round __GearRqst))
   (setq _TgtGear (round __TgtGear))
   (setq _VCUTTgtSpRqst (round __VCUTTgtSpRqst))
   (setq _VCUTTgtSpRqstVal (float __VCUTTgtSpRqstVal))
   (setq _ADASWndSnWpCtrl (round __ADASWndSnWpCtrl))
   (setq _ADASHzdLtCtrl (round __ADASHzdLtCtrl))
   (setq _ADASSdTrnLmpRHCtrl (round __ADASSdTrnLmpRHCtrl))
   (setq _ADASSdTrnLmpLHCtrl (round __ADASSdTrnLmpLHCtrl))
   (setq _ADASLowBmCtrl (round __ADASLowBmCtrl))
   (setq _ADASHighBmCtrl (round __ADASHighBmCtrl))
   (setq _ADASLkCtrl (round __ADASLkCtrl))
   (setq _ADASRemtPrkModRqst (round __ADASRemtPrkModRqst))
   (setq _BCMADASCtrlRqst (round __BCMADASCtrlRqst))
   (setq _BCMADASCtrlRqstV (round __BCMADASCtrlRqstV))
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
  (:ctrl_command
   (&optional __ctrl_command)
   (if __ctrl_command (setq _ctrl_command __ctrl_command)) _ctrl_command)
  (:VclDrvModRqstV
   (&optional __VclDrvModRqstV)
   (if __VclDrvModRqstV (setq _VclDrvModRqstV __VclDrvModRqstV)) _VclDrvModRqstV)
  (:VclDrvModRqst
   (&optional __VclDrvModRqst)
   (if __VclDrvModRqst (setq _VclDrvModRqst __VclDrvModRqst)) _VclDrvModRqst)
  (:PakBrkRqstV
   (&optional __PakBrkRqstV)
   (if __PakBrkRqstV (setq _PakBrkRqstV __PakBrkRqstV)) _PakBrkRqstV)
  (:PakBrkRqst
   (&optional __PakBrkRqst)
   (if __PakBrkRqst (setq _PakBrkRqst __PakBrkRqst)) _PakBrkRqst)
  (:VclAclRqstV
   (&optional __VclAclRqstV)
   (if __VclAclRqstV (setq _VclAclRqstV __VclAclRqstV)) _VclAclRqstV)
  (:BrkPressureTgtV
   (&optional __BrkPressureTgtV)
   (if __BrkPressureTgtV (setq _BrkPressureTgtV __BrkPressureTgtV)) _BrkPressureTgtV)
  (:VclVelRqstV
   (&optional __VclVelRqstV)
   (if __VclVelRqstV (setq _VclVelRqstV __VclVelRqstV)) _VclVelRqstV)
  (:VclAclRqst
   (&optional __VclAclRqst)
   (if __VclAclRqst (setq _VclAclRqst __VclAclRqst)) _VclAclRqst)
  (:BrkPressureTgt
   (&optional __BrkPressureTgt)
   (if __BrkPressureTgt (setq _BrkPressureTgt __BrkPressureTgt)) _BrkPressureTgt)
  (:VclVelRqst
   (&optional __VclVelRqst)
   (if __VclVelRqst (setq _VclVelRqst __VclVelRqst)) _VclVelRqst)
  (:IDUFltIndOn
   (&optional __IDUFltIndOn)
   (if __IDUFltIndOn (setq _IDUFltIndOn __IDUFltIndOn)) _IDUFltIndOn)
  (:PowOnRqst
   (&optional __PowOnRqst)
   (if __PowOnRqst (setq _PowOnRqst __PowOnRqst)) _PowOnRqst)
  (:VclShiftRqst
   (&optional __VclShiftRqst)
   (if __VclShiftRqst (setq _VclShiftRqst __VclShiftRqst)) _VclShiftRqst)
  (:StrAglRqstV
   (&optional __StrAglRqstV)
   (if __StrAglRqstV (setq _StrAglRqstV __StrAglRqstV)) _StrAglRqstV)
  (:StrAglRqst
   (&optional __StrAglRqst)
   (if __StrAglRqst (setq _StrAglRqst __StrAglRqst)) _StrAglRqst)
  (:TgtStrAglVlcV
   (&optional __TgtStrAglVlcV)
   (if __TgtStrAglVlcV (setq _TgtStrAglVlcV __TgtStrAglVlcV)) _TgtStrAglVlcV)
  (:TgtStrAglVlc
   (&optional __TgtStrAglVlc)
   (if __TgtStrAglVlc (setq _TgtStrAglVlc __TgtStrAglVlc)) _TgtStrAglVlc)
  (:EPSCtrlModRqstV
   (&optional __EPSCtrlModRqstV)
   (if __EPSCtrlModRqstV (setq _EPSCtrlModRqstV __EPSCtrlModRqstV)) _EPSCtrlModRqstV)
  (:EPSCtrlModRqst
   (&optional __EPSCtrlModRqst)
   (if __EPSCtrlModRqst (setq _EPSCtrlModRqst __EPSCtrlModRqst)) _EPSCtrlModRqst)
  (:LdskCtrl
   (&optional __LdskCtrl)
   (if __LdskCtrl (setq _LdskCtrl __LdskCtrl)) _LdskCtrl)
  (:WndSnWpCtrl
   (&optional __WndSnWpCtrl)
   (if __WndSnWpCtrl (setq _WndSnWpCtrl __WndSnWpCtrl)) _WndSnWpCtrl)
  (:StpLpCtrl
   (&optional __StpLpCtrl)
   (if __StpLpCtrl (setq _StpLpCtrl __StpLpCtrl)) _StpLpCtrl)
  (:HzdLtCtrl
   (&optional __HzdLtCtrl)
   (if __HzdLtCtrl (setq _HzdLtCtrl __HzdLtCtrl)) _HzdLtCtrl)
  (:ClerLmpCtrl
   (&optional __ClerLmpCtrl)
   (if __ClerLmpCtrl (setq _ClerLmpCtrl __ClerLmpCtrl)) _ClerLmpCtrl)
  (:FogLmpCtrl
   (&optional __FogLmpCtrl)
   (if __FogLmpCtrl (setq _FogLmpCtrl __FogLmpCtrl)) _FogLmpCtrl)
  (:SdTrnLmpRHCtrl
   (&optional __SdTrnLmpRHCtrl)
   (if __SdTrnLmpRHCtrl (setq _SdTrnLmpRHCtrl __SdTrnLmpRHCtrl)) _SdTrnLmpRHCtrl)
  (:SdTrnLmpLHCtrl
   (&optional __SdTrnLmpLHCtrl)
   (if __SdTrnLmpLHCtrl (setq _SdTrnLmpLHCtrl __SdTrnLmpLHCtrl)) _SdTrnLmpLHCtrl)
  (:LowBmCtrl
   (&optional __LowBmCtrl)
   (if __LowBmCtrl (setq _LowBmCtrl __LowBmCtrl)) _LowBmCtrl)
  (:HighBmCtrl
   (&optional __HighBmCtrl)
   (if __HighBmCtrl (setq _HighBmCtrl __HighBmCtrl)) _HighBmCtrl)
  (:LkCtrl
   (&optional __LkCtrl)
   (if __LkCtrl (setq _LkCtrl __LkCtrl)) _LkCtrl)
  (:CarWindCtrl
   (&optional __CarWindCtrl)
   (if __CarWindCtrl (setq _CarWindCtrl __CarWindCtrl)) _CarWindCtrl)
  (:BCMCtrlModRqstV
   (&optional __BCMCtrlModRqstV)
   (if __BCMCtrlModRqstV (setq _BCMCtrlModRqstV __BCMCtrlModRqstV)) _BCMCtrlModRqstV)
  (:BCMCtrlModRqst
   (&optional __BCMCtrlModRqst)
   (if __BCMCtrlModRqst (setq _BCMCtrlModRqst __BCMCtrlModRqst)) _BCMCtrlModRqst)
  (:RemtPowOnRqst
   (&optional __RemtPowOnRqst)
   (if __RemtPowOnRqst (setq _RemtPowOnRqst __RemtPowOnRqst)) _RemtPowOnRqst)
  (:RemtPowOnRqstV
   (&optional __RemtPowOnRqstV)
   (if __RemtPowOnRqstV (setq _RemtPowOnRqstV __RemtPowOnRqstV)) _RemtPowOnRqstV)
  (:RemtPowDwnRqst
   (&optional __RemtPowDwnRqst)
   (if __RemtPowDwnRqst (setq _RemtPowDwnRqst __RemtPowDwnRqst)) _RemtPowDwnRqst)
  (:RemtPowDwnRqstV
   (&optional __RemtPowDwnRqstV)
   (if __RemtPowDwnRqstV (setq _RemtPowDwnRqstV __RemtPowDwnRqstV)) _RemtPowDwnRqstV)
  (:CANB_ParkingStartRequest
   (&optional (__CANB_ParkingStartRequest :null))
   (if (not (eq __CANB_ParkingStartRequest :null)) (setq _CANB_ParkingStartRequest __CANB_ParkingStartRequest)) _CANB_ParkingStartRequest)
  (:CANB_ParkingCloseRequest
   (&optional (__CANB_ParkingCloseRequest :null))
   (if (not (eq __CANB_ParkingCloseRequest :null)) (setq _CANB_ParkingCloseRequest __CANB_ParkingCloseRequest)) _CANB_ParkingCloseRequest)
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
  (:ADASRemtPrkModRqst
   (&optional __ADASRemtPrkModRqst)
   (if __ADASRemtPrkModRqst (setq _ADASRemtPrkModRqst __ADASRemtPrkModRqst)) _ADASRemtPrkModRqst)
  (:BCMADASCtrlRqst
   (&optional __BCMADASCtrlRqst)
   (if __BCMADASCtrlRqst (setq _BCMADASCtrlRqst __BCMADASCtrlRqst)) _BCMADASCtrlRqst)
  (:BCMADASCtrlRqstV
   (&optional __BCMADASCtrlRqstV)
   (if __BCMADASCtrlRqstV (setq _BCMADASCtrlRqstV __BCMADASCtrlRqstV)) _BCMADASCtrlRqstV)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; uint8 _module_type
    1
    ;; uint32 _error_code
    4
    ;; string _ctrl_command
    4 (length _ctrl_command)
    ;; uint8 _VclDrvModRqstV
    1
    ;; uint8 _VclDrvModRqst
    1
    ;; uint8 _PakBrkRqstV
    1
    ;; uint8 _PakBrkRqst
    1
    ;; uint8 _VclAclRqstV
    1
    ;; uint8 _BrkPressureTgtV
    1
    ;; uint8 _VclVelRqstV
    1
    ;; float64 _VclAclRqst
    8
    ;; float64 _BrkPressureTgt
    8
    ;; float64 _VclVelRqst
    8
    ;; uint8 _IDUFltIndOn
    1
    ;; uint8 _PowOnRqst
    1
    ;; uint8 _VclShiftRqst
    1
    ;; uint8 _StrAglRqstV
    1
    ;; float64 _StrAglRqst
    8
    ;; uint8 _TgtStrAglVlcV
    1
    ;; float64 _TgtStrAglVlc
    8
    ;; uint8 _EPSCtrlModRqstV
    1
    ;; uint8 _EPSCtrlModRqst
    1
    ;; uint8 _LdskCtrl
    1
    ;; uint8 _WndSnWpCtrl
    1
    ;; uint8 _StpLpCtrl
    1
    ;; uint8 _HzdLtCtrl
    1
    ;; uint8 _ClerLmpCtrl
    1
    ;; uint8 _FogLmpCtrl
    1
    ;; uint8 _SdTrnLmpRHCtrl
    1
    ;; uint8 _SdTrnLmpLHCtrl
    1
    ;; uint8 _LowBmCtrl
    1
    ;; uint8 _HighBmCtrl
    1
    ;; uint8 _LkCtrl
    1
    ;; uint8 _CarWindCtrl
    1
    ;; uint8 _BCMCtrlModRqstV
    1
    ;; uint8 _BCMCtrlModRqst
    1
    ;; uint8 _RemtPowOnRqst
    1
    ;; uint8 _RemtPowOnRqstV
    1
    ;; uint8 _RemtPowDwnRqst
    1
    ;; uint8 _RemtPowDwnRqstV
    1
    ;; bool _CANB_ParkingStartRequest
    1
    ;; bool _CANB_ParkingCloseRequest
    1
    ;; uint8 _ADAS_StrAngleRqstV
    1
    ;; float64 _ADASBrakRqstPres
    8
    ;; uint8 _EPB_ADASPrkngRqst
    1
    ;; uint8 _ADASStrTorqRqst
    1
    ;; float64 _ADASStrTorqTgt
    8
    ;; float64 _ADAS_StrAngle
    8
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
    ;; uint8 _ADASRemtPrkModRqst
    1
    ;; uint8 _BCMADASCtrlRqst
    1
    ;; uint8 _BCMADASCtrlRqstV
    1
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
     ;; string _ctrl_command
       (write-long (length _ctrl_command) s) (princ _ctrl_command s)
     ;; uint8 _VclDrvModRqstV
       (write-byte _VclDrvModRqstV s)
     ;; uint8 _VclDrvModRqst
       (write-byte _VclDrvModRqst s)
     ;; uint8 _PakBrkRqstV
       (write-byte _PakBrkRqstV s)
     ;; uint8 _PakBrkRqst
       (write-byte _PakBrkRqst s)
     ;; uint8 _VclAclRqstV
       (write-byte _VclAclRqstV s)
     ;; uint8 _BrkPressureTgtV
       (write-byte _BrkPressureTgtV s)
     ;; uint8 _VclVelRqstV
       (write-byte _VclVelRqstV s)
     ;; float64 _VclAclRqst
       (sys::poke _VclAclRqst (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _BrkPressureTgt
       (sys::poke _BrkPressureTgt (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _VclVelRqst
       (sys::poke _VclVelRqst (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; uint8 _IDUFltIndOn
       (write-byte _IDUFltIndOn s)
     ;; uint8 _PowOnRqst
       (write-byte _PowOnRqst s)
     ;; uint8 _VclShiftRqst
       (write-byte _VclShiftRqst s)
     ;; uint8 _StrAglRqstV
       (write-byte _StrAglRqstV s)
     ;; float64 _StrAglRqst
       (sys::poke _StrAglRqst (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; uint8 _TgtStrAglVlcV
       (write-byte _TgtStrAglVlcV s)
     ;; float64 _TgtStrAglVlc
       (sys::poke _TgtStrAglVlc (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; uint8 _EPSCtrlModRqstV
       (write-byte _EPSCtrlModRqstV s)
     ;; uint8 _EPSCtrlModRqst
       (write-byte _EPSCtrlModRqst s)
     ;; uint8 _LdskCtrl
       (write-byte _LdskCtrl s)
     ;; uint8 _WndSnWpCtrl
       (write-byte _WndSnWpCtrl s)
     ;; uint8 _StpLpCtrl
       (write-byte _StpLpCtrl s)
     ;; uint8 _HzdLtCtrl
       (write-byte _HzdLtCtrl s)
     ;; uint8 _ClerLmpCtrl
       (write-byte _ClerLmpCtrl s)
     ;; uint8 _FogLmpCtrl
       (write-byte _FogLmpCtrl s)
     ;; uint8 _SdTrnLmpRHCtrl
       (write-byte _SdTrnLmpRHCtrl s)
     ;; uint8 _SdTrnLmpLHCtrl
       (write-byte _SdTrnLmpLHCtrl s)
     ;; uint8 _LowBmCtrl
       (write-byte _LowBmCtrl s)
     ;; uint8 _HighBmCtrl
       (write-byte _HighBmCtrl s)
     ;; uint8 _LkCtrl
       (write-byte _LkCtrl s)
     ;; uint8 _CarWindCtrl
       (write-byte _CarWindCtrl s)
     ;; uint8 _BCMCtrlModRqstV
       (write-byte _BCMCtrlModRqstV s)
     ;; uint8 _BCMCtrlModRqst
       (write-byte _BCMCtrlModRqst s)
     ;; uint8 _RemtPowOnRqst
       (write-byte _RemtPowOnRqst s)
     ;; uint8 _RemtPowOnRqstV
       (write-byte _RemtPowOnRqstV s)
     ;; uint8 _RemtPowDwnRqst
       (write-byte _RemtPowDwnRqst s)
     ;; uint8 _RemtPowDwnRqstV
       (write-byte _RemtPowDwnRqstV s)
     ;; bool _CANB_ParkingStartRequest
       (if _CANB_ParkingStartRequest (write-byte -1 s) (write-byte 0 s))
     ;; bool _CANB_ParkingCloseRequest
       (if _CANB_ParkingCloseRequest (write-byte -1 s) (write-byte 0 s))
     ;; uint8 _ADAS_StrAngleRqstV
       (write-byte _ADAS_StrAngleRqstV s)
     ;; float64 _ADASBrakRqstPres
       (sys::poke _ADASBrakRqstPres (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; uint8 _EPB_ADASPrkngRqst
       (write-byte _EPB_ADASPrkngRqst s)
     ;; uint8 _ADASStrTorqRqst
       (write-byte _ADASStrTorqRqst s)
     ;; float64 _ADASStrTorqTgt
       (sys::poke _ADASStrTorqTgt (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _ADAS_StrAngle
       (sys::poke _ADAS_StrAngle (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
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
     ;; uint8 _ADASRemtPrkModRqst
       (write-byte _ADASRemtPrkModRqst s)
     ;; uint8 _BCMADASCtrlRqst
       (write-byte _BCMADASCtrlRqst s)
     ;; uint8 _BCMADASCtrlRqstV
       (write-byte _BCMADASCtrlRqstV s)
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
   ;; string _ctrl_command
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _ctrl_command (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; uint8 _VclDrvModRqstV
     (setq _VclDrvModRqstV (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _VclDrvModRqst
     (setq _VclDrvModRqst (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _PakBrkRqstV
     (setq _PakBrkRqstV (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _PakBrkRqst
     (setq _PakBrkRqst (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _VclAclRqstV
     (setq _VclAclRqstV (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _BrkPressureTgtV
     (setq _BrkPressureTgtV (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _VclVelRqstV
     (setq _VclVelRqstV (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; float64 _VclAclRqst
     (setq _VclAclRqst (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _BrkPressureTgt
     (setq _BrkPressureTgt (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _VclVelRqst
     (setq _VclVelRqst (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; uint8 _IDUFltIndOn
     (setq _IDUFltIndOn (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _PowOnRqst
     (setq _PowOnRqst (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _VclShiftRqst
     (setq _VclShiftRqst (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _StrAglRqstV
     (setq _StrAglRqstV (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; float64 _StrAglRqst
     (setq _StrAglRqst (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; uint8 _TgtStrAglVlcV
     (setq _TgtStrAglVlcV (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; float64 _TgtStrAglVlc
     (setq _TgtStrAglVlc (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; uint8 _EPSCtrlModRqstV
     (setq _EPSCtrlModRqstV (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _EPSCtrlModRqst
     (setq _EPSCtrlModRqst (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _LdskCtrl
     (setq _LdskCtrl (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _WndSnWpCtrl
     (setq _WndSnWpCtrl (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _StpLpCtrl
     (setq _StpLpCtrl (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _HzdLtCtrl
     (setq _HzdLtCtrl (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _ClerLmpCtrl
     (setq _ClerLmpCtrl (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _FogLmpCtrl
     (setq _FogLmpCtrl (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _SdTrnLmpRHCtrl
     (setq _SdTrnLmpRHCtrl (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _SdTrnLmpLHCtrl
     (setq _SdTrnLmpLHCtrl (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _LowBmCtrl
     (setq _LowBmCtrl (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _HighBmCtrl
     (setq _HighBmCtrl (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _LkCtrl
     (setq _LkCtrl (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _CarWindCtrl
     (setq _CarWindCtrl (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _BCMCtrlModRqstV
     (setq _BCMCtrlModRqstV (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _BCMCtrlModRqst
     (setq _BCMCtrlModRqst (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _RemtPowOnRqst
     (setq _RemtPowOnRqst (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _RemtPowOnRqstV
     (setq _RemtPowOnRqstV (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _RemtPowDwnRqst
     (setq _RemtPowDwnRqst (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _RemtPowDwnRqstV
     (setq _RemtPowDwnRqstV (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; bool _CANB_ParkingStartRequest
     (setq _CANB_ParkingStartRequest (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _CANB_ParkingCloseRequest
     (setq _CANB_ParkingCloseRequest (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; uint8 _ADAS_StrAngleRqstV
     (setq _ADAS_StrAngleRqstV (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; float64 _ADASBrakRqstPres
     (setq _ADASBrakRqstPres (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; uint8 _EPB_ADASPrkngRqst
     (setq _EPB_ADASPrkngRqst (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _ADASStrTorqRqst
     (setq _ADASStrTorqRqst (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; float64 _ADASStrTorqTgt
     (setq _ADASStrTorqTgt (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _ADAS_StrAngle
     (setq _ADAS_StrAngle (sys::peek buf ptr- :double)) (incf ptr- 8)
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
   ;; uint8 _ADASRemtPrkModRqst
     (setq _ADASRemtPrkModRqst (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _BCMADASCtrlRqst
     (setq _BCMADASCtrlRqst (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _BCMADASCtrlRqstV
     (setq _BCMADASCtrlRqstV (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(setf (get in2ulv_msgs::ChassisCtrlMsg :md5sum-) "6b699ba917a62ef652278429228a8b35")
(setf (get in2ulv_msgs::ChassisCtrlMsg :datatype-) "in2ulv_msgs/ChassisCtrlMsg")
(setf (get in2ulv_msgs::ChassisCtrlMsg :definition-)
      "# 帧头，包含时间戳信息
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



(provide :in2ulv_msgs/ChassisCtrlMsg "6b699ba917a62ef652278429228a8b35")


