;; Auto-generated. Do not edit!


(when (boundp 'in2ulv_msgs::HDMapRoute)
  (if (not (find-package "IN2ULV_MSGS"))
    (make-package "IN2ULV_MSGS"))
  (shadow 'HDMapRoute (find-package "IN2ULV_MSGS")))
(unless (find-package "IN2ULV_MSGS::HDMAPROUTE")
  (make-package "IN2ULV_MSGS::HDMAPROUTE"))

(in-package "ROS")
;;//! \htmlinclude HDMapRoute.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass in2ulv_msgs::HDMapRoute
  :super ros::object
  :slots (_header _start_pose _goal_pose _segments ))

(defmethod in2ulv_msgs::HDMapRoute
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:start_pose __start_pose) (instance geometry_msgs::Pose :init))
    ((:goal_pose __goal_pose) (instance geometry_msgs::Pose :init))
    ((:segments __segments) ())
    )
   (send-super :init)
   (setq _header __header)
   (setq _start_pose __start_pose)
   (setq _goal_pose __goal_pose)
   (setq _segments __segments)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:start_pose
   (&rest __start_pose)
   (if (keywordp (car __start_pose))
       (send* _start_pose __start_pose)
     (progn
       (if __start_pose (setq _start_pose (car __start_pose)))
       _start_pose)))
  (:goal_pose
   (&rest __goal_pose)
   (if (keywordp (car __goal_pose))
       (send* _goal_pose __goal_pose)
     (progn
       (if __goal_pose (setq _goal_pose (car __goal_pose)))
       _goal_pose)))
  (:segments
   (&rest __segments)
   (if (keywordp (car __segments))
       (send* _segments __segments)
     (progn
       (if __segments (setq _segments (car __segments)))
       _segments)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; geometry_msgs/Pose _start_pose
    (send _start_pose :serialization-length)
    ;; geometry_msgs/Pose _goal_pose
    (send _goal_pose :serialization-length)
    ;; in2ulv_msgs/HDMapSegment[] _segments
    (apply #'+ (send-all _segments :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; geometry_msgs/Pose _start_pose
       (send _start_pose :serialize s)
     ;; geometry_msgs/Pose _goal_pose
       (send _goal_pose :serialize s)
     ;; in2ulv_msgs/HDMapSegment[] _segments
     (write-long (length _segments) s)
     (dolist (elem _segments)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; geometry_msgs/Pose _start_pose
     (send _start_pose :deserialize buf ptr-) (incf ptr- (send _start_pose :serialization-length))
   ;; geometry_msgs/Pose _goal_pose
     (send _goal_pose :deserialize buf ptr-) (incf ptr- (send _goal_pose :serialization-length))
   ;; in2ulv_msgs/HDMapSegment[] _segments
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _segments (let (r) (dotimes (i n) (push (instance in2ulv_msgs::HDMapSegment :init) r)) r))
     (dolist (elem- _segments)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get in2ulv_msgs::HDMapRoute :md5sum-) "88e8c74cae4a65bf3fa1a537ffb8d3b6")
(setf (get in2ulv_msgs::HDMapRoute :datatype-) "in2ulv_msgs/HDMapRoute")
(setf (get in2ulv_msgs::HDMapRoute :definition-)
      "# A route within a high-definition map defined by the start and goal points and map primitives describing the route between the two.

# 帧头，包含时间戳信息
std_msgs/Header header

# The start_pose must exist within the bounds of the primitives in the first segment defined in the route_segments array.
geometry_msgs/Pose start_pose

# The goal_pose must exist within the bounds of the primitives in the last segment defined in the route_semgents array.
geometry_msgs/Pose goal_pose

HDMapSegment[] segments

================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
string frame_id

================================================================================
MSG: geometry_msgs/Pose
# A representation of pose in free space, composed of position and orientation. 
Point position
Quaternion orientation

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

================================================================================
MSG: geometry_msgs/Quaternion
# This represents an orientation in free space in quaternion form.

float64 x
float64 y
float64 z
float64 w

================================================================================
MSG: in2ulv_msgs/HDMapSegment
# A segment of an HDMap which contains one or more MapPrimitives.
in2ulv_msgs/HDMapPrimitive[] primitives

int64 preferred_primitive_id

================================================================================
MSG: in2ulv_msgs/HDMapPrimitive
# Map primitive information
int64 id

# Type of primitive, such as lane, polygon, line.
string primitive_type
")



(provide :in2ulv_msgs/HDMapRoute "88e8c74cae4a65bf3fa1a537ffb8d3b6")


