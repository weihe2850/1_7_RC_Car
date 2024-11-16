;; Auto-generated. Do not edit!


(when (boundp 'in2ulv_msgs::HMIStepReport)
  (if (not (find-package "IN2ULV_MSGS"))
    (make-package "IN2ULV_MSGS"))
  (shadow 'HMIStepReport (find-package "IN2ULV_MSGS")))
(unless (find-package "IN2ULV_MSGS::HMISTEPREPORT")
  (make-package "IN2ULV_MSGS::HMISTEPREPORT"))

(in-package "ROS")
;;//! \htmlinclude HMIStepReport.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass in2ulv_msgs::HMIStepReport
  :super ros::object
  :slots (_header _step_report _station_id ))

(defmethod in2ulv_msgs::HMIStepReport
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:step_report __step_report) 0)
    ((:station_id __station_id) 0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _step_report (round __step_report))
   (setq _station_id (round __station_id))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:step_report
   (&optional __step_report)
   (if __step_report (setq _step_report __step_report)) _step_report)
  (:station_id
   (&optional __station_id)
   (if __station_id (setq _station_id __station_id)) _station_id)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; uint8 _step_report
    1
    ;; uint32 _station_id
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; uint8 _step_report
       (write-byte _step_report s)
     ;; uint32 _station_id
       (write-long _station_id s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; uint8 _step_report
     (setq _step_report (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint32 _station_id
     (setq _station_id (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get in2ulv_msgs::HMIStepReport :md5sum-) "1690f2b8b61886c2a07014ccb5c01a39")
(setf (get in2ulv_msgs::HMIStepReport :datatype-) "in2ulv_msgs/HMIStepReport")
(setf (get in2ulv_msgs::HMIStepReport :definition-)
      "# 帧头，包含时间戳信息
std_msgs/Header header

# 任务步骤反馈
# FULL_SUCCESS 或 PART_SUCCESS
uint8 step_report

# 如果完成的是带有 station id 的 HEAD_FOR_GOAL 任务，则返回正确的 station id
uint32 station_id
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



(provide :in2ulv_msgs/HMIStepReport "1690f2b8b61886c2a07014ccb5c01a39")


