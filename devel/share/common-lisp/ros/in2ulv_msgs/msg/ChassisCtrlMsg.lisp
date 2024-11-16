; Auto-generated. Do not edit!


(cl:in-package in2ulv_msgs-msg)


;//! \htmlinclude ChassisCtrlMsg.msg.html

(cl:defclass <ChassisCtrlMsg> (roslisp-msg-protocol:ros-message)
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
   (ctrl_command
    :reader ctrl_command
    :initarg :ctrl_command
    :type cl:string
    :initform "")
   (VclDrvModRqstV
    :reader VclDrvModRqstV
    :initarg :VclDrvModRqstV
    :type cl:fixnum
    :initform 0)
   (VclDrvModRqst
    :reader VclDrvModRqst
    :initarg :VclDrvModRqst
    :type cl:fixnum
    :initform 0)
   (PakBrkRqstV
    :reader PakBrkRqstV
    :initarg :PakBrkRqstV
    :type cl:fixnum
    :initform 0)
   (PakBrkRqst
    :reader PakBrkRqst
    :initarg :PakBrkRqst
    :type cl:fixnum
    :initform 0)
   (VclAclRqstV
    :reader VclAclRqstV
    :initarg :VclAclRqstV
    :type cl:fixnum
    :initform 0)
   (BrkPressureTgtV
    :reader BrkPressureTgtV
    :initarg :BrkPressureTgtV
    :type cl:fixnum
    :initform 0)
   (VclVelRqstV
    :reader VclVelRqstV
    :initarg :VclVelRqstV
    :type cl:fixnum
    :initform 0)
   (VclAclRqst
    :reader VclAclRqst
    :initarg :VclAclRqst
    :type cl:float
    :initform 0.0)
   (BrkPressureTgt
    :reader BrkPressureTgt
    :initarg :BrkPressureTgt
    :type cl:float
    :initform 0.0)
   (VclVelRqst
    :reader VclVelRqst
    :initarg :VclVelRqst
    :type cl:float
    :initform 0.0)
   (IDUFltIndOn
    :reader IDUFltIndOn
    :initarg :IDUFltIndOn
    :type cl:fixnum
    :initform 0)
   (PowOnRqst
    :reader PowOnRqst
    :initarg :PowOnRqst
    :type cl:fixnum
    :initform 0)
   (VclShiftRqst
    :reader VclShiftRqst
    :initarg :VclShiftRqst
    :type cl:fixnum
    :initform 0)
   (StrAglRqstV
    :reader StrAglRqstV
    :initarg :StrAglRqstV
    :type cl:fixnum
    :initform 0)
   (StrAglRqst
    :reader StrAglRqst
    :initarg :StrAglRqst
    :type cl:float
    :initform 0.0)
   (TgtStrAglVlcV
    :reader TgtStrAglVlcV
    :initarg :TgtStrAglVlcV
    :type cl:fixnum
    :initform 0)
   (TgtStrAglVlc
    :reader TgtStrAglVlc
    :initarg :TgtStrAglVlc
    :type cl:float
    :initform 0.0)
   (EPSCtrlModRqstV
    :reader EPSCtrlModRqstV
    :initarg :EPSCtrlModRqstV
    :type cl:fixnum
    :initform 0)
   (EPSCtrlModRqst
    :reader EPSCtrlModRqst
    :initarg :EPSCtrlModRqst
    :type cl:fixnum
    :initform 0)
   (LdskCtrl
    :reader LdskCtrl
    :initarg :LdskCtrl
    :type cl:fixnum
    :initform 0)
   (WndSnWpCtrl
    :reader WndSnWpCtrl
    :initarg :WndSnWpCtrl
    :type cl:fixnum
    :initform 0)
   (StpLpCtrl
    :reader StpLpCtrl
    :initarg :StpLpCtrl
    :type cl:fixnum
    :initform 0)
   (HzdLtCtrl
    :reader HzdLtCtrl
    :initarg :HzdLtCtrl
    :type cl:fixnum
    :initform 0)
   (ClerLmpCtrl
    :reader ClerLmpCtrl
    :initarg :ClerLmpCtrl
    :type cl:fixnum
    :initform 0)
   (FogLmpCtrl
    :reader FogLmpCtrl
    :initarg :FogLmpCtrl
    :type cl:fixnum
    :initform 0)
   (SdTrnLmpRHCtrl
    :reader SdTrnLmpRHCtrl
    :initarg :SdTrnLmpRHCtrl
    :type cl:fixnum
    :initform 0)
   (SdTrnLmpLHCtrl
    :reader SdTrnLmpLHCtrl
    :initarg :SdTrnLmpLHCtrl
    :type cl:fixnum
    :initform 0)
   (LowBmCtrl
    :reader LowBmCtrl
    :initarg :LowBmCtrl
    :type cl:fixnum
    :initform 0)
   (HighBmCtrl
    :reader HighBmCtrl
    :initarg :HighBmCtrl
    :type cl:fixnum
    :initform 0)
   (LkCtrl
    :reader LkCtrl
    :initarg :LkCtrl
    :type cl:fixnum
    :initform 0)
   (CarWindCtrl
    :reader CarWindCtrl
    :initarg :CarWindCtrl
    :type cl:fixnum
    :initform 0)
   (BCMCtrlModRqstV
    :reader BCMCtrlModRqstV
    :initarg :BCMCtrlModRqstV
    :type cl:fixnum
    :initform 0)
   (BCMCtrlModRqst
    :reader BCMCtrlModRqst
    :initarg :BCMCtrlModRqst
    :type cl:fixnum
    :initform 0)
   (RemtPowOnRqst
    :reader RemtPowOnRqst
    :initarg :RemtPowOnRqst
    :type cl:fixnum
    :initform 0)
   (RemtPowOnRqstV
    :reader RemtPowOnRqstV
    :initarg :RemtPowOnRqstV
    :type cl:fixnum
    :initform 0)
   (RemtPowDwnRqst
    :reader RemtPowDwnRqst
    :initarg :RemtPowDwnRqst
    :type cl:fixnum
    :initform 0)
   (RemtPowDwnRqstV
    :reader RemtPowDwnRqstV
    :initarg :RemtPowDwnRqstV
    :type cl:fixnum
    :initform 0)
   (CANB_ParkingStartRequest
    :reader CANB_ParkingStartRequest
    :initarg :CANB_ParkingStartRequest
    :type cl:boolean
    :initform cl:nil)
   (CANB_ParkingCloseRequest
    :reader CANB_ParkingCloseRequest
    :initarg :CANB_ParkingCloseRequest
    :type cl:boolean
    :initform cl:nil)
   (ADAS_StrAngleRqstV
    :reader ADAS_StrAngleRqstV
    :initarg :ADAS_StrAngleRqstV
    :type cl:fixnum
    :initform 0)
   (ADASBrakRqstPres
    :reader ADASBrakRqstPres
    :initarg :ADASBrakRqstPres
    :type cl:float
    :initform 0.0)
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
    :type cl:float
    :initform 0.0)
   (ADAS_StrAngle
    :reader ADAS_StrAngle
    :initarg :ADAS_StrAngle
    :type cl:float
    :initform 0.0)
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
    :initform 0))
)

