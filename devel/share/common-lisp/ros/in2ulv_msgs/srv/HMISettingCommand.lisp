; Auto-generated. Do not edit!


(cl:in-package in2ulv_msgs-srv)


;//! \htmlinclude HMISettingCommand-request.msg.html

(cl:defclass <HMISettingCommand-request> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (hmi_command_list
    :reader hmi_command_list
    :initarg :hmi_command_list
    :type (cl:vector cl:fixnum)
   :initform (cl:make-array 0 :element-type 'cl:fixnum :initial-element 0))
   (target_point_list
    :reader target_point_list
    :initarg :target_point_list
    :type (cl:vector geometry_msgs-msg:Point)
   :initform (cl:make-array 0 :element-type 'geometry_msgs-msg:Point :initial-element (cl:make-instance 'geometry_msgs-msg:Point)))
   (station_id_list
    :reader station_id_list
    :initarg :station_id_list
    :type (cl:vector cl:integer)
   :initform (cl:make-array 0 :element-type 'cl:integer :initial-element 0)))
)

(cl:defclass HMISettingCommand-request (<HMISettingCommand-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <HMISettingCommand-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'HMISettingCommand-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name in2ulv_msgs-srv:<HMISettingCommand-request> is deprecated: use in2ulv_msgs-srv:HMISettingCommand-request instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <HMISettingCommand-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader in2ulv_msgs-srv:header-val is deprecated.  Use in2ulv_msgs-srv:header instead.")
  (header m))

(cl:ensure-generic-function 'hmi_command_list-val :lambda-list '(m))
(cl:defmethod hmi_command_list-val ((m <HMISettingCommand-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader in2ulv_msgs-srv:hmi_command_list-val is deprecated.  Use in2ulv_msgs-srv:hmi_command_list instead.")
  (hmi_command_list m))

(cl:ensure-generic-function 'target_point_list-val :lambda-list '(m))
(cl:defmethod target_point_list-val ((m <HMISettingCommand-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader in2ulv_msgs-srv:target_point_list-val is deprecated.  Use in2ulv_msgs-srv:target_point_list instead.")
  (target_point_list m))

(cl:ensure-generic-function 'station_id_list-val :lambda-list '(m))
(cl:defmethod station_id_list-val ((m <HMISettingCommand-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader in2ulv_msgs-srv:station_id_list-val is deprecated.  Use in2ulv_msgs-srv:station_id_list instead.")
  (station_id_list m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <HMISettingCommand-request>) ostream)
  "Serializes a message object of type '<HMISettingCommand-request>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'hmi_command_list))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:write-byte (cl:ldb (cl:byte 8 0) ele) ostream))
   (cl:slot-value msg 'hmi_command_list))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'target_point_list))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'target_point_list))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'station_id_list))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:write-byte (cl:ldb (cl:byte 8 0) ele) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) ele) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) ele) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) ele) ostream))
   (cl:slot-value msg 'station_id_list))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <HMISettingCommand-request>) istream)
  "Deserializes a message object of type '<HMISettingCommand-request>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'hmi_command_list) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'hmi_command_list)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:aref vals i)) (cl:read-byte istream)))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'target_point_list) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'target_point_list)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'geometry_msgs-msg:Point))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'station_id_list) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'station_id_list)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:aref vals i)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:aref vals i)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:aref vals i)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:aref vals i)) (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<HMISettingCommand-request>)))
  "Returns string type for a service object of type '<HMISettingCommand-request>"
  "in2ulv_msgs/HMISettingCommandRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'HMISettingCommand-request)))
  "Returns string type for a service object of type 'HMISettingCommand-request"
  "in2ulv_msgs/HMISettingCommandRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<HMISettingCommand-request>)))
  "Returns md5sum for a message object of type '<HMISettingCommand-request>"
  "77df7fba1f2ff481f39b2e6000b80ae0")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'HMISettingCommand-request)))
  "Returns md5sum for a message object of type 'HMISettingCommand-request"
  "77df7fba1f2ff481f39b2e6000b80ae0")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<HMISettingCommand-request>)))
  "Returns full string definition for message of type '<HMISettingCommand-request>"
  (cl:format cl:nil "# 帧头，包含时间戳信息~%std_msgs/Header header~%~%# 指令类型序列~%uint8[] hmi_command_list~%~%# 目标点序列~%# 注意长度和 hmi_command_list 中的 HEAD_FOR_GOAL 任务数量匹配~%geometry_msgs/Point[] target_point_list~%~%# station id~%# 注意和 target_point_list 长度一致~%uint32[] station_id_list~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'HMISettingCommand-request)))
  "Returns full string definition for message of type 'HMISettingCommand-request"
  (cl:format cl:nil "# 帧头，包含时间戳信息~%std_msgs/Header header~%~%# 指令类型序列~%uint8[] hmi_command_list~%~%# 目标点序列~%# 注意长度和 hmi_command_list 中的 HEAD_FOR_GOAL 任务数量匹配~%geometry_msgs/Point[] target_point_list~%~%# station id~%# 注意和 target_point_list 长度一致~%uint32[] station_id_list~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <HMISettingCommand-request>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'hmi_command_list) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 1)))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'target_point_list) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'station_id_list) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <HMISettingCommand-request>))
  "Converts a ROS message object to a list"
  (cl:list 'HMISettingCommand-request
    (cl:cons ':header (header msg))
    (cl:cons ':hmi_command_list (hmi_command_list msg))
    (cl:cons ':target_point_list (target_point_list msg))
    (cl:cons ':station_id_list (station_id_list msg))
))
;//! \htmlinclude HMISettingCommand-response.msg.html

(cl:defclass <HMISettingCommand-response> (roslisp-msg-protocol:ros-message)
  ((receive_status
    :reader receive_status
    :initarg :receive_status
    :type cl:boolean
    :initform cl:nil)
   (receive_info
    :reader receive_info
    :initarg :receive_info
    :type cl:string
    :initform ""))
)

(cl:defclass HMISettingCommand-response (<HMISettingCommand-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <HMISettingCommand-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'HMISettingCommand-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name in2ulv_msgs-srv:<HMISettingCommand-response> is deprecated: use in2ulv_msgs-srv:HMISettingCommand-response instead.")))

(cl:ensure-generic-function 'receive_status-val :lambda-list '(m))
(cl:defmethod receive_status-val ((m <HMISettingCommand-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader in2ulv_msgs-srv:receive_status-val is deprecated.  Use in2ulv_msgs-srv:receive_status instead.")
  (receive_status m))

(cl:ensure-generic-function 'receive_info-val :lambda-list '(m))
(cl:defmethod receive_info-val ((m <HMISettingCommand-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader in2ulv_msgs-srv:receive_info-val is deprecated.  Use in2ulv_msgs-srv:receive_info instead.")
  (receive_info m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <HMISettingCommand-response>) ostream)
  "Serializes a message object of type '<HMISettingCommand-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'receive_status) 1 0)) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'receive_info))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'receive_info))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <HMISettingCommand-response>) istream)
  "Deserializes a message object of type '<HMISettingCommand-response>"
    (cl:setf (cl:slot-value msg 'receive_status) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'receive_info) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'receive_info) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<HMISettingCommand-response>)))
  "Returns string type for a service object of type '<HMISettingCommand-response>"
  "in2ulv_msgs/HMISettingCommandResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'HMISettingCommand-response)))
  "Returns string type for a service object of type 'HMISettingCommand-response"
  "in2ulv_msgs/HMISettingCommandResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<HMISettingCommand-response>)))
  "Returns md5sum for a message object of type '<HMISettingCommand-response>"
  "77df7fba1f2ff481f39b2e6000b80ae0")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'HMISettingCommand-response)))
  "Returns md5sum for a message object of type 'HMISettingCommand-response"
  "77df7fba1f2ff481f39b2e6000b80ae0")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<HMISettingCommand-response>)))
  "Returns full string definition for message of type '<HMISettingCommand-response>"
  (cl:format cl:nil "# 指令接收状态~%bool receive_status~%~%# 指令接收信息~%string receive_info~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'HMISettingCommand-response)))
  "Returns full string definition for message of type 'HMISettingCommand-response"
  (cl:format cl:nil "# 指令接收状态~%bool receive_status~%~%# 指令接收信息~%string receive_info~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <HMISettingCommand-response>))
  (cl:+ 0
     1
     4 (cl:length (cl:slot-value msg 'receive_info))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <HMISettingCommand-response>))
  "Converts a ROS message object to a list"
  (cl:list 'HMISettingCommand-response
    (cl:cons ':receive_status (receive_status msg))
    (cl:cons ':receive_info (receive_info msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'HMISettingCommand)))
  'HMISettingCommand-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'HMISettingCommand)))
  'HMISettingCommand-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'HMISettingCommand)))
  "Returns string type for a service object of type '<HMISettingCommand>"
  "in2ulv_msgs/HMISettingCommand")