; Auto-generated. Do not edit!


(cl:in-package in2ulv_msgs-msg)


;//! \htmlinclude ControlResult.msg.html

(cl:defclass <ControlResult> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (steer
    :reader steer
    :initarg :steer
    :type cl:float
    :initform 0.0)
   (brake
    :reader brake
    :initarg :brake
    :type cl:float
    :initform 0.0)
   (if_brake
    :reader if_brake
    :initarg :if_brake
    :type cl:boolean
    :initform cl:nil)
   (speed_control
    :reader speed_control
    :initarg :speed_control
    :type cl:float
    :initform 0.0)
   (if_speed
    :reader if_speed
    :initarg :if_speed
    :type cl:boolean
    :initform cl:nil)
   (acceleration_control
    :reader acceleration_control
    :initarg :acceleration_control
    :type cl:float
    :initform 0.0)
   (if_acceleration
    :reader if_acceleration
    :initarg :if_acceleration
    :type cl:boolean
    :initform cl:nil)
   (is_left_lighting
    :reader is_left_lighting
    :initarg :is_left_lighting
    :type cl:boolean
    :initform cl:nil)
   (is_right_lighting
    :reader is_right_lighting
    :initarg :is_right_lighting
    :type cl:boolean
    :initform cl:nil)
   (is_hook_close
    :reader is_hook_close
    :initarg :is_hook_close
    :type cl:boolean
    :initform cl:nil)
   (hook_position
    :reader hook_position
    :initarg :hook_position
    :type cl:float
    :initform 0.0)
   (gear_info
    :reader gear_info
    :initarg :gear_info
    :type cl:fixnum
    :initform 0)
   (speed_limit
    :reader speed_limit
    :initarg :speed_limit
    :type cl:float
    :initform 0.0)
   (speed_out
    :reader speed_out
    :initarg :speed_out
    :type cl:float
    :initform 0.0))
)

