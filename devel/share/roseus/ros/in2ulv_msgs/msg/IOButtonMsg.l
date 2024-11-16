;; Auto-generated. Do not edit!


(when (boundp 'in2ulv_msgs::IOButtonMsg)
  (if (not (find-package "IN2ULV_MSGS"))
    (make-package "IN2ULV_MSGS"))
  (shadow 'IOButtonMsg (find-package "IN2ULV_MSGS")))
(unless (find-package "IN2ULV_MSGS::IOBUTTONMSG")
  (make-package "IN2ULV_MSGS::IOBUTTONMSG"))

(in-package "ROS")
;;//! \htmlinclude IOButtonMsg.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass in2ulv_msgs::IOButtonMsg
  :super ros::object
  :slots (_header _module_type _error_code _io_validity _button_stop _button_a _button_b _button_c ))

(defmethod in2ulv_msgs::IOButtonMsg
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:module_type __module_type) 0)
    ((:error_code __error_code) 0)
    ((:io_validity __io_validity) nil)
    ((:button_stop __button_stop) 0)
    ((:button_a __button_a) 0)
    ((:button_b __button_b) 0)
    ((:button_c __button_c) 0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _module_type (round __module_type))
   (setq _error_code (round __error_code))
   (setq _io_validity __io_validity)
   (setq _button_stop (round __button_stop))
   (setq _button_a (round __button_a))
   (setq _button_b (round __button_b))
   (setq _button_c (round __button_c))
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
  (:io_validity
   (&optional (__io_validity :null))
   (if (not (eq __io_validity :null)) (setq _io_validity __io_validity)) _io_validity)
  (:button_stop
   (&optional __button_stop)
   (if __button_stop (setq _button_stop __button_stop)) _button_stop)
  (:button_a
   (&optional __button_a)
   (if __button_a (setq _button_a __button_a)) _button_a)
  (:button_b
   (&optional __button_b)
   (if __button_b (setq _button_b __button_b)) _button_b)
  (:button_c
   (&optional __button_c)
   (if __button_c (setq _button_c __button_c)) _button_c)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; uint8 _module_type
    1
    ;; uint32 _error_code
    4
    ;; bool _io_validity
    1
    ;; uint8 _button_stop
    1
    ;; uint8 _button_a
    1
    ;; uint8 _button_b
    1
    ;; uint8 _button_c
    1
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
     ;; bool _io_validity
       (if _io_validity (write-byte -1 s) (write-byte 0 s))
     ;; uint8 _button_stop
       (write-byte _button_stop s)
     ;; uint8 _button_a
       (write-byte _button_a s)
     ;; uint8 _button_b
       (write-byte _button_b s)
     ;; uint8 _button_c
       (write-byte _button_c s)
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
   ;; bool _io_validity
     (setq _io_validity (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; uint8 _button_stop
     (setq _button_stop (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _button_a
     (setq _button_a (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _button_b
     (setq _button_b (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _button_c
     (setq _button_c (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(setf (get in2ulv_msgs::IOButtonMsg :md5sum-) "157d5ffbca87ffa114dc6db487e4338a")
(setf (get in2ulv_msgs::IOButtonMsg :datatype-) "in2ulv_msgs/IOButtonMsg")
(setf (get in2ulv_msgs::IOButtonMsg :definition-)
      "# 帧头，包含时间戳信息
std_msgs/Header header

# 模块类型
uint8 module_type

# error_code
uint32 error_code

# 总线IO模块数据有效性：IO模块默认关闭，需要程序启动连接否则数据无效(0)
bool io_validity

# 按钮: var > 0 表示激活 var = 0 表示未激活
uint8 button_stop
uint8 button_a
uint8 button_b
uint8 button_c
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



(provide :in2ulv_msgs/IOButtonMsg "157d5ffbca87ffa114dc6db487e4338a")


