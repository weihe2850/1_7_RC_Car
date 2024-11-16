;; Auto-generated. Do not edit!


(when (boundp 'in2ulv_msgs::Trajectory)
  (if (not (find-package "IN2ULV_MSGS"))
    (make-package "IN2ULV_MSGS"))
  (shadow 'Trajectory (find-package "IN2ULV_MSGS")))
(unless (find-package "IN2ULV_MSGS::TRAJECTORY")
  (make-package "IN2ULV_MSGS::TRAJECTORY"))

(in-package "ROS")
;;//! \htmlinclude Trajectory.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass in2ulv_msgs::Trajectory
  :super ros::object
  :slots (_header _trajectory_points ))

(defmethod in2ulv_msgs::Trajectory
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:trajectory_points __trajectory_points) ())
    )
   (send-super :init)
   (setq _header __header)
   (setq _trajectory_points __trajectory_points)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:trajectory_points
   (&rest __trajectory_points)
   (if (keywordp (car __trajectory_points))
       (send* _trajectory_points __trajectory_points)
     (progn
       (if __trajectory_points (setq _trajectory_points (car __trajectory_points)))
       _trajectory_points)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; in2ulv_msgs/TrajectoryPoint[] _trajectory_points
    (apply #'+ (send-all _trajectory_points :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; in2ulv_msgs/TrajectoryPoint[] _trajectory_points
     (write-long (length _trajectory_points) s)
     (dolist (elem _trajectory_points)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; in2ulv_msgs/TrajectoryPoint[] _trajectory_points
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _trajectory_points (let (r) (dotimes (i n) (push (instance in2ulv_msgs::TrajectoryPoint :init) r)) r))
     (dolist (elem- _trajectory_points)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get in2ulv_msgs::Trajectory :md5sum-) "0c5b86aedbc11da21d3e6c277583d882")
(setf (get in2ulv_msgs::Trajectory :datatype-) "in2ulv_msgs/Trajectory")
(setf (get in2ulv_msgs::Trajectory :definition-)
      "std_msgs/Header header

# 轨迹点序列，暂定长度为 301
TrajectoryPoint[] trajectory_points

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
MSG: in2ulv_msgs/TrajectoryPoint
# 转向灯, 0不闪，1右转向灯闪，2左转向灯闪, 3双闪
uint8 indicator_status

# 档位，0空挡，1为D档，2为R档，3为P档
uint8 gear

# 车体坐标系导航位姿
float64 x
float64 y
float64 theta
float64 v
float64 a

")



(provide :in2ulv_msgs/Trajectory "0c5b86aedbc11da21d3e6c277583d882")