(cl:defclass ControlResult (<ControlResult>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ControlResult>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ControlResult)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name in2ulv_msgs-msg:<ControlResult> is deprecated: use in2ulv_msgs-msg:ControlResult instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <ControlResult>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader in2ulv_msgs-msg:header-val is deprecated.  Use in2ulv_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'steer-val :lambda-list '(m))
(cl:defmethod steer-val ((m <ControlResult>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader in2ulv_msgs-msg:steer-val is deprecated.  Use in2ulv_msgs-msg:steer instead.")
  (steer m))

(cl:ensure-generic-function 'brake-val :lambda-list '(m))
(cl:defmethod brake-val ((m <ControlResult>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader in2ulv_msgs-msg:brake-val is deprecated.  Use in2ulv_msgs-msg:brake instead.")
  (brake m))

(cl:ensure-generic-function 'if_brake-val :lambda-list '(m))
(cl:defmethod if_brake-val ((m <ControlResult>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader in2ulv_msgs-msg:if_brake-val is deprecated.  Use in2ulv_msgs-msg:if_brake instead.")
  (if_brake m))

(cl:ensure-generic-function 'speed_control-val :lambda-list '(m))
(cl:defmethod speed_control-val ((m <ControlResult>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader in2ulv_msgs-msg:speed_control-val is deprecated.  Use in2ulv_msgs-msg:speed_control instead.")
  (speed_control m))

(cl:ensure-generic-function 'if_speed-val :lambda-list '(m))
(cl:defmethod if_speed-val ((m <ControlResult>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader in2ulv_msgs-msg:if_speed-val is deprecated.  Use in2ulv_msgs-msg:if_speed instead.")
  (if_speed m))

(cl:ensure-generic-function 'acceleration_control-val :lambda-list '(m))
(cl:defmethod acceleration_control-val ((m <ControlResult>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader in2ulv_msgs-msg:acceleration_control-val is deprecated.  Use in2ulv_msgs-msg:acceleration_control instead.")
  (acceleration_control m))

(cl:ensure-generic-function 'if_acceleration-val :lambda-list '(m))
(cl:defmethod if_acceleration-val ((m <ControlResult>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader in2ulv_msgs-msg:if_acceleration-val is deprecated.  Use in2ulv_msgs-msg:if_acceleration instead.")
  (if_acceleration m))

(cl:ensure-generic-function 'is_left_lighting-val :lambda-list '(m))
(cl:defmethod is_left_lighting-val ((m <ControlResult>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader in2ulv_msgs-msg:is_left_lighting-val is deprecated.  Use in2ulv_msgs-msg:is_left_lighting instead.")
  (is_left_lighting m))

(cl:ensure-generic-function 'is_right_lighting-val :lambda-list '(m))
(cl:defmethod is_right_lighting-val ((m <ControlResult>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader in2ulv_msgs-msg:is_right_lighting-val is deprecated.  Use in2ulv_msgs-msg:is_right_lighting instead.")
  (is_right_lighting m))

(cl:ensure-generic-function 'is_hook_close-val :lambda-list '(m))
(cl:defmethod is_hook_close-val ((m <ControlResult>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader in2ulv_msgs-msg:is_hook_close-val is deprecated.  Use in2ulv_msgs-msg:is_hook_close instead.")
  (is_hook_close m))

(cl:ensure-generic-function 'hook_position-val :lambda-list '(m))
(cl:defmethod hook_position-val ((m <ControlResult>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader in2ulv_msgs-msg:hook_position-val is deprecated.  Use in2ulv_msgs-msg:hook_position instead.")
  (hook_position m))

(cl:ensure-generic-function 'gear_info-val :lambda-list '(m))
(cl:defmethod gear_info-val ((m <ControlResult>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader in2ulv_msgs-msg:gear_info-val is deprecated.  Use in2ulv_msgs-msg:gear_info instead.")
  (gear_info m))

(cl:ensure-generic-function 'speed_limit-val :lambda-list '(m))
(cl:defmethod speed_limit-val ((m <ControlResult>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader in2ulv_msgs-msg:speed_limit-val is deprecated.  Use in2ulv_msgs-msg:speed_limit instead.")
  (speed_limit m))

(cl:ensure-generic-function 'speed_out-val :lambda-list '(m))
(cl:defmethod speed_out-val ((m <ControlResult>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader in2ulv_msgs-msg:speed_out-val is deprecated.  Use in2ulv_msgs-msg:speed_out instead.")
  (speed_out m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ControlResult>) ostream)
  "Serializes a message object of type '<ControlResult>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'steer))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'brake))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'if_brake) 1 0)) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'speed_control))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'if_speed) 1 0)) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'acceleration_control))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'if_acceleration) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'is_left_lighting) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'is_right_lighting) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'is_hook_close) 1 0)) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'hook_position))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'gear_info)) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'speed_limit))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'speed_out))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ControlResult>) istream)
  "Deserializes a message object of type '<ControlResult>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'steer) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'brake) (roslisp-utils:decode-single-float-bits bits)))
    (cl:setf (cl:slot-value msg 'if_brake) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'speed_control) (roslisp-utils:decode-single-float-bits bits)))
    (cl:setf (cl:slot-value msg 'if_speed) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'acceleration_control) (roslisp-utils:decode-single-float-bits bits)))
    (cl:setf (cl:slot-value msg 'if_acceleration) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'is_left_lighting) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'is_right_lighting) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'is_hook_close) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'hook_position) (roslisp-utils:decode-single-float-bits bits)))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'gear_info)) (cl:read-byte istream))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'speed_limit) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'speed_out) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ControlResult>)))
  "Returns string type for a message object of type '<ControlResult>"
  "in2ulv_msgs/ControlResult")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ControlResult)))
  "Returns string type for a message object of type 'ControlResult"
  "in2ulv_msgs/ControlResult")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ControlResult>)))
  "Returns md5sum for a message object of type '<ControlResult>"
  "d0ea0e1d317647aa9e9251fc4a618a52")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ControlResult)))
  "Returns md5sum for a message object of type 'ControlResult"
  "d0ea0e1d317647aa9e9251fc4a618a52")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ControlResult>)))
  "Returns full string definition for message of type '<ControlResult>"
  (cl:format cl:nil "std_msgs/Header header~%~%#方向盘打角   -50 ———— +50   左正右负   -720~~720~%float32 steer   ~%~%#油门       0 ———— +100  ~%# float32 throttle~%~%# 刹车 0-100.0~%float32 brake~%bool if_brake~%~%# 控速~%float32 speed_control~%bool if_speed~%~%# 控加速度~%float32 acceleration_control~%bool if_acceleration~%~%# 左车灯~%bool is_left_lighting~%~%# 右车灯~%bool is_right_lighting~%~%# 挂钩锁紧~%bool is_hook_close~%~%# 挂钩位置~%float32 hook_position~%~%# 档位~%uint8 gear_info~%~%# pmx - debug~%float32 speed_limit~%float32 speed_out~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ControlResult)))
  "Returns full string definition for message of type 'ControlResult"
  (cl:format cl:nil "std_msgs/Header header~%~%#方向盘打角   -50 ———— +50   左正右负   -720~~720~%float32 steer   ~%~%#油门       0 ———— +100  ~%# float32 throttle~%~%# 刹车 0-100.0~%float32 brake~%bool if_brake~%~%# 控速~%float32 speed_control~%bool if_speed~%~%# 控加速度~%float32 acceleration_control~%bool if_acceleration~%~%# 左车灯~%bool is_left_lighting~%~%# 右车灯~%bool is_right_lighting~%~%# 挂钩锁紧~%bool is_hook_close~%~%# 挂钩位置~%float32 hook_position~%~%# 档位~%uint8 gear_info~%~%# pmx - debug~%float32 speed_limit~%float32 speed_out~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ControlResult>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4
     4
     1
     4
     1
     4
     1
     1
     1
     1
     4
     1
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ControlResult>))
  "Converts a ROS message object to a list"
  (cl:list 'ControlResult
    (cl:cons ':header (header msg))
    (cl:cons ':steer (steer msg))
    (cl:cons ':brake (brake msg))
    (cl:cons ':if_brake (if_brake msg))
    (cl:cons ':speed_control (speed_control msg))
    (cl:cons ':if_speed (if_speed msg))
    (cl:cons ':acceleration_control (acceleration_control msg))
    (cl:cons ':if_acceleration (if_acceleration msg))
    (cl:cons ':is_left_lighting (is_left_lighting msg))
    (cl:cons ':is_right_lighting (is_right_lighting msg))
    (cl:cons ':is_hook_close (is_hook_close msg))
    (cl:cons ':hook_position (hook_position msg))
    (cl:cons ':gear_info (gear_info msg))
    (cl:cons ':speed_limit (speed_limit msg))
    (cl:cons ':speed_out (speed_out msg))
))
