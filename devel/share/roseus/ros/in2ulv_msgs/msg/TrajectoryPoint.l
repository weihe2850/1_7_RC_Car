;; Auto-generated. Do not edit!


(when (boundp 'in2ulv_msgs::TrajectoryPoint)
  (if (not (find-package "IN2ULV_MSGS"))
    (make-package "IN2ULV_MSGS"))
  (shadow 'TrajectoryPoint (find-package "IN2ULV_MSGS")))
(unless (find-package "IN2ULV_MSGS::TRAJECTORYPOINT")
  (make-package "IN2ULV_MSGS::TRAJECTORYPOINT"))

(in-package "ROS")
;;//! \htmlinclude TrajectoryPoint.msg.html


(defclass in2ulv_msgs::TrajectoryPoint
  :super ros::object
  :slots (_indicator_status _gear _x _y _theta _v _a ))

(defmethod in2ulv_msgs::TrajectoryPoint
  (:init
   (&key
    ((:indicator_status __indicator_status) 0)
    ((:gear __gear) 0)
    ((:x __x) 0.0)
    ((:y __y) 0.0)
    ((:theta __theta) 0.0)
    ((:v __v) 0.0)
    ((:a __a) 0.0)
    )
   (send-super :init)
   (setq _indicator_status (round __indicator_status))
   (setq _gear (round __gear))
   (setq _x (float __x))
   (setq _y (float __y))
   (setq _theta (float __theta))
   (setq _v (float __v))
   (setq _a (float __a))
   self)
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
  (:theta
   (&optional __theta)
   (if __theta (setq _theta __theta)) _theta)
  (:v
   (&optional __v)
   (if __v (setq _v __v)) _v)
  (:a
   (&optional __a)
   (if __a (setq _a __a)) _a)
  (:serialization-length
   ()
   (+
    ;; uint8 _indicator_status
    1
    ;; uint8 _gear
    1
    ;; float64 _x
    8
    ;; float64 _y
    8
    ;; float64 _theta
    8
    ;; float64 _v
    8
    ;; float64 _a
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _indicator_status
       (write-byte _indicator_status s)
     ;; uint8 _gear
       (write-byte _gear s)
     ;; float64 _x
       (sys::poke _x (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _y
       (sys::poke _y (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _theta
       (sys::poke _theta (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _v
       (sys::poke _v (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _a
       (sys::poke _a (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _indicator_status
     (setq _indicator_status (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _gear
     (setq _gear (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; float64 _x
     (setq _x (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _y
     (setq _y (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _theta
     (setq _theta (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _v
     (setq _v (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _a
     (setq _a (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(setf (get in2ulv_msgs::TrajectoryPoint :md5sum-) "125c7464e0d7fbb6cea049f6bc1ce29d")
(setf (get in2ulv_msgs::TrajectoryPoint :datatype-) "in2ulv_msgs/TrajectoryPoint")
(setf (get in2ulv_msgs::TrajectoryPoint :definition-)
      "# 转向灯, 0不闪，1右转向灯闪，2左转向灯闪, 3双闪
uint8 indicator_status

# 档位，0空挡，1为D档，2为R档，3为P档
uint8 gear

# 车体坐标系导航位姿
float64 x
float64 y
float64 theta
float64 v
float64 a

")



(provide :in2ulv_msgs/TrajectoryPoint "125c7464e0d7fbb6cea049f6bc1ce29d")


