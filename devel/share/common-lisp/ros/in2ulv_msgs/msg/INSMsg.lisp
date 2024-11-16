; Auto-generated. Do not edit!


(cl:in-package in2ulv_msgs-msg)


;//! \htmlinclude INSMsg.msg.html

(cl:defclass <INSMsg> (roslisp-msg-protocol:ros-message)
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
   (ACC_X
    :reader ACC_X
    :initarg :ACC_X
    :type cl:fixnum
    :initform 0)
   (ACC_Y
    :reader ACC_Y
    :initarg :ACC_Y
    :type cl:fixnum
    :initform 0)
   (ACC_Z
    :reader ACC_Z
    :initarg :ACC_Z
    :type cl:fixnum
    :initform 0)
   (GYRO_X
    :reader GYRO_X
    :initarg :GYRO_X
    :type cl:fixnum
    :initform 0)
   (GYRO_Y
    :reader GYRO_Y
    :initarg :GYRO_Y
    :type cl:fixnum
    :initform 0)
   (GYRO_Z
    :reader GYRO_Z
    :initarg :GYRO_Z
    :type cl:fixnum
    :initform 0)
   (INS_PitchAngle
    :reader INS_PitchAngle
    :initarg :INS_PitchAngle
    :type cl:fixnum
    :initform 0)
   (INS_RollAngle
    :reader INS_RollAngle
    :initarg :INS_RollAngle
    :type cl:fixnum
    :initform 0)
   (INS_HeadingAngle
    :reader INS_HeadingAngle
    :initarg :INS_HeadingAngle
    :type cl:fixnum
    :initform 0)
   (INS_LocatHeight
    :reader INS_LocatHeight
    :initarg :INS_LocatHeight
    :type cl:integer
    :initform 0)
   (INS_Time
    :reader INS_Time
    :initarg :INS_Time
    :type cl:integer
    :initform 0)
   (INS_Latitude
    :reader INS_Latitude
    :initarg :INS_Latitude
    :type cl:integer
    :initform 0)
   (INS_Longitude
    :reader INS_Longitude
    :initarg :INS_Longitude
    :type cl:integer
    :initform 0)
   (INS_NorthSpd
    :reader INS_NorthSpd
    :initarg :INS_NorthSpd
    :type cl:fixnum
    :initform 0)
   (INS_EastSpd
    :reader INS_EastSpd
    :initarg :INS_EastSpd
    :type cl:fixnum
    :initform 0)
   (INS_ToGroundSpd
    :reader INS_ToGroundSpd
    :initarg :INS_ToGroundSpd
    :type cl:fixnum
    :initform 0)
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
    :type cl:fixnum
    :initform 0)
   (INS_Std_Lon
    :reader INS_Std_Lon
    :initarg :INS_Std_Lon
    :type cl:fixnum
    :initform 0)
   (INS_Std_LocatHeight
    :reader INS_Std_LocatHeight
    :initarg :INS_Std_LocatHeight
    :type cl:fixnum
    :initform 0)
   (INS_Std_Heading
    :reader INS_Std_Heading
    :initarg :INS_Std_Heading
    :type cl:fixnum
    :initform 0))
)

(cl:defclass INSMsg (<INSMsg>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <INSMsg>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'INSMsg)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name in2ulv_msgs-msg:<INSMsg> is deprecated: use in2ulv_msgs-msg:INSMsg instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <INSMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader in2ulv_msgs-msg:header-val is deprecated.  Use in2ulv_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'module_type-val :lambda-list '(m))
(cl:defmethod module_type-val ((m <INSMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader in2ulv_msgs-msg:module_type-val is deprecated.  Use in2ulv_msgs-msg:module_type instead.")
  (module_type m))

(cl:ensure-generic-function 'error_code-val :lambda-list '(m))
(cl:defmethod error_code-val ((m <INSMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader in2ulv_msgs-msg:error_code-val is deprecated.  Use in2ulv_msgs-msg:error_code instead.")
  (error_code m))

(cl:ensure-generic-function 'ins_data-val :lambda-list '(m))
(cl:defmethod ins_data-val ((m <INSMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader in2ulv_msgs-msg:ins_data-val is deprecated.  Use in2ulv_msgs-msg:ins_data instead.")
  (ins_data m))

(cl:ensure-generic-function 'ACC_X-val :lambda-list '(m))
(cl:defmethod ACC_X-val ((m <INSMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader in2ulv_msgs-msg:ACC_X-val is deprecated.  Use in2ulv_msgs-msg:ACC_X instead.")
  (ACC_X m))

(cl:ensure-generic-function 'ACC_Y-val :lambda-list '(m))
(cl:defmethod ACC_Y-val ((m <INSMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader in2ulv_msgs-msg:ACC_Y-val is deprecated.  Use in2ulv_msgs-msg:ACC_Y instead.")
  (ACC_Y m))

(cl:ensure-generic-function 'ACC_Z-val :lambda-list '(m))
(cl:defmethod ACC_Z-val ((m <INSMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader in2ulv_msgs-msg:ACC_Z-val is deprecated.  Use in2ulv_msgs-msg:ACC_Z instead.")
  (ACC_Z m))

(cl:ensure-generic-function 'GYRO_X-val :lambda-list '(m))
(cl:defmethod GYRO_X-val ((m <INSMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader in2ulv_msgs-msg:GYRO_X-val is deprecated.  Use in2ulv_msgs-msg:GYRO_X instead.")
  (GYRO_X m))

(cl:ensure-generic-function 'GYRO_Y-val :lambda-list '(m))
(cl:defmethod GYRO_Y-val ((m <INSMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader in2ulv_msgs-msg:GYRO_Y-val is deprecated.  Use in2ulv_msgs-msg:GYRO_Y instead.")
  (GYRO_Y m))

(cl:ensure-generic-function 'GYRO_Z-val :lambda-list '(m))
(cl:defmethod GYRO_Z-val ((m <INSMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader in2ulv_msgs-msg:GYRO_Z-val is deprecated.  Use in2ulv_msgs-msg:GYRO_Z instead.")
  (GYRO_Z m))

(cl:ensure-generic-function 'INS_PitchAngle-val :lambda-list '(m))
(cl:defmethod INS_PitchAngle-val ((m <INSMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader in2ulv_msgs-msg:INS_PitchAngle-val is deprecated.  Use in2ulv_msgs-msg:INS_PitchAngle instead.")
  (INS_PitchAngle m))

(cl:ensure-generic-function 'INS_RollAngle-val :lambda-list '(m))
(cl:defmethod INS_RollAngle-val ((m <INSMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader in2ulv_msgs-msg:INS_RollAngle-val is deprecated.  Use in2ulv_msgs-msg:INS_RollAngle instead.")
  (INS_RollAngle m))

(cl:ensure-generic-function 'INS_HeadingAngle-val :lambda-list '(m))
(cl:defmethod INS_HeadingAngle-val ((m <INSMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader in2ulv_msgs-msg:INS_HeadingAngle-val is deprecated.  Use in2ulv_msgs-msg:INS_HeadingAngle instead.")
  (INS_HeadingAngle m))

(cl:ensure-generic-function 'INS_LocatHeight-val :lambda-list '(m))
(cl:defmethod INS_LocatHeight-val ((m <INSMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader in2ulv_msgs-msg:INS_LocatHeight-val is deprecated.  Use in2ulv_msgs-msg:INS_LocatHeight instead.")
  (INS_LocatHeight m))

(cl:ensure-generic-function 'INS_Time-val :lambda-list '(m))
(cl:defmethod INS_Time-val ((m <INSMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader in2ulv_msgs-msg:INS_Time-val is deprecated.  Use in2ulv_msgs-msg:INS_Time instead.")
  (INS_Time m))

(cl:ensure-generic-function 'INS_Latitude-val :lambda-list '(m))
(cl:defmethod INS_Latitude-val ((m <INSMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader in2ulv_msgs-msg:INS_Latitude-val is deprecated.  Use in2ulv_msgs-msg:INS_Latitude instead.")
  (INS_Latitude m))

(cl:ensure-generic-function 'INS_Longitude-val :lambda-list '(m))
(cl:defmethod INS_Longitude-val ((m <INSMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader in2ulv_msgs-msg:INS_Longitude-val is deprecated.  Use in2ulv_msgs-msg:INS_Longitude instead.")
  (INS_Longitude m))

(cl:ensure-generic-function 'INS_NorthSpd-val :lambda-list '(m))
(cl:defmethod INS_NorthSpd-val ((m <INSMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader in2ulv_msgs-msg:INS_NorthSpd-val is deprecated.  Use in2ulv_msgs-msg:INS_NorthSpd instead.")
  (INS_NorthSpd m))

(cl:ensure-generic-function 'INS_EastSpd-val :lambda-list '(m))
(cl:defmethod INS_EastSpd-val ((m <INSMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader in2ulv_msgs-msg:INS_EastSpd-val is deprecated.  Use in2ulv_msgs-msg:INS_EastSpd instead.")
  (INS_EastSpd m))

(cl:ensure-generic-function 'INS_ToGroundSpd-val :lambda-list '(m))
(cl:defmethod INS_ToGroundSpd-val ((m <INSMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader in2ulv_msgs-msg:INS_ToGroundSpd-val is deprecated.  Use in2ulv_msgs-msg:INS_ToGroundSpd instead.")
  (INS_ToGroundSpd m))

(cl:ensure-generic-function 'INS_GpsFlag_Pos-val :lambda-list '(m))
(cl:defmethod INS_GpsFlag_Pos-val ((m <INSMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader in2ulv_msgs-msg:INS_GpsFlag_Pos-val is deprecated.  Use in2ulv_msgs-msg:INS_GpsFlag_Pos instead.")
  (INS_GpsFlag_Pos m))

(cl:ensure-generic-function 'INS_NumSV-val :lambda-list '(m))
(cl:defmethod INS_NumSV-val ((m <INSMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader in2ulv_msgs-msg:INS_NumSV-val is deprecated.  Use in2ulv_msgs-msg:INS_NumSV instead.")
  (INS_NumSV m))

(cl:ensure-generic-function 'INS_GpsFlag_Heading-val :lambda-list '(m))
(cl:defmethod INS_GpsFlag_Heading-val ((m <INSMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader in2ulv_msgs-msg:INS_GpsFlag_Heading-val is deprecated.  Use in2ulv_msgs-msg:INS_GpsFlag_Heading instead.")
  (INS_GpsFlag_Heading m))

(cl:ensure-generic-function 'INS_Gps_Age-val :lambda-list '(m))
(cl:defmethod INS_Gps_Age-val ((m <INSMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader in2ulv_msgs-msg:INS_Gps_Age-val is deprecated.  Use in2ulv_msgs-msg:INS_Gps_Age instead.")
  (INS_Gps_Age m))

(cl:ensure-generic-function 'INS_Car_Status-val :lambda-list '(m))
(cl:defmethod INS_Car_Status-val ((m <INSMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader in2ulv_msgs-msg:INS_Car_Status-val is deprecated.  Use in2ulv_msgs-msg:INS_Car_Status instead.")
  (INS_Car_Status m))

(cl:ensure-generic-function 'INS_Status-val :lambda-list '(m))
(cl:defmethod INS_Status-val ((m <INSMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader in2ulv_msgs-msg:INS_Status-val is deprecated.  Use in2ulv_msgs-msg:INS_Status instead.")
  (INS_Status m))

(cl:ensure-generic-function 'INS_Std_Lat-val :lambda-list '(m))
(cl:defmethod INS_Std_Lat-val ((m <INSMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader in2ulv_msgs-msg:INS_Std_Lat-val is deprecated.  Use in2ulv_msgs-msg:INS_Std_Lat instead.")
  (INS_Std_Lat m))

(cl:ensure-generic-function 'INS_Std_Lon-val :lambda-list '(m))
(cl:defmethod INS_Std_Lon-val ((m <INSMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader in2ulv_msgs-msg:INS_Std_Lon-val is deprecated.  Use in2ulv_msgs-msg:INS_Std_Lon instead.")
  (INS_Std_Lon m))

(cl:ensure-generic-function 'INS_Std_LocatHeight-val :lambda-list '(m))
(cl:defmethod INS_Std_LocatHeight-val ((m <INSMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader in2ulv_msgs-msg:INS_Std_LocatHeight-val is deprecated.  Use in2ulv_msgs-msg:INS_Std_LocatHeight instead.")
  (INS_Std_LocatHeight m))

(cl:ensure-generic-function 'INS_Std_Heading-val :lambda-list '(m))
(cl:defmethod INS_Std_Heading-val ((m <INSMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader in2ulv_msgs-msg:INS_Std_Heading-val is deprecated.  Use in2ulv_msgs-msg:INS_Std_Heading instead.")
  (INS_Std_Heading m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <INSMsg>) ostream)
  "Serializes a message object of type '<INSMsg>"
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
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'ACC_X)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'ACC_X)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'ACC_Y)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'ACC_Y)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'ACC_Z)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'ACC_Z)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'GYRO_X)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'GYRO_X)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'GYRO_Y)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'GYRO_Y)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'GYRO_Z)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'GYRO_Z)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'INS_PitchAngle)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'INS_PitchAngle)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'INS_RollAngle)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'INS_RollAngle)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'INS_HeadingAngle)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'INS_HeadingAngle)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'INS_LocatHeight)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'INS_LocatHeight)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'INS_LocatHeight)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'INS_LocatHeight)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'INS_Time)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'INS_Time)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'INS_Time)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'INS_Time)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'INS_Latitude)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'INS_Latitude)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'INS_Latitude)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'INS_Latitude)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'INS_Longitude)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'INS_Longitude)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'INS_Longitude)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'INS_Longitude)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'INS_NorthSpd)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'INS_NorthSpd)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'INS_EastSpd)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'INS_EastSpd)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'INS_ToGroundSpd)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'INS_ToGroundSpd)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'INS_GpsFlag_Pos)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'INS_NumSV)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'INS_GpsFlag_Heading)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'INS_Gps_Age)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'INS_Car_Status)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'INS_Status)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'INS_Std_Lat)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'INS_Std_Lat)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'INS_Std_Lon)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'INS_Std_Lon)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'INS_Std_LocatHeight)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'INS_Std_LocatHeight)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'INS_Std_Heading)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'INS_Std_Heading)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <INSMsg>) istream)
  "Deserializes a message object of type '<INSMsg>"
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
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'ACC_X)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'ACC_X)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'ACC_Y)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'ACC_Y)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'ACC_Z)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'ACC_Z)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'GYRO_X)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'GYRO_X)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'GYRO_Y)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'GYRO_Y)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'GYRO_Z)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'GYRO_Z)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'INS_PitchAngle)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'INS_PitchAngle)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'INS_RollAngle)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'INS_RollAngle)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'INS_HeadingAngle)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'INS_HeadingAngle)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'INS_LocatHeight)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'INS_LocatHeight)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'INS_LocatHeight)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'INS_LocatHeight)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'INS_Time)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'INS_Time)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'INS_Time)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'INS_Time)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'INS_Latitude)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'INS_Latitude)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'INS_Latitude)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'INS_Latitude)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'INS_Longitude)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'INS_Longitude)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'INS_Longitude)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'INS_Longitude)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'INS_NorthSpd)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'INS_NorthSpd)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'INS_EastSpd)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'INS_EastSpd)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'INS_ToGroundSpd)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'INS_ToGroundSpd)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'INS_GpsFlag_Pos)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'INS_NumSV)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'INS_GpsFlag_Heading)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'INS_Gps_Age)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'INS_Car_Status)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'INS_Status)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'INS_Std_Lat)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'INS_Std_Lat)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'INS_Std_Lon)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'INS_Std_Lon)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'INS_Std_LocatHeight)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'INS_Std_LocatHeight)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'INS_Std_Heading)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'INS_Std_Heading)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<INSMsg>)))
  "Returns string type for a message object of type '<INSMsg>"
  "in2ulv_msgs/INSMsg")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'INSMsg)))
  "Returns string type for a message object of type 'INSMsg"
  "in2ulv_msgs/INSMsg")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<INSMsg>)))
  "Returns md5sum for a message object of type '<INSMsg>"
  "7becfa5a7d632c7c67b72fd6b667376f")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'INSMsg)))
  "Returns md5sum for a message object of type 'INSMsg"
  "7becfa5a7d632c7c67b72fd6b667376f")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<INSMsg>)))
  "Returns full string definition for message of type '<INSMsg>"
  (cl:format cl:nil "# 帧头，包含时间戳信息~%std_msgs/Header header~%~%# 模块类型~%uint8 module_type~%~%# error_code~%uint32 error_code~%~%# 模块信息~%string ins_data~%~%# INS_Acc (0X500)~%uint16 ACC_X~%uint16 ACC_Y~%uint16 ACC_Z~%~%# INS_GYRO (0X501)~%uint16 GYRO_X~%uint16 GYRO_Y~%uint16 GYRO_Z~%~%# INS_HeadingPitchRoll (0X502)~%uint16 INS_PitchAngle~%uint16 INS_RollAngle~%uint16 INS_HeadingAngle~%~%# INS_HeightAndTime (0X503)~%uint32 INS_LocatHeight~%uint32 INS_Time~%~%# INS_LatitudeLongitude (0X504)~%uint32 INS_Latitude~%uint32 INS_Longitude~%~%# INS_Speed (0X505)~%uint16 INS_NorthSpd~%uint16 INS_EastSpd~%uint16 INS_ToGroundSpd~%~%# INS_DataInfo (0X506)~%uint8 INS_GpsFlag_Pos~%uint8 INS_NumSV     #星数~%uint8 INS_GpsFlag_Heading~%uint8 INS_Gps_Age~%uint8 INS_Car_Status~%uint8 INS_Status~%~%# INS_Std (0X507)~%uint16 INS_Std_Lat~%uint16 INS_Std_Lon~%uint16 INS_Std_LocatHeight~%uint16 INS_Std_Heading~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'INSMsg)))
  "Returns full string definition for message of type 'INSMsg"
  (cl:format cl:nil "# 帧头，包含时间戳信息~%std_msgs/Header header~%~%# 模块类型~%uint8 module_type~%~%# error_code~%uint32 error_code~%~%# 模块信息~%string ins_data~%~%# INS_Acc (0X500)~%uint16 ACC_X~%uint16 ACC_Y~%uint16 ACC_Z~%~%# INS_GYRO (0X501)~%uint16 GYRO_X~%uint16 GYRO_Y~%uint16 GYRO_Z~%~%# INS_HeadingPitchRoll (0X502)~%uint16 INS_PitchAngle~%uint16 INS_RollAngle~%uint16 INS_HeadingAngle~%~%# INS_HeightAndTime (0X503)~%uint32 INS_LocatHeight~%uint32 INS_Time~%~%# INS_LatitudeLongitude (0X504)~%uint32 INS_Latitude~%uint32 INS_Longitude~%~%# INS_Speed (0X505)~%uint16 INS_NorthSpd~%uint16 INS_EastSpd~%uint16 INS_ToGroundSpd~%~%# INS_DataInfo (0X506)~%uint8 INS_GpsFlag_Pos~%uint8 INS_NumSV     #星数~%uint8 INS_GpsFlag_Heading~%uint8 INS_Gps_Age~%uint8 INS_Car_Status~%uint8 INS_Status~%~%# INS_Std (0X507)~%uint16 INS_Std_Lat~%uint16 INS_Std_Lon~%uint16 INS_Std_LocatHeight~%uint16 INS_Std_Heading~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <INSMsg>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     1
     4
     4 (cl:length (cl:slot-value msg 'ins_data))
     2
     2
     2
     2
     2
     2
     2
     2
     2
     4
     4
     4
     4
     2
     2
     2
     1
     1
     1
     1
     1
     1
     2
     2
     2
     2
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <INSMsg>))
  "Converts a ROS message object to a list"
  (cl:list 'INSMsg
    (cl:cons ':header (header msg))
    (cl:cons ':module_type (module_type msg))
    (cl:cons ':error_code (error_code msg))
    (cl:cons ':ins_data (ins_data msg))
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
))
