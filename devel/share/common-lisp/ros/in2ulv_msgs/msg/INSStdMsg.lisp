; Auto-generated. Do not edit!


(cl:in-package in2ulv_msgs-msg)


;//! \htmlinclude INSStdMsg.msg.html

(cl:defclass <INSStdMsg> (roslisp-msg-protocol:ros-message)
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
   (ins_data
    :reader ins_data
    :initarg :ins_data
    :type cl:string
    :initform "")
   (imu
    :reader imu
    :initarg :imu
    :type sensor_msgs-msg:Imu
    :initform (cl:make-instance 'sensor_msgs-msg:Imu))
   (nav_sat_fix
    :reader nav_sat_fix
    :initarg :nav_sat_fix
    :type sensor_msgs-msg:NavSatFix
    :initform (cl:make-instance 'sensor_msgs-msg:NavSatFix))
   (ACC_X
    :reader ACC_X
    :initarg :ACC_X
    :type cl:float
    :initform 0.0)
   (ACC_Y
    :reader ACC_Y
    :initarg :ACC_Y
    :type cl:float
    :initform 0.0)
   (ACC_Z
    :reader ACC_Z
    :initarg :ACC_Z
    :type cl:float
    :initform 0.0)
   (GYRO_X
    :reader GYRO_X
    :initarg :GYRO_X
    :type cl:float
    :initform 0.0)
   (GYRO_Y
    :reader GYRO_Y
    :initarg :GYRO_Y
    :type cl:float
    :initform 0.0)
   (GYRO_Z
    :reader GYRO_Z
    :initarg :GYRO_Z
    :type cl:float
    :initform 0.0)
   (INS_PitchAngle
    :reader INS_PitchAngle
    :initarg :INS_PitchAngle
    :type cl:float
    :initform 0.0)
   (INS_RollAngle
    :reader INS_RollAngle
    :initarg :INS_RollAngle
    :type cl:float
    :initform 0.0)
   (INS_HeadingAngle
    :reader INS_HeadingAngle
    :initarg :INS_HeadingAngle
    :type cl:float
    :initform 0.0)
   (INS_LocatHeight
    :reader INS_LocatHeight
    :initarg :INS_LocatHeight
    :type cl:float
    :initform 0.0)
   (INS_Time
    :reader INS_Time
    :initarg :INS_Time
    :type cl:integer
    :initform 0)
   (INS_Latitude
    :reader INS_Latitude
    :initarg :INS_Latitude
    :type cl:float
    :initform 0.0)
   (INS_Longitude
    :reader INS_Longitude
    :initarg :INS_Longitude
    :type cl:float
    :initform 0.0)
   (INS_NorthSpd
    :reader INS_NorthSpd
    :initarg :INS_NorthSpd
    :type cl:float
    :initform 0.0)
   (INS_EastSpd
    :reader INS_EastSpd
    :initarg :INS_EastSpd
    :type cl:float
    :initform 0.0)
   (INS_ToGroundSpd
    :reader INS_ToGroundSpd
    :initarg :INS_ToGroundSpd
    :type cl:float
    :initform 0.0)
   (INS_GpsFlag_Pos
    :reader INS_GpsFlag_Pos
    :initarg :INS_GpsFlag_Pos
    :type cl:fixnum
    :initform 0)
   (INS_NumSV
    :reader INS_NumSV
    :initarg :INS_NumSV
    :type cl:fixnum
    :initform 0)
   (INS_GpsFlag_Heading
    :reader INS_GpsFlag_Heading
    :initarg :INS_GpsFlag_Heading
    :type cl:fixnum
    :initform 0)
   (INS_Gps_Age
    :reader INS_Gps_Age
    :initarg :INS_Gps_Age
    :type cl:fixnum
    :initform 0)
   (INS_Car_Status
    :reader INS_Car_Status
    :initarg :INS_Car_Status
    :type cl:fixnum
    :initform 0)
   (INS_Status
    :reader INS_Status
    :initarg :INS_Status
    :type cl:fixnum
    :initform 0)
   (INS_Std_Lat
    :reader INS_Std_Lat
    :initarg :INS_Std_Lat
    :type cl:float
    :initform 0.0)
   (INS_Std_Lon
    :reader INS_Std_Lon
    :initarg :INS_Std_Lon
    :type cl:float
    :initform 0.0)
   (INS_Std_LocatHeight
    :reader INS_Std_LocatHeight
    :initarg :INS_Std_LocatHeight
    :type cl:float
    :initform 0.0)
   (INS_Std_Heading
    :reader INS_Std_Heading
    :initarg :INS_Std_Heading
    :type cl:float
    :initform 0.0)
   (INS_UTM_East
    :reader INS_UTM_East
    :initarg :INS_UTM_East
    :type cl:float
    :initform 0.0)
   (INS_UTM_North
    :reader INS_UTM_North
    :initarg :INS_UTM_North
    :type cl:float
    :initform 0.0)
   (INS_UTM_NorthSpd
    :reader INS_UTM_NorthSpd
    :initarg :INS_UTM_NorthSpd
    :type cl:float
    :initform 0.0)
   (INS_UTM_EastSpd
    :reader INS_UTM_EastSpd
    :initarg :INS_UTM_EastSpd
    :type cl:float
    :initform 0.0))
)

(cl:defclass INSStdMsg (<INSStdMsg>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <INSStdMsg>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'INSStdMsg)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name in2ulv_msgs-msg:<INSStdMsg> is deprecated: use in2ulv_msgs-msg:INSStdMsg instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <INSStdMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader in2ulv_msgs-msg:header-val is deprecated.  Use in2ulv_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'module_type-val :lambda-list '(m))
(cl:defmethod module_type-val ((m <INSStdMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader in2ulv_msgs-msg:module_type-val is deprecated.  Use in2ulv_msgs-msg:module_type instead.")
  (module_type m))

(cl:ensure-generic-function 'error_code-val :lambda-list '(m))
(cl:defmethod error_code-val ((m <INSStdMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader in2ulv_msgs-msg:error_code-val is deprecated.  Use in2ulv_msgs-msg:error_code instead.")
  (error_code m))

(cl:ensure-generic-function 'ins_data-val :lambda-list '(m))
(cl:defmethod ins_data-val ((m <INSStdMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader in2ulv_msgs-msg:ins_data-val is deprecated.  Use in2ulv_msgs-msg:ins_data instead.")
  (ins_data m))

(cl:ensure-generic-function 'imu-val :lambda-list '(m))
(cl:defmethod imu-val ((m <INSStdMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader in2ulv_msgs-msg:imu-val is deprecated.  Use in2ulv_msgs-msg:imu instead.")
  (imu m))

(cl:ensure-generic-function 'nav_sat_fix-val :lambda-list '(m))
(cl:defmethod nav_sat_fix-val ((m <INSStdMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader in2ulv_msgs-msg:nav_sat_fix-val is deprecated.  Use in2ulv_msgs-msg:nav_sat_fix instead.")
  (nav_sat_fix m))

(cl:ensure-generic-function 'ACC_X-val :lambda-list '(m))
(cl:defmethod ACC_X-val ((m <INSStdMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader in2ulv_msgs-msg:ACC_X-val is deprecated.  Use in2ulv_msgs-msg:ACC_X instead.")
  (ACC_X m))

(cl:ensure-generic-function 'ACC_Y-val :lambda-list '(m))
(cl:defmethod ACC_Y-val ((m <INSStdMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader in2ulv_msgs-msg:ACC_Y-val is deprecated.  Use in2ulv_msgs-msg:ACC_Y instead.")
  (ACC_Y m))

(cl:ensure-generic-function 'ACC_Z-val :lambda-list '(m))
(cl:defmethod ACC_Z-val ((m <INSStdMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader in2ulv_msgs-msg:ACC_Z-val is deprecated.  Use in2ulv_msgs-msg:ACC_Z instead.")
  (ACC_Z m))

(cl:ensure-generic-function 'GYRO_X-val :lambda-list '(m))
(cl:defmethod GYRO_X-val ((m <INSStdMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader in2ulv_msgs-msg:GYRO_X-val is deprecated.  Use in2ulv_msgs-msg:GYRO_X instead.")
  (GYRO_X m))

(cl:ensure-generic-function 'GYRO_Y-val :lambda-list '(m))
(cl:defmethod GYRO_Y-val ((m <INSStdMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader in2ulv_msgs-msg:GYRO_Y-val is deprecated.  Use in2ulv_msgs-msg:GYRO_Y instead.")
  (GYRO_Y m))

(cl:ensure-generic-function 'GYRO_Z-val :lambda-list '(m))
(cl:defmethod GYRO_Z-val ((m <INSStdMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader in2ulv_msgs-msg:GYRO_Z-val is deprecated.  Use in2ulv_msgs-msg:GYRO_Z instead.")
  (GYRO_Z m))

(cl:ensure-generic-function 'INS_PitchAngle-val :lambda-list '(m))
(cl:defmethod INS_PitchAngle-val ((m <INSStdMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader in2ulv_msgs-msg:INS_PitchAngle-val is deprecated.  Use in2ulv_msgs-msg:INS_PitchAngle instead.")
  (INS_PitchAngle m))

(cl:ensure-generic-function 'INS_RollAngle-val :lambda-list '(m))
(cl:defmethod INS_RollAngle-val ((m <INSStdMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader in2ulv_msgs-msg:INS_RollAngle-val is deprecated.  Use in2ulv_msgs-msg:INS_RollAngle instead.")
  (INS_RollAngle m))

(cl:ensure-generic-function 'INS_HeadingAngle-val :lambda-list '(m))
(cl:defmethod INS_HeadingAngle-val ((m <INSStdMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader in2ulv_msgs-msg:INS_HeadingAngle-val is deprecated.  Use in2ulv_msgs-msg:INS_HeadingAngle instead.")
  (INS_HeadingAngle m))

(cl:ensure-generic-function 'INS_LocatHeight-val :lambda-list '(m))
(cl:defmethod INS_LocatHeight-val ((m <INSStdMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader in2ulv_msgs-msg:INS_LocatHeight-val is deprecated.  Use in2ulv_msgs-msg:INS_LocatHeight instead.")
  (INS_LocatHeight m))

(cl:ensure-generic-function 'INS_Time-val :lambda-list '(m))
(cl:defmethod INS_Time-val ((m <INSStdMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader in2ulv_msgs-msg:INS_Time-val is deprecated.  Use in2ulv_msgs-msg:INS_Time instead.")
  (INS_Time m))

(cl:ensure-generic-function 'INS_Latitude-val :lambda-list '(m))
(cl:defmethod INS_Latitude-val ((m <INSStdMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader in2ulv_msgs-msg:INS_Latitude-val is deprecated.  Use in2ulv_msgs-msg:INS_Latitude instead.")
  (INS_Latitude m))

(cl:ensure-generic-function 'INS_Longitude-val :lambda-list '(m))
(cl:defmethod INS_Longitude-val ((m <INSStdMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader in2ulv_msgs-msg:INS_Longitude-val is deprecated.  Use in2ulv_msgs-msg:INS_Longitude instead.")
  (INS_Longitude m))

(cl:ensure-generic-function 'INS_NorthSpd-val :lambda-list '(m))
(cl:defmethod INS_NorthSpd-val ((m <INSStdMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader in2ulv_msgs-msg:INS_NorthSpd-val is deprecated.  Use in2ulv_msgs-msg:INS_NorthSpd instead.")
  (INS_NorthSpd m))

(cl:ensure-generic-function 'INS_EastSpd-val :lambda-list '(m))
(cl:defmethod INS_EastSpd-val ((m <INSStdMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader in2ulv_msgs-msg:INS_EastSpd-val is deprecated.  Use in2ulv_msgs-msg:INS_EastSpd instead.")
  (INS_EastSpd m))

(cl:ensure-generic-function 'INS_ToGroundSpd-val :lambda-list '(m))
(cl:defmethod INS_ToGroundSpd-val ((m <INSStdMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader in2ulv_msgs-msg:INS_ToGroundSpd-val is deprecated.  Use in2ulv_msgs-msg:INS_ToGroundSpd instead.")
  (INS_ToGroundSpd m))

(cl:ensure-generic-function 'INS_GpsFlag_Pos-val :lambda-list '(m))
(cl:defmethod INS_GpsFlag_Pos-val ((m <INSStdMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader in2ulv_msgs-msg:INS_GpsFlag_Pos-val is deprecated.  Use in2ulv_msgs-msg:INS_GpsFlag_Pos instead.")
  (INS_GpsFlag_Pos m))

(cl:ensure-generic-function 'INS_NumSV-val :lambda-list '(m))
(cl:defmethod INS_NumSV-val ((m <INSStdMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader in2ulv_msgs-msg:INS_NumSV-val is deprecated.  Use in2ulv_msgs-msg:INS_NumSV instead.")
  (INS_NumSV m))

(cl:ensure-generic-function 'INS_GpsFlag_Heading-val :lambda-list '(m))
(cl:defmethod INS_GpsFlag_Heading-val ((m <INSStdMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader in2ulv_msgs-msg:INS_GpsFlag_Heading-val is deprecated.  Use in2ulv_msgs-msg:INS_GpsFlag_Heading instead.")
  (INS_GpsFlag_Heading m))

(cl:ensure-generic-function 'INS_Gps_Age-val :lambda-list '(m))
(cl:defmethod INS_Gps_Age-val ((m <INSStdMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader in2ulv_msgs-msg:INS_Gps_Age-val is deprecated.  Use in2ulv_msgs-msg:INS_Gps_Age instead.")
  (INS_Gps_Age m))

(cl:ensure-generic-function 'INS_Car_Status-val :lambda-list '(m))
(cl:defmethod INS_Car_Status-val ((m <INSStdMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader in2ulv_msgs-msg:INS_Car_Status-val is deprecated.  Use in2ulv_msgs-msg:INS_Car_Status instead.")
  (INS_Car_Status m))

(cl:ensure-generic-function 'INS_Status-val :lambda-list '(m))
(cl:defmethod INS_Status-val ((m <INSStdMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader in2ulv_msgs-msg:INS_Status-val is deprecated.  Use in2ulv_msgs-msg:INS_Status instead.")
  (INS_Status m))

(cl:ensure-generic-function 'INS_Std_Lat-val :lambda-list '(m))
(cl:defmethod INS_Std_Lat-val ((m <INSStdMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader in2ulv_msgs-msg:INS_Std_Lat-val is deprecated.  Use in2ulv_msgs-msg:INS_Std_Lat instead.")
  (INS_Std_Lat m))

(cl:ensure-generic-function 'INS_Std_Lon-val :lambda-list '(m))
(cl:defmethod INS_Std_Lon-val ((m <INSStdMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader in2ulv_msgs-msg:INS_Std_Lon-val is deprecated.  Use in2ulv_msgs-msg:INS_Std_Lon instead.")
  (INS_Std_Lon m))

(cl:ensure-generic-function 'INS_Std_LocatHeight-val :lambda-list '(m))
(cl:defmethod INS_Std_LocatHeight-val ((m <INSStdMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader in2ulv_msgs-msg:INS_Std_LocatHeight-val is deprecated.  Use in2ulv_msgs-msg:INS_Std_LocatHeight instead.")
  (INS_Std_LocatHeight m))

(cl:ensure-generic-function 'INS_Std_Heading-val :lambda-list '(m))
(cl:defmethod INS_Std_Heading-val ((m <INSStdMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader in2ulv_msgs-msg:INS_Std_Heading-val is deprecated.  Use in2ulv_msgs-msg:INS_Std_Heading instead.")
  (INS_Std_Heading m))

(cl:ensure-generic-function 'INS_UTM_East-val :lambda-list '(m))
(cl:defmethod INS_UTM_East-val ((m <INSStdMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader in2ulv_msgs-msg:INS_UTM_East-val is deprecated.  Use in2ulv_msgs-msg:INS_UTM_East instead.")
  (INS_UTM_East m))

(cl:ensure-generic-function 'INS_UTM_North-val :lambda-list '(m))
(cl:defmethod INS_UTM_North-val ((m <INSStdMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader in2ulv_msgs-msg:INS_UTM_North-val is deprecated.  Use in2ulv_msgs-msg:INS_UTM_North instead.")
  (INS_UTM_North m))

(cl:ensure-generic-function 'INS_UTM_NorthSpd-val :lambda-list '(m))
(cl:defmethod INS_UTM_NorthSpd-val ((m <INSStdMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader in2ulv_msgs-msg:INS_UTM_NorthSpd-val is deprecated.  Use in2ulv_msgs-msg:INS_UTM_NorthSpd instead.")
  (INS_UTM_NorthSpd m))

(cl:ensure-generic-function 'INS_UTM_EastSpd-val :lambda-list '(m))
(cl:defmethod INS_UTM_EastSpd-val ((m <INSStdMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader in2ulv_msgs-msg:INS_UTM_EastSpd-val is deprecated.  Use in2ulv_msgs-msg:INS_UTM_EastSpd instead.")
  (INS_UTM_EastSpd m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <INSStdMsg>) ostream)
  "Serializes a message object of type '<INSStdMsg>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'module_type)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'error_code)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'error_code)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'error_code)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'error_code)) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'ins_data))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'ins_data))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'imu) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'nav_sat_fix) ostream)
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'ACC_X))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'ACC_Y))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'ACC_Z))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'GYRO_X))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'GYRO_Y))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'GYRO_Z))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'INS_PitchAngle))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'INS_RollAngle))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'INS_HeadingAngle))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'INS_LocatHeight))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'INS_Time)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'INS_Time)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'INS_Time)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'INS_Time)) ostream)
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'INS_Latitude))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'INS_Longitude))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'INS_NorthSpd))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'INS_EastSpd))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'INS_ToGroundSpd))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'INS_GpsFlag_Pos)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'INS_NumSV)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'INS_GpsFlag_Heading)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'INS_Gps_Age)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'INS_Car_Status)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'INS_Status)) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'INS_Std_Lat))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'INS_Std_Lon))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'INS_Std_LocatHeight))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'INS_Std_Heading))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'INS_UTM_East))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'INS_UTM_North))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'INS_UTM_NorthSpd))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'INS_UTM_EastSpd))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <INSStdMsg>) istream)
  "Deserializes a message object of type '<INSStdMsg>"
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
      (cl:setf (cl:slot-value msg 'ins_data) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'ins_data) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'imu) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'nav_sat_fix) istream)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'ACC_X) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'ACC_Y) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'ACC_Z) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'GYRO_X) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'GYRO_Y) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'GYRO_Z) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'INS_PitchAngle) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'INS_RollAngle) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'INS_HeadingAngle) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'INS_LocatHeight) (roslisp-utils:decode-double-float-bits bits)))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'INS_Time)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'INS_Time)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'INS_Time)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'INS_Time)) (cl:read-byte istream))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'INS_Latitude) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'INS_Longitude) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'INS_NorthSpd) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'INS_EastSpd) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'INS_ToGroundSpd) (roslisp-utils:decode-double-float-bits bits)))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'INS_GpsFlag_Pos)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'INS_NumSV)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'INS_GpsFlag_Heading)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'INS_Gps_Age)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'INS_Car_Status)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'INS_Status)) (cl:read-byte istream))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'INS_Std_Lat) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'INS_Std_Lon) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'INS_Std_LocatHeight) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'INS_Std_Heading) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'INS_UTM_East) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'INS_UTM_North) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'INS_UTM_NorthSpd) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'INS_UTM_EastSpd) (roslisp-utils:decode-double-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<INSStdMsg>)))
  "Returns string type for a message object of type '<INSStdMsg>"
  "in2ulv_msgs/INSStdMsg")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'INSStdMsg)))
  "Returns string type for a message object of type 'INSStdMsg"
  "in2ulv_msgs/INSStdMsg")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<INSStdMsg>)))
  "Returns md5sum for a message object of type '<INSStdMsg>"
  "e660d7b5d497967dad824f69729739ae")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'INSStdMsg)))
  "Returns md5sum for a message object of type 'INSStdMsg"
  "e660d7b5d497967dad824f69729739ae")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<INSStdMsg>)))
  "Returns full string definition for message of type '<INSStdMsg>"
  (cl:format cl:nil "# 帧头，包含时间戳信息~%std_msgs/Header header~%~%# 模块类型~%uint8 module_type~%~%# error_code~%uint32 error_code~%~%# 模块信息~%string ins_data~%~%# ROS 标准信息~%sensor_msgs/Imu imu~%sensor_msgs/NavSatFix nav_sat_fix~%~%# INS_Acc (0X500)~%float64 ACC_X~%float64 ACC_Y~%float64 ACC_Z~%~%# INS_GYRO (0X501)~%float64 GYRO_X~%float64 GYRO_Y~%float64 GYRO_Z~%~%# INS_HeadingPitchRoll (0X502)~%float64 INS_PitchAngle~%float64 INS_RollAngle~%float64 INS_HeadingAngle~%~%# INS_HeightAndTime (0X503)~%float64 INS_LocatHeight~%uint32 INS_Time~%~%# INS_LatitudeLongitude (0X504)~%float64 INS_Latitude~%float64 INS_Longitude~%~%# INS_Speed (0X505)~%float64 INS_NorthSpd~%float64 INS_EastSpd~%float64 INS_ToGroundSpd~%~%# INS_DataInfo (0X506)~%uint8 INS_GpsFlag_Pos~%uint8 INS_NumSV     #星数~%uint8 INS_GpsFlag_Heading~%uint8 INS_Gps_Age~%uint8 INS_Car_Status~%uint8 INS_Status~%~%# INS_Std (0X507)~%float32 INS_Std_Lat~%float32 INS_Std_Lon~%float32 INS_Std_LocatHeight~%float32 INS_Std_Heading~%~%# 新增的 UTM 坐标字段~%float64 INS_UTM_East~%float64 INS_UTM_North~%float64 INS_UTM_NorthSpd~%float64 INS_UTM_EastSpd~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: sensor_msgs/Imu~%# This is a message to hold data from an IMU (Inertial Measurement Unit)~%#~%# Accelerations should be in m/s^2 (not in g's), and rotational velocity should be in rad/sec~%#~%# If the covariance of the measurement is known, it should be filled in (if all you know is the ~%# variance of each measurement, e.g. from the datasheet, just put those along the diagonal)~%# A covariance matrix of all zeros will be interpreted as \"covariance unknown\", and to use the~%# data a covariance will have to be assumed or gotten from some other source~%#~%# If you have no estimate for one of the data elements (e.g. your IMU doesn't produce an orientation ~%# estimate), please set element 0 of the associated covariance matrix to -1~%# If you are interpreting this message, please check for a value of -1 in the first element of each ~%# covariance matrix, and disregard the associated estimate.~%~%Header header~%~%geometry_msgs/Quaternion orientation~%float64[9] orientation_covariance # Row major about x, y, z axes~%~%geometry_msgs/Vector3 angular_velocity~%float64[9] angular_velocity_covariance # Row major about x, y, z axes~%~%geometry_msgs/Vector3 linear_acceleration~%float64[9] linear_acceleration_covariance # Row major x, y z ~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%================================================================================~%MSG: sensor_msgs/NavSatFix~%# Navigation Satellite fix for any Global Navigation Satellite System~%#~%# Specified using the WGS 84 reference ellipsoid~%~%# header.stamp specifies the ROS time for this measurement (the~%#        corresponding satellite time may be reported using the~%#        sensor_msgs/TimeReference message).~%#~%# header.frame_id is the frame of reference reported by the satellite~%#        receiver, usually the location of the antenna.  This is a~%#        Euclidean frame relative to the vehicle, not a reference~%#        ellipsoid.~%Header header~%~%# satellite fix status information~%NavSatStatus status~%~%# Latitude [degrees]. Positive is north of equator; negative is south.~%float64 latitude~%~%# Longitude [degrees]. Positive is east of prime meridian; negative is west.~%float64 longitude~%~%# Altitude [m]. Positive is above the WGS 84 ellipsoid~%# (quiet NaN if no altitude is available).~%float64 altitude~%~%# Position covariance [m^2] defined relative to a tangential plane~%# through the reported position. The components are East, North, and~%# Up (ENU), in row-major order.~%#~%# Beware: this coordinate system exhibits singularities at the poles.~%~%float64[9] position_covariance~%~%# If the covariance of the fix is known, fill it in completely. If the~%# GPS receiver provides the variance of each measurement, put them~%# along the diagonal. If only Dilution of Precision is available,~%# estimate an approximate covariance from that.~%~%uint8 COVARIANCE_TYPE_UNKNOWN = 0~%uint8 COVARIANCE_TYPE_APPROXIMATED = 1~%uint8 COVARIANCE_TYPE_DIAGONAL_KNOWN = 2~%uint8 COVARIANCE_TYPE_KNOWN = 3~%~%uint8 position_covariance_type~%~%================================================================================~%MSG: sensor_msgs/NavSatStatus~%# Navigation Satellite fix status for any Global Navigation Satellite System~%~%# Whether to output an augmented fix is determined by both the fix~%# type and the last time differential corrections were received.  A~%# fix is valid when status >= STATUS_FIX.~%~%int8 STATUS_NO_FIX =  -1        # unable to fix position~%int8 STATUS_FIX =      0        # unaugmented fix~%int8 STATUS_SBAS_FIX = 1        # with satellite-based augmentation~%int8 STATUS_GBAS_FIX = 2        # with ground-based augmentation~%~%int8 status~%~%# Bits defining which Global Navigation Satellite System signals were~%# used by the receiver.~%~%uint16 SERVICE_GPS =     1~%uint16 SERVICE_GLONASS = 2~%uint16 SERVICE_COMPASS = 4      # includes BeiDou.~%uint16 SERVICE_GALILEO = 8~%~%uint16 service~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'INSStdMsg)))
  "Returns full string definition for message of type 'INSStdMsg"
  (cl:format cl:nil "# 帧头，包含时间戳信息~%std_msgs/Header header~%~%# 模块类型~%uint8 module_type~%~%# error_code~%uint32 error_code~%~%# 模块信息~%string ins_data~%~%# ROS 标准信息~%sensor_msgs/Imu imu~%sensor_msgs/NavSatFix nav_sat_fix~%~%# INS_Acc (0X500)~%float64 ACC_X~%float64 ACC_Y~%float64 ACC_Z~%~%# INS_GYRO (0X501)~%float64 GYRO_X~%float64 GYRO_Y~%float64 GYRO_Z~%~%# INS_HeadingPitchRoll (0X502)~%float64 INS_PitchAngle~%float64 INS_RollAngle~%float64 INS_HeadingAngle~%~%# INS_HeightAndTime (0X503)~%float64 INS_LocatHeight~%uint32 INS_Time~%~%# INS_LatitudeLongitude (0X504)~%float64 INS_Latitude~%float64 INS_Longitude~%~%# INS_Speed (0X505)~%float64 INS_NorthSpd~%float64 INS_EastSpd~%float64 INS_ToGroundSpd~%~%# INS_DataInfo (0X506)~%uint8 INS_GpsFlag_Pos~%uint8 INS_NumSV     #星数~%uint8 INS_GpsFlag_Heading~%uint8 INS_Gps_Age~%uint8 INS_Car_Status~%uint8 INS_Status~%~%# INS_Std (0X507)~%float32 INS_Std_Lat~%float32 INS_Std_Lon~%float32 INS_Std_LocatHeight~%float32 INS_Std_Heading~%~%# 新增的 UTM 坐标字段~%float64 INS_UTM_East~%float64 INS_UTM_North~%float64 INS_UTM_NorthSpd~%float64 INS_UTM_EastSpd~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: sensor_msgs/Imu~%# This is a message to hold data from an IMU (Inertial Measurement Unit)~%#~%# Accelerations should be in m/s^2 (not in g's), and rotational velocity should be in rad/sec~%#~%# If the covariance of the measurement is known, it should be filled in (if all you know is the ~%# variance of each measurement, e.g. from the datasheet, just put those along the diagonal)~%# A covariance matrix of all zeros will be interpreted as \"covariance unknown\", and to use the~%# data a covariance will have to be assumed or gotten from some other source~%#~%# If you have no estimate for one of the data elements (e.g. your IMU doesn't produce an orientation ~%# estimate), please set element 0 of the associated covariance matrix to -1~%# If you are interpreting this message, please check for a value of -1 in the first element of each ~%# covariance matrix, and disregard the associated estimate.~%~%Header header~%~%geometry_msgs/Quaternion orientation~%float64[9] orientation_covariance # Row major about x, y, z axes~%~%geometry_msgs/Vector3 angular_velocity~%float64[9] angular_velocity_covariance # Row major about x, y, z axes~%~%geometry_msgs/Vector3 linear_acceleration~%float64[9] linear_acceleration_covariance # Row major x, y z ~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%================================================================================~%MSG: sensor_msgs/NavSatFix~%# Navigation Satellite fix for any Global Navigation Satellite System~%#~%# Specified using the WGS 84 reference ellipsoid~%~%# header.stamp specifies the ROS time for this measurement (the~%#        corresponding satellite time may be reported using the~%#        sensor_msgs/TimeReference message).~%#~%# header.frame_id is the frame of reference reported by the satellite~%#        receiver, usually the location of the antenna.  This is a~%#        Euclidean frame relative to the vehicle, not a reference~%#        ellipsoid.~%Header header~%~%# satellite fix status information~%NavSatStatus status~%~%# Latitude [degrees]. Positive is north of equator; negative is south.~%float64 latitude~%~%# Longitude [degrees]. Positive is east of prime meridian; negative is west.~%float64 longitude~%~%# Altitude [m]. Positive is above the WGS 84 ellipsoid~%# (quiet NaN if no altitude is available).~%float64 altitude~%~%# Position covariance [m^2] defined relative to a tangential plane~%# through the reported position. The components are East, North, and~%# Up (ENU), in row-major order.~%#~%# Beware: this coordinate system exhibits singularities at the poles.~%~%float64[9] position_covariance~%~%# If the covariance of the fix is known, fill it in completely. If the~%# GPS receiver provides the variance of each measurement, put them~%# along the diagonal. If only Dilution of Precision is available,~%# estimate an approximate covariance from that.~%~%uint8 COVARIANCE_TYPE_UNKNOWN = 0~%uint8 COVARIANCE_TYPE_APPROXIMATED = 1~%uint8 COVARIANCE_TYPE_DIAGONAL_KNOWN = 2~%uint8 COVARIANCE_TYPE_KNOWN = 3~%~%uint8 position_covariance_type~%~%================================================================================~%MSG: sensor_msgs/NavSatStatus~%# Navigation Satellite fix status for any Global Navigation Satellite System~%~%# Whether to output an augmented fix is determined by both the fix~%# type and the last time differential corrections were received.  A~%# fix is valid when status >= STATUS_FIX.~%~%int8 STATUS_NO_FIX =  -1        # unable to fix position~%int8 STATUS_FIX =      0        # unaugmented fix~%int8 STATUS_SBAS_FIX = 1        # with satellite-based augmentation~%int8 STATUS_GBAS_FIX = 2        # with ground-based augmentation~%~%int8 status~%~%# Bits defining which Global Navigation Satellite System signals were~%# used by the receiver.~%~%uint16 SERVICE_GPS =     1~%uint16 SERVICE_GLONASS = 2~%uint16 SERVICE_COMPASS = 4      # includes BeiDou.~%uint16 SERVICE_GALILEO = 8~%~%uint16 service~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <INSStdMsg>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     1
     4
     4 (cl:length (cl:slot-value msg 'ins_data))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'imu))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'nav_sat_fix))
     8
     8
     8
     8
     8
     8
     8
     8
     8
     8
     4
     8
     8
     8
     8
     8
     1
     1
     1
     1
     1
     1
     4
     4
     4
     4
     8
     8
     8
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <INSStdMsg>))
  "Converts a ROS message object to a list"
  (cl:list 'INSStdMsg
    (cl:cons ':header (header msg))
    (cl:cons ':module_type (module_type msg))
    (cl:cons ':error_code (error_code msg))
    (cl:cons ':ins_data (ins_data msg))
    (cl:cons ':imu (imu msg))
    (cl:cons ':nav_sat_fix (nav_sat_fix msg))
    (cl:cons ':ACC_X (ACC_X msg))
    (cl:cons ':ACC_Y (ACC_Y msg))
    (cl:cons ':ACC_Z (ACC_Z msg))
    (cl:cons ':GYRO_X (GYRO_X msg))
    (cl:cons ':GYRO_Y (GYRO_Y msg))
    (cl:cons ':GYRO_Z (GYRO_Z msg))
    (cl:cons ':INS_PitchAngle (INS_PitchAngle msg))
    (cl:cons ':INS_RollAngle (INS_RollAngle msg))
    (cl:cons ':INS_HeadingAngle (INS_HeadingAngle msg))
    (cl:cons ':INS_LocatHeight (INS_LocatHeight msg))
    (cl:cons ':INS_Time (INS_Time msg))
    (cl:cons ':INS_Latitude (INS_Latitude msg))
    (cl:cons ':INS_Longitude (INS_Longitude msg))
    (cl:cons ':INS_NorthSpd (INS_NorthSpd msg))
    (cl:cons ':INS_EastSpd (INS_EastSpd msg))
    (cl:cons ':INS_ToGroundSpd (INS_ToGroundSpd msg))
    (cl:cons ':INS_GpsFlag_Pos (INS_GpsFlag_Pos msg))
    (cl:cons ':INS_NumSV (INS_NumSV msg))
    (cl:cons ':INS_GpsFlag_Heading (INS_GpsFlag_Heading msg))
    (cl:cons ':INS_Gps_Age (INS_Gps_Age msg))
    (cl:cons ':INS_Car_Status (INS_Car_Status msg))
    (cl:cons ':INS_Status (INS_Status msg))
    (cl:cons ':INS_Std_Lat (INS_Std_Lat msg))
    (cl:cons ':INS_Std_Lon (INS_Std_Lon msg))
    (cl:cons ':INS_Std_LocatHeight (INS_Std_LocatHeight msg))
    (cl:cons ':INS_Std_Heading (INS_Std_Heading msg))
    (cl:cons ':INS_UTM_East (INS_UTM_East msg))
    (cl:cons ':INS_UTM_North (INS_UTM_North msg))
    (cl:cons ':INS_UTM_NorthSpd (INS_UTM_NorthSpd msg))
    (cl:cons ':INS_UTM_EastSpd (INS_UTM_EastSpd msg))
))
