; Auto-generated. Do not edit!


(cl:in-package in2ulv_msgs-msg)


;//! \htmlinclude HookPosition.msg.html

(cl:defclass <HookPosition> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (position_flag
    :reader position_flag
    :initarg :position_flag
    :type cl:fixnum
    :initform 0)
   (hook_position
    :reader hook_position
    :initarg :hook_position
    :type cl:float
    :initform 0.0)
   (hook_offset
    :reader hook_offset
    :initarg :hook_offset
    :type cl:fixnum
    :initform 0))
)

(cl:defclass HookPosition (<HookPosition>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <HookPosition>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'HookPosition)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name in2ulv_msgs-msg:<HookPosition> is deprecated: use in2ulv_msgs-msg:HookPosition instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <HookPosition>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader in2ulv_msgs-msg:header-val is deprecated.  Use in2ulv_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'position_flag-val :lambda-list '(m))
(cl:defmethod position_flag-val ((m <HookPosition>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader in2ulv_msgs-msg:position_flag-val is deprecated.  Use in2ulv_msgs-msg:position_flag instead.")
  (position_flag m))

(cl:ensure-generic-function 'hook_position-val :lambda-list '(m))
(cl:defmethod hook_position-val ((m <HookPosition>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader in2ulv_msgs-msg:hook_position-val is deprecated.  Use in2ulv_msgs-msg:hook_position instead.")
  (hook_position m))

(cl:ensure-generic-function 'hook_offset-val :lambda-list '(m))
(cl:defmethod hook_offset-val ((m <HookPosition>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader in2ulv_msgs-msg:hook_offset-val is deprecated.  Use in2ulv_msgs-msg:hook_offset instead.")
  (hook_offset m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <HookPosition>) ostream)
  "Serializes a message object of type '<HookPosition>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'position_flag)) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'hook_position))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let* ((signed (cl:slot-value msg 'hook_offset)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <HookPosition>) istream)
  "Deserializes a message object of type '<HookPosition>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'position_flag)) (cl:read-byte istream))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'hook_position) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'hook_offset) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<HookPosition>)))
  "Returns string type for a message object of type '<HookPosition>"
  "in2ulv_msgs/HookPosition")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'HookPosition)))
  "Returns string type for a message object of type 'HookPosition"
  "in2ulv_msgs/HookPosition")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<HookPosition>)))
  "Returns md5sum for a message object of type '<HookPosition>"
  "d2da94a5865fbfe6adbdd32d2335a6b5")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'HookPosition)))
  "Returns md5sum for a message object of type 'HookPosition"
  "d2da94a5865fbfe6adbdd32d2335a6b5")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<HookPosition>)))
  "Returns full string definition for message of type '<HookPosition>"
  (cl:format cl:nil "std_msgs/Header header~%~%uint8 position_flag~%~%# 挂钩位置（cm）~%float32 hook_position~%~%# 挂钩纠偏值（-300 ~~ 300 mm）~%int16 hook_offset~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'HookPosition)))
  "Returns full string definition for message of type 'HookPosition"
  (cl:format cl:nil "std_msgs/Header header~%~%uint8 position_flag~%~%# 挂钩位置（cm）~%float32 hook_position~%~%# 挂钩纠偏值（-300 ~~ 300 mm）~%int16 hook_offset~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <HookPosition>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     1
     4
     2
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <HookPosition>))
  "Converts a ROS message object to a list"
  (cl:list 'HookPosition
    (cl:cons ':header (header msg))
    (cl:cons ':position_flag (position_flag msg))
    (cl:cons ':hook_position (hook_position msg))
    (cl:cons ':hook_offset (hook_offset msg))
))
