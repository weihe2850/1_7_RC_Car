; Auto-generated. Do not edit!


(cl:in-package in2ulv_msgs-msg)


;//! \htmlinclude UCURequestMsg.msg.html

(cl:defclass <UCURequestMsg> (roslisp-msg-protocol:ros-message)
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
   (ucu_validity
    :reader ucu_validity
    :initarg :ucu_validity
    :type cl:boolean
    :initform cl:nil)
   (route_encoder
    :reader route_encoder
    :initarg :route_encoder
    :type cl:string
    :initform "")
   (Version
    :reader Version
    :initarg :Version
    :type cl:fixnum
    :initform 0)
   (Province
    :reader Province
    :initarg :Province
    :type cl:fixnum
    :initform 0)
   (City
    :reader City
    :initarg :City
    :type cl:fixnum
    :initform 0)
   (District
    :reader District
    :initarg :District
    :type cl:fixnum
    :initform 0)
   (Street
    :reader Street
    :initarg :Street
    :type cl:fixnum
    :initform 0)
   (Community
    :reader Community
    :initarg :Community
    :type cl:fixnum
    :initform 0)
   (FeatureRequest
    :reader FeatureRequest
    :initarg :FeatureRequest
    :type cl:fixnum
    :initform 0)
   (CarHeading
    :reader CarHeading
    :initarg :CarHeading
    :type cl:fixnum
    :initform 0)
   (XXType
    :reader XXType
    :initarg :XXType
    :type cl:fixnum
    :initform 0)
   (MapNumber
    :reader MapNumber
    :initarg :MapNumber
    :type cl:fixnum
    :initform 0)
   (StationNumber
    :reader StationNumber
    :initarg :StationNumber
    :type cl:fixnum
    :initform 0)
   (RemoteCtrlCommand
    :reader RemoteCtrlCommand
    :initarg :RemoteCtrlCommand
    :type cl:fixnum
    :initform 0))
)

