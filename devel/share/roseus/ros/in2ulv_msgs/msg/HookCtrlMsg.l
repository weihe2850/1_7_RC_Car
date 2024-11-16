;; Auto-generated. Do not edit!


(when (boundp 'in2ulv_msgs::HookCtrlMsg)
  (if (not (find-package "IN2ULV_MSGS"))
    (make-package "IN2ULV_MSGS"))
  (shadow 'HookCtrlMsg (find-package "IN2ULV_MSGS")))
(unless (find-package "IN2ULV_MSGS::HOOKCTRLMSG")
  (make-package "IN2ULV_MSGS::HOOKCTRLMSG"))

(in-package "ROS")
;;//! \htmlinclude HookCtrlMsg.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass in2ulv_msgs::HookCtrlMsg
  :super ros::object
  :slots (_header _module_type _error_code _AHDModRqst _BckUpSts _AHDRstRqst _AHDPosRqstV _AHDPosRqst ))

(defmethod in2ulv_msgs::HookCtrlMsg
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:module_type __module_type) 0)
    ((:error_code __error_code) 0)
    ((:AHDModRqst __AHDModRqst) 0)
    ((:BckUpSts __BckUpSts) 0)
    ((:AHDRstRqst __AHDRstRqst) 0)
    ((:AHDPosRqstV __AHDPosRqstV) 0)
    ((:AHDPosRqst __AHDPosRqst) 0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _module_type (round __module_type))
   (setq _error_code (round __error_code))
   (setq _AHDModRqst (round __AHDModRqst))
   (setq _BckUpSts (round __BckUpSts))
   (setq _AHDRstRqst (round __AHDRstRqst))
   (setq _AHDPosRqstV (round __AHDPosRqstV))
   (setq _AHDPosRqst (round __AHDPosRqst))
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
  (:AHDModRqst
   (&optional __AHDModRqst)
   (if __AHDModRqst (setq _AHDModRqst __AHDModRqst)) _AHDModRqst)
  (:BckUpSts
   (&optional __BckUpSts)
   (if __BckUpSts (setq _BckUpSts __BckUpSts)) _BckUpSts)
  (:AHDRstRqst
   (&optional __AHDRstRqst)
   (if __AHDRstRqst (setq _AHDRstRqst __AHDRstRqst)) _AHDRstRqst)
  (:AHDPosRqstV
   (&optional __AHDPosRqstV)
   (if __AHDPosRqstV (setq _AHDPosRqstV __AHDPosRqstV)) _AHDPosRqstV)
  (:AHDPosRqst
   (&optional __AHDPosRqst)
   (if __AHDPosRqst (setq _AHDPosRqst __AHDPosRqst)) _AHDPosRqst)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; uint8 _module_type
    1
    ;; uint32 _error_code
    4
    ;; uint8 _AHDModRqst
    1
    ;; uint8 _BckUpSts
    1
    ;; uint8 _AHDRstRqst
    1
    ;; uint8 _AHDPosRqstV
    1
    ;; int32 _AHDPosRqst
    4
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
     ;; uint8 _AHDModRqst
       (write-byte _AHDModRqst s)
     ;; uint8 _BckUpSts
       (write-byte _BckUpSts s)
     ;; uint8 _AHDRstRqst
       (write-byte _AHDRstRqst s)
     ;; uint8 _AHDPosRqstV
       (write-byte _AHDPosRqstV s)
     ;; int32 _AHDPosRqst
       (write-long _AHDPosRqst s)
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
   ;; uint8 _AHDModRqst
     (setq _AHDModRqst (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _BckUpSts
     (setq _BckUpSts (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _AHDRstRqst
     (setq _AHDRstRqst (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _AHDPosRqstV
     (setq _AHDPosRqstV (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; int32 _AHDPosRqst
     (setq _AHDPosRqst (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get in2ulv_msgs::HookCtrlMsg :md5sum-) "9051bf82eb1b0bc832bea74601287bfd")
(setf (get in2ulv_msgs::HookCtrlMsg :datatype-) "in2ulv_msgs/HookCtrlMsg")
(setf (get in2ulv_msgs::HookCtrlMsg :definition-)
      "# 帧头，包含时间戳信息
std_msgs/Header header

# 模块类型
uint8 module_type

# error_code
uint32 error_code

# 模块信息
# IDU Automatic Hook Status 0x31E
uint8 AHDModRqst    # 自动脱挂钩功能请求
uint8 BckUpSts      # 倒车状态
uint8 AHDRstRqst    # 自动脱挂钩重置请求
uint8 AHDPosRqstV   # 自动脱挂钩位置请求有效性
int32 AHDPosRqst    # 自动脱挂钩位置请求
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



(provide :in2ulv_msgs/HookCtrlMsg "9051bf82eb1b0bc832bea74601287bfd")


