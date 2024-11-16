; Auto-generated. Do not edit!


(cl:in-package in2ulv_msgs-msg)


;//! \htmlinclude DrivingInfo.msg.html

(cl:defclass <DrivingInfo> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (avoidanceflag
    :reader avoidanceflag
    :initarg :avoidanceflag
    :type cl:boolean
    :initform cl:nil)
   (total_mileage
    :reader total_mileage
    :initarg :total_mileage
    :type cl:float
    :initform 0.0)
   (completed_mileage
    :reader completed_mileage
    :initarg :completed_mileage
    :type cl:float
    :initform 0.0)
   (remaining_time
    :reader remaining_time
    :initarg :remaining_time
    :type cl:float
    :initform 0.0))
)

(cl:defclass DrivingInfo (<DrivingInfo>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <DrivingInfo>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'DrivingInfo)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name in2ulv_msgs-msg:<DrivingInfo> is deprecated: use in2ulv_msgs-msg:DrivingInfo instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <DrivingInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader in2ulv_msgs-msg:header-val is deprecated.  Use in2ulv_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'avoidanceflag-val :lambda-list '(m))
(cl:defmethod avoidanceflag-val ((m <DrivingInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader in2ulv_msgs-msg:avoidanceflag-val is deprecated.  Use in2ulv_msgs-msg:avoidanceflag instead.")
  (avoidanceflag m))

(cl:ensure-generic-function 'total_mileage-val :lambda-list '(m))
(cl:defmethod total_mileage-val ((m <DrivingInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader in2ulv_msgs-msg:total_mileage-val is deprecated.  Use in2ulv_msgs-msg:total_mileage instead.")
  (total_mileage m))

(cl:ensure-generic-function 'completed_mileage-val :lambda-list '(m))
(cl:defmethod completed_mileage-val ((m <DrivingInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader in2ulv_msgs-msg:completed_mileage-val is deprecated.  Use in2ulv_msgs-msg:completed_mileage instead.")
  (completed_mileage m))

(cl:ensure-generic-function 'remaining_time-val :lambda-list '(m))
(cl:defmethod remaining_time-val ((m <DrivingInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader in2ulv_msgs-msg:remaining_time-val is deprecated.  Use in2ulv_msgs-msg:remaining_time instead.")
  (remaining_time m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <DrivingInfo>) ostream)
  "Serializes a message object of type '<DrivingInfo>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'avoidanceflag) 1 0)) ostream)
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'total_mileage))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'completed_mileage))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'remaining_time))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <DrivingInfo>) istream)
  "Deserializes a message object of type '<DrivingInfo>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:setf (cl:slot-value msg 'avoidanceflag) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'total_mileage) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'completed_mileage) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'remaining_time) (roslisp-utils:decode-double-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<DrivingInfo>)))
  "Returns string type for a message object of type '<DrivingInfo>"
  "in2ulv_msgs/DrivingInfo")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'DrivingInfo)))
  "Returns string type for a message object of type 'DrivingInfo"
  "in2ulv_msgs/DrivingInfo")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<DrivingInfo>)))
  "Returns md5sum for a message object of type '<DrivingInfo>"
  "3fdabca3408297c4e235a4ea8aa8aad5")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'DrivingInfo)))
  "Returns md5sum for a message object of type 'DrivingInfo"
  "3fdabca3408297c4e235a4ea8aa8aad5")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<DrivingInfo>)))
  "Returns full string definition for message of type '<DrivingInfo>"
  (cl:format cl:nil "std_msgs/Header header~%~%bool avoidanceflag~%~%float64 total_mileage~%~%float64 completed_mileage~%~%float64 remaining_time~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'DrivingInfo)))
  "Returns full string definition for message of type 'DrivingInfo"
  (cl:format cl:nil "std_msgs/Header header~%~%bool avoidanceflag~%~%float64 total_mileage~%~%float64 completed_mileage~%~%float64 remaining_time~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <DrivingInfo>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     1
     8
     8
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <DrivingInfo>))
  "Converts a ROS message object to a list"
  (cl:list 'DrivingInfo
    (cl:cons ':header (header msg))
    (cl:cons ':avoidanceflag (avoidanceflag msg))
    (cl:cons ':total_mileage (total_mileage msg))
    (cl:cons ':completed_mileage (completed_mileage msg))
    (cl:cons ':remaining_time (remaining_time msg))
))
