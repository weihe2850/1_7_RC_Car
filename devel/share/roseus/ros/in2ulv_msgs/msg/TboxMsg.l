;; Auto-generated. Do not edit!


(when (boundp 'in2ulv_msgs::TboxMsg)
  (if (not (find-package "IN2ULV_MSGS"))
    (make-package "IN2ULV_MSGS"))
  (shadow 'TboxMsg (find-package "IN2ULV_MSGS")))
(unless (find-package "IN2ULV_MSGS::TBOXMSG")
  (make-package "IN2ULV_MSGS::TBOXMSG"))

(in-package "ROS")
;;//! \htmlinclude TboxMsg.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass in2ulv_msgs::TboxMsg
  :super ros::object
  :slots (_header _module_type _error_code _tbox_data ))

(defmethod in2ulv_msgs::TboxMsg
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:module_type __module_type) 0)
    ((:error_code __error_code) 0)
    ((:tbox_data __tbox_data) "")
    )
   (send-super :init)
   (setq _header __header)
   (setq _module_type (round __module_type))
   (setq _error_code (round __error_code))
   (setq _tbox_data (string __tbox_data))
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
  (:error_code
   (&optional __error_code)
   (if __error_code (setq _error_code __error_code)) _error_code)
  (:tbox_data
   (&optional __tbox_data)
   (if __tbox_data (setq _tbox_data __tbox_data)) _tbox_data)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; uint8 _module_type
    1
    ;; uint32 _error_code
    4
    ;; string _tbox_data
    4 (length _tbox_data)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; uint8 _module_type
       (write-byte _module_type s)
     ;; uint32 _error_code
       (write-long _error_code s)
     ;; string _tbox_data
       (write-long (length _tbox_data) s) (princ _tbox_data s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; uint8 _module_type
     (setq _module_type (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint32 _error_code
     (setq _error_code (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; string _tbox_data
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _tbox_data (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(setf (get in2ulv_msgs::TboxMsg :md5sum-) "a436feac23c2c2b44f15582f6ec61f34")
(setf (get in2ulv_msgs::TboxMsg :datatype-) "in2ulv_msgs/TboxMsg")
(setf (get in2ulv_msgs::TboxMsg :definition-)
      "# 帧头，包含时间戳信息
std_msgs/Header header

# 模块类型
uint8 module_type

# error_code
uint32 error_code

# 模块信息
string tbox_data
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



(provide :in2ulv_msgs/TboxMsg "a436feac23c2c2b44f15582f6ec61f34")


