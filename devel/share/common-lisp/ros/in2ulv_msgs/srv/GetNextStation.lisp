; Auto-generated. Do not edit!


(cl:in-package in2ulv_msgs-srv)


;//! \htmlinclude GetNextStation-request.msg.html

(cl:defclass <GetNextStation-request> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (station_positions
    :reader station_positions
    :initarg :station_positions
    :type (cl:vector geometry_msgs-msg:Point)
   :initform (cl:make-array 0 :element-type 'geometry_msgs-msg:Point :initial-element (cl:make-instance 'geometry_msgs-msg:Point))))
)

(cl:defclass GetNextStation-request (<GetNextStation-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetNextStation-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetNextStation-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name in2ulv_msgs-srv:<GetNextStation-request> is deprecated: use in2ulv_msgs-srv:GetNextStation-request instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <GetNextStation-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader in2ulv_msgs-srv:header-val is deprecated.  Use in2ulv_msgs-srv:header instead.")
  (header m))

(cl:ensure-generic-function 'station_positions-val :lambda-list '(m))
(cl:defmethod station_positions-val ((m <GetNextStation-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader in2ulv_msgs-srv:station_positions-val is deprecated.  Use in2ulv_msgs-srv:station_positions instead.")
  (station_positions m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetNextStation-request>) ostream)
  "Serializes a message object of type '<GetNextStation-request>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'station_positions))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'station_positions))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetNextStation-request>) istream)
  "Deserializes a message object of type '<GetNextStation-request>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'station_positions) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'station_positions)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'geometry_msgs-msg:Point))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetNextStation-request>)))
  "Returns string type for a service object of type '<GetNextStation-request>"
  "in2ulv_msgs/GetNextStationRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetNextStation-request)))
  "Returns string type for a service object of type 'GetNextStation-request"
  "in2ulv_msgs/GetNextStationRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetNextStation-request>)))
  "Returns md5sum for a message object of type '<GetNextStation-request>"
  "6913a9d233b1fe0b71190001ea6fea24")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetNextStation-request)))
  "Returns md5sum for a message object of type 'GetNextStation-request"
  "6913a9d233b1fe0b71190001ea6fea24")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetNextStation-request>)))
  "Returns full string definition for message of type '<GetNextStation-request>"
  (cl:format cl:nil "# 帧头，包含时间戳信息~%std_msgs/Header header~%~%# 站点位置~%geometry_msgs/Point[] station_positions~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetNextStation-request)))
  "Returns full string definition for message of type 'GetNextStation-request"
  (cl:format cl:nil "# 帧头，包含时间戳信息~%std_msgs/Header header~%~%# 站点位置~%geometry_msgs/Point[] station_positions~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetNextStation-request>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'station_positions) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetNextStation-request>))
  "Converts a ROS message object to a list"
  (cl:list 'GetNextStation-request
    (cl:cons ':header (header msg))
    (cl:cons ':station_positions (station_positions msg))
))
;//! \htmlinclude GetNextStation-response.msg.html

(cl:defclass <GetNextStation-response> (roslisp-msg-protocol:ros-message)
  ((target_index
    :reader target_index
    :initarg :target_index
    :type cl:fixnum
    :initform 0))
)

(cl:defclass GetNextStation-response (<GetNextStation-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetNextStation-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetNextStation-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name in2ulv_msgs-srv:<GetNextStation-response> is deprecated: use in2ulv_msgs-srv:GetNextStation-response instead.")))

(cl:ensure-generic-function 'target_index-val :lambda-list '(m))
(cl:defmethod target_index-val ((m <GetNextStation-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader in2ulv_msgs-srv:target_index-val is deprecated.  Use in2ulv_msgs-srv:target_index instead.")
  (target_index m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetNextStation-response>) ostream)
  "Serializes a message object of type '<GetNextStation-response>"
  (cl:let* ((signed (cl:slot-value msg 'target_index)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetNextStation-response>) istream)
  "Deserializes a message object of type '<GetNextStation-response>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'target_index) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetNextStation-response>)))
  "Returns string type for a service object of type '<GetNextStation-response>"
  "in2ulv_msgs/GetNextStationResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetNextStation-response)))
  "Returns string type for a service object of type 'GetNextStation-response"
  "in2ulv_msgs/GetNextStationResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetNextStation-response>)))
  "Returns md5sum for a message object of type '<GetNextStation-response>"
  "6913a9d233b1fe0b71190001ea6fea24")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetNextStation-response)))
  "Returns md5sum for a message object of type 'GetNextStation-response"
  "6913a9d233b1fe0b71190001ea6fea24")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetNextStation-response>)))
  "Returns full string definition for message of type '<GetNextStation-response>"
  (cl:format cl:nil "# 目标站点索引~%int16 target_index~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetNextStation-response)))
  "Returns full string definition for message of type 'GetNextStation-response"
  (cl:format cl:nil "# 目标站点索引~%int16 target_index~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetNextStation-response>))
  (cl:+ 0
     2
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetNextStation-response>))
  "Converts a ROS message object to a list"
  (cl:list 'GetNextStation-response
    (cl:cons ':target_index (target_index msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'GetNextStation)))
  'GetNextStation-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'GetNextStation)))
  'GetNextStation-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetNextStation)))
  "Returns string type for a service object of type '<GetNextStation>"
  "in2ulv_msgs/GetNextStation")