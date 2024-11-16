;; Auto-generated. Do not edit!


(when (boundp 'in2ulv_msgs::ActionType)
  (if (not (find-package "IN2ULV_MSGS"))
    (make-package "IN2ULV_MSGS"))
  (shadow 'ActionType (find-package "IN2ULV_MSGS")))
(unless (find-package "IN2ULV_MSGS::ACTIONTYPE")
  (make-package "IN2ULV_MSGS::ACTIONTYPE"))

(in-package "ROS")
;;//! \htmlinclude ActionType.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass in2ulv_msgs::ActionType
  :super ros::object
  :slots (_header _mode_type _action_type _task_type _target_point _veh_status ))

(defmethod in2ulv_msgs::ActionType
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:mode_type __mode_type) 0)
    ((:action_type __action_type) 0)
    ((:task_type __task_type) 0)
    ((:target_point __target_point) (instance geometry_msgs::Point :init))
    ((:veh_status __veh_status) 0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _mode_type (round __mode_type))
   (setq _action_type (round __action_type))
   (setq _task_type (round __task_type))
   (setq _target_point __target_point)
   (setq _veh_status (round __veh_status))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:mode_type
   (&optional __mode_type)
   (if __mode_type (setq _mode_type __mode_type)) _mode_type)
  (:action_type
   (&optional __action_type)
   (if __action_type (setq _action_type __action_type)) _action_type)
  (:task_type
   (&optional __task_type)
   (if __task_type (setq _task_type __task_type)) _task_type)
  (:target_point
   (&rest __target_point)
   (if (keywordp (car __target_point))
       (send* _target_point __target_point)
     (progn
       (if __target_point (setq _target_point (car __target_point)))
       _target_point)))
  (:veh_status
   (&optional __veh_status)
   (if __veh_status (setq _veh_status __veh_status)) _veh_status)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; uint8 _mode_type
    1
    ;; uint8 _action_type
    1
    ;; uint8 _task_type
    1
    ;; geometry_msgs/Point _target_point
    (send _target_point :serialization-length)
    ;; uint16 _veh_status
    2
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; uint8 _mode_type
       (write-byte _mode_type s)
     ;; uint8 _action_type
       (write-byte _action_type s)
     ;; uint8 _task_type
       (write-byte _task_type s)
     ;; geometry_msgs/Point _target_point
       (send _target_point :serialize s)
     ;; uint16 _veh_status
       (write-word _veh_status s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; uint8 _mode_type
     (setq _mode_type (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _action_type
     (setq _action_type (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _task_type
     (setq _task_type (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; geometry_msgs/Point _target_point
     (send _target_point :deserialize buf ptr-) (incf ptr- (send _target_point :serialization-length))
   ;; uint16 _veh_status
     (setq _veh_status (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;;
   self)
  )

(setf (get in2ulv_msgs::ActionType :md5sum-) "49541e196c68da7c6efd757fb7bb50aa")
(setf (get in2ulv_msgs::ActionType :datatype-) "in2ulv_msgs/ActionType")
(setf (get in2ulv_msgs::ActionType :definition-)
      "# 帧头，包含时间戳信息
std_msgs/Header header

# ULV模式
uint8 mode_type

# 动作类型
uint8 action_type

# 线路类型
uint8 task_type

# 目标点
geometry_msgs/Point target_point

uint16 veh_status

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

")



(provide :in2ulv_msgs/ActionType "49541e196c68da7c6efd757fb7bb50aa")


