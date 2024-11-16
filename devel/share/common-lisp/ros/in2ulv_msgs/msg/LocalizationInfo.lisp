; Auto-generated. Do not edit!


(cl:in-package in2ulv_msgs-msg)


;//! \htmlinclude LocalizationInfo.msg.html

(cl:defclass <LocalizationInfo> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (position
    :reader position
    :initarg :position
    :type geometry_msgs-msg:Vector3
    :initform (cl:make-instance 'geometry_msgs-msg:Vector3))
   (attitude
    :reader attitude
    :initarg :attitude
    :type geometry_msgs-msg:Vector3
    :initform (cl:make-instance 'geometry_msgs-msg:Vector3))
   (linear_velocity
    :reader linear_velocity
    :initarg :linear_velocity
    :type geometry_msgs-msg:Vector3
    :initform (cl:make-instance 'geometry_msgs-msg:Vector3))
   (angular_velocity
    :reader angular_velocity
    :initarg :angular_velocity
    :type geometry_msgs-msg:Vector3
    :initform (cl:make-instance 'geometry_msgs-msg:Vector3))
   (linear_acceleration
    :reader linear_acceleration
    :initarg :linear_acceleration
    :type geometry_msgs-msg:Vector3
    :initform (cl:make-instance 'geometry_msgs-msg:Vector3)))
)

(cl:defclass LocalizationInfo (<LocalizationInfo>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <LocalizationInfo>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'LocalizationInfo)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name in2ulv_msgs-msg:<LocalizationInfo> is deprecated: use in2ulv_msgs-msg:LocalizationInfo instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <LocalizationInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader in2ulv_msgs-msg:header-val is deprecated.  Use in2ulv_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'position-val :lambda-list '(m))
(cl:defmethod position-val ((m <LocalizationInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader in2ulv_msgs-msg:position-val is deprecated.  Use in2ulv_msgs-msg:position instead.")
  (position m))

(cl:ensure-generic-function 'attitude-val :lambda-list '(m))
(cl:defmethod attitude-val ((m <LocalizationInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader in2ulv_msgs-msg:attitude-val is deprecated.  Use in2ulv_msgs-msg:attitude instead.")
  (attitude m))

(cl:ensure-generic-function 'linear_velocity-val :lambda-list '(m))
(cl:defmethod linear_velocity-val ((m <LocalizationInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader in2ulv_msgs-msg:linear_velocity-val is deprecated.  Use in2ulv_msgs-msg:linear_velocity instead.")
  (linear_velocity m))

(cl:ensure-generic-function 'angular_velocity-val :lambda-list '(m))
(cl:defmethod angular_velocity-val ((m <LocalizationInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader in2ulv_msgs-msg:angular_velocity-val is deprecated.  Use in2ulv_msgs-msg:angular_velocity instead.")
  (angular_velocity m))

(cl:ensure-generic-function 'linear_acceleration-val :lambda-list '(m))
(cl:defmethod linear_acceleration-val ((m <LocalizationInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader in2ulv_msgs-msg:linear_acceleration-val is deprecated.  Use in2ulv_msgs-msg:linear_acceleration instead.")
  (linear_acceleration m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <LocalizationInfo>) ostream)
  "Serializes a message object of type '<LocalizationInfo>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'position) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'attitude) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'linear_velocity) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'angular_velocity) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'linear_acceleration) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <LocalizationInfo>) istream)
  "Deserializes a message object of type '<LocalizationInfo>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'position) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'attitude) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'linear_velocity) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'angular_velocity) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'linear_acceleration) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<LocalizationInfo>)))
  "Returns string type for a message object of type '<LocalizationInfo>"
  "in2ulv_msgs/LocalizationInfo")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'LocalizationInfo)))
  "Returns string type for a message object of type 'LocalizationInfo"
  "in2ulv_msgs/LocalizationInfo")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<LocalizationInfo>)))
  "Returns md5sum for a message object of type '<LocalizationInfo>"
  "830492d7e49d6351c7a78ee74c319f19")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'LocalizationInfo)))
  "Returns md5sum for a message object of type 'LocalizationInfo"
  "830492d7e49d6351c7a78ee74c319f19")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<LocalizationInfo>)))
  "Returns full string definition for message of type '<LocalizationInfo>"
  (cl:format cl:nil "std_msgs/Header header~%~%#位置信息~%geometry_msgs/Vector3 position~%#姿态信息~%geometry_msgs/Vector3 attitude~%# 线速度信息~%geometry_msgs/Vector3 linear_velocity~%# 角速度信息~%geometry_msgs/Vector3 angular_velocity~%# 加速度信息~%geometry_msgs/Vector3 linear_acceleration~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'LocalizationInfo)))
  "Returns full string definition for message of type 'LocalizationInfo"
  (cl:format cl:nil "std_msgs/Header header~%~%#位置信息~%geometry_msgs/Vector3 position~%#姿态信息~%geometry_msgs/Vector3 attitude~%# 线速度信息~%geometry_msgs/Vector3 linear_velocity~%# 角速度信息~%geometry_msgs/Vector3 angular_velocity~%# 加速度信息~%geometry_msgs/Vector3 linear_acceleration~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <LocalizationInfo>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'position))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'attitude))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'linear_velocity))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'angular_velocity))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'linear_acceleration))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <LocalizationInfo>))
  "Converts a ROS message object to a list"
  (cl:list 'LocalizationInfo
    (cl:cons ':header (header msg))
    (cl:cons ':position (position msg))
    (cl:cons ':attitude (attitude msg))
    (cl:cons ':linear_velocity (linear_velocity msg))
    (cl:cons ':angular_velocity (angular_velocity msg))
    (cl:cons ':linear_acceleration (linear_acceleration msg))
))
