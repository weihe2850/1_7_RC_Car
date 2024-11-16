;; Auto-generated. Do not edit!


(when (boundp 'in2ulv_msgs::HookMsg)
  (if (not (find-package "IN2ULV_MSGS"))
    (make-package "IN2ULV_MSGS"))
  (shadow 'HookMsg (find-package "IN2ULV_MSGS")))
(unless (find-package "IN2ULV_MSGS::HOOKMSG")
  (make-package "IN2ULV_MSGS::HOOKMSG"))

(in-package "ROS")
;;//! \htmlinclude HookMsg.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass in2ulv_msgs::HookMsg
  :super ros::object
  :slots (_header _module_type _error_code _AHDCortSts _HokPosVal _HokCntpintSts _HokCntSts _HokRstSts ))

(defmethod in2ulv_msgs::HookMsg
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:module_type __module_type) 0)
    ((:error_code __error_code) 0)
    ((:AHDCortSts __AHDCortSts) 0)
    ((:HokPosVal __HokPosVal) 0)
    ((:HokCntpintSts __HokCntpintSts) 0)
    ((:HokCntSts __HokCntSts) 0)
    ((:HokRstSts __HokRstSts) 0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _module_type (round __module_type))
   (setq _error_code (round __error_code))
   (setq _AHDCortSts (round __AHDCortSts))
   (setq _HokPosVal (round __HokPosVal))
   (setq _HokCntpintSts (round __HokCntpintSts))
   (setq _HokCntSts (round __HokCntSts))
   (setq _HokRstSts (round __HokRstSts))
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
  (:AHDCortSts
   (&optional __AHDCortSts)
   (if __AHDCortSts (setq _AHDCortSts __AHDCortSts)) _AHDCortSts)
  (:HokPosVal
   (&optional __HokPosVal)
   (if __HokPosVal (setq _HokPosVal __HokPosVal)) _HokPosVal)
  (:HokCntpintSts
   (&optional __HokCntpintSts)
   (if __HokCntpintSts (setq _HokCntpintSts __HokCntpintSts)) _HokCntpintSts)
  (:HokCntSts
   (&optional __HokCntSts)
   (if __HokCntSts (setq _HokCntSts __HokCntSts)) _HokCntSts)
  (:HokRstSts
   (&optional __HokRstSts)
   (if __HokRstSts (setq _HokRstSts __HokRstSts)) _HokRstSts)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; uint8 _module_type
    1
    ;; uint32 _error_code
    4
    ;; uint8 _AHDCortSts
    1
    ;; int32 _HokPosVal
    4
    ;; uint8 _HokCntpintSts
    1
    ;; uint8 _HokCntSts
    1
    ;; uint8 _HokRstSts
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
     ;; uint8 _AHDCortSts
       (write-byte _AHDCortSts s)
     ;; int32 _HokPosVal
       (write-long _HokPosVal s)
     ;; uint8 _HokCntpintSts
       (write-byte _HokCntpintSts s)
     ;; uint8 _HokCntSts
       (write-byte _HokCntSts s)
     ;; uint8 _HokRstSts
       (write-byte _HokRstSts s)
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
   ;; uint8 _AHDCortSts
     (setq _AHDCortSts (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; int32 _HokPosVal
     (setq _HokPosVal (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint8 _HokCntpintSts
     (setq _HokCntpintSts (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _HokCntSts
     (setq _HokCntSts (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _HokRstSts
     (setq _HokRstSts (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(setf (get in2ulv_msgs::HookMsg :md5sum-) "e5d852e0489802c930a6ca6cba9f4263")
(setf (get in2ulv_msgs::HookMsg :datatype-) "in2ulv_msgs/HookMsg")
(setf (get in2ulv_msgs::HookMsg :definition-)
      "# 帧头，包含时间戳信息
std_msgs/Header header

# 模块类型
uint8 module_type

# error_code
uint32 error_code

# 模块信息
# AHD General Status 0x340
uint8 AHDCortSts    # 自动脱挂钩纠偏状态
int32 HokPosVal     # 挂钩位置
uint8 HokCntpintSts # 挂钩对位状态
uint8 HokCntSts     # 挂钩连接状态
uint8 HokRstSts     # 挂钩复位状态

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



(provide :in2ulv_msgs/HookMsg "e5d852e0489802c930a6ca6cba9f4263")


