; Auto-generated. Do not edit!


(cl:in-package in2ulv_msgs-msg)


;//! \htmlinclude SignalInfo.msg.html

(cl:defclass <SignalInfo> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (signal
    :reader signal
    :initarg :signal
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass SignalInfo (<SignalInfo>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SignalInfo>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SignalInfo)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name in2ulv_msgs-msg:<SignalInfo> is deprecated: use in2ulv_msgs-msg:SignalInfo instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <SignalInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader in2ulv_msgs-msg:header-val is deprecated.  Use in2ulv_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'signal-val :lambda-list '(m))
(cl:defmethod signal-val ((m <SignalInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader in2ulv_msgs-msg:signal-val is deprecated.  Use in2ulv_msgs-msg:signal instead.")
  (signal m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SignalInfo>) ostream)
  "Serializes a message object of type '<SignalInfo>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'signal) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SignalInfo>) istream)
  "Deserializes a message object of type '<SignalInfo>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:setf (cl:slot-value msg 'signal) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SignalInfo>)))
  "Returns string type for a message object of type '<SignalInfo>"
  "in2ulv_msgs/SignalInfo")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SignalInfo)))
  "Returns string type for a message object of type 'SignalInfo"
  "in2ulv_msgs/SignalInfo")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SignalInfo>)))
  "Returns md5sum for a message object of type '<SignalInfo>"
  "70f6c980fd9a5a13a4ccaf5fb3adefdd")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SignalInfo)))
  "Returns md5sum for a message object of type 'SignalInfo"
  "70f6c980fd9a5a13a4ccaf5fb3adefdd")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SignalInfo>)))
  "Returns full string definition for message of type '<SignalInfo>"
  (cl:format cl:nil "std_msgs/Header header~%#交通灯信号 0为绿灯 1为红灯~%bool signal~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SignalInfo)))
  "Returns full string definition for message of type 'SignalInfo"
  (cl:format cl:nil "std_msgs/Header header~%#交通灯信号 0为绿灯 1为红灯~%bool signal~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SignalInfo>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SignalInfo>))
  "Converts a ROS message object to a list"
  (cl:list 'SignalInfo
    (cl:cons ':header (header msg))
    (cl:cons ':signal (signal msg))
))
