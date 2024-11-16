;; Auto-generated. Do not edit!


(when (boundp 'in2ulv_msgs::SignalInfo)
  (if (not (find-package "IN2ULV_MSGS"))
    (make-package "IN2ULV_MSGS"))
  (shadow 'SignalInfo (find-package "IN2ULV_MSGS")))
(unless (find-package "IN2ULV_MSGS::SIGNALINFO")
  (make-package "IN2ULV_MSGS::SIGNALINFO"))

(in-package "ROS")
;;//! \htmlinclude SignalInfo.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass in2ulv_msgs::SignalInfo
  :super ros::object
  :slots (_header _signal ))

(defmethod in2ulv_msgs::SignalInfo
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:signal __signal) nil)
    )
   (send-super :init)
   (setq _header __header)
   (setq _signal __signal)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:signal
   (&optional (__signal :null))
   (if (not (eq __signal :null)) (setq _signal __signal)) _signal)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; bool _signal
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; bool _signal
       (if _signal (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; bool _signal
     (setq _signal (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(setf (get in2ulv_msgs::SignalInfo :md5sum-) "70f6c980fd9a5a13a4ccaf5fb3adefdd")
(setf (get in2ulv_msgs::SignalInfo :datatype-) "in2ulv_msgs/SignalInfo")
(setf (get in2ulv_msgs::SignalInfo :definition-)
      "std_msgs/Header header
#交通灯信号 0为绿灯 1为红灯
bool signal
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



(provide :in2ulv_msgs/SignalInfo "70f6c980fd9a5a13a4ccaf5fb3adefdd")


