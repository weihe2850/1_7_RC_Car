; Auto-generated. Do not edit!


(cl:in-package in2ulv_msgs-msg)


;//! \htmlinclude ChassisInfoToHMI.msg.html

(cl:defclass <ChassisInfoToHMI> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (vin
    :reader vin
    :initarg :vin
    :type cl:string
    :initform "")
   (current_stop
    :reader current_stop
    :initarg :current_stop
    :type cl:string
    :initform "")
   (route_stop
    :reader route_stop
    :initarg :route_stop
    :type cl:string
    :initform "")
   (route_line
    :reader route_line
    :initarg :route_line
    :type cl:integer
    :initform 0)
   (control_mode
    :reader control_mode
    :initarg :control_mode
    :type cl:fixnum
    :initform 0)
   (veh_status
    :reader veh_status
    :initarg :veh_status
    :type cl:fixnum
    :initform 0)
   (gps_veh
    :reader gps_veh
    :initarg :gps_veh
    :type (cl:vector cl:float)
   :initform (cl:make-array 2 :element-type 'cl:float :initial-element 0.0))
   (gps_stop
    :reader gps_stop
    :initarg :gps_stop
    :type (cl:vector cl:float)
   :initform (cl:make-array 2 :element-type 'cl:float :initial-element 0.0))
   (trip_distance
    :reader trip_distance
    :initarg :trip_distance
    :type cl:float
    :initform 0.0)
   (trip_eta
    :reader trip_eta
    :initarg :trip_eta
    :type cl:float
    :initform 0.0)
   (trip_left_mileage
    :reader trip_left_mileage
    :initarg :trip_left_mileage
    :type cl:float
    :initform 0.0)
   (SysPowMode
    :reader SysPowMode
    :initarg :SysPowMode
    :type cl:fixnum
    :initform 0)
   (HzrdLtIO
    :reader HzrdLtIO
    :initarg :HzrdLtIO
    :type cl:fixnum
    :initform 0)
   (WindscenWipSt
    :reader WindscenWipSt
    :initarg :WindscenWipSt
    :type cl:fixnum
    :initform 0)
   (Highbeem
    :reader Highbeem
    :initarg :Highbeem
    :type cl:fixnum
    :initform 0)
   (Lowbeem
    :reader Lowbeem
    :initarg :Lowbeem
    :type cl:fixnum
    :initform 0)
   (Windows
    :reader Windows
    :initarg :Windows
    :type cl:fixnum
    :initform 0)
   (Doorlock
    :reader Doorlock
    :initarg :Doorlock
    :type cl:fixnum
    :initform 0)
   (DoorSwitch
    :reader DoorSwitch
    :initarg :DoorSwitch
    :type cl:fixnum
    :initform 0)
   (EmergencyButton
    :reader EmergencyButton
    :initarg :EmergencyButton
    :type cl:fixnum
    :initform 0)
   (speed
    :reader speed
    :initarg :speed
    :type cl:float
    :initform 0.0)
   (angle
    :reader angle
    :initarg :angle
    :type cl:float
    :initform 0.0)
   (soc
    :reader soc
    :initarg :soc
    :type cl:float
    :initform 0.0)
   (event
    :reader event
    :initarg :event
    :type cl:fixnum
    :initform 0))
)

(cl:defclass ChassisInfoToHMI (<ChassisInfoToHMI>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ChassisInfoToHMI>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ChassisInfoToHMI)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name in2ulv_msgs-msg:<ChassisInfoToHMI> is deprecated: use in2ulv_msgs-msg:ChassisInfoToHMI instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <ChassisInfoToHMI>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader in2ulv_msgs-msg:header-val is deprecated.  Use in2ulv_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'vin-val :lambda-list '(m))
(cl:defmethod vin-val ((m <ChassisInfoToHMI>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader in2ulv_msgs-msg:vin-val is deprecated.  Use in2ulv_msgs-msg:vin instead.")
  (vin m))

(cl:ensure-generic-function 'current_stop-val :lambda-list '(m))
(cl:defmethod current_stop-val ((m <ChassisInfoToHMI>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader in2ulv_msgs-msg:current_stop-val is deprecated.  Use in2ulv_msgs-msg:current_stop instead.")
  (current_stop m))

(cl:ensure-generic-function 'route_stop-val :lambda-list '(m))
(cl:defmethod route_stop-val ((m <ChassisInfoToHMI>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader in2ulv_msgs-msg:route_stop-val is deprecated.  Use in2ulv_msgs-msg:route_stop instead.")
  (route_stop m))

(cl:ensure-generic-function 'route_line-val :lambda-list '(m))
(cl:defmethod route_line-val ((m <ChassisInfoToHMI>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader in2ulv_msgs-msg:route_line-val is deprecated.  Use in2ulv_msgs-msg:route_line instead.")
  (route_line m))

(cl:ensure-generic-function 'control_mode-val :lambda-list '(m))
(cl:defmethod control_mode-val ((m <ChassisInfoToHMI>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader in2ulv_msgs-msg:control_mode-val is deprecated.  Use in2ulv_msgs-msg:control_mode instead.")
  (control_mode m))

(cl:ensure-generic-function 'veh_status-val :lambda-list '(m))
(cl:defmethod veh_status-val ((m <ChassisInfoToHMI>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader in2ulv_msgs-msg:veh_status-val is deprecated.  Use in2ulv_msgs-msg:veh_status instead.")
  (veh_status m))

(cl:ensure-generic-function 'gps_veh-val :lambda-list '(m))
(cl:defmethod gps_veh-val ((m <ChassisInfoToHMI>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader in2ulv_msgs-msg:gps_veh-val is deprecated.  Use in2ulv_msgs-msg:gps_veh instead.")
  (gps_veh m))

(cl:ensure-generic-function 'gps_stop-val :lambda-list '(m))
(cl:defmethod gps_stop-val ((m <ChassisInfoToHMI>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader in2ulv_msgs-msg:gps_stop-val is deprecated.  Use in2ulv_msgs-msg:gps_stop instead.")
  (gps_stop m))

(cl:ensure-generic-function 'trip_distance-val :lambda-list '(m))
(cl:defmethod trip_distance-val ((m <ChassisInfoToHMI>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader in2ulv_msgs-msg:trip_distance-val is deprecated.  Use in2ulv_msgs-msg:trip_distance instead.")
  (trip_distance m))

(cl:ensure-generic-function 'trip_eta-val :lambda-list '(m))
(cl:defmethod trip_eta-val ((m <ChassisInfoToHMI>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader in2ulv_msgs-msg:trip_eta-val is deprecated.  Use in2ulv_msgs-msg:trip_eta instead.")
  (trip_eta m))

(cl:ensure-generic-function 'trip_left_mileage-val :lambda-list '(m))
(cl:defmethod trip_left_mileage-val ((m <ChassisInfoToHMI>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader in2ulv_msgs-msg:trip_left_mileage-val is deprecated.  Use in2ulv_msgs-msg:trip_left_mileage instead.")
  (trip_left_mileage m))

(cl:ensure-generic-function 'SysPowMode-val :lambda-list '(m))
(cl:defmethod SysPowMode-val ((m <ChassisInfoToHMI>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader in2ulv_msgs-msg:SysPowMode-val is deprecated.  Use in2ulv_msgs-msg:SysPowMode instead.")
  (SysPowMode m))

(cl:ensure-generic-function 'HzrdLtIO-val :lambda-list '(m))
(cl:defmethod HzrdLtIO-val ((m <ChassisInfoToHMI>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader in2ulv_msgs-msg:HzrdLtIO-val is deprecated.  Use in2ulv_msgs-msg:HzrdLtIO instead.")
  (HzrdLtIO m))

(cl:ensure-generic-function 'WindscenWipSt-val :lambda-list '(m))
(cl:defmethod WindscenWipSt-val ((m <ChassisInfoToHMI>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader in2ulv_msgs-msg:WindscenWipSt-val is deprecated.  Use in2ulv_msgs-msg:WindscenWipSt instead.")
  (WindscenWipSt m))

(cl:ensure-generic-function 'Highbeem-val :lambda-list '(m))
(cl:defmethod Highbeem-val ((m <ChassisInfoToHMI>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader in2ulv_msgs-msg:Highbeem-val is deprecated.  Use in2ulv_msgs-msg:Highbeem instead.")
  (Highbeem m))

(cl:ensure-generic-function 'Lowbeem-val :lambda-list '(m))
(cl:defmethod Lowbeem-val ((m <ChassisInfoToHMI>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader in2ulv_msgs-msg:Lowbeem-val is deprecated.  Use in2ulv_msgs-msg:Lowbeem instead.")
  (Lowbeem m))

(cl:ensure-generic-function 'Windows-val :lambda-list '(m))
(cl:defmethod Windows-val ((m <ChassisInfoToHMI>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader in2ulv_msgs-msg:Windows-val is deprecated.  Use in2ulv_msgs-msg:Windows instead.")
  (Windows m))

(cl:ensure-generic-function 'Doorlock-val :lambda-list '(m))
(cl:defmethod Doorlock-val ((m <ChassisInfoToHMI>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader in2ulv_msgs-msg:Doorlock-val is deprecated.  Use in2ulv_msgs-msg:Doorlock instead.")
  (Doorlock m))

(cl:ensure-generic-function 'DoorSwitch-val :lambda-list '(m))
(cl:defmethod DoorSwitch-val ((m <ChassisInfoToHMI>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader in2ulv_msgs-msg:DoorSwitch-val is deprecated.  Use in2ulv_msgs-msg:DoorSwitch instead.")
  (DoorSwitch m))

(cl:ensure-generic-function 'EmergencyButton-val :lambda-list '(m))
(cl:defmethod EmergencyButton-val ((m <ChassisInfoToHMI>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader in2ulv_msgs-msg:EmergencyButton-val is deprecated.  Use in2ulv_msgs-msg:EmergencyButton instead.")
  (EmergencyButton m))

(cl:ensure-generic-function 'speed-val :lambda-list '(m))
(cl:defmethod speed-val ((m <ChassisInfoToHMI>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader in2ulv_msgs-msg:speed-val is deprecated.  Use in2ulv_msgs-msg:speed instead.")
  (speed m))

(cl:ensure-generic-function 'angle-val :lambda-list '(m))
(cl:defmethod angle-val ((m <ChassisInfoToHMI>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader in2ulv_msgs-msg:angle-val is deprecated.  Use in2ulv_msgs-msg:angle instead.")
  (angle m))

(cl:ensure-generic-function 'soc-val :lambda-list '(m))
(cl:defmethod soc-val ((m <ChassisInfoToHMI>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader in2ulv_msgs-msg:soc-val is deprecated.  Use in2ulv_msgs-msg:soc instead.")
  (soc m))

(cl:ensure-generic-function 'event-val :lambda-list '(m))
(cl:defmethod event-val ((m <ChassisInfoToHMI>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader in2ulv_msgs-msg:event-val is deprecated.  Use in2ulv_msgs-msg:event instead.")
  (event m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ChassisInfoToHMI>) ostream)
  "Serializes a message object of type '<ChassisInfoToHMI>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'vin))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'vin))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'current_stop))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'current_stop))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'route_stop))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'route_stop))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'route_line)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'route_line)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'route_line)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'route_line)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 32) (cl:slot-value msg 'route_line)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 40) (cl:slot-value msg 'route_line)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 48) (cl:slot-value msg 'route_line)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 56) (cl:slot-value msg 'route_line)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'control_mode)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'veh_status)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'veh_status)) ostream)
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-double-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream)))
   (cl:slot-value msg 'gps_veh))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-double-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream)))
   (cl:slot-value msg 'gps_stop))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'trip_distance))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'trip_eta))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'trip_left_mileage))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'SysPowMode)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'HzrdLtIO)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'WindscenWipSt)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'Highbeem)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'Lowbeem)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'Windows)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'Doorlock)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'DoorSwitch)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'EmergencyButton)) ostream)
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'speed))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'angle))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'soc))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'event)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'event)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ChassisInfoToHMI>) istream)
  "Deserializes a message object of type '<ChassisInfoToHMI>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'vin) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'vin) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'current_stop) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'current_stop) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'route_stop) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'route_stop) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'route_line)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'route_line)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'route_line)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'route_line)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 32) (cl:slot-value msg 'route_line)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 40) (cl:slot-value msg 'route_line)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 48) (cl:slot-value msg 'route_line)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 56) (cl:slot-value msg 'route_line)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'control_mode)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'veh_status)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'veh_status)) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'gps_veh) (cl:make-array 2))
  (cl:let ((vals (cl:slot-value msg 'gps_veh)))
    (cl:dotimes (i 2)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-double-float-bits bits)))))
  (cl:setf (cl:slot-value msg 'gps_stop) (cl:make-array 2))
  (cl:let ((vals (cl:slot-value msg 'gps_stop)))
    (cl:dotimes (i 2)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-double-float-bits bits)))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'trip_distance) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'trip_eta) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'trip_left_mileage) (roslisp-utils:decode-double-float-bits bits)))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'SysPowMode)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'HzrdLtIO)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'WindscenWipSt)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'Highbeem)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'Lowbeem)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'Windows)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'Doorlock)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'DoorSwitch)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'EmergencyButton)) (cl:read-byte istream))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'speed) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'angle) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'soc) (roslisp-utils:decode-double-float-bits bits)))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'event)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'event)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ChassisInfoToHMI>)))
  "Returns string type for a message object of type '<ChassisInfoToHMI>"
  "in2ulv_msgs/ChassisInfoToHMI")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ChassisInfoToHMI)))
  "Returns string type for a message object of type 'ChassisInfoToHMI"
  "in2ulv_msgs/ChassisInfoToHMI")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ChassisInfoToHMI>)))
  "Returns md5sum for a message object of type '<ChassisInfoToHMI>"
  "a60f94b6e0bf5a28659ca3510b2db089")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ChassisInfoToHMI)))
  "Returns md5sum for a message object of type 'ChassisInfoToHMI"
  "a60f94b6e0bf5a28659ca3510b2db089")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ChassisInfoToHMI>)))
  "Returns full string definition for message of type '<ChassisInfoToHMI>"
  (cl:format cl:nil "# 帧头，包含时间戳信息~%std_msgs/Header header~%~%string vin # 字符串类型, 16 ~~ 32个字符， 读取配置文件获取，列如: LK6ADAE21MB100250~%string current_stop # 字符串类型, 16 ~~ 32个字符, 列如: d0a0d333931203a,~%string route_stop # 字符串类型,16 ~~ 32个字符, 列如: d0a0d333931203a~%~%uint64 route_line # 路线~%~%uint8 control_mode # 车辆控制模式: 0为自动模式， 1为手动模式~%~%uint16 veh_status  # 0: 无服务请求, 1: 未准备完毕, 2: 准备完毕, 3: 正常行驶, 4: 到达目的地, 5: 服务失败(未到达目的地), 6: 车辆已经暂停, 7: 避障停车~%~%float64[2] gps_veh # 车辆位置经纬度，2个dobule类型的数组, 第一个是车辆位置的纬度， 第二个是车辆位置的经度~%float64[2] gps_stop # 车辆目标站点经纬度，2个dobule类型的数组, 第一个是车辆位置的纬度， 第二个是车辆位置的经度~%~%float64 trip_distance     # 行程总里程, 距离站点总里程, 单位: m~%float64 trip_eta          # 行程剩余时间, 到达站点预计剩余时间, 单位: ms ~%float64 trip_left_mileage # 行程剩余里程, 到达站点剩余里程, 单位: m~%~%uint8 SysPowMode  # 整车电源模式, ACAN的0x565, 0x0: OFF, 0x1: ACC, 0x2: ON~%uint8 HzrdLtIO    # 双闪状态, 0: 关闭, 1: 开启~%uint8 WindscenWipSt  # 雨刮状态, 0: 关闭, 1: 开启 ~%uint8 Highbeem       # 远关灯状态, 0: 关闭, 1: 开启~%uint8 Lowbeem        # 近光灯状态, 0: 关闭, 1: 开启~%uint8 Windows        # 车窗状态, 0: 升起, 1: 落下~%uint8 Doorlock       # 门锁状态, 0: 锁车, 1: 解锁~%uint8 DoorSwitch     # 门锁开关, 0: 关闭, 1: 未关闭~%uint8 EmergencyButton# 按钮状态: 按下为1， 不按下为0~%~%float64 speed	      # 车辆当前速度, IDU从0x36A获取到的车速, 单位m/s~%float64 angle          # 车辆转向角度, IDU从0x1E5获取到的转角值, 单位度~%float64 soc            # IDU从0x36A获取到的SOC电池值, 单位%~%uint16 event         # 故障事件上报, 具体故障事件定义和含义由算法给出~%~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ChassisInfoToHMI)))
  "Returns full string definition for message of type 'ChassisInfoToHMI"
  (cl:format cl:nil "# 帧头，包含时间戳信息~%std_msgs/Header header~%~%string vin # 字符串类型, 16 ~~ 32个字符， 读取配置文件获取，列如: LK6ADAE21MB100250~%string current_stop # 字符串类型, 16 ~~ 32个字符, 列如: d0a0d333931203a,~%string route_stop # 字符串类型,16 ~~ 32个字符, 列如: d0a0d333931203a~%~%uint64 route_line # 路线~%~%uint8 control_mode # 车辆控制模式: 0为自动模式， 1为手动模式~%~%uint16 veh_status  # 0: 无服务请求, 1: 未准备完毕, 2: 准备完毕, 3: 正常行驶, 4: 到达目的地, 5: 服务失败(未到达目的地), 6: 车辆已经暂停, 7: 避障停车~%~%float64[2] gps_veh # 车辆位置经纬度，2个dobule类型的数组, 第一个是车辆位置的纬度， 第二个是车辆位置的经度~%float64[2] gps_stop # 车辆目标站点经纬度，2个dobule类型的数组, 第一个是车辆位置的纬度， 第二个是车辆位置的经度~%~%float64 trip_distance     # 行程总里程, 距离站点总里程, 单位: m~%float64 trip_eta          # 行程剩余时间, 到达站点预计剩余时间, 单位: ms ~%float64 trip_left_mileage # 行程剩余里程, 到达站点剩余里程, 单位: m~%~%uint8 SysPowMode  # 整车电源模式, ACAN的0x565, 0x0: OFF, 0x1: ACC, 0x2: ON~%uint8 HzrdLtIO    # 双闪状态, 0: 关闭, 1: 开启~%uint8 WindscenWipSt  # 雨刮状态, 0: 关闭, 1: 开启 ~%uint8 Highbeem       # 远关灯状态, 0: 关闭, 1: 开启~%uint8 Lowbeem        # 近光灯状态, 0: 关闭, 1: 开启~%uint8 Windows        # 车窗状态, 0: 升起, 1: 落下~%uint8 Doorlock       # 门锁状态, 0: 锁车, 1: 解锁~%uint8 DoorSwitch     # 门锁开关, 0: 关闭, 1: 未关闭~%uint8 EmergencyButton# 按钮状态: 按下为1， 不按下为0~%~%float64 speed	      # 车辆当前速度, IDU从0x36A获取到的车速, 单位m/s~%float64 angle          # 车辆转向角度, IDU从0x1E5获取到的转角值, 单位度~%float64 soc            # IDU从0x36A获取到的SOC电池值, 单位%~%uint16 event         # 故障事件上报, 具体故障事件定义和含义由算法给出~%~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ChassisInfoToHMI>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4 (cl:length (cl:slot-value msg 'vin))
     4 (cl:length (cl:slot-value msg 'current_stop))
     4 (cl:length (cl:slot-value msg 'route_stop))
     8
     1
     2
     0 (cl:reduce #'cl:+ (cl:slot-value msg 'gps_veh) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 8)))
     0 (cl:reduce #'cl:+ (cl:slot-value msg 'gps_stop) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 8)))
     8
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
     8
     8
     8
     2
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ChassisInfoToHMI>))
  "Converts a ROS message object to a list"
  (cl:list 'ChassisInfoToHMI
    (cl:cons ':header (header msg))
    (cl:cons ':vin (vin msg))
    (cl:cons ':current_stop (current_stop msg))
    (cl:cons ':route_stop (route_stop msg))
    (cl:cons ':route_line (route_line msg))
    (cl:cons ':control_mode (control_mode msg))
    (cl:cons ':veh_status (veh_status msg))
    (cl:cons ':gps_veh (gps_veh msg))
    (cl:cons ':gps_stop (gps_stop msg))
    (cl:cons ':trip_distance (trip_distance msg))
    (cl:cons ':trip_eta (trip_eta msg))
    (cl:cons ':trip_left_mileage (trip_left_mileage msg))
    (cl:cons ':SysPowMode (SysPowMode msg))
    (cl:cons ':HzrdLtIO (HzrdLtIO msg))
    (cl:cons ':WindscenWipSt (WindscenWipSt msg))
    (cl:cons ':Highbeem (Highbeem msg))
    (cl:cons ':Lowbeem (Lowbeem msg))
    (cl:cons ':Windows (Windows msg))
    (cl:cons ':Doorlock (Doorlock msg))
    (cl:cons ':DoorSwitch (DoorSwitch msg))
    (cl:cons ':EmergencyButton (EmergencyButton msg))
    (cl:cons ':speed (speed msg))
    (cl:cons ':angle (angle msg))
    (cl:cons ':soc (soc msg))
    (cl:cons ':event (event msg))
))
