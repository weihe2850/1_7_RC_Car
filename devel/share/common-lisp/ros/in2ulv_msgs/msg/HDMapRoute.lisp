; Auto-generated. Do not edit!


(cl:in-package in2ulv_msgs-msg)


;//! \htmlinclude HDMapRoute.msg.html

(cl:defclass <HDMapRoute> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (start_pose
    :reader start_pose
    :initarg :start_pose
    :type geometry_msgs-msg:Pose
    :initform (cl:make-instance 'geometry_msgs-msg:Pose))
   (goal_pose
    :reader goal_pose
    :initarg :goal_pose
    :type geometry_msgs-msg:Pose
    :initform (cl:make-instance 'geometry_msgs-msg:Pose))
   (segments
    :reader segments
    :initarg :segments
    :type (cl:vector in2ulv_msgs-msg:HDMapSegment)
   :initform (cl:make-array 0 :element-type 'in2ulv_msgs-msg:HDMapSegment :initial-element (cl:make-instance 'in2ulv_msgs-msg:HDMapSegment))))
)

(cl:defclass HDMapRoute (<HDMapRoute>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <HDMapRoute>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'HDMapRoute)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name in2ulv_msgs-msg:<HDMapRoute> is deprecated: use in2ulv_msgs-msg:HDMapRoute instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <HDMapRoute>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader in2ulv_msgs-msg:header-val is deprecated.  Use in2ulv_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'start_pose-val :lambda-list '(m))
(cl:defmethod start_pose-val ((m <HDMapRoute>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader in2ulv_msgs-msg:start_pose-val is deprecated.  Use in2ulv_msgs-msg:start_pose instead.")
  (start_pose m))

(cl:ensure-generic-function 'goal_pose-val :lambda-list '(m))
(cl:defmethod goal_pose-val ((m <HDMapRoute>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader in2ulv_msgs-msg:goal_pose-val is deprecated.  Use in2ulv_msgs-msg:goal_pose instead.")
  (goal_pose m))

(cl:ensure-generic-function 'segments-val :lambda-list '(m))
(cl:defmethod segments-val ((m <HDMapRoute>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader in2ulv_msgs-msg:segments-val is deprecated.  Use in2ulv_msgs-msg:segments instead.")
  (segments m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <HDMapRoute>) ostream)
  "Serializes a message object of type '<HDMapRoute>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'start_pose) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'goal_pose) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'segments))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'segments))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <HDMapRoute>) istream)
  "Deserializes a message object of type '<HDMapRoute>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'start_pose) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'goal_pose) istream)
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'segments) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'segments)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'in2ulv_msgs-msg:HDMapSegment))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<HDMapRoute>)))
  "Returns string type for a message object of type '<HDMapRoute>"
  "in2ulv_msgs/HDMapRoute")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'HDMapRoute)))
  "Returns string type for a message object of type 'HDMapRoute"
  "in2ulv_msgs/HDMapRoute")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<HDMapRoute>)))
  "Returns md5sum for a message object of type '<HDMapRoute>"
  "88e8c74cae4a65bf3fa1a537ffb8d3b6")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'HDMapRoute)))
  "Returns md5sum for a message object of type 'HDMapRoute"
  "88e8c74cae4a65bf3fa1a537ffb8d3b6")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<HDMapRoute>)))
  "Returns full string definition for message of type '<HDMapRoute>"
  (cl:format cl:nil "# A route within a high-definition map defined by the start and goal points and map primitives describing the route between the two.~%~%# 帧头，包含时间戳信息~%std_msgs/Header header~%~%# The start_pose must exist within the bounds of the primitives in the first segment defined in the route_segments array.~%geometry_msgs/Pose start_pose~%~%# The goal_pose must exist within the bounds of the primitives in the last segment defined in the route_semgents array.~%geometry_msgs/Pose goal_pose~%~%HDMapSegment[] segments~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%================================================================================~%MSG: in2ulv_msgs/HDMapSegment~%# A segment of an HDMap which contains one or more MapPrimitives.~%in2ulv_msgs/HDMapPrimitive[] primitives~%~%int64 preferred_primitive_id~%~%================================================================================~%MSG: in2ulv_msgs/HDMapPrimitive~%# Map primitive information~%int64 id~%~%# Type of primitive, such as lane, polygon, line.~%string primitive_type~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'HDMapRoute)))
  "Returns full string definition for message of type 'HDMapRoute"
  (cl:format cl:nil "# A route within a high-definition map defined by the start and goal points and map primitives describing the route between the two.~%~%# 帧头，包含时间戳信息~%std_msgs/Header header~%~%# The start_pose must exist within the bounds of the primitives in the first segment defined in the route_segments array.~%geometry_msgs/Pose start_pose~%~%# The goal_pose must exist within the bounds of the primitives in the last segment defined in the route_semgents array.~%geometry_msgs/Pose goal_pose~%~%HDMapSegment[] segments~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%================================================================================~%MSG: in2ulv_msgs/HDMapSegment~%# A segment of an HDMap which contains one or more MapPrimitives.~%in2ulv_msgs/HDMapPrimitive[] primitives~%~%int64 preferred_primitive_id~%~%================================================================================~%MSG: in2ulv_msgs/HDMapPrimitive~%# Map primitive information~%int64 id~%~%# Type of primitive, such as lane, polygon, line.~%string primitive_type~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <HDMapRoute>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'start_pose))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'goal_pose))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'segments) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <HDMapRoute>))
  "Converts a ROS message object to a list"
  (cl:list 'HDMapRoute
    (cl:cons ':header (header msg))
    (cl:cons ':start_pose (start_pose msg))
    (cl:cons ':goal_pose (goal_pose msg))
    (cl:cons ':segments (segments msg))
))
