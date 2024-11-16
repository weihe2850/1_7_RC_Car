;; Auto-generated. Do not edit!


(when (boundp 'in2ulv_msgs::GisInfo)
  (if (not (find-package "IN2ULV_MSGS"))
    (make-package "IN2ULV_MSGS"))
  (shadow 'GisInfo (find-package "IN2ULV_MSGS")))
(unless (find-package "IN2ULV_MSGS::GISINFO")
  (make-package "IN2ULV_MSGS::GISINFO"))

(in-package "ROS")
;;//! \htmlinclude GisInfo.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass in2ulv_msgs::GisInfo
  :super ros::object
  :slots (_header _status _indicator_status _gear _x _y _yaw _speed ))

(defmethod in2ulv_msgs::GisInfo
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:status __status) 0)
    ((:indicator_status __indicator_status) 0)
    ((:gear __gear) 0)
    ((:x __x) (make-array 301 :initial-element 0.0 :element-type :float))
    ((:y __y) (make-array 301 :initial-element 0.0 :element-type :float))
    ((:yaw __yaw) (make-array 301 :initial-element 0.0 :element-type :float))
    ((:speed __speed) (make-array 301 :initial-element 0.0 :element-type :float))
    )
   (send-super :init)
   (setq _header __header)
   (setq _status (round __status))
   (setq _indicator_status (round __indicator_status))
   (setq _gear (round __gear))
   (setq _x __x)
   (setq _y __y)
   (setq _yaw __yaw)
   (setq _speed __speed)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:status
   (&optional __status)
   (if __status (setq _status __status)) _status)
  (:indicator_status
   (&optional __indicator_status)
   (if __indicator_status (setq _indicator_status __indicator_status)) _indicator_status)
  (:gear
   (&optional __gear)
   (if __gear (setq _gear __gear)) _gear)
  (:x
   (&optional __x)
   (if __x (setq _x __x)) _x)
  (:y
   (&optional __y)
   (if __y (setq _y __y)) _y)
  (:yaw
   (&optional __yaw)
   (if __yaw (setq _yaw __yaw)) _yaw)
  (:speed
   (&optional __speed)
   (if __speed (setq _speed __speed)) _speed)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; uint8 _status
    1
    ;; uint8 _indicator_status
    1
    ;; uint8 _gear
    1
    ;; float64[301] _x
    (* 8    301)
    ;; float64[301] _y
    (* 8    301)
    ;; float64[301] _yaw
    (* 8    301)
    ;; float64[301] _speed
    (* 8    301)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; uint8 _status
       (write-byte _status s)
     ;; uint8 _indicator_status
       (write-byte _indicator_status s)
     ;; uint8 _gear
       (write-byte _gear s)
     ;; float64[301] _x
     (dotimes (i 301)
       (sys::poke (elt _x i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; float64[301] _y
     (dotimes (i 301)
       (sys::poke (elt _y i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; float64[301] _yaw
     (dotimes (i 301)
       (sys::poke (elt _yaw i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; float64[301] _speed
     (dotimes (i 301)
       (sys::poke (elt _speed i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; uint8 _status
     (setq _status (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _indicator_status
     (setq _indicator_status (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _gear
     (setq _gear (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; float64[301] _x
   (dotimes (i (length _x))
     (setf (elt _x i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     )
   ;; float64[301] _y
   (dotimes (i (length _y))
     (setf (elt _y i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     )
   ;; float64[301] _yaw
   (dotimes (i (length _yaw))
     (setf (elt _yaw i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     )
   ;; float64[301] _speed
   (dotimes (i (length _speed))
     (setf (elt _speed i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     )
   ;;
   self)
  )

(setf (get in2ulv_msgs::GisInfo :md5sum-) "c9625dbf880cccfdb88400ff3cfa664d")
(setf (get in2ulv_msgs::GisInfo :datatype-) "in2ulv_msgs/GisInfo")
(setf (get in2ulv_msgs::GisInfo :definition-)
      "std_msgs/Header header
#行驶模式标志,0停止，1行驶
uint8 status
#转向灯,0不闪，1右转向灯闪，2左转向灯闪
uint8 indicator_status
#档位，0空挡，1为D档，2为R档，3为P档
uint8 gear
#GIS局部路径导航点，输出原点为（1500，1000）
float64[301] x
float64[301] y
#-PI左偏到PI右偏
float64[301] yaw
#对应导航点期望速度
float64[301] speed


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



(provide :in2ulv_msgs/GisInfo "c9625dbf880cccfdb88400ff3cfa664d")


