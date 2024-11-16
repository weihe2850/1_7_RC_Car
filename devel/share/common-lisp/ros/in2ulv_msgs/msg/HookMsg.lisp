; Auto-generated. Do not edit!


(cl:in-package in2ulv_msgs-msg)


;//! \htmlinclude HookMsg.msg.html

(cl:defclass <HookMsg> (roslisp-msg-protocol:ros-message)
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
   (AHDCortSts
    :reader AHDCortSts
    :initarg :AHDCortSts
    :type cl:fixnum
    :initform 0)
   (HokPosVal
    :reader HokPosVal
    :initarg :HokPosVal
    :type cl:integer
    :initform 0)
   (HokCntpintSts
    :reader HokCntpintSts
    :initarg :HokCntpintSts
    :type cl:fixnum
    :initform 0)
   (HokCntSts
    :reader HokCntSts
    :initarg :HokCntSts
    :type cl:fixnum
    :initform 0)
   (HokRstSts
    :reader HokRstSts
    :initarg :HokRstSts
    :type cl:fixnum
    :initform 0))
)

(cl:defclass HookMsg (<HookMsg>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <HookMsg>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'HookMsg)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name in2ulv_msgs-msg:<HookMsg> is deprecated: use in2ulv_msgs-msg:HookMsg instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <HookMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader in2ulv_msgs-msg:header-val is deprecated.  Use in2ulv_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'module_type-val :lambda-list '(m))
(cl:defmethod module_type-val ((m <HookMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader in2ulv_msgs-msg:module_type-val is deprecated.  Use in2ulv_msgs-msg:module_type instead.")
  (module_type m))

(cl:ensure-generic-function 'error_code-val :lambda-list '(m))
(cl:defmethod error_code-val ((m <HookMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader in2ulv_msgs-msg:error_code-val is deprecated.  Use in2ulv_msgs-msg:error_code instead.")
  (error_code m))

(cl:ensure-generic-function 'AHDCortSts-val :lambda-list '(m))
(cl:defmethod AHDCortSts-val ((m <HookMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader in2ulv_msgs-msg:AHDCortSts-val is deprecated.  Use in2ulv_msgs-msg:AHDCortSts instead.")
  (AHDCortSts m))

(cl:ensure-generic-function 'HokPosVal-val :lambda-list '(m))
(cl:defmethod HokPosVal-val ((m <HookMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader in2ulv_msgs-msg:HokPosVal-val is deprecated.  Use in2ulv_msgs-msg:HokPosVal instead.")
  (HokPosVal m))

(cl:ensure-generic-function 'HokCntpintSts-val :lambda-list '(m))
(cl:defmethod HokCntpintSts-val ((m <HookMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader in2ulv_msgs-msg:HokCntpintSts-val is deprecated.  Use in2ulv_msgs-msg:HokCntpintSts instead.")
  (HokCntpintSts m))

(cl:ensure-generic-function 'HokCntSts-val :lambda-list '(m))
(cl:defmethod HokCntSts-val ((m <HookMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader in2ulv_msgs-msg:HokCntSts-val is deprecated.  Use in2ulv_msgs-msg:HokCntSts instead.")
  (HokCntSts m))

(cl:ensure-generic-function 'HokRstSts-val :lambda-list '(m))
(cl:defmethod HokRstSts-val ((m <HookMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader in2ulv_msgs-msg:HokRstSts-val is deprecated.  Use in2ulv_msgs-msg:HokRstSts instead.")
  (HokRstSts m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <HookMsg>) ostream)
  "Serializes a message object of type '<HookMsg>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'module_type)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'error_code)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'error_code)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'error_code)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'error_code)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'AHDCortSts)) ostream)
  (cl:let* ((signed (cl:slot-value msg 'HokPosVal)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'HokCntpintSts)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'HokCntSts)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'HokRstSts)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <HookMsg>) istream)
  "Deserializes a message object of type '<HookMsg>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'module_type)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'error_code)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'error_code)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'error_code)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'error_code)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'AHDCortSts)) (cl:read-byte istream))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'HokPosVal) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'HokCntpintSts)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'HokCntSts)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'HokRstSts)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<HookMsg>)))
  "Returns string type for a message object of type '<HookMsg>"
  "in2ulv_msgs/HookMsg")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'HookMsg)))
  "Returns string type for a message object of type 'HookMsg"
  "in2ulv_msgs/HookMsg")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<HookMsg>)))
  "Returns md5sum for a message object of type '<HookMsg>"
  "e5d852e0489802c930a6ca6cba9f4263")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'HookMsg)))
  "Returns md5sum for a message object of type 'HookMsg"
  "e5d852e0489802c930a6ca6cba9f4263")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<HookMsg>)))
  "Returns full string definition for message of type '<HookMsg>"
  (cl:format cl:nil "# 帧头，包含时间戳信息~%std_msgs/Header header~%~%# 模块类型~%uint8 module_type~%~%# error_code~%uint32 error_code~%~%# 模块信息~%# AHD General Status 0x340~%uint8 AHDCortSts    # 自动脱挂钩纠偏状态~%int32 HokPosVal     # 挂钩位置~%uint8 HokCntpintSts # 挂钩对位状态~%uint8 HokCntSts     # 挂钩连接状态~%uint8 HokRstSts     # 挂钩复位状态~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'HookMsg)))
  "Returns full string definition for message of type 'HookMsg"
  (cl:format cl:nil "# 帧头，包含时间戳信息~%std_msgs/Header header~%~%# 模块类型~%uint8 module_type~%~%# error_code~%uint32 error_code~%~%# 模块信息~%# AHD General Status 0x340~%uint8 AHDCortSts    # 自动脱挂钩纠偏状态~%int32 HokPosVal     # 挂钩位置~%uint8 HokCntpintSts # 挂钩对位状态~%uint8 HokCntSts     # 挂钩连接状态~%uint8 HokRstSts     # 挂钩复位状态~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <HookMsg>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     1
     4
     1
     4
     1
     1
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <HookMsg>))
  "Converts a ROS message object to a list"
  (cl:list 'HookMsg
    (cl:cons ':header (header msg))
    (cl:cons ':module_type (module_type msg))
    (cl:cons ':error_code (error_code msg))
    (cl:cons ':AHDCortSts (AHDCortSts msg))
    (cl:cons ':HokPosVal (HokPosVal msg))
    (cl:cons ':HokCntpintSts (HokCntpintSts msg))
    (cl:cons ':HokCntSts (HokCntSts msg))
    (cl:cons ':HokRstSts (HokRstSts msg))
))