(cl:defclass ChassisCtrlMsg (<ChassisCtrlMsg>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ChassisCtrlMsg>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ChassisCtrlMsg)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name in2ulv_msgs-msg:<ChassisCtrlMsg> is deprecated: use in2ulv_msgs-msg:ChassisCtrlMsg instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <ChassisCtrlMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader in2ulv_msgs-msg:header-val is deprecated.  Use in2ulv_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'module_type-val :lambda-list '(m))
(cl:defmethod module_type-val ((m <ChassisCtrlMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader in2ulv_msgs-msg:module_type-val is deprecated.  Use in2ulv_msgs-msg:module_type instead.")
  (module_type m))

(cl:ensure-generic-function 'error_code-val :lambda-list '(m))
(cl:defmethod error_code-val ((m <ChassisCtrlMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader in2ulv_msgs-msg:error_code-val is deprecated.  Use in2ulv_msgs-msg:error_code instead.")
  (error_code m))

(cl:ensure-generic-function 'ctrl_command-val :lambda-list '(m))
(cl:defmethod ctrl_command-val ((m <ChassisCtrlMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader in2ulv_msgs-msg:ctrl_command-val is deprecated.  Use in2ulv_msgs-msg:ctrl_command instead.")
  (ctrl_command m))

(cl:ensure-generic-function 'VclDrvModRqstV-val :lambda-list '(m))
(cl:defmethod VclDrvModRqstV-val ((m <ChassisCtrlMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader in2ulv_msgs-msg:VclDrvModRqstV-val is deprecated.  Use in2ulv_msgs-msg:VclDrvModRqstV instead.")
  (VclDrvModRqstV m))

(cl:ensure-generic-function 'VclDrvModRqst-val :lambda-list '(m))
(cl:defmethod VclDrvModRqst-val ((m <ChassisCtrlMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader in2ulv_msgs-msg:VclDrvModRqst-val is deprecated.  Use in2ulv_msgs-msg:VclDrvModRqst instead.")
  (VclDrvModRqst m))

(cl:ensure-generic-function 'PakBrkRqstV-val :lambda-list '(m))
(cl:defmethod PakBrkRqstV-val ((m <ChassisCtrlMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader in2ulv_msgs-msg:PakBrkRqstV-val is deprecated.  Use in2ulv_msgs-msg:PakBrkRqstV instead.")
  (PakBrkRqstV m))

(cl:ensure-generic-function 'PakBrkRqst-val :lambda-list '(m))
(cl:defmethod PakBrkRqst-val ((m <ChassisCtrlMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader in2ulv_msgs-msg:PakBrkRqst-val is deprecated.  Use in2ulv_msgs-msg:PakBrkRqst instead.")
  (PakBrkRqst m))

(cl:ensure-generic-function 'VclAclRqstV-val :lambda-list '(m))
(cl:defmethod VclAclRqstV-val ((m <ChassisCtrlMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader in2ulv_msgs-msg:VclAclRqstV-val is deprecated.  Use in2ulv_msgs-msg:VclAclRqstV instead.")
  (VclAclRqstV m))

(cl:ensure-generic-function 'BrkPressureTgtV-val :lambda-list '(m))
(cl:defmethod BrkPressureTgtV-val ((m <ChassisCtrlMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader in2ulv_msgs-msg:BrkPressureTgtV-val is deprecated.  Use in2ulv_msgs-msg:BrkPressureTgtV instead.")
  (BrkPressureTgtV m))

(cl:ensure-generic-function 'VclVelRqstV-val :lambda-list '(m))
(cl:defmethod VclVelRqstV-val ((m <ChassisCtrlMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader in2ulv_msgs-msg:VclVelRqstV-val is deprecated.  Use in2ulv_msgs-msg:VclVelRqstV instead.")
  (VclVelRqstV m))

(cl:ensure-generic-function 'VclAclRqst-val :lambda-list '(m))
(cl:defmethod VclAclRqst-val ((m <ChassisCtrlMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader in2ulv_msgs-msg:VclAclRqst-val is deprecated.  Use in2ulv_msgs-msg:VclAclRqst instead.")
  (VclAclRqst m))

(cl:ensure-generic-function 'BrkPressureTgt-val :lambda-list '(m))
(cl:defmethod BrkPressureTgt-val ((m <ChassisCtrlMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader in2ulv_msgs-msg:BrkPressureTgt-val is deprecated.  Use in2ulv_msgs-msg:BrkPressureTgt instead.")
  (BrkPressureTgt m))

(cl:ensure-generic-function 'VclVelRqst-val :lambda-list '(m))
(cl:defmethod VclVelRqst-val ((m <ChassisCtrlMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader in2ulv_msgs-msg:VclVelRqst-val is deprecated.  Use in2ulv_msgs-msg:VclVelRqst instead.")
  (VclVelRqst m))

(cl:ensure-generic-function 'IDUFltIndOn-val :lambda-list '(m))
(cl:defmethod IDUFltIndOn-val ((m <ChassisCtrlMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader in2ulv_msgs-msg:IDUFltIndOn-val is deprecated.  Use in2ulv_msgs-msg:IDUFltIndOn instead.")
  (IDUFltIndOn m))

(cl:ensure-generic-function 'PowOnRqst-val :lambda-list '(m))
(cl:defmethod PowOnRqst-val ((m <ChassisCtrlMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader in2ulv_msgs-msg:PowOnRqst-val is deprecated.  Use in2ulv_msgs-msg:PowOnRqst instead.")
  (PowOnRqst m))

(cl:ensure-generic-function 'VclShiftRqst-val :lambda-list '(m))
(cl:defmethod VclShiftRqst-val ((m <ChassisCtrlMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader in2ulv_msgs-msg:VclShiftRqst-val is deprecated.  Use in2ulv_msgs-msg:VclShiftRqst instead.")
  (VclShiftRqst m))

(cl:ensure-generic-function 'StrAglRqstV-val :lambda-list '(m))
(cl:defmethod StrAglRqstV-val ((m <ChassisCtrlMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader in2ulv_msgs-msg:StrAglRqstV-val is deprecated.  Use in2ulv_msgs-msg:StrAglRqstV instead.")
  (StrAglRqstV m))

(cl:ensure-generic-function 'StrAglRqst-val :lambda-list '(m))
(cl:defmethod StrAglRqst-val ((m <ChassisCtrlMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader in2ulv_msgs-msg:StrAglRqst-val is deprecated.  Use in2ulv_msgs-msg:StrAglRqst instead.")
  (StrAglRqst m))

(cl:ensure-generic-function 'TgtStrAglVlcV-val :lambda-list '(m))
(cl:defmethod TgtStrAglVlcV-val ((m <ChassisCtrlMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader in2ulv_msgs-msg:TgtStrAglVlcV-val is deprecated.  Use in2ulv_msgs-msg:TgtStrAglVlcV instead.")
  (TgtStrAglVlcV m))

(cl:ensure-generic-function 'TgtStrAglVlc-val :lambda-list '(m))
(cl:defmethod TgtStrAglVlc-val ((m <ChassisCtrlMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader in2ulv_msgs-msg:TgtStrAglVlc-val is deprecated.  Use in2ulv_msgs-msg:TgtStrAglVlc instead.")
  (TgtStrAglVlc m))

(cl:ensure-generic-function 'EPSCtrlModRqstV-val :lambda-list '(m))
(cl:defmethod EPSCtrlModRqstV-val ((m <ChassisCtrlMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader in2ulv_msgs-msg:EPSCtrlModRqstV-val is deprecated.  Use in2ulv_msgs-msg:EPSCtrlModRqstV instead.")
  (EPSCtrlModRqstV m))

(cl:ensure-generic-function 'EPSCtrlModRqst-val :lambda-list '(m))
(cl:defmethod EPSCtrlModRqst-val ((m <ChassisCtrlMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader in2ulv_msgs-msg:EPSCtrlModRqst-val is deprecated.  Use in2ulv_msgs-msg:EPSCtrlModRqst instead.")
  (EPSCtrlModRqst m))

(cl:ensure-generic-function 'LdskCtrl-val :lambda-list '(m))
(cl:defmethod LdskCtrl-val ((m <ChassisCtrlMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader in2ulv_msgs-msg:LdskCtrl-val is deprecated.  Use in2ulv_msgs-msg:LdskCtrl instead.")
  (LdskCtrl m))

(cl:ensure-generic-function 'WndSnWpCtrl-val :lambda-list '(m))
(cl:defmethod WndSnWpCtrl-val ((m <ChassisCtrlMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader in2ulv_msgs-msg:WndSnWpCtrl-val is deprecated.  Use in2ulv_msgs-msg:WndSnWpCtrl instead.")
  (WndSnWpCtrl m))

(cl:ensure-generic-function 'StpLpCtrl-val :lambda-list '(m))
(cl:defmethod StpLpCtrl-val ((m <ChassisCtrlMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader in2ulv_msgs-msg:StpLpCtrl-val is deprecated.  Use in2ulv_msgs-msg:StpLpCtrl instead.")
  (StpLpCtrl m))

(cl:ensure-generic-function 'HzdLtCtrl-val :lambda-list '(m))
(cl:defmethod HzdLtCtrl-val ((m <ChassisCtrlMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader in2ulv_msgs-msg:HzdLtCtrl-val is deprecated.  Use in2ulv_msgs-msg:HzdLtCtrl instead.")
  (HzdLtCtrl m))

(cl:ensure-generic-function 'ClerLmpCtrl-val :lambda-list '(m))
(cl:defmethod ClerLmpCtrl-val ((m <ChassisCtrlMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader in2ulv_msgs-msg:ClerLmpCtrl-val is deprecated.  Use in2ulv_msgs-msg:ClerLmpCtrl instead.")
  (ClerLmpCtrl m))

(cl:ensure-generic-function 'FogLmpCtrl-val :lambda-list '(m))
(cl:defmethod FogLmpCtrl-val ((m <ChassisCtrlMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader in2ulv_msgs-msg:FogLmpCtrl-val is deprecated.  Use in2ulv_msgs-msg:FogLmpCtrl instead.")
  (FogLmpCtrl m))

(cl:ensure-generic-function 'SdTrnLmpRHCtrl-val :lambda-list '(m))
(cl:defmethod SdTrnLmpRHCtrl-val ((m <ChassisCtrlMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader in2ulv_msgs-msg:SdTrnLmpRHCtrl-val is deprecated.  Use in2ulv_msgs-msg:SdTrnLmpRHCtrl instead.")
  (SdTrnLmpRHCtrl m))

(cl:ensure-generic-function 'SdTrnLmpLHCtrl-val :lambda-list '(m))
(cl:defmethod SdTrnLmpLHCtrl-val ((m <ChassisCtrlMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader in2ulv_msgs-msg:SdTrnLmpLHCtrl-val is deprecated.  Use in2ulv_msgs-msg:SdTrnLmpLHCtrl instead.")
  (SdTrnLmpLHCtrl m))

(cl:ensure-generic-function 'LowBmCtrl-val :lambda-list '(m))
(cl:defmethod LowBmCtrl-val ((m <ChassisCtrlMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader in2ulv_msgs-msg:LowBmCtrl-val is deprecated.  Use in2ulv_msgs-msg:LowBmCtrl instead.")
  (LowBmCtrl m))

(cl:ensure-generic-function 'HighBmCtrl-val :lambda-list '(m))
(cl:defmethod HighBmCtrl-val ((m <ChassisCtrlMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader in2ulv_msgs-msg:HighBmCtrl-val is deprecated.  Use in2ulv_msgs-msg:HighBmCtrl instead.")
  (HighBmCtrl m))

(cl:ensure-generic-function 'LkCtrl-val :lambda-list '(m))
(cl:defmethod LkCtrl-val ((m <ChassisCtrlMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader in2ulv_msgs-msg:LkCtrl-val is deprecated.  Use in2ulv_msgs-msg:LkCtrl instead.")
  (LkCtrl m))

(cl:ensure-generic-function 'CarWindCtrl-val :lambda-list '(m))
(cl:defmethod CarWindCtrl-val ((m <ChassisCtrlMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader in2ulv_msgs-msg:CarWindCtrl-val is deprecated.  Use in2ulv_msgs-msg:CarWindCtrl instead.")
  (CarWindCtrl m))

(cl:ensure-generic-function 'BCMCtrlModRqstV-val :lambda-list '(m))
(cl:defmethod BCMCtrlModRqstV-val ((m <ChassisCtrlMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader in2ulv_msgs-msg:BCMCtrlModRqstV-val is deprecated.  Use in2ulv_msgs-msg:BCMCtrlModRqstV instead.")
  (BCMCtrlModRqstV m))

(cl:ensure-generic-function 'BCMCtrlModRqst-val :lambda-list '(m))
(cl:defmethod BCMCtrlModRqst-val ((m <ChassisCtrlMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader in2ulv_msgs-msg:BCMCtrlModRqst-val is deprecated.  Use in2ulv_msgs-msg:BCMCtrlModRqst instead.")
  (BCMCtrlModRqst m))

(cl:ensure-generic-function 'RemtPowOnRqst-val :lambda-list '(m))
(cl:defmethod RemtPowOnRqst-val ((m <ChassisCtrlMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader in2ulv_msgs-msg:RemtPowOnRqst-val is deprecated.  Use in2ulv_msgs-msg:RemtPowOnRqst instead.")
  (RemtPowOnRqst m))

(cl:ensure-generic-function 'RemtPowOnRqstV-val :lambda-list '(m))
(cl:defmethod RemtPowOnRqstV-val ((m <ChassisCtrlMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader in2ulv_msgs-msg:RemtPowOnRqstV-val is deprecated.  Use in2ulv_msgs-msg:RemtPowOnRqstV instead.")
  (RemtPowOnRqstV m))

(cl:ensure-generic-function 'RemtPowDwnRqst-val :lambda-list '(m))
(cl:defmethod RemtPowDwnRqst-val ((m <ChassisCtrlMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader in2ulv_msgs-msg:RemtPowDwnRqst-val is deprecated.  Use in2ulv_msgs-msg:RemtPowDwnRqst instead.")
  (RemtPowDwnRqst m))

(cl:ensure-generic-function 'RemtPowDwnRqstV-val :lambda-list '(m))
(cl:defmethod RemtPowDwnRqstV-val ((m <ChassisCtrlMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader in2ulv_msgs-msg:RemtPowDwnRqstV-val is deprecated.  Use in2ulv_msgs-msg:RemtPowDwnRqstV instead.")
  (RemtPowDwnRqstV m))

(cl:ensure-generic-function 'CANB_ParkingStartRequest-val :lambda-list '(m))
(cl:defmethod CANB_ParkingStartRequest-val ((m <ChassisCtrlMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader in2ulv_msgs-msg:CANB_ParkingStartRequest-val is deprecated.  Use in2ulv_msgs-msg:CANB_ParkingStartRequest instead.")
  (CANB_ParkingStartRequest m))

(cl:ensure-generic-function 'CANB_ParkingCloseRequest-val :lambda-list '(m))
(cl:defmethod CANB_ParkingCloseRequest-val ((m <ChassisCtrlMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader in2ulv_msgs-msg:CANB_ParkingCloseRequest-val is deprecated.  Use in2ulv_msgs-msg:CANB_ParkingCloseRequest instead.")
  (CANB_ParkingCloseRequest m))

(cl:ensure-generic-function 'ADAS_StrAngleRqstV-val :lambda-list '(m))
(cl:defmethod ADAS_StrAngleRqstV-val ((m <ChassisCtrlMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader in2ulv_msgs-msg:ADAS_StrAngleRqstV-val is deprecated.  Use in2ulv_msgs-msg:ADAS_StrAngleRqstV instead.")
  (ADAS_StrAngleRqstV m))

(cl:ensure-generic-function 'ADASBrakRqstPres-val :lambda-list '(m))
(cl:defmethod ADASBrakRqstPres-val ((m <ChassisCtrlMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader in2ulv_msgs-msg:ADASBrakRqstPres-val is deprecated.  Use in2ulv_msgs-msg:ADASBrakRqstPres instead.")
  (ADASBrakRqstPres m))

(cl:ensure-generic-function 'EPB_ADASPrkngRqst-val :lambda-list '(m))
(cl:defmethod EPB_ADASPrkngRqst-val ((m <ChassisCtrlMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader in2ulv_msgs-msg:EPB_ADASPrkngRqst-val is deprecated.  Use in2ulv_msgs-msg:EPB_ADASPrkngRqst instead.")
  (EPB_ADASPrkngRqst m))

(cl:ensure-generic-function 'ADASStrTorqRqst-val :lambda-list '(m))
(cl:defmethod ADASStrTorqRqst-val ((m <ChassisCtrlMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader in2ulv_msgs-msg:ADASStrTorqRqst-val is deprecated.  Use in2ulv_msgs-msg:ADASStrTorqRqst instead.")
  (ADASStrTorqRqst m))

(cl:ensure-generic-function 'ADASStrTorqTgt-val :lambda-list '(m))
(cl:defmethod ADASStrTorqTgt-val ((m <ChassisCtrlMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader in2ulv_msgs-msg:ADASStrTorqTgt-val is deprecated.  Use in2ulv_msgs-msg:ADASStrTorqTgt instead.")
  (ADASStrTorqTgt m))

(cl:ensure-generic-function 'ADAS_StrAngle-val :lambda-list '(m))
(cl:defmethod ADAS_StrAngle-val ((m <ChassisCtrlMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader in2ulv_msgs-msg:ADAS_StrAngle-val is deprecated.  Use in2ulv_msgs-msg:ADAS_StrAngle instead.")
  (ADAS_StrAngle m))

(cl:ensure-generic-function 'VCUTTgtAclrtnRqst-val :lambda-list '(m))
(cl:defmethod VCUTTgtAclrtnRqst-val ((m <ChassisCtrlMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader in2ulv_msgs-msg:VCUTTgtAclrtnRqst-val is deprecated.  Use in2ulv_msgs-msg:VCUTTgtAclrtnRqst instead.")
  (VCUTTgtAclrtnRqst m))

(cl:ensure-generic-function 'VCUTTgtAclrtnRqstVal-val :lambda-list '(m))
(cl:defmethod VCUTTgtAclrtnRqstVal-val ((m <ChassisCtrlMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader in2ulv_msgs-msg:VCUTTgtAclrtnRqstVal-val is deprecated.  Use in2ulv_msgs-msg:VCUTTgtAclrtnRqstVal instead.")
  (VCUTTgtAclrtnRqstVal m))

(cl:ensure-generic-function 'GearRqst-val :lambda-list '(m))
(cl:defmethod GearRqst-val ((m <ChassisCtrlMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader in2ulv_msgs-msg:GearRqst-val is deprecated.  Use in2ulv_msgs-msg:GearRqst instead.")
  (GearRqst m))

(cl:ensure-generic-function 'TgtGear-val :lambda-list '(m))
(cl:defmethod TgtGear-val ((m <ChassisCtrlMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader in2ulv_msgs-msg:TgtGear-val is deprecated.  Use in2ulv_msgs-msg:TgtGear instead.")
  (TgtGear m))

(cl:ensure-generic-function 'VCUTTgtSpRqst-val :lambda-list '(m))
(cl:defmethod VCUTTgtSpRqst-val ((m <ChassisCtrlMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader in2ulv_msgs-msg:VCUTTgtSpRqst-val is deprecated.  Use in2ulv_msgs-msg:VCUTTgtSpRqst instead.")
  (VCUTTgtSpRqst m))

(cl:ensure-generic-function 'VCUTTgtSpRqstVal-val :lambda-list '(m))
(cl:defmethod VCUTTgtSpRqstVal-val ((m <ChassisCtrlMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader in2ulv_msgs-msg:VCUTTgtSpRqstVal-val is deprecated.  Use in2ulv_msgs-msg:VCUTTgtSpRqstVal instead.")
  (VCUTTgtSpRqstVal m))

(cl:ensure-generic-function 'ADASWndSnWpCtrl-val :lambda-list '(m))
(cl:defmethod ADASWndSnWpCtrl-val ((m <ChassisCtrlMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader in2ulv_msgs-msg:ADASWndSnWpCtrl-val is deprecated.  Use in2ulv_msgs-msg:ADASWndSnWpCtrl instead.")
  (ADASWndSnWpCtrl m))

(cl:ensure-generic-function 'ADASHzdLtCtrl-val :lambda-list '(m))
(cl:defmethod ADASHzdLtCtrl-val ((m <ChassisCtrlMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader in2ulv_msgs-msg:ADASHzdLtCtrl-val is deprecated.  Use in2ulv_msgs-msg:ADASHzdLtCtrl instead.")
  (ADASHzdLtCtrl m))

(cl:ensure-generic-function 'ADASSdTrnLmpRHCtrl-val :lambda-list '(m))
(cl:defmethod ADASSdTrnLmpRHCtrl-val ((m <ChassisCtrlMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader in2ulv_msgs-msg:ADASSdTrnLmpRHCtrl-val is deprecated.  Use in2ulv_msgs-msg:ADASSdTrnLmpRHCtrl instead.")
  (ADASSdTrnLmpRHCtrl m))

(cl:ensure-generic-function 'ADASSdTrnLmpLHCtrl-val :lambda-list '(m))
(cl:defmethod ADASSdTrnLmpLHCtrl-val ((m <ChassisCtrlMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader in2ulv_msgs-msg:ADASSdTrnLmpLHCtrl-val is deprecated.  Use in2ulv_msgs-msg:ADASSdTrnLmpLHCtrl instead.")
  (ADASSdTrnLmpLHCtrl m))

(cl:ensure-generic-function 'ADASLowBmCtrl-val :lambda-list '(m))
(cl:defmethod ADASLowBmCtrl-val ((m <ChassisCtrlMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader in2ulv_msgs-msg:ADASLowBmCtrl-val is deprecated.  Use in2ulv_msgs-msg:ADASLowBmCtrl instead.")
  (ADASLowBmCtrl m))

(cl:ensure-generic-function 'ADASHighBmCtrl-val :lambda-list '(m))
(cl:defmethod ADASHighBmCtrl-val ((m <ChassisCtrlMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader in2ulv_msgs-msg:ADASHighBmCtrl-val is deprecated.  Use in2ulv_msgs-msg:ADASHighBmCtrl instead.")
  (ADASHighBmCtrl m))

(cl:ensure-generic-function 'ADASLkCtrl-val :lambda-list '(m))
(cl:defmethod ADASLkCtrl-val ((m <ChassisCtrlMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader in2ulv_msgs-msg:ADASLkCtrl-val is deprecated.  Use in2ulv_msgs-msg:ADASLkCtrl instead.")
  (ADASLkCtrl m))

(cl:ensure-generic-function 'ADASRemtPrkModRqst-val :lambda-list '(m))
(cl:defmethod ADASRemtPrkModRqst-val ((m <ChassisCtrlMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader in2ulv_msgs-msg:ADASRemtPrkModRqst-val is deprecated.  Use in2ulv_msgs-msg:ADASRemtPrkModRqst instead.")
  (ADASRemtPrkModRqst m))

(cl:ensure-generic-function 'BCMADASCtrlRqst-val :lambda-list '(m))
(cl:defmethod BCMADASCtrlRqst-val ((m <ChassisCtrlMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader in2ulv_msgs-msg:BCMADASCtrlRqst-val is deprecated.  Use in2ulv_msgs-msg:BCMADASCtrlRqst instead.")
  (BCMADASCtrlRqst m))

(cl:ensure-generic-function 'BCMADASCtrlRqstV-val :lambda-list '(m))
(cl:defmethod BCMADASCtrlRqstV-val ((m <ChassisCtrlMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader in2ulv_msgs-msg:BCMADASCtrlRqstV-val is deprecated.  Use in2ulv_msgs-msg:BCMADASCtrlRqstV instead.")
  (BCMADASCtrlRqstV m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ChassisCtrlMsg>) ostream)
  "Serializes a message object of type '<ChassisCtrlMsg>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'module_type)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'error_code)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'error_code)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'error_code)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'error_code)) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'ctrl_command))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'ctrl_command))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'VclDrvModRqstV)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'VclDrvModRqst)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'PakBrkRqstV)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'PakBrkRqst)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'VclAclRqstV)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'BrkPressureTgtV)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'VclVelRqstV)) ostream)
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'VclAclRqst))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'BrkPressureTgt))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'VclVelRqst))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'IDUFltIndOn)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'PowOnRqst)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'VclShiftRqst)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'StrAglRqstV)) ostream)
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'StrAglRqst))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'TgtStrAglVlcV)) ostream)
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'TgtStrAglVlc))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'EPSCtrlModRqstV)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'EPSCtrlModRqst)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'LdskCtrl)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'WndSnWpCtrl)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'StpLpCtrl)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'HzdLtCtrl)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'ClerLmpCtrl)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'FogLmpCtrl)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'SdTrnLmpRHCtrl)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'SdTrnLmpLHCtrl)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'LowBmCtrl)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'HighBmCtrl)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'LkCtrl)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'CarWindCtrl)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'BCMCtrlModRqstV)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'BCMCtrlModRqst)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'RemtPowOnRqst)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'RemtPowOnRqstV)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'RemtPowDwnRqst)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'RemtPowDwnRqstV)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'CANB_ParkingStartRequest) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'CANB_ParkingCloseRequest) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'ADAS_StrAngleRqstV)) ostream)
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'ADASBrakRqstPres))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'EPB_ADASPrkngRqst)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'ADASStrTorqRqst)) ostream)
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'ADASStrTorqTgt))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'ADAS_StrAngle))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
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
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'ADASWndSnWpCtrl)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'ADASHzdLtCtrl)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'ADASSdTrnLmpRHCtrl)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'ADASSdTrnLmpLHCtrl)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'ADASLowBmCtrl)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'ADASHighBmCtrl)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'ADASLkCtrl)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'ADASRemtPrkModRqst)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'BCMADASCtrlRqst)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'BCMADASCtrlRqstV)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ChassisCtrlMsg>) istream)
  "Deserializes a message object of type '<ChassisCtrlMsg>"
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
      (cl:setf (cl:slot-value msg 'ctrl_command) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'ctrl_command) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'VclDrvModRqstV)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'VclDrvModRqst)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'PakBrkRqstV)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'PakBrkRqst)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'VclAclRqstV)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'BrkPressureTgtV)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'VclVelRqstV)) (cl:read-byte istream))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'VclAclRqst) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'BrkPressureTgt) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'VclVelRqst) (roslisp-utils:decode-double-float-bits bits)))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'IDUFltIndOn)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'PowOnRqst)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'VclShiftRqst)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'StrAglRqstV)) (cl:read-byte istream))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'StrAglRqst) (roslisp-utils:decode-double-float-bits bits)))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'TgtStrAglVlcV)) (cl:read-byte istream))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'TgtStrAglVlc) (roslisp-utils:decode-double-float-bits bits)))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'EPSCtrlModRqstV)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'EPSCtrlModRqst)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'LdskCtrl)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'WndSnWpCtrl)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'StpLpCtrl)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'HzdLtCtrl)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'ClerLmpCtrl)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'FogLmpCtrl)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'SdTrnLmpRHCtrl)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'SdTrnLmpLHCtrl)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'LowBmCtrl)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'HighBmCtrl)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'LkCtrl)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'CarWindCtrl)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'BCMCtrlModRqstV)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'BCMCtrlModRqst)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'RemtPowOnRqst)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'RemtPowOnRqstV)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'RemtPowDwnRqst)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'RemtPowDwnRqstV)) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'CANB_ParkingStartRequest) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'CANB_ParkingCloseRequest) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'ADAS_StrAngleRqstV)) (cl:read-byte istream))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'ADASBrakRqstPres) (roslisp-utils:decode-double-float-bits bits)))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'EPB_ADASPrkngRqst)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'ADASStrTorqRqst)) (cl:read-byte istream))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'ADASStrTorqTgt) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'ADAS_StrAngle) (roslisp-utils:decode-double-float-bits bits)))
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
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'ADASWndSnWpCtrl)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'ADASHzdLtCtrl)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'ADASSdTrnLmpRHCtrl)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'ADASSdTrnLmpLHCtrl)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'ADASLowBmCtrl)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'ADASHighBmCtrl)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'ADASLkCtrl)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'ADASRemtPrkModRqst)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'BCMADASCtrlRqst)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'BCMADASCtrlRqstV)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ChassisCtrlMsg>)))
  "Returns string type for a message object of type '<ChassisCtrlMsg>"
  "in2ulv_msgs/ChassisCtrlMsg")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ChassisCtrlMsg)))
  "Returns string type for a message object of type 'ChassisCtrlMsg"
  "in2ulv_msgs/ChassisCtrlMsg")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ChassisCtrlMsg>)))
  "Returns md5sum for a message object of type '<ChassisCtrlMsg>"
  "6b699ba917a62ef652278429228a8b35")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ChassisCtrlMsg)))
  "Returns md5sum for a message object of type 'ChassisCtrlMsg"
  "6b699ba917a62ef652278429228a8b35")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ChassisCtrlMsg>)))
  "Returns full string definition for message of type '<ChassisCtrlMsg>"
  (cl:format cl:nil "# 帧头，包含时间戳信息~%std_msgs/Header header~%~%# 模块类型~%uint8 module_type~%~%# error_code~%uint32 error_code~%~%# 模块信息~%string ctrl_command~%~%# IDU_General_Status_1 (0x131)->[ACAN]<-{循环计数+校验}~%uint8 VclDrvModRqstV    # 驱动模式请求有效性：默认0有效(false有效)~%uint8 VclDrvModRqst     # 驱动模式请求~%uint8 PakBrkRqstV       # 驻车请求有效性：默认0有效(false有效)~%uint8 PakBrkRqst        # IDU驻车请求~%uint8 VclAclRqstV       # 加速度请求有效性：默认0有效(false有效)~%uint8 BrkPressureTgtV   # 制动压力目标值有效性：默认0有效(false有效)~%uint8 VclVelRqstV       # 速度请求有效性：默认0有效(false有效)~%float64 VclAclRqst      # 加速度请求~%float64 BrkPressureTgt  # 制动压力目标值~%float64 VclVelRqst      # 速度请求~%uint8 IDUFltIndOn       # IDU故障指示:默认False(不指示)~%uint8 PowOnRqst         # 上电请求：默认False(不请求有效性)~%uint8 VclShiftRqst      # 档位请求~%~%# IDU_General_Status_2 (0x121)->[CCAN]<-{循环计数+校验}~%uint8 StrAglRqstV       # 期望转向角度有效性~%float64 StrAglRqst      # 期望转向角度~%uint8 TgtStrAglVlcV     # 期望转向角速度有效性(预留)~%float64 TgtStrAglVlc    # 期望转向角速度(预留)~%uint8 EPSCtrlModRqstV   # EPS控制模式请求有效性~%uint8 EPSCtrlModRqst    # EPS控制模式请求~%~%# IDU_General_Status_4 (0x312)->[ACAN]<-{循环计数+校验}~%uint8 LdskCtrl          # 扬声器控制~%uint8 WndSnWpCtrl       # 雨刮控制~%uint8 StpLpCtrl         # 刹车灯控制~%uint8 HzdLtCtrl         # 双闪灯控制~%uint8 ClerLmpCtrl       # 示廓灯控制~%uint8 FogLmpCtrl        # 后雾灯控制~%uint8 SdTrnLmpRHCtrl    # 右转向灯控制~%uint8 SdTrnLmpLHCtrl    # 左转向灯控制~%uint8 LowBmCtrl         # 近光灯控制~%uint8 HighBmCtrl        # 远光灯控制~%uint8 LkCtrl            # 锁控功能~%uint8 CarWindCtrl       # 车窗功能控制(预留)~%uint8 BCMCtrlModRqstV   # BCM控制模式请求有效性~%uint8 BCMCtrlModRqst    # BCM控制模式请求~%~%# VT_Requestment_Messge_2 (0x316)->[BCAN] {??循环发送}~%uint8 RemtPowOnRqst     # 远程上电请求~%uint8 RemtPowOnRqstV    # 远程上电请求有效性：默认0有效(false有效)~%uint8 RemtPowDwnRqst    # 远程下电请求~%uint8 RemtPowDwnRqstV   # 远程下电请求有效性：默认0有效(false有效)~%# 车辆泊车启动请求/关闭~%bool CANB_ParkingStartRequest~%bool CANB_ParkingCloseRequest~%~%# 车辆移动控制~%    # ADAS_General_Status_1 (0x1D1)~%uint8 ADAS_StrAngleRqstV    # ADAS期望转向角度请求有效值~%float64 ADASBrakRqstPres     # ADAS制动请求压力      float->uint~%uint8 EPB_ADASPrkngRqst     # EPB ADAS驻车请求~%uint8 ADASStrTorqRqst       # ADAS转向扭矩请求~%float64 ADASStrTorqTgt       # ADAS转向扭矩目标值    float->uint~%float64 ADAS_StrAngle        # ADAS期望转向角度      float->uint~%    # ADAS_General_Status_2 (0x1D2)~%uint8 VCUTTgtAclrtnRqst         # VCU目标加速度请求~%float64 VCUTTgtAclrtnRqstVal    # VCU目标加速度请求值~%uint8 GearRqst                  # 档位请求~%uint8 TgtGear                   # 档位~%uint8 VCUTTgtSpRqst             # VCU目标速度请求~%float64 VCUTTgtSpRqstVal        # VCU目标速度请求值~%~%# 车辆外设控制~%    # ADAS_General_Status_11 (0x329)~%uint8 ADASWndSnWpCtrl       # ADAS雨刮控制~%uint8 ADASHzdLtCtrl         # ADAS双闪控制~%uint8 ADASSdTrnLmpRHCtrl    # ADAS右转向控制~%uint8 ADASSdTrnLmpLHCtrl    # ADAS左转向控制~%uint8 ADASLowBmCtrl         # ADAS近光灯控制~%uint8 ADASHighBmCtrl        # ADAS远光灯控制~%uint8 ADASLkCtrl            # ADAS锁控功能~%# uint8 CarWindCtrl           # ADAS车窗控制~%~%# 车辆ADAS请求~%    # ADAS_General_Status_11 (0x329)~%uint8 ADASRemtPrkModRqst    # ADAS电源模式请求~%uint8 BCMADASCtrlRqst       # ADAS控制请求~%uint8 BCMADASCtrlRqstV      # ADAS控制请求有效性~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ChassisCtrlMsg)))
  "Returns full string definition for message of type 'ChassisCtrlMsg"
  (cl:format cl:nil "# 帧头，包含时间戳信息~%std_msgs/Header header~%~%# 模块类型~%uint8 module_type~%~%# error_code~%uint32 error_code~%~%# 模块信息~%string ctrl_command~%~%# IDU_General_Status_1 (0x131)->[ACAN]<-{循环计数+校验}~%uint8 VclDrvModRqstV    # 驱动模式请求有效性：默认0有效(false有效)~%uint8 VclDrvModRqst     # 驱动模式请求~%uint8 PakBrkRqstV       # 驻车请求有效性：默认0有效(false有效)~%uint8 PakBrkRqst        # IDU驻车请求~%uint8 VclAclRqstV       # 加速度请求有效性：默认0有效(false有效)~%uint8 BrkPressureTgtV   # 制动压力目标值有效性：默认0有效(false有效)~%uint8 VclVelRqstV       # 速度请求有效性：默认0有效(false有效)~%float64 VclAclRqst      # 加速度请求~%float64 BrkPressureTgt  # 制动压力目标值~%float64 VclVelRqst      # 速度请求~%uint8 IDUFltIndOn       # IDU故障指示:默认False(不指示)~%uint8 PowOnRqst         # 上电请求：默认False(不请求有效性)~%uint8 VclShiftRqst      # 档位请求~%~%# IDU_General_Status_2 (0x121)->[CCAN]<-{循环计数+校验}~%uint8 StrAglRqstV       # 期望转向角度有效性~%float64 StrAglRqst      # 期望转向角度~%uint8 TgtStrAglVlcV     # 期望转向角速度有效性(预留)~%float64 TgtStrAglVlc    # 期望转向角速度(预留)~%uint8 EPSCtrlModRqstV   # EPS控制模式请求有效性~%uint8 EPSCtrlModRqst    # EPS控制模式请求~%~%# IDU_General_Status_4 (0x312)->[ACAN]<-{循环计数+校验}~%uint8 LdskCtrl          # 扬声器控制~%uint8 WndSnWpCtrl       # 雨刮控制~%uint8 StpLpCtrl         # 刹车灯控制~%uint8 HzdLtCtrl         # 双闪灯控制~%uint8 ClerLmpCtrl       # 示廓灯控制~%uint8 FogLmpCtrl        # 后雾灯控制~%uint8 SdTrnLmpRHCtrl    # 右转向灯控制~%uint8 SdTrnLmpLHCtrl    # 左转向灯控制~%uint8 LowBmCtrl         # 近光灯控制~%uint8 HighBmCtrl        # 远光灯控制~%uint8 LkCtrl            # 锁控功能~%uint8 CarWindCtrl       # 车窗功能控制(预留)~%uint8 BCMCtrlModRqstV   # BCM控制模式请求有效性~%uint8 BCMCtrlModRqst    # BCM控制模式请求~%~%# VT_Requestment_Messge_2 (0x316)->[BCAN] {??循环发送}~%uint8 RemtPowOnRqst     # 远程上电请求~%uint8 RemtPowOnRqstV    # 远程上电请求有效性：默认0有效(false有效)~%uint8 RemtPowDwnRqst    # 远程下电请求~%uint8 RemtPowDwnRqstV   # 远程下电请求有效性：默认0有效(false有效)~%# 车辆泊车启动请求/关闭~%bool CANB_ParkingStartRequest~%bool CANB_ParkingCloseRequest~%~%# 车辆移动控制~%    # ADAS_General_Status_1 (0x1D1)~%uint8 ADAS_StrAngleRqstV    # ADAS期望转向角度请求有效值~%float64 ADASBrakRqstPres     # ADAS制动请求压力      float->uint~%uint8 EPB_ADASPrkngRqst     # EPB ADAS驻车请求~%uint8 ADASStrTorqRqst       # ADAS转向扭矩请求~%float64 ADASStrTorqTgt       # ADAS转向扭矩目标值    float->uint~%float64 ADAS_StrAngle        # ADAS期望转向角度      float->uint~%    # ADAS_General_Status_2 (0x1D2)~%uint8 VCUTTgtAclrtnRqst         # VCU目标加速度请求~%float64 VCUTTgtAclrtnRqstVal    # VCU目标加速度请求值~%uint8 GearRqst                  # 档位请求~%uint8 TgtGear                   # 档位~%uint8 VCUTTgtSpRqst             # VCU目标速度请求~%float64 VCUTTgtSpRqstVal        # VCU目标速度请求值~%~%# 车辆外设控制~%    # ADAS_General_Status_11 (0x329)~%uint8 ADASWndSnWpCtrl       # ADAS雨刮控制~%uint8 ADASHzdLtCtrl         # ADAS双闪控制~%uint8 ADASSdTrnLmpRHCtrl    # ADAS右转向控制~%uint8 ADASSdTrnLmpLHCtrl    # ADAS左转向控制~%uint8 ADASLowBmCtrl         # ADAS近光灯控制~%uint8 ADASHighBmCtrl        # ADAS远光灯控制~%uint8 ADASLkCtrl            # ADAS锁控功能~%# uint8 CarWindCtrl           # ADAS车窗控制~%~%# 车辆ADAS请求~%    # ADAS_General_Status_11 (0x329)~%uint8 ADASRemtPrkModRqst    # ADAS电源模式请求~%uint8 BCMADASCtrlRqst       # ADAS控制请求~%uint8 BCMADASCtrlRqstV      # ADAS控制请求有效性~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ChassisCtrlMsg>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     1
     4
     4 (cl:length (cl:slot-value msg 'ctrl_command))
     1
     1
     1
     1
     1
     1
     1
     8
     8
     8
     1
     1
     1
     1
     8
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
     1
     1
     1
     1
     8
     1
     1
     8
     8
     1
     8
     1
     1
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
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ChassisCtrlMsg>))
  "Converts a ROS message object to a list"
  (cl:list 'ChassisCtrlMsg
    (cl:cons ':header (header msg))
    (cl:cons ':module_type (module_type msg))
    (cl:cons ':error_code (error_code msg))
    (cl:cons ':ctrl_command (ctrl_command msg))
    (cl:cons ':VclDrvModRqstV (VclDrvModRqstV msg))
    (cl:cons ':VclDrvModRqst (VclDrvModRqst msg))
    (cl:cons ':PakBrkRqstV (PakBrkRqstV msg))
    (cl:cons ':PakBrkRqst (PakBrkRqst msg))
    (cl:cons ':VclAclRqstV (VclAclRqstV msg))
    (cl:cons ':BrkPressureTgtV (BrkPressureTgtV msg))
    (cl:cons ':VclVelRqstV (VclVelRqstV msg))
    (cl:cons ':VclAclRqst (VclAclRqst msg))
    (cl:cons ':BrkPressureTgt (BrkPressureTgt msg))
    (cl:cons ':VclVelRqst (VclVelRqst msg))
    (cl:cons ':IDUFltIndOn (IDUFltIndOn msg))
    (cl:cons ':PowOnRqst (PowOnRqst msg))
    (cl:cons ':VclShiftRqst (VclShiftRqst msg))
    (cl:cons ':StrAglRqstV (StrAglRqstV msg))
    (cl:cons ':StrAglRqst (StrAglRqst msg))
    (cl:cons ':TgtStrAglVlcV (TgtStrAglVlcV msg))
    (cl:cons ':TgtStrAglVlc (TgtStrAglVlc msg))
    (cl:cons ':EPSCtrlModRqstV (EPSCtrlModRqstV msg))
    (cl:cons ':EPSCtrlModRqst (EPSCtrlModRqst msg))
    (cl:cons ':LdskCtrl (LdskCtrl msg))
    (cl:cons ':WndSnWpCtrl (WndSnWpCtrl msg))
    (cl:cons ':StpLpCtrl (StpLpCtrl msg))
    (cl:cons ':HzdLtCtrl (HzdLtCtrl msg))
    (cl:cons ':ClerLmpCtrl (ClerLmpCtrl msg))
    (cl:cons ':FogLmpCtrl (FogLmpCtrl msg))
    (cl:cons ':SdTrnLmpRHCtrl (SdTrnLmpRHCtrl msg))
    (cl:cons ':SdTrnLmpLHCtrl (SdTrnLmpLHCtrl msg))
    (cl:cons ':LowBmCtrl (LowBmCtrl msg))
    (cl:cons ':HighBmCtrl (HighBmCtrl msg))
    (cl:cons ':LkCtrl (LkCtrl msg))
    (cl:cons ':CarWindCtrl (CarWindCtrl msg))
    (cl:cons ':BCMCtrlModRqstV (BCMCtrlModRqstV msg))
    (cl:cons ':BCMCtrlModRqst (BCMCtrlModRqst msg))
    (cl:cons ':RemtPowOnRqst (RemtPowOnRqst msg))
    (cl:cons ':RemtPowOnRqstV (RemtPowOnRqstV msg))
    (cl:cons ':RemtPowDwnRqst (RemtPowDwnRqst msg))
    (cl:cons ':RemtPowDwnRqstV (RemtPowDwnRqstV msg))
    (cl:cons ':CANB_ParkingStartRequest (CANB_ParkingStartRequest msg))
    (cl:cons ':CANB_ParkingCloseRequest (CANB_ParkingCloseRequest msg))
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
    (cl:cons ':ADASWndSnWpCtrl (ADASWndSnWpCtrl msg))
    (cl:cons ':ADASHzdLtCtrl (ADASHzdLtCtrl msg))
    (cl:cons ':ADASSdTrnLmpRHCtrl (ADASSdTrnLmpRHCtrl msg))
    (cl:cons ':ADASSdTrnLmpLHCtrl (ADASSdTrnLmpLHCtrl msg))
    (cl:cons ':ADASLowBmCtrl (ADASLowBmCtrl msg))
    (cl:cons ':ADASHighBmCtrl (ADASHighBmCtrl msg))
    (cl:cons ':ADASLkCtrl (ADASLkCtrl msg))
    (cl:cons ':ADASRemtPrkModRqst (ADASRemtPrkModRqst msg))
    (cl:cons ':BCMADASCtrlRqst (BCMADASCtrlRqst msg))
    (cl:cons ':BCMADASCtrlRqstV (BCMADASCtrlRqstV msg))
))
