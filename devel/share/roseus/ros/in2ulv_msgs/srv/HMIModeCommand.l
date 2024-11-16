;; Auto-generated. Do not edit!


(when (boundp 'in2ulv_msgs::HMIModeCommand)
  (if (not (find-package "IN2ULV_MSGS"))
    (make-package "IN2ULV_MSGS"))
  (shadow 'HMIModeCommand (find-package "IN2ULV_MSGS")))
(unless (find-package "IN2ULV_MSGS::HMIMODECOMMAND")
  (make-package "IN2ULV_MSGS::HMIMODECOMMAND"))
(unless (find-package "IN2ULV_MSGS::HMIMODECOMMANDREQUEST")
  (make-package "IN2ULV_MSGS::HMIMODECOMMANDREQUEST"))
(unless (find-package "IN2ULV_MSGS::HMIMODECOMMANDRESPONSE")
  (make-package "IN2ULV_MSGS::HMIMODECOMMANDRESPONSE"))

(in-package "ROS")

(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))




(defclass in2ulv_msgs::HMIModeCommandRequest
  :super ros::object
  :slots (_header _mode_type ))

(defmethod in2ulv_msgs::HMIModeCommandRequest
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:mode_type __mode_type) 0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _mode_type (round __mode_type))
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
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; uint8 _mode_type
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; uint8 _mode_type
       (write-byte _mode_type s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; uint8 _mode_type
     (setq _mode_type (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(defclass in2ulv_msgs::HMIModeCommandResponse
  :super ros::object
  :slots (_receive_status _receive_info ))

(defmethod in2ulv_msgs::HMIModeCommandResponse
  (:init
   (&key
    ((:receive_status __receive_status) nil)
    ((:receive_info __receive_info) "")
    )
   (send-super :init)
   (setq _receive_status __receive_status)
   (setq _receive_info (string __receive_info))
   self)
  (:receive_status
   (&optional (__receive_status :null))
   (if (not (eq __receive_status :null)) (setq _receive_status __receive_status)) _receive_status)
  (:receive_info
   (&optional __receive_info)
   (if __receive_info (setq _receive_info __receive_info)) _receive_info)
  (:serialization-length
   ()
   (+
    ;; bool _receive_status
    1
    ;; string _receive_info
    4 (length _receive_info)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _receive_status
       (if _receive_status (write-byte -1 s) (write-byte 0 s))
     ;; string _receive_info
       (write-long (length _receive_info) s) (princ _receive_info s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _receive_status
     (setq _receive_status (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; string _receive_info
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _receive_info (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass in2ulv_msgs::HMIModeCommand
  :super ros::object
  :slots ())

(setf (get in2ulv_msgs::HMIModeCommand :md5sum-) "faa5d2d67ab17bd67adc93c419a58b77")
(setf (get in2ulv_msgs::HMIModeCommand :datatype-) "in2ulv_msgs/HMIModeCommand")
(setf (get in2ulv_msgs::HMIModeCommand :request) in2ulv_msgs::HMIModeCommandRequest)
(setf (get in2ulv_msgs::HMIModeCommand :response) in2ulv_msgs::HMIModeCommandResponse)

(defmethod in2ulv_msgs::HMIModeCommandRequest
  (:response () (instance in2ulv_msgs::HMIModeCommandResponse :init)))

(setf (get in2ulv_msgs::HMIModeCommandRequest :md5sum-) "faa5d2d67ab17bd67adc93c419a58b77")
(setf (get in2ulv_msgs::HMIModeCommandRequest :datatype-) "in2ulv_msgs/HMIModeCommandRequest")
(setf (get in2ulv_msgs::HMIModeCommandRequest :definition-)
      "# 帧头，包含时间戳信息
std_msgs/Header header

# 模式设置
uint8 mode_type

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
---
# 指令接收状态
bool receive_status

# 指令接收信息
string receive_info
")

(setf (get in2ulv_msgs::HMIModeCommandResponse :md5sum-) "faa5d2d67ab17bd67adc93c419a58b77")
(setf (get in2ulv_msgs::HMIModeCommandResponse :datatype-) "in2ulv_msgs/HMIModeCommandResponse")
(setf (get in2ulv_msgs::HMIModeCommandResponse :definition-)
      "# 帧头，包含时间戳信息
std_msgs/Header header

# 模式设置
uint8 mode_type

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
---
# 指令接收状态
bool receive_status

# 指令接收信息
string receive_info
")



(provide :in2ulv_msgs/HMIModeCommand "faa5d2d67ab17bd67adc93c419a58b77")


