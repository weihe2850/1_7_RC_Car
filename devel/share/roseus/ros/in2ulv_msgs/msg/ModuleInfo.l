;; Auto-generated. Do not edit!


(when (boundp 'in2ulv_msgs::ModuleInfo)
  (if (not (find-package "IN2ULV_MSGS"))
    (make-package "IN2ULV_MSGS"))
  (shadow 'ModuleInfo (find-package "IN2ULV_MSGS")))
(unless (find-package "IN2ULV_MSGS::MODULEINFO")
  (make-package "IN2ULV_MSGS::MODULEINFO"))

(in-package "ROS")
;;//! \htmlinclude ModuleInfo.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass in2ulv_msgs::ModuleInfo
  :super ros::object
  :slots (_header _module_type _action_status _error_code _module_info ))

(defmethod in2ulv_msgs::ModuleInfo
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:module_type __module_type) 0)
    ((:action_status __action_status) 0)
    ((:error_code __error_code) 0)
    ((:module_info __module_info) "")
    )
   (send-super :init)
   (setq _header __header)
   (setq _module_type (round __module_type))
   (setq _action_status (round __action_status))
   (setq _error_code (round __error_code))
   (setq _module_info (string __module_info))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:module_type
   (&optional __module_type)
   (if __module_type (setq _module_type __module_type)) _module_type)
  (:action_status
   (&optional __action_status)
   (if __action_status (setq _action_status __action_status)) _action_status)
  (:error_code
   (&optional __error_code)
   (if __error_code (setq _error_code __error_code)) _error_code)
  (:module_info
   (&optional __module_info)
   (if __module_info (setq _module_info __module_info)) _module_info)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; uint8 _module_type
    1
    ;; uint8 _action_status
    1
    ;; uint32 _error_code
    4
    ;; string _module_info
    4 (length _module_info)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; uint8 _module_type
       (write-byte _module_type s)
     ;; uint8 _action_status
       (write-byte _action_status s)
     ;; uint32 _error_code
       (write-long _error_code s)
     ;; string _module_info
       (write-long (length _module_info) s) (princ _module_info s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; uint8 _module_type
     (setq _module_type (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _action_status
     (setq _action_status (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint32 _error_code
     (setq _error_code (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; string _module_info
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _module_info (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(setf (get in2ulv_msgs::ModuleInfo :md5sum-) "6a719025a94e1687e6ec705fbb7f9012")
(setf (get in2ulv_msgs::ModuleInfo :datatype-) "in2ulv_msgs/ModuleInfo")
(setf (get in2ulv_msgs::ModuleInfo :definition-)
      "# 帧头，包含时间戳信息
std_msgs/Header header

# 模块类型
uint8 module_type

# 模块运行状态
uint8 action_status

# error_code
uint32 error_code

# 模块信息
string module_info
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

")



(provide :in2ulv_msgs/ModuleInfo "6a719025a94e1687e6ec705fbb7f9012")