(cl:defclass UCURequestMsg (<UCURequestMsg>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <UCURequestMsg>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'UCURequestMsg)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name in2ulv_msgs-msg:<UCURequestMsg> is deprecated: use in2ulv_msgs-msg:UCURequestMsg instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <UCURequestMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader in2ulv_msgs-msg:header-val is deprecated.  Use in2ulv_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'module_type-val :lambda-list '(m))
(cl:defmethod module_type-val ((m <UCURequestMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader in2ulv_msgs-msg:module_type-val is deprecated.  Use in2ulv_msgs-msg:module_type instead.")
  (module_type m))

(cl:ensure-generic-function 'error_code-val :lambda-list '(m))
(cl:defmethod error_code-val ((m <UCURequestMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader in2ulv_msgs-msg:error_code-val is deprecated.  Use in2ulv_msgs-msg:error_code instead.")
  (error_code m))

(cl:ensure-generic-function 'ucu_validity-val :lambda-list '(m))
(cl:defmethod ucu_validity-val ((m <UCURequestMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader in2ulv_msgs-msg:ucu_validity-val is deprecated.  Use in2ulv_msgs-msg:ucu_validity instead.")
  (ucu_validity m))

(cl:ensure-generic-function 'route_encoder-val :lambda-list '(m))
(cl:defmethod route_encoder-val ((m <UCURequestMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader in2ulv_msgs-msg:route_encoder-val is deprecated.  Use in2ulv_msgs-msg:route_encoder instead.")
  (route_encoder m))

(cl:ensure-generic-function 'Version-val :lambda-list '(m))
(cl:defmethod Version-val ((m <UCURequestMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader in2ulv_msgs-msg:Version-val is deprecated.  Use in2ulv_msgs-msg:Version instead.")
  (Version m))

(cl:ensure-generic-function 'Province-val :lambda-list '(m))
(cl:defmethod Province-val ((m <UCURequestMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader in2ulv_msgs-msg:Province-val is deprecated.  Use in2ulv_msgs-msg:Province instead.")
  (Province m))

(cl:ensure-generic-function 'City-val :lambda-list '(m))
(cl:defmethod City-val ((m <UCURequestMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader in2ulv_msgs-msg:City-val is deprecated.  Use in2ulv_msgs-msg:City instead.")
  (City m))

(cl:ensure-generic-function 'District-val :lambda-list '(m))
(cl:defmethod District-val ((m <UCURequestMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader in2ulv_msgs-msg:District-val is deprecated.  Use in2ulv_msgs-msg:District instead.")
  (District m))

(cl:ensure-generic-function 'Street-val :lambda-list '(m))
(cl:defmethod Street-val ((m <UCURequestMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader in2ulv_msgs-msg:Street-val is deprecated.  Use in2ulv_msgs-msg:Street instead.")
  (Street m))

(cl:ensure-generic-function 'Community-val :lambda-list '(m))
(cl:defmethod Community-val ((m <UCURequestMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader in2ulv_msgs-msg:Community-val is deprecated.  Use in2ulv_msgs-msg:Community instead.")
  (Community m))

(cl:ensure-generic-function 'FeatureRequest-val :lambda-list '(m))
(cl:defmethod FeatureRequest-val ((m <UCURequestMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader in2ulv_msgs-msg:FeatureRequest-val is deprecated.  Use in2ulv_msgs-msg:FeatureRequest instead.")
  (FeatureRequest m))

(cl:ensure-generic-function 'CarHeading-val :lambda-list '(m))
(cl:defmethod CarHeading-val ((m <UCURequestMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader in2ulv_msgs-msg:CarHeading-val is deprecated.  Use in2ulv_msgs-msg:CarHeading instead.")
  (CarHeading m))

(cl:ensure-generic-function 'XXType-val :lambda-list '(m))
(cl:defmethod XXType-val ((m <UCURequestMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader in2ulv_msgs-msg:XXType-val is deprecated.  Use in2ulv_msgs-msg:XXType instead.")
  (XXType m))

(cl:ensure-generic-function 'MapNumber-val :lambda-list '(m))
(cl:defmethod MapNumber-val ((m <UCURequestMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader in2ulv_msgs-msg:MapNumber-val is deprecated.  Use in2ulv_msgs-msg:MapNumber instead.")
  (MapNumber m))

(cl:ensure-generic-function 'StationNumber-val :lambda-list '(m))
(cl:defmethod StationNumber-val ((m <UCURequestMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader in2ulv_msgs-msg:StationNumber-val is deprecated.  Use in2ulv_msgs-msg:StationNumber instead.")
  (StationNumber m))

(cl:ensure-generic-function 'RemoteCtrlCommand-val :lambda-list '(m))
(cl:defmethod RemoteCtrlCommand-val ((m <UCURequestMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader in2ulv_msgs-msg:RemoteCtrlCommand-val is deprecated.  Use in2ulv_msgs-msg:RemoteCtrlCommand instead.")
  (RemoteCtrlCommand m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <UCURequestMsg>) ostream)
  "Serializes a message object of type '<UCURequestMsg>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'module_type)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'error_code)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'error_code)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'error_code)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'error_code)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'ucu_validity) 1 0)) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'route_encoder))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'route_encoder))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'Version)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'Province)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'City)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'District)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'Street)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'Community)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'FeatureRequest)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'CarHeading)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'XXType)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'MapNumber)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'MapNumber)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'StationNumber)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'RemoteCtrlCommand)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <UCURequestMsg>) istream)
  "Deserializes a message object of type '<UCURequestMsg>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'module_type)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'error_code)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'error_code)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'error_code)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'error_code)) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'ucu_validity) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'route_encoder) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'route_encoder) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'Version)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'Province)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'City)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'District)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'Street)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'Community)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'FeatureRequest)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'CarHeading)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'XXType)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'MapNumber)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'MapNumber)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'StationNumber)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'RemoteCtrlCommand)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<UCURequestMsg>)))
  "Returns string type for a message object of type '<UCURequestMsg>"
  "in2ulv_msgs/UCURequestMsg")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'UCURequestMsg)))
  "Returns string type for a message object of type 'UCURequestMsg"
  "in2ulv_msgs/UCURequestMsg")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<UCURequestMsg>)))
  "Returns md5sum for a message object of type '<UCURequestMsg>"
  "d0e6d4647b85f9842b9c69090dff73da")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'UCURequestMsg)))
  "Returns md5sum for a message object of type 'UCURequestMsg"
  "d0e6d4647b85f9842b9c69090dff73da")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<UCURequestMsg>)))
  "Returns full string definition for message of type '<UCURequestMsg>"
  (cl:format cl:nil "# UCU_Requestment_message_4 (0x53E)~%~%# 帧头，包含时间戳信息~%std_msgs/Header header~%# 模块类型~%uint8 module_type~%~%# error_code~%uint32 error_code~%~%# UCU数据有效性~%bool ucu_validity~%string route_encoder~%~%# 版本号~%uint8 Version~%# 地区信息：省份、城市、区县、街道、校区~%uint8 Province~%uint8 City~%uint8 District~%uint8 Street~%uint8 Community~%# 功能请求~%uint8 FeatureRequest~%# 车头朝向~%uint8 CarHeading~%# 类型~%uint8 XXType~%# 地图编号~%uint16 MapNumber~%# 站点编号~%uint8 StationNumber~%# 远程控制命令~%uint8 RemoteCtrlCommand~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'UCURequestMsg)))
  "Returns full string definition for message of type 'UCURequestMsg"
  (cl:format cl:nil "# UCU_Requestment_message_4 (0x53E)~%~%# 帧头，包含时间戳信息~%std_msgs/Header header~%# 模块类型~%uint8 module_type~%~%# error_code~%uint32 error_code~%~%# UCU数据有效性~%bool ucu_validity~%string route_encoder~%~%# 版本号~%uint8 Version~%# 地区信息：省份、城市、区县、街道、校区~%uint8 Province~%uint8 City~%uint8 District~%uint8 Street~%uint8 Community~%# 功能请求~%uint8 FeatureRequest~%# 车头朝向~%uint8 CarHeading~%# 类型~%uint8 XXType~%# 地图编号~%uint16 MapNumber~%# 站点编号~%uint8 StationNumber~%# 远程控制命令~%uint8 RemoteCtrlCommand~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <UCURequestMsg>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     1
     4
     1
     4 (cl:length (cl:slot-value msg 'route_encoder))
     1
     1
     1
     1
     1
     1
     1
     1
     1
     2
     1
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <UCURequestMsg>))
  "Converts a ROS message object to a list"
  (cl:list 'UCURequestMsg
    (cl:cons ':header (header msg))
    (cl:cons ':module_type (module_type msg))
    (cl:cons ':error_code (error_code msg))
    (cl:cons ':ucu_validity (ucu_validity msg))
    (cl:cons ':route_encoder (route_encoder msg))
    (cl:cons ':Version (Version msg))
    (cl:cons ':Province (Province msg))
    (cl:cons ':City (City msg))
    (cl:cons ':District (District msg))
    (cl:cons ':Street (Street msg))
    (cl:cons ':Community (Community msg))
    (cl:cons ':FeatureRequest (FeatureRequest msg))
    (cl:cons ':CarHeading (CarHeading msg))
    (cl:cons ':XXType (XXType msg))
    (cl:cons ':MapNumber (MapNumber msg))
    (cl:cons ':StationNumber (StationNumber msg))
    (cl:cons ':RemoteCtrlCommand (RemoteCtrlCommand msg))
))
