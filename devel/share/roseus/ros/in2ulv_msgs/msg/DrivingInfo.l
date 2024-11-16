;; Auto-generated. Do not edit!


(when (boundp 'in2ulv_msgs::DrivingInfo)
  (if (not (find-package "IN2ULV_MSGS"))
    (make-package "IN2ULV_MSGS"))
  (shadow 'DrivingInfo (find-package "IN2ULV_MSGS")))
(unless (find-package "IN2ULV_MSGS::DRIVINGINFO")
  (make-package "IN2ULV_MSGS::DRIVINGINFO"))

(in-package "ROS")
;;//! \htmlinclude DrivingInfo.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass in2ulv_msgs::DrivingInfo
  :super ros::object
  :slots (_header _avoidanceflag _total_mileage _completed_mileage _remaining_time ))

(defmethod in2ulv_msgs::DrivingInfo
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:avoidanceflag __avoidanceflag) nil)
    ((:total_mileage __total_mileage) 0.0)
    ((:completed_mileage __completed_mileage) 0.0)
    ((:remaining_time __remaining_time) 0.0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _avoidanceflag __avoidanceflag)
   (setq _total_mileage (float __total_mileage))
   (setq _completed_mileage (float __completed_mileage))
   (setq _remaining_time (float __remaining_time))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:avoidanceflag
   (&optional (__avoidanceflag :null))
   (if (not (eq __avoidanceflag :null)) (setq _avoidanceflag __avoidanceflag)) _avoidanceflag)
  (:total_mileage
   (&optional __total_mileage)
   (if __total_mileage (setq _total_mileage __total_mileage)) _total_mileage)
  (:completed_mileage
   (&optional __completed_mileage)
   (if __completed_mileage (setq _completed_mileage __completed_mileage)) _completed_mileage)
  (:remaining_time
   (&optional __remaining_time)
   (if __remaining_time (setq _remaining_time __remaining_time)) _remaining_time)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; bool _avoidanceflag
    1
    ;; float64 _total_mileage
    8
    ;; float64 _completed_mileage
    8
    ;; float64 _remaining_time
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; bool _avoidanceflag
       (if _avoidanceflag (write-byte -1 s) (write-byte 0 s))
     ;; float64 _total_mileage
       (sys::poke _total_mileage (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _completed_mileage
       (sys::poke _completed_mileage (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _remaining_time
       (sys::poke _remaining_time (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; bool _avoidanceflag
     (setq _avoidanceflag (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; float64 _total_mileage
     (setq _total_mileage (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _completed_mileage
     (setq _completed_mileage (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _remaining_time
     (setq _remaining_time (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(setf (get in2ulv_msgs::DrivingInfo :md5sum-) "3fdabca3408297c4e235a4ea8aa8aad5")
(setf (get in2ulv_msgs::DrivingInfo :datatype-) "in2ulv_msgs/DrivingInfo")
(setf (get in2ulv_msgs::DrivingInfo :definition-)
      "std_msgs/Header header

bool avoidanceflag

float64 total_mileage

float64 completed_mileage

float64 remaining_time
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



(provide :in2ulv_msgs/DrivingInfo "3fdabca3408297c4e235a4ea8aa8aad5")


