; Auto-generated. Do not edit!


(cl:in-package in2ulv_msgs-msg)


;//! \htmlinclude HMIStepReport.msg.html

(cl:defclass <HMIStepReport> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (step_report
    :reader step_report
    :initarg :step_report
    :type cl:fixnum
    :initform 0)
   (station_id
    :reader station_id
    :initarg :station_id
    :type cl:integer
    :initform 0))
)

(cl:defclass HMIStepReport (<HMIStepReport>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <HMIStepReport>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'HMIStepReport)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name in2ulv_msgs-msg:<HMIStepReport> is deprecated: use in2ulv_msgs-msg:HMIStepReport instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <HMIStepReport>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader in2ulv_msgs-msg:header-val is deprecated.  Use in2ulv_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'step_report-val :lambda-list '(m))
(cl:defmethod step_report-val ((m <HMIStepReport>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader in2ulv_msgs-msg:step_report-val is deprecated.  Use in2ulv_msgs-msg:step_report instead.")
  (step_report m))

(cl:ensure-generic-function 'station_id-val :lambda-list '(m))
(cl:defmethod station_id-val ((m <HMIStepReport>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader in2ulv_msgs-msg:station_id-val is deprecated.  Use in2ulv_msgs-msg:station_id instead.")
  (station_id m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <HMIStepReport>) ostream)
  "Serializes a message object of type '<HMIStepReport>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'step_report)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'station_id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'station_id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'station_id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'station_id)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <HMIStepReport>) istream)
  "Deserializes a message object of type '<HMIStepReport>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'step_report)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'station_id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'station_id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'station_id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'station_id)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<HMIStepReport>)))
  "Returns string type for a message object of type '<HMIStepReport>"
  "in2ulv_msgs/HMIStepReport")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'HMIStepReport)))
  "Returns string type for a message object of type 'HMIStepReport"
  "in2ulv_msgs/HMIStepReport")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<HMIStepReport>)))
  "Returns md5sum for a message object of type '<HMIStepReport>"
  "1690f2b8b61886c2a07014ccb5c01a39")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'HMIStepReport)))
  "Returns md5sum for a message object of type 'HMIStepReport"
  "1690f2b8b61886c2a07014ccb5c01a39")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<HMIStepReport>)))
  "Returns full string definition for message of type '<HMIStepReport>"
  (cl:format cl:nil "# 帧头，包含时间戳信息~%std_msgs/Header header~%~%# 任务步骤反馈~%# FULL_SUCCESS 或 PART_SUCCESS~%uint8 step_report~%~%# 如果完成的是带有 station id 的 HEAD_FOR_GOAL 任务，则返回正确的 station id~%uint32 station_id~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'HMIStepReport)))
  "Returns full string definition for message of type 'HMIStepReport"
  (cl:format cl:nil "# 帧头，包含时间戳信息~%std_msgs/Header header~%~%# 任务步骤反馈~%# FULL_SUCCESS 或 PART_SUCCESS~%uint8 step_report~%~%# 如果完成的是带有 station id 的 HEAD_FOR_GOAL 任务，则返回正确的 station id~%uint32 station_id~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <HMIStepReport>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     1
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <HMIStepReport>))
  "Converts a ROS message object to a list"
  (cl:list 'HMIStepReport
    (cl:cons ':header (header msg))
    (cl:cons ':step_report (step_report msg))
    (cl:cons ':station_id (station_id msg))
))
