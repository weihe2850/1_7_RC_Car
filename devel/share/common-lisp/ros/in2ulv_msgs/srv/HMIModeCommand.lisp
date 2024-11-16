; Auto-generated. Do not edit!


(cl:in-package in2ulv_msgs-srv)


;//! \htmlinclude HMIModeCommand-request.msg.html

(cl:defclass <HMIModeCommand-request> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (mode_type
    :reader mode_type
    :initarg :mode_type
    :type cl:fixnum
    :initform 0))
)

(cl:defclass HMIModeCommand-request (<HMIModeCommand-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <HMIModeCommand-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'HMIModeCommand-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name in2ulv_msgs-srv:<HMIModeCommand-request> is deprecated: use in2ulv_msgs-srv:HMIModeCommand-request instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <HMIModeCommand-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader in2ulv_msgs-srv:header-val is deprecated.  Use in2ulv_msgs-srv:header instead.")
  (header m))

(cl:ensure-generic-function 'mode_type-val :lambda-list '(m))
(cl:defmethod mode_type-val ((m <HMIModeCommand-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader in2ulv_msgs-srv:mode_type-val is deprecated.  Use in2ulv_msgs-srv:mode_type instead.")
  (mode_type m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <HMIModeCommand-request>) ostream)
  "Serializes a message object of type '<HMIModeCommand-request>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'mode_type)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <HMIModeCommand-request>) istream)
  "Deserializes a message object of type '<HMIModeCommand-request>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'mode_type)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<HMIModeCommand-request>)))
  "Returns string type for a service object of type '<HMIModeCommand-request>"
  "in2ulv_msgs/HMIModeCommandRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'HMIModeCommand-request)))
  "Returns string type for a service object of type 'HMIModeCommand-request"
  "in2ulv_msgs/HMIModeCommandRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<HMIModeCommand-request>)))
  "Returns md5sum for a message object of type '<HMIModeCommand-request>"
  "faa5d2d67ab17bd67adc93c419a58b77")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'HMIModeCommand-request)))
  "Returns md5sum for a message object of type 'HMIModeCommand-request"
  "faa5d2d67ab17bd67adc93c419a58b77")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<HMIModeCommand-request>)))
  "Returns full string definition for message of type '<HMIModeCommand-request>"
  (cl:format cl:nil "# 帧头，包含时间戳信息~%std_msgs/Header header~%~%# 模式设置~%uint8 mode_type~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'HMIModeCommand-request)))
  "Returns full string definition for message of type 'HMIModeCommand-request"
  (cl:format cl:nil "# 帧头，包含时间戳信息~%std_msgs/Header header~%~%# 模式设置~%uint8 mode_type~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <HMIModeCommand-request>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <HMIModeCommand-request>))
  "Converts a ROS message object to a list"
  (cl:list 'HMIModeCommand-request
    (cl:cons ':header (header msg))
    (cl:cons ':mode_type (mode_type msg))
))
;//! \htmlinclude HMIModeCommand-response.msg.html

(cl:defclass <HMIModeCommand-response> (roslisp-msg-protocol:ros-message)
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

(cl:defclass HMIModeCommand-response (<HMIModeCommand-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <HMIModeCommand-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'HMIModeCommand-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name in2ulv_msgs-srv:<HMIModeCommand-response> is deprecated: use in2ulv_msgs-srv:HMIModeCommand-response instead.")))

(cl:ensure-generic-function 'receive_status-val :lambda-list '(m))
(cl:defmethod receive_status-val ((m <HMIModeCommand-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader in2ulv_msgs-srv:receive_status-val is deprecated.  Use in2ulv_msgs-srv:receive_status instead.")
  (receive_status m))

(cl:ensure-generic-function 'receive_info-val :lambda-list '(m))
(cl:defmethod receive_info-val ((m <HMIModeCommand-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader in2ulv_msgs-srv:receive_info-val is deprecated.  Use in2ulv_msgs-srv:receive_info instead.")
  (receive_info m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <HMIModeCommand-response>) ostream)
  "Serializes a message object of type '<HMIModeCommand-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'receive_status) 1 0)) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'receive_info))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'receive_info))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <HMIModeCommand-response>) istream)
  "Deserializes a message object of type '<HMIModeCommand-response>"
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<HMIModeCommand-response>)))
  "Returns string type for a service object of type '<HMIModeCommand-response>"
  "in2ulv_msgs/HMIModeCommandResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'HMIModeCommand-response)))
  "Returns string type for a service object of type 'HMIModeCommand-response"
  "in2ulv_msgs/HMIModeCommandResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<HMIModeCommand-response>)))
  "Returns md5sum for a message object of type '<HMIModeCommand-response>"
  "faa5d2d67ab17bd67adc93c419a58b77")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'HMIModeCommand-response)))
  "Returns md5sum for a message object of type 'HMIModeCommand-response"
  "faa5d2d67ab17bd67adc93c419a58b77")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<HMIModeCommand-response>)))
  "Returns full string definition for message of type '<HMIModeCommand-response>"
  (cl:format cl:nil "# 指令接收状态~%bool receive_status~%~%# 指令接收信息~%string receive_info~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'HMIModeCommand-response)))
  "Returns full string definition for message of type 'HMIModeCommand-response"
  (cl:format cl:nil "# 指令接收状态~%bool receive_status~%~%# 指令接收信息~%string receive_info~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <HMIModeCommand-response>))
  (cl:+ 0
     1
     4 (cl:length (cl:slot-value msg 'receive_info))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <HMIModeCommand-response>))
  "Converts a ROS message object to a list"
  (cl:list 'HMIModeCommand-response
    (cl:cons ':receive_status (receive_status msg))
    (cl:cons ':receive_info (receive_info msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'HMIModeCommand)))
  'HMIModeCommand-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'HMIModeCommand)))
  'HMIModeCommand-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'HMIModeCommand)))
  "Returns string type for a service object of type '<HMIModeCommand>"
  "in2ulv_msgs/HMIModeCommand")