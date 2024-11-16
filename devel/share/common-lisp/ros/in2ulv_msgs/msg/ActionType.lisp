; Auto-generated. Do not edit!


(cl:in-package in2ulv_msgs-msg)


;//! \htmlinclude ActionType.msg.html

(cl:defclass <ActionType> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (mode_type
    :reader mode_type
    :initarg :mode_type
    :type cl:fixnum
    :initform 0)
   (action_type
    :reader action_type
    :initarg :action_type
    :type cl:fixnum
    :initform 0)
   (task_type
    :reader task_type
    :initarg :task_type
    :type cl:fixnum
    :initform 0)
   (target_point
    :reader target_point
    :initarg :target_point
    :type geometry_msgs-msg:Point
    :initform (cl:make-instance 'geometry_msgs-msg:Point))
   (veh_status
    :reader veh_status
    :initarg :veh_status
    :type cl:fixnum
    :initform 0))
)

(cl:defclass ActionType (<ActionType>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ActionType>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ActionType)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name in2ulv_msgs-msg:<ActionType> is deprecated: use in2ulv_msgs-msg:ActionType instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <ActionType>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader in2ulv_msgs-msg:header-val is deprecated.  Use in2ulv_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'mode_type-val :lambda-list '(m))
(cl:defmethod mode_type-val ((m <ActionType>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader in2ulv_msgs-msg:mode_type-val is deprecated.  Use in2ulv_msgs-msg:mode_type instead.")
  (mode_type m))

(cl:ensure-generic-function 'action_type-val :lambda-list '(m))
(cl:defmethod action_type-val ((m <ActionType>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader in2ulv_msgs-msg:action_type-val is deprecated.  Use in2ulv_msgs-msg:action_type instead.")
  (action_type m))

(cl:ensure-generic-function 'task_type-val :lambda-list '(m))
(cl:defmethod task_type-val ((m <ActionType>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader in2ulv_msgs-msg:task_type-val is deprecated.  Use in2ulv_msgs-msg:task_type instead.")
  (task_type m))

(cl:ensure-generic-function 'target_point-val :lambda-list '(m))
(cl:defmethod target_point-val ((m <ActionType>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader in2ulv_msgs-msg:target_point-val is deprecated.  Use in2ulv_msgs-msg:target_point instead.")
  (target_point m))

(cl:ensure-generic-function 'veh_status-val :lambda-list '(m))
(cl:defmethod veh_status-val ((m <ActionType>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader in2ulv_msgs-msg:veh_status-val is deprecated.  Use in2ulv_msgs-msg:veh_status instead.")
  (veh_status m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ActionType>) ostream)
  "Serializes a message object of type '<ActionType>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'mode_type)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'action_type)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'task_type)) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'target_point) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'veh_status)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'veh_status)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ActionType>) istream)
  "Deserializes a message object of type '<ActionType>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'mode_type)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'action_type)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'task_type)) (cl:read-byte istream))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'target_point) istream)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'veh_status)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'veh_status)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ActionType>)))
  "Returns string type for a message object of type '<ActionType>"
  "in2ulv_msgs/ActionType")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ActionType)))
  "Returns string type for a message object of type 'ActionType"
  "in2ulv_msgs/ActionType")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ActionType>)))
  "Returns md5sum for a message object of type '<ActionType>"
  "49541e196c68da7c6efd757fb7bb50aa")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ActionType)))
  "Returns md5sum for a message object of type 'ActionType"
  "49541e196c68da7c6efd757fb7bb50aa")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ActionType>)))
  "Returns full string definition for message of type '<ActionType>"
  (cl:format cl:nil "# 帧头，包含时间戳信息~%std_msgs/Header header~%~%# ULV模式~%uint8 mode_type~%~%# 动作类型~%uint8 action_type~%~%# 线路类型~%uint8 task_type~%~%# 目标点~%geometry_msgs/Point target_point~%~%uint16 veh_status~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ActionType)))
  "Returns full string definition for message of type 'ActionType"
  (cl:format cl:nil "# 帧头，包含时间戳信息~%std_msgs/Header header~%~%# ULV模式~%uint8 mode_type~%~%# 动作类型~%uint8 action_type~%~%# 线路类型~%uint8 task_type~%~%# 目标点~%geometry_msgs/Point target_point~%~%uint16 veh_status~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ActionType>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     1
     1
     1
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'target_point))
     2
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ActionType>))
  "Converts a ROS message object to a list"
  (cl:list 'ActionType
    (cl:cons ':header (header msg))
    (cl:cons ':mode_type (mode_type msg))
    (cl:cons ':action_type (action_type msg))
    (cl:cons ':task_type (task_type msg))
    (cl:cons ':target_point (target_point msg))
    (cl:cons ':veh_status (veh_status msg))
))
