; Auto-generated. Do not edit!


(cl:in-package in2ulv_msgs-msg)


;//! \htmlinclude IOButtonMsg.msg.html

(cl:defclass <IOButtonMsg> (roslisp-msg-protocol:ros-message)
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
   (io_validity
    :reader io_validity
    :initarg :io_validity
    :type cl:boolean
    :initform cl:nil)
   (button_stop
    :reader button_stop
    :initarg :button_stop
    :type cl:fixnum
    :initform 0)
   (button_a
    :reader button_a
    :initarg :button_a
    :type cl:fixnum
    :initform 0)
   (button_b
    :reader button_b
    :initarg :button_b
    :type cl:fixnum
    :initform 0)
   (button_c
    :reader button_c
    :initarg :button_c
    :type cl:fixnum
    :initform 0))
)

(cl:defclass IOButtonMsg (<IOButtonMsg>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <IOButtonMsg>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'IOButtonMsg)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name in2ulv_msgs-msg:<IOButtonMsg> is deprecated: use in2ulv_msgs-msg:IOButtonMsg instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <IOButtonMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader in2ulv_msgs-msg:header-val is deprecated.  Use in2ulv_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'module_type-val :lambda-list '(m))
(cl:defmethod module_type-val ((m <IOButtonMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader in2ulv_msgs-msg:module_type-val is deprecated.  Use in2ulv_msgs-msg:module_type instead.")
  (module_type m))

(cl:ensure-generic-function 'error_code-val :lambda-list '(m))
(cl:defmethod error_code-val ((m <IOButtonMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader in2ulv_msgs-msg:error_code-val is deprecated.  Use in2ulv_msgs-msg:error_code instead.")
  (error_code m))

(cl:ensure-generic-function 'io_validity-val :lambda-list '(m))
(cl:defmethod io_validity-val ((m <IOButtonMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader in2ulv_msgs-msg:io_validity-val is deprecated.  Use in2ulv_msgs-msg:io_validity instead.")
  (io_validity m))

(cl:ensure-generic-function 'button_stop-val :lambda-list '(m))
(cl:defmethod button_stop-val ((m <IOButtonMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader in2ulv_msgs-msg:button_stop-val is deprecated.  Use in2ulv_msgs-msg:button_stop instead.")
  (button_stop m))

(cl:ensure-generic-function 'button_a-val :lambda-list '(m))
(cl:defmethod button_a-val ((m <IOButtonMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader in2ulv_msgs-msg:button_a-val is deprecated.  Use in2ulv_msgs-msg:button_a instead.")
  (button_a m))

(cl:ensure-generic-function 'button_b-val :lambda-list '(m))
(cl:defmethod button_b-val ((m <IOButtonMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader in2ulv_msgs-msg:button_b-val is deprecated.  Use in2ulv_msgs-msg:button_b instead.")
  (button_b m))

(cl:ensure-generic-function 'button_c-val :lambda-list '(m))
(cl:defmethod button_c-val ((m <IOButtonMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader in2ulv_msgs-msg:button_c-val is deprecated.  Use in2ulv_msgs-msg:button_c instead.")
  (button_c m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <IOButtonMsg>) ostream)
  "Serializes a message object of type '<IOButtonMsg>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'module_type)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'error_code)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'error_code)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'error_code)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'error_code)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'io_validity) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'button_stop)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'button_a)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'button_b)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'button_c)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <IOButtonMsg>) istream)
  "Deserializes a message object of type '<IOButtonMsg>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'module_type)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'error_code)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'error_code)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'error_code)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'error_code)) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'io_validity) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'button_stop)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'button_a)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'button_b)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'button_c)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<IOButtonMsg>)))
  "Returns string type for a message object of type '<IOButtonMsg>"
  "in2ulv_msgs/IOButtonMsg")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'IOButtonMsg)))
  "Returns string type for a message object of type 'IOButtonMsg"
  "in2ulv_msgs/IOButtonMsg")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<IOButtonMsg>)))
  "Returns md5sum for a message object of type '<IOButtonMsg>"
  "157d5ffbca87ffa114dc6db487e4338a")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'IOButtonMsg)))
  "Returns md5sum for a message object of type 'IOButtonMsg"
  "157d5ffbca87ffa114dc6db487e4338a")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<IOButtonMsg>)))
  "Returns full string definition for message of type '<IOButtonMsg>"
  (cl:format cl:nil "# 帧头，包含时间戳信息~%std_msgs/Header header~%~%# 模块类型~%uint8 module_type~%~%# error_code~%uint32 error_code~%~%# 总线IO模块数据有效性：IO模块默认关闭，需要程序启动连接否则数据无效(0)~%bool io_validity~%~%# 按钮: var > 0 表示激活 var = 0 表示未激活~%uint8 button_stop~%uint8 button_a~%uint8 button_b~%uint8 button_c~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'IOButtonMsg)))
  "Returns full string definition for message of type 'IOButtonMsg"
  (cl:format cl:nil "# 帧头，包含时间戳信息~%std_msgs/Header header~%~%# 模块类型~%uint8 module_type~%~%# error_code~%uint32 error_code~%~%# 总线IO模块数据有效性：IO模块默认关闭，需要程序启动连接否则数据无效(0)~%bool io_validity~%~%# 按钮: var > 0 表示激活 var = 0 表示未激活~%uint8 button_stop~%uint8 button_a~%uint8 button_b~%uint8 button_c~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <IOButtonMsg>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     1
     4
     1
     1
     1
     1
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <IOButtonMsg>))
  "Converts a ROS message object to a list"
  (cl:list 'IOButtonMsg
    (cl:cons ':header (header msg))
    (cl:cons ':module_type (module_type msg))
    (cl:cons ':error_code (error_code msg))
    (cl:cons ':io_validity (io_validity msg))
    (cl:cons ':button_stop (button_stop msg))
    (cl:cons ':button_a (button_a msg))
    (cl:cons ':button_b (button_b msg))
    (cl:cons ':button_c (button_c msg))
))
