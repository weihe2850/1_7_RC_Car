;; Auto-generated. Do not edit!


(when (boundp 'in2ulv_msgs::GetNextStation)
  (if (not (find-package "IN2ULV_MSGS"))
    (make-package "IN2ULV_MSGS"))
  (shadow 'GetNextStation (find-package "IN2ULV_MSGS")))
(unless (find-package "IN2ULV_MSGS::GETNEXTSTATION")
  (make-package "IN2ULV_MSGS::GETNEXTSTATION"))
(unless (find-package "IN2ULV_MSGS::GETNEXTSTATIONREQUEST")
  (make-package "IN2ULV_MSGS::GETNEXTSTATIONREQUEST"))
(unless (find-package "IN2ULV_MSGS::GETNEXTSTATIONRESPONSE")
  (make-package "IN2ULV_MSGS::GETNEXTSTATIONRESPONSE"))

(in-package "ROS")

(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))




(defclass in2ulv_msgs::GetNextStationRequest
  :super ros::object
  :slots (_header _station_positions ))

(defmethod in2ulv_msgs::GetNextStationRequest
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:station_positions __station_positions) ())
    )
   (send-super :init)
   (setq _header __header)
   (setq _station_positions __station_positions)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:station_positions
   (&rest __station_positions)
   (if (keywordp (car __station_positions))
       (send* _station_positions __station_positions)
     (progn
       (if __station_positions (setq _station_positions (car __station_positions)))
       _station_positions)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; geometry_msgs/Point[] _station_positions
    (apply #'+ (send-all _station_positions :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; geometry_msgs/Point[] _station_positions
     (write-long (length _station_positions) s)
     (dolist (elem _station_positions)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; geometry_msgs/Point[] _station_positions
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _station_positions (let (r) (dotimes (i n) (push (instance geometry_msgs::Point :init) r)) r))
     (dolist (elem- _station_positions)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(defclass in2ulv_msgs::GetNextStationResponse
  :super ros::object
  :slots (_target_index ))

(defmethod in2ulv_msgs::GetNextStationResponse
  (:init
   (&key
    ((:target_index __target_index) 0)
    )
   (send-super :init)
   (setq _target_index (round __target_index))
   self)
  (:target_index
   (&optional __target_index)
   (if __target_index (setq _target_index __target_index)) _target_index)
  (:serialization-length
   ()
   (+
    ;; int16 _target_index
    2
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int16 _target_index
       (write-word _target_index s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int16 _target_index
     (setq _target_index (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;;
   self)
  )

(defclass in2ulv_msgs::GetNextStation
  :super ros::object
  :slots ())

(setf (get in2ulv_msgs::GetNextStation :md5sum-) "6913a9d233b1fe0b71190001ea6fea24")
(setf (get in2ulv_msgs::GetNextStation :datatype-) "in2ulv_msgs/GetNextStation")
(setf (get in2ulv_msgs::GetNextStation :request) in2ulv_msgs::GetNextStationRequest)
(setf (get in2ulv_msgs::GetNextStation :response) in2ulv_msgs::GetNextStationResponse)

(defmethod in2ulv_msgs::GetNextStationRequest
  (:response () (instance in2ulv_msgs::GetNextStationResponse :init)))

(setf (get in2ulv_msgs::GetNextStationRequest :md5sum-) "6913a9d233b1fe0b71190001ea6fea24")
(setf (get in2ulv_msgs::GetNextStationRequest :datatype-) "in2ulv_msgs/GetNextStationRequest")
(setf (get in2ulv_msgs::GetNextStationRequest :definition-)
      "# 帧头，包含时间戳信息
std_msgs/Header header

# 站点位置
geometry_msgs/Point[] station_positions

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
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z
---
# 目标站点索引
int16 target_index
")

(setf (get in2ulv_msgs::GetNextStationResponse :md5sum-) "6913a9d233b1fe0b71190001ea6fea24")
(setf (get in2ulv_msgs::GetNextStationResponse :datatype-) "in2ulv_msgs/GetNextStationResponse")
(setf (get in2ulv_msgs::GetNextStationResponse :definition-)
      "# 帧头，包含时间戳信息
std_msgs/Header header

# 站点位置
geometry_msgs/Point[] station_positions

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
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z
---
# 目标站点索引
int16 target_index
")



(provide :in2ulv_msgs/GetNextStation "6913a9d233b1fe0b71190001ea6fea24")


