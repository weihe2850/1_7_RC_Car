;; Auto-generated. Do not edit!


(when (boundp 'in2ulv_msgs::CheckWithinLanelet)
  (if (not (find-package "IN2ULV_MSGS"))
    (make-package "IN2ULV_MSGS"))
  (shadow 'CheckWithinLanelet (find-package "IN2ULV_MSGS")))
(unless (find-package "IN2ULV_MSGS::CHECKWITHINLANELET")
  (make-package "IN2ULV_MSGS::CHECKWITHINLANELET"))
(unless (find-package "IN2ULV_MSGS::CHECKWITHINLANELETREQUEST")
  (make-package "IN2ULV_MSGS::CHECKWITHINLANELETREQUEST"))
(unless (find-package "IN2ULV_MSGS::CHECKWITHINLANELETRESPONSE")
  (make-package "IN2ULV_MSGS::CHECKWITHINLANELETRESPONSE"))

(in-package "ROS")

(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))




(defclass in2ulv_msgs::CheckWithinLaneletRequest
  :super ros::object
  :slots (_header _use_localization_result _position ))

(defmethod in2ulv_msgs::CheckWithinLaneletRequest
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:use_localization_result __use_localization_result) nil)
    ((:position __position) (instance geometry_msgs::Point :init))
    )
   (send-super :init)
   (setq _header __header)
   (setq _use_localization_result __use_localization_result)
   (setq _position __position)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:use_localization_result
   (&optional (__use_localization_result :null))
   (if (not (eq __use_localization_result :null)) (setq _use_localization_result __use_localization_result)) _use_localization_result)
  (:position
   (&rest __position)
   (if (keywordp (car __position))
       (send* _position __position)
     (progn
       (if __position (setq _position (car __position)))
       _position)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; bool _use_localization_result
    1
    ;; geometry_msgs/Point _position
    (send _position :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; bool _use_localization_result
       (if _use_localization_result (write-byte -1 s) (write-byte 0 s))
     ;; geometry_msgs/Point _position
       (send _position :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; bool _use_localization_result
     (setq _use_localization_result (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; geometry_msgs/Point _position
     (send _position :deserialize buf ptr-) (incf ptr- (send _position :serialization-length))
   ;;
   self)
  )

(defclass in2ulv_msgs::CheckWithinLaneletResponse
  :super ros::object
  :slots (_within ))

(defmethod in2ulv_msgs::CheckWithinLaneletResponse
  (:init
   (&key
    ((:within __within) nil)
    )
   (send-super :init)
   (setq _within __within)
   self)
  (:within
   (&optional (__within :null))
   (if (not (eq __within :null)) (setq _within __within)) _within)
  (:serialization-length
   ()
   (+
    ;; bool _within
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _within
       (if _within (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _within
     (setq _within (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass in2ulv_msgs::CheckWithinLanelet
  :super ros::object
  :slots ())

(setf (get in2ulv_msgs::CheckWithinLanelet :md5sum-) "da164720bf0d4371b7d840e959c11d6e")
(setf (get in2ulv_msgs::CheckWithinLanelet :datatype-) "in2ulv_msgs/CheckWithinLanelet")
(setf (get in2ulv_msgs::CheckWithinLanelet :request) in2ulv_msgs::CheckWithinLaneletRequest)
(setf (get in2ulv_msgs::CheckWithinLanelet :response) in2ulv_msgs::CheckWithinLaneletResponse)

(defmethod in2ulv_msgs::CheckWithinLaneletRequest
  (:response () (instance in2ulv_msgs::CheckWithinLaneletResponse :init)))

(setf (get in2ulv_msgs::CheckWithinLaneletRequest :md5sum-) "da164720bf0d4371b7d840e959c11d6e")
(setf (get in2ulv_msgs::CheckWithinLaneletRequest :datatype-) "in2ulv_msgs/CheckWithinLaneletRequest")
(setf (get in2ulv_msgs::CheckWithinLaneletRequest :definition-)
      "# 帧头，包含时间戳信息
std_msgs/Header header

# 是否将当前定位结果作为目标点位置
bool use_localization_result

# use_localization_result 为 false 时候，需要设置目标点位置
geometry_msgs/Point position

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
# 是否在 lanelet 上
bool within
")

(setf (get in2ulv_msgs::CheckWithinLaneletResponse :md5sum-) "da164720bf0d4371b7d840e959c11d6e")
(setf (get in2ulv_msgs::CheckWithinLaneletResponse :datatype-) "in2ulv_msgs/CheckWithinLaneletResponse")
(setf (get in2ulv_msgs::CheckWithinLaneletResponse :definition-)
      "# 帧头，包含时间戳信息
std_msgs/Header header

# 是否将当前定位结果作为目标点位置
bool use_localization_result

# use_localization_result 为 false 时候，需要设置目标点位置
geometry_msgs/Point position

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
# 是否在 lanelet 上
bool within
")



(provide :in2ulv_msgs/CheckWithinLanelet "da164720bf0d4371b7d840e959c11d6e")


