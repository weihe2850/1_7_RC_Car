; Auto-generated. Do not edit!


(cl:in-package in2ulv_msgs-srv)


;//! \htmlinclude HDMapService-request.msg.html

(cl:defclass <HDMapService-request> (roslisp-msg-protocol:ros-message)
  ((requested_primitives
    :reader requested_primitives
    :initarg :requested_primitives
    :type (cl:vector cl:fixnum)
   :initform (cl:make-array 0 :element-type 'cl:fixnum :initial-element 0))
   (geom_upper_bound
    :reader geom_upper_bound
    :initarg :geom_upper_bound
    :type (cl:vector cl:float)
   :initform (cl:make-array 3 :element-type 'cl:float :initial-element 0.0))
   (geom_lower_bound
    :reader geom_lower_bound
    :initarg :geom_lower_bound
    :type (cl:vector cl:float)
   :initform (cl:make-array 3 :element-type 'cl:float :initial-element 0.0)))
)

(cl:defclass HDMapService-request (<HDMapService-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <HDMapService-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'HDMapService-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name in2ulv_msgs-srv:<HDMapService-request> is deprecated: use in2ulv_msgs-srv:HDMapService-request instead.")))

(cl:ensure-generic-function 'requested_primitives-val :lambda-list '(m))
(cl:defmethod requested_primitives-val ((m <HDMapService-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader in2ulv_msgs-srv:requested_primitives-val is deprecated.  Use in2ulv_msgs-srv:requested_primitives instead.")
  (requested_primitives m))

(cl:ensure-generic-function 'geom_upper_bound-val :lambda-list '(m))
(cl:defmethod geom_upper_bound-val ((m <HDMapService-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader in2ulv_msgs-srv:geom_upper_bound-val is deprecated.  Use in2ulv_msgs-srv:geom_upper_bound instead.")
  (geom_upper_bound m))

(cl:ensure-generic-function 'geom_lower_bound-val :lambda-list '(m))
(cl:defmethod geom_lower_bound-val ((m <HDMapService-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader in2ulv_msgs-srv:geom_lower_bound-val is deprecated.  Use in2ulv_msgs-srv:geom_lower_bound instead.")
  (geom_lower_bound m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <HDMapService-request>) ostream)
  "Serializes a message object of type '<HDMapService-request>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'requested_primitives))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:write-byte (cl:ldb (cl:byte 8 0) ele) ostream))
   (cl:slot-value msg 'requested_primitives))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-double-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream)))
   (cl:slot-value msg 'geom_upper_bound))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-double-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream)))
   (cl:slot-value msg 'geom_lower_bound))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <HDMapService-request>) istream)
  "Deserializes a message object of type '<HDMapService-request>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'requested_primitives) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'requested_primitives)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:aref vals i)) (cl:read-byte istream)))))
  (cl:setf (cl:slot-value msg 'geom_upper_bound) (cl:make-array 3))
  (cl:let ((vals (cl:slot-value msg 'geom_upper_bound)))
    (cl:dotimes (i 3)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-double-float-bits bits)))))
  (cl:setf (cl:slot-value msg 'geom_lower_bound) (cl:make-array 3))
  (cl:let ((vals (cl:slot-value msg 'geom_lower_bound)))
    (cl:dotimes (i 3)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-double-float-bits bits)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<HDMapService-request>)))
  "Returns string type for a service object of type '<HDMapService-request>"
  "in2ulv_msgs/HDMapServiceRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'HDMapService-request)))
  "Returns string type for a service object of type 'HDMapService-request"
  "in2ulv_msgs/HDMapServiceRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<HDMapService-request>)))
  "Returns md5sum for a message object of type '<HDMapService-request>"
  "08e28d6edd6a5f0aeb88a6dc9e09f47c")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'HDMapService-request)))
  "Returns md5sum for a message object of type 'HDMapService-request"
  "08e28d6edd6a5f0aeb88a6dc9e09f47c")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<HDMapService-request>)))
  "Returns full string definition for message of type '<HDMapService-request>"
  (cl:format cl:nil "uint8[] requested_primitives~%~%# Geometric upper bound of map data requested~%float64[3] geom_upper_bound~%~%# Geometric lower bound of map data requested~%float64[3] geom_lower_bound~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'HDMapService-request)))
  "Returns full string definition for message of type 'HDMapService-request"
  (cl:format cl:nil "uint8[] requested_primitives~%~%# Geometric upper bound of map data requested~%float64[3] geom_upper_bound~%~%# Geometric lower bound of map data requested~%float64[3] geom_lower_bound~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <HDMapService-request>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'requested_primitives) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 1)))
     0 (cl:reduce #'cl:+ (cl:slot-value msg 'geom_upper_bound) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 8)))
     0 (cl:reduce #'cl:+ (cl:slot-value msg 'geom_lower_bound) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 8)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <HDMapService-request>))
  "Converts a ROS message object to a list"
  (cl:list 'HDMapService-request
    (cl:cons ':requested_primitives (requested_primitives msg))
    (cl:cons ':geom_upper_bound (geom_upper_bound msg))
    (cl:cons ':geom_lower_bound (geom_lower_bound msg))
))
;//! \htmlinclude HDMapService-response.msg.html

(cl:defclass <HDMapService-response> (roslisp-msg-protocol:ros-message)
  ((map
    :reader map
    :initarg :map
    :type in2ulv_msgs-msg:HDMapBin
    :initform (cl:make-instance 'in2ulv_msgs-msg:HDMapBin))
   (answer
    :reader answer
    :initarg :answer
    :type cl:integer
    :initform 0))
)

(cl:defclass HDMapService-response (<HDMapService-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <HDMapService-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'HDMapService-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name in2ulv_msgs-srv:<HDMapService-response> is deprecated: use in2ulv_msgs-srv:HDMapService-response instead.")))

(cl:ensure-generic-function 'map-val :lambda-list '(m))
(cl:defmethod map-val ((m <HDMapService-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader in2ulv_msgs-srv:map-val is deprecated.  Use in2ulv_msgs-srv:map instead.")
  (map m))

(cl:ensure-generic-function 'answer-val :lambda-list '(m))
(cl:defmethod answer-val ((m <HDMapService-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader in2ulv_msgs-srv:answer-val is deprecated.  Use in2ulv_msgs-srv:answer instead.")
  (answer m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <HDMapService-response>) ostream)
  "Serializes a message object of type '<HDMapService-response>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'map) ostream)
  (cl:let* ((signed (cl:slot-value msg 'answer)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <HDMapService-response>) istream)
  "Deserializes a message object of type '<HDMapService-response>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'map) istream)
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'answer) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<HDMapService-response>)))
  "Returns string type for a service object of type '<HDMapService-response>"
  "in2ulv_msgs/HDMapServiceResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'HDMapService-response)))
  "Returns string type for a service object of type 'HDMapService-response"
  "in2ulv_msgs/HDMapServiceResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<HDMapService-response>)))
  "Returns md5sum for a message object of type '<HDMapService-response>"
  "08e28d6edd6a5f0aeb88a6dc9e09f47c")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'HDMapService-response)))
  "Returns md5sum for a message object of type 'HDMapService-response"
  "08e28d6edd6a5f0aeb88a6dc9e09f47c")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<HDMapService-response>)))
  "Returns full string definition for message of type '<HDMapService-response>"
  (cl:format cl:nil "HDMapBin map~%int32  answer~%~%================================================================================~%MSG: in2ulv_msgs/HDMapBin~%# This contains the lanelet map in binary format.~%~%# Timestamp and frame_id of the map~%Header header~%~%# version of map format. keep this as empty string if unnecessary~%string format_version~%~%# version of map version. keep this as empty string if unnecessary~%string map_version~%~%# binary data of lanelet2 map. This is meant to be filled using toBinMsg() in lanelet2_extension library~%int8[] data~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'HDMapService-response)))
  "Returns full string definition for message of type 'HDMapService-response"
  (cl:format cl:nil "HDMapBin map~%int32  answer~%~%================================================================================~%MSG: in2ulv_msgs/HDMapBin~%# This contains the lanelet map in binary format.~%~%# Timestamp and frame_id of the map~%Header header~%~%# version of map format. keep this as empty string if unnecessary~%string format_version~%~%# version of map version. keep this as empty string if unnecessary~%string map_version~%~%# binary data of lanelet2 map. This is meant to be filled using toBinMsg() in lanelet2_extension library~%int8[] data~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <HDMapService-response>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'map))
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <HDMapService-response>))
  "Converts a ROS message object to a list"
  (cl:list 'HDMapService-response
    (cl:cons ':map (map msg))
    (cl:cons ':answer (answer msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'HDMapService)))
  'HDMapService-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'HDMapService)))
  'HDMapService-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'HDMapService)))
  "Returns string type for a service object of type '<HDMapService>"
  "in2ulv_msgs/HDMapService")