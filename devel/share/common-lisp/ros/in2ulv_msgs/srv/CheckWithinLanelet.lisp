; Auto-generated. Do not edit!


(cl:in-package in2ulv_msgs-srv)


;//! \htmlinclude CheckWithinLanelet-request.msg.html

(cl:defclass <CheckWithinLanelet-request> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (use_localization_result
    :reader use_localization_result
    :initarg :use_localization_result
    :type cl:boolean
    :initform cl:nil)
   (position
    :reader position
    :initarg :position
    :type geometry_msgs-msg:Point
    :initform (cl:make-instance 'geometry_msgs-msg:Point)))
)

(cl:defclass CheckWithinLanelet-request (<CheckWithinLanelet-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <CheckWithinLanelet-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'CheckWithinLanelet-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name in2ulv_msgs-srv:<CheckWithinLanelet-request> is deprecated: use in2ulv_msgs-srv:CheckWithinLanelet-request instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <CheckWithinLanelet-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader in2ulv_msgs-srv:header-val is deprecated.  Use in2ulv_msgs-srv:header instead.")
  (header m))

(cl:ensure-generic-function 'use_localization_result-val :lambda-list '(m))
(cl:defmethod use_localization_result-val ((m <CheckWithinLanelet-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader in2ulv_msgs-srv:use_localization_result-val is deprecated.  Use in2ulv_msgs-srv:use_localization_result instead.")
  (use_localization_result m))

(cl:ensure-generic-function 'position-val :lambda-list '(m))
(cl:defmethod position-val ((m <CheckWithinLanelet-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader in2ulv_msgs-srv:position-val is deprecated.  Use in2ulv_msgs-srv:position instead.")
  (position m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <CheckWithinLanelet-request>) ostream)
  "Serializes a message object of type '<CheckWithinLanelet-request>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'use_localization_result) 1 0)) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'position) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <CheckWithinLanelet-request>) istream)
  "Deserializes a message object of type '<CheckWithinLanelet-request>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:setf (cl:slot-value msg 'use_localization_result) (cl:not (cl:zerop (cl:read-byte istream))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'position) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<CheckWithinLanelet-request>)))
  "Returns string type for a service object of type '<CheckWithinLanelet-request>"
  "in2ulv_msgs/CheckWithinLaneletRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'CheckWithinLanelet-request)))
  "Returns string type for a service object of type 'CheckWithinLanelet-request"
  "in2ulv_msgs/CheckWithinLaneletRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<CheckWithinLanelet-request>)))
  "Returns md5sum for a message object of type '<CheckWithinLanelet-request>"
  "da164720bf0d4371b7d840e959c11d6e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'CheckWithinLanelet-request)))
  "Returns md5sum for a message object of type 'CheckWithinLanelet-request"
  "da164720bf0d4371b7d840e959c11d6e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<CheckWithinLanelet-request>)))
  "Returns full string definition for message of type '<CheckWithinLanelet-request>"
  (cl:format cl:nil "# 帧头，包含时间戳信息~%std_msgs/Header header~%~%# 是否将当前定位结果作为目标点位置~%bool use_localization_result~%~%# use_localization_result 为 false 时候，需要设置目标点位置~%geometry_msgs/Point position~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'CheckWithinLanelet-request)))
  "Returns full string definition for message of type 'CheckWithinLanelet-request"
  (cl:format cl:nil "# 帧头，包含时间戳信息~%std_msgs/Header header~%~%# 是否将当前定位结果作为目标点位置~%bool use_localization_result~%~%# use_localization_result 为 false 时候，需要设置目标点位置~%geometry_msgs/Point position~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <CheckWithinLanelet-request>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     1
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'position))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <CheckWithinLanelet-request>))
  "Converts a ROS message object to a list"
  (cl:list 'CheckWithinLanelet-request
    (cl:cons ':header (header msg))
    (cl:cons ':use_localization_result (use_localization_result msg))
    (cl:cons ':position (position msg))
))
;//! \htmlinclude CheckWithinLanelet-response.msg.html

(cl:defclass <CheckWithinLanelet-response> (roslisp-msg-protocol:ros-message)
  ((within
    :reader within
    :initarg :within
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass CheckWithinLanelet-response (<CheckWithinLanelet-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <CheckWithinLanelet-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'CheckWithinLanelet-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name in2ulv_msgs-srv:<CheckWithinLanelet-response> is deprecated: use in2ulv_msgs-srv:CheckWithinLanelet-response instead.")))

(cl:ensure-generic-function 'within-val :lambda-list '(m))
(cl:defmethod within-val ((m <CheckWithinLanelet-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader in2ulv_msgs-srv:within-val is deprecated.  Use in2ulv_msgs-srv:within instead.")
  (within m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <CheckWithinLanelet-response>) ostream)
  "Serializes a message object of type '<CheckWithinLanelet-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'within) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <CheckWithinLanelet-response>) istream)
  "Deserializes a message object of type '<CheckWithinLanelet-response>"
    (cl:setf (cl:slot-value msg 'within) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<CheckWithinLanelet-response>)))
  "Returns string type for a service object of type '<CheckWithinLanelet-response>"
  "in2ulv_msgs/CheckWithinLaneletResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'CheckWithinLanelet-response)))
  "Returns string type for a service object of type 'CheckWithinLanelet-response"
  "in2ulv_msgs/CheckWithinLaneletResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<CheckWithinLanelet-response>)))
  "Returns md5sum for a message object of type '<CheckWithinLanelet-response>"
  "da164720bf0d4371b7d840e959c11d6e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'CheckWithinLanelet-response)))
  "Returns md5sum for a message object of type 'CheckWithinLanelet-response"
  "da164720bf0d4371b7d840e959c11d6e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<CheckWithinLanelet-response>)))
  "Returns full string definition for message of type '<CheckWithinLanelet-response>"
  (cl:format cl:nil "# 是否在 lanelet 上~%bool within~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'CheckWithinLanelet-response)))
  "Returns full string definition for message of type 'CheckWithinLanelet-response"
  (cl:format cl:nil "# 是否在 lanelet 上~%bool within~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <CheckWithinLanelet-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <CheckWithinLanelet-response>))
  "Converts a ROS message object to a list"
  (cl:list 'CheckWithinLanelet-response
    (cl:cons ':within (within msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'CheckWithinLanelet)))
  'CheckWithinLanelet-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'CheckWithinLanelet)))
  'CheckWithinLanelet-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'CheckWithinLanelet)))
  "Returns string type for a service object of type '<CheckWithinLanelet>"
  "in2ulv_msgs/CheckWithinLanelet")