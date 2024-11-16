; Auto-generated. Do not edit!


(cl:in-package in2ulv_msgs-msg)


;//! \htmlinclude LocationsInfo.msg.html

(cl:defclass <LocationsInfo> (roslisp-msg-protocol:ros-message)
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
    :initform (cl:make-instance 'geometry_msgs-msg:Vector3)))
)

(cl:defclass LocationsInfo (<LocationsInfo>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <LocationsInfo>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'LocationsInfo)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name in2ulv_msgs-msg:<LocationsInfo> is deprecated: use in2ulv_msgs-msg:LocationsInfo instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <LocationsInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader in2ulv_msgs-msg:header-val is deprecated.  Use in2ulv_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'position-val :lambda-list '(m))
(cl:defmethod position-val ((m <LocationsInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader in2ulv_msgs-msg:position-val is deprecated.  Use in2ulv_msgs-msg:position instead.")
  (position m))

(cl:ensure-generic-function 'attitude-val :lambda-list '(m))
(cl:defmethod attitude-val ((m <LocationsInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader in2ulv_msgs-msg:attitude-val is deprecated.  Use in2ulv_msgs-msg:attitude instead.")
  (attitude m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <LocationsInfo>) ostream)
  "Serializes a message object of type '<LocationsInfo>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'position) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'attitude) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <LocationsInfo>) istream)
  "Deserializes a message object of type '<LocationsInfo>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'position) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'attitude) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<LocationsInfo>)))
  "Returns string type for a message object of type '<LocationsInfo>"
  "in2ulv_msgs/LocationsInfo")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'LocationsInfo)))
  "Returns string type for a message object of type 'LocationsInfo"
  "in2ulv_msgs/LocationsInfo")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<LocationsInfo>)))
  "Returns md5sum for a message object of type '<LocationsInfo>"
  "1689f33734d547e34a281a134b06547f")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'LocationsInfo)))
  "Returns md5sum for a message object of type 'LocationsInfo"
  "1689f33734d547e34a281a134b06547f")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<LocationsInfo>)))
  "Returns full string definition for message of type '<LocationsInfo>"
  (cl:format cl:nil "std_msgs/Header header~%#位置信息~%geometry_msgs/Vector3 position~%#姿态信息~%geometry_msgs/Vector3 attitude~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'LocationsInfo)))
  "Returns full string definition for message of type 'LocationsInfo"
  (cl:format cl:nil "std_msgs/Header header~%#位置信息~%geometry_msgs/Vector3 position~%#姿态信息~%geometry_msgs/Vector3 attitude~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <LocationsInfo>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'position))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'attitude))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <LocationsInfo>))
  "Converts a ROS message object to a list"
  (cl:list 'LocationsInfo
    (cl:cons ':header (header msg))
    (cl:cons ':position (position msg))
    (cl:cons ':attitude (attitude msg))
))
