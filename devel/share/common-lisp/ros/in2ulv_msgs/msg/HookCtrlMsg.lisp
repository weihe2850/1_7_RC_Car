; Auto-generated. Do not edit!


(cl:in-package in2ulv_msgs-msg)


;//! \htmlinclude HookCtrlMsg.msg.html

(cl:defclass <HookCtrlMsg> (roslisp-msg-protocol:ros-message)
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
   (AHDModRqst
    :reader AHDModRqst
    :initarg :AHDModRqst
    :type cl:fixnum
    :initform 0)
   (BckUpSts
    :reader BckUpSts
    :initarg :BckUpSts
    :type cl:fixnum
    :initform 0)
   (AHDRstRqst
    :reader AHDRstRqst
    :initarg :AHDRstRqst
    :type cl:fixnum
    :initform 0)
   (AHDPosRqstV
    :reader AHDPosRqstV
    :initarg :AHDPosRqstV
    :type cl:fixnum
    :initform 0)
   (AHDPosRqst
    :reader AHDPosRqst
    :initarg :AHDPosRqst
    :type cl:integer
    :initform 0))
)

(cl:defclass HookCtrlMsg (<HookCtrlMsg>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <HookCtrlMsg>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'HookCtrlMsg)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name in2ulv_msgs-msg:<HookCtrlMsg> is deprecated: use in2ulv_msgs-msg:HookCtrlMsg instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <HookCtrlMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader in2ulv_msgs-msg:header-val is deprecated.  Use in2ulv_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'module_type-val :lambda-list '(m))
(cl:defmethod module_type-val ((m <HookCtrlMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader in2ulv_msgs-msg:module_type-val is deprecated.  Use in2ulv_msgs-msg:module_type instead.")
  (module_type m))

(cl:ensure-generic-function 'error_code-val :lambda-list '(m))
(cl:defmethod error_code-val ((m <HookCtrlMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader in2ulv_msgs-msg:error_code-val is deprecated.  Use in2ulv_msgs-msg:error_code instead.")
  (error_code m))

(cl:ensure-generic-function 'AHDModRqst-val :lambda-list '(m))
(cl:defmethod AHDModRqst-val ((m <HookCtrlMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader in2ulv_msgs-msg:AHDModRqst-val is deprecated.  Use in2ulv_msgs-msg:AHDModRqst instead.")
  (AHDModRqst m))

(cl:ensure-generic-function 'BckUpSts-val :lambda-list '(m))
(cl:defmethod BckUpSts-val ((m <HookCtrlMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader in2ulv_msgs-msg:BckUpSts-val is deprecated.  Use in2ulv_msgs-msg:BckUpSts instead.")
  (BckUpSts m))

(cl:ensure-generic-function 'AHDRstRqst-val :lambda-list '(m))
(cl:defmethod AHDRstRqst-val ((m <HookCtrlMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader in2ulv_msgs-msg:AHDRstRqst-val is deprecated.  Use in2ulv_msgs-msg:AHDRstRqst instead.")
  (AHDRstRqst m))

(cl:ensure-generic-function 'AHDPosRqstV-val :lambda-list '(m))
(cl:defmethod AHDPosRqstV-val ((m <HookCtrlMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader in2ulv_msgs-msg:AHDPosRqstV-val is deprecated.  Use in2ulv_msgs-msg:AHDPosRqstV instead.")
  (AHDPosRqstV m))

(cl:ensure-generic-function 'AHDPosRqst-val :lambda-list '(m))
(cl:defmethod AHDPosRqst-val ((m <HookCtrlMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader in2ulv_msgs-msg:AHDPosRqst-val is deprecated.  Use in2ulv_msgs-msg:AHDPosRqst instead.")
  (AHDPosRqst m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <HookCtrlMsg>) ostream)
  "Serializes a message object of type '<HookCtrlMsg>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'module_type)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'error_code)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'error_code)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'error_code)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'error_code)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'AHDModRqst)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'BckUpSts)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'AHDRstRqst)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'AHDPosRqstV)) ostream)
  (cl:let* ((signed (cl:slot-value msg 'AHDPosRqst)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <HookCtrlMsg>) istream)
  "Deserializes a message object of type '<HookCtrlMsg>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'module_type)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'error_code)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'error_code)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'error_code)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'error_code)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'AHDModRqst)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'BckUpSts)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'AHDRstRqst)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'AHDPosRqstV)) (cl:read-byte istream))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'AHDPosRqst) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<HookCtrlMsg>)))
  "Returns string type for a message object of type '<HookCtrlMsg>"
  "in2ulv_msgs/HookCtrlMsg")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'HookCtrlMsg)))
  "Returns string type for a message object of type 'HookCtrlMsg"
  "in2ulv_msgs/HookCtrlMsg")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<HookCtrlMsg>)))
  "Returns md5sum for a message object of type '<HookCtrlMsg>"
  "9051bf82eb1b0bc832bea74601287bfd")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'HookCtrlMsg)))
  "Returns md5sum for a message object of type 'HookCtrlMsg"
  "9051bf82eb1b0bc832bea74601287bfd")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<HookCtrlMsg>)))
  "Returns full string definition for message of type '<HookCtrlMsg>"
  (cl:format cl:nil "# 帧头，包含时间戳信息~%std_msgs/Header header~%~%# 模块类型~%uint8 module_type~%~%# error_code~%uint32 error_code~%~%# 模块信息~%# IDU Automatic Hook Status 0x31E~%uint8 AHDModRqst    # 自动脱挂钩功能请求~%uint8 BckUpSts      # 倒车状态~%uint8 AHDRstRqst    # 自动脱挂钩重置请求~%uint8 AHDPosRqstV   # 自动脱挂钩位置请求有效性~%int32 AHDPosRqst    # 自动脱挂钩位置请求~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'HookCtrlMsg)))
  "Returns full string definition for message of type 'HookCtrlMsg"
  (cl:format cl:nil "# 帧头，包含时间戳信息~%std_msgs/Header header~%~%# 模块类型~%uint8 module_type~%~%# error_code~%uint32 error_code~%~%# 模块信息~%# IDU Automatic Hook Status 0x31E~%uint8 AHDModRqst    # 自动脱挂钩功能请求~%uint8 BckUpSts      # 倒车状态~%uint8 AHDRstRqst    # 自动脱挂钩重置请求~%uint8 AHDPosRqstV   # 自动脱挂钩位置请求有效性~%int32 AHDPosRqst    # 自动脱挂钩位置请求~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <HookCtrlMsg>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     1
     4
     1
     1
     1
     1
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <HookCtrlMsg>))
  "Converts a ROS message object to a list"
  (cl:list 'HookCtrlMsg
    (cl:cons ':header (header msg))
    (cl:cons ':module_type (module_type msg))
    (cl:cons ':error_code (error_code msg))
    (cl:cons ':AHDModRqst (AHDModRqst msg))
    (cl:cons ':BckUpSts (BckUpSts msg))
    (cl:cons ':AHDRstRqst (AHDRstRqst msg))
    (cl:cons ':AHDPosRqstV (AHDPosRqstV msg))
    (cl:cons ':AHDPosRqst (AHDPosRqst msg))
))
