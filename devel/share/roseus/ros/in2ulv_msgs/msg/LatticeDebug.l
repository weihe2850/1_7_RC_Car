;; Auto-generated. Do not edit!


(when (boundp 'in2ulv_msgs::LatticeDebug)
  (if (not (find-package "IN2ULV_MSGS"))
    (make-package "IN2ULV_MSGS"))
  (shadow 'LatticeDebug (find-package "IN2ULV_MSGS")))
(unless (find-package "IN2ULV_MSGS::LATTICEDEBUG")
  (make-package "IN2ULV_MSGS::LATTICEDEBUG"))

(in-package "ROS")
;;//! \htmlinclude LatticeDebug.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass in2ulv_msgs::LatticeDebug
  :super ros::object
  :slots (_header _trajectory_point_x _trajectory_point_y _trajectory_point_theta _trajectory_point_kappa _trajectory_point_v _trajectory_point_a _matched_point_s _matched_point_x _matched_point_y _matched_point_theta _matched_point_kappa _matched_point_kappa_prime _s _s_dot _s_ddot _d _d_prime _d_pprime _stop_point_distance ))

(defmethod in2ulv_msgs::LatticeDebug
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:trajectory_point_x __trajectory_point_x) 0.0)
    ((:trajectory_point_y __trajectory_point_y) 0.0)
    ((:trajectory_point_theta __trajectory_point_theta) 0.0)
    ((:trajectory_point_kappa __trajectory_point_kappa) 0.0)
    ((:trajectory_point_v __trajectory_point_v) 0.0)
    ((:trajectory_point_a __trajectory_point_a) 0.0)
    ((:matched_point_s __matched_point_s) 0.0)
    ((:matched_point_x __matched_point_x) 0.0)
    ((:matched_point_y __matched_point_y) 0.0)
    ((:matched_point_theta __matched_point_theta) 0.0)
    ((:matched_point_kappa __matched_point_kappa) 0.0)
    ((:matched_point_kappa_prime __matched_point_kappa_prime) 0.0)
    ((:s __s) 0.0)
    ((:s_dot __s_dot) 0.0)
    ((:s_ddot __s_ddot) 0.0)
    ((:d __d) 0.0)
    ((:d_prime __d_prime) 0.0)
    ((:d_pprime __d_pprime) 0.0)
    ((:stop_point_distance __stop_point_distance) 0.0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _trajectory_point_x (float __trajectory_point_x))
   (setq _trajectory_point_y (float __trajectory_point_y))
   (setq _trajectory_point_theta (float __trajectory_point_theta))
   (setq _trajectory_point_kappa (float __trajectory_point_kappa))
   (setq _trajectory_point_v (float __trajectory_point_v))
   (setq _trajectory_point_a (float __trajectory_point_a))
   (setq _matched_point_s (float __matched_point_s))
   (setq _matched_point_x (float __matched_point_x))
   (setq _matched_point_y (float __matched_point_y))
   (setq _matched_point_theta (float __matched_point_theta))
   (setq _matched_point_kappa (float __matched_point_kappa))
   (setq _matched_point_kappa_prime (float __matched_point_kappa_prime))
   (setq _s (float __s))
   (setq _s_dot (float __s_dot))
   (setq _s_ddot (float __s_ddot))
   (setq _d (float __d))
   (setq _d_prime (float __d_prime))
   (setq _d_pprime (float __d_pprime))
   (setq _stop_point_distance (float __stop_point_distance))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:trajectory_point_x
   (&optional __trajectory_point_x)
   (if __trajectory_point_x (setq _trajectory_point_x __trajectory_point_x)) _trajectory_point_x)
  (:trajectory_point_y
   (&optional __trajectory_point_y)
   (if __trajectory_point_y (setq _trajectory_point_y __trajectory_point_y)) _trajectory_point_y)
  (:trajectory_point_theta
   (&optional __trajectory_point_theta)
   (if __trajectory_point_theta (setq _trajectory_point_theta __trajectory_point_theta)) _trajectory_point_theta)
  (:trajectory_point_kappa
   (&optional __trajectory_point_kappa)
   (if __trajectory_point_kappa (setq _trajectory_point_kappa __trajectory_point_kappa)) _trajectory_point_kappa)
  (:trajectory_point_v
   (&optional __trajectory_point_v)
   (if __trajectory_point_v (setq _trajectory_point_v __trajectory_point_v)) _trajectory_point_v)
  (:trajectory_point_a
   (&optional __trajectory_point_a)
   (if __trajectory_point_a (setq _trajectory_point_a __trajectory_point_a)) _trajectory_point_a)
  (:matched_point_s
   (&optional __matched_point_s)
   (if __matched_point_s (setq _matched_point_s __matched_point_s)) _matched_point_s)
  (:matched_point_x
   (&optional __matched_point_x)
   (if __matched_point_x (setq _matched_point_x __matched_point_x)) _matched_point_x)
  (:matched_point_y
   (&optional __matched_point_y)
   (if __matched_point_y (setq _matched_point_y __matched_point_y)) _matched_point_y)
  (:matched_point_theta
   (&optional __matched_point_theta)
   (if __matched_point_theta (setq _matched_point_theta __matched_point_theta)) _matched_point_theta)
  (:matched_point_kappa
   (&optional __matched_point_kappa)
   (if __matched_point_kappa (setq _matched_point_kappa __matched_point_kappa)) _matched_point_kappa)
  (:matched_point_kappa_prime
   (&optional __matched_point_kappa_prime)
   (if __matched_point_kappa_prime (setq _matched_point_kappa_prime __matched_point_kappa_prime)) _matched_point_kappa_prime)
  (:s
   (&optional __s)
   (if __s (setq _s __s)) _s)
  (:s_dot
   (&optional __s_dot)
   (if __s_dot (setq _s_dot __s_dot)) _s_dot)
  (:s_ddot
   (&optional __s_ddot)
   (if __s_ddot (setq _s_ddot __s_ddot)) _s_ddot)
  (:d
   (&optional __d)
   (if __d (setq _d __d)) _d)
  (:d_prime
   (&optional __d_prime)
   (if __d_prime (setq _d_prime __d_prime)) _d_prime)
  (:d_pprime
   (&optional __d_pprime)
   (if __d_pprime (setq _d_pprime __d_pprime)) _d_pprime)
  (:stop_point_distance
   (&optional __stop_point_distance)
   (if __stop_point_distance (setq _stop_point_distance __stop_point_distance)) _stop_point_distance)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; float64 _trajectory_point_x
    8
    ;; float64 _trajectory_point_y
    8
    ;; float64 _trajectory_point_theta
    8
    ;; float64 _trajectory_point_kappa
    8
    ;; float64 _trajectory_point_v
    8
    ;; float64 _trajectory_point_a
    8
    ;; float64 _matched_point_s
    8
    ;; float64 _matched_point_x
    8
    ;; float64 _matched_point_y
    8
    ;; float64 _matched_point_theta
    8
    ;; float64 _matched_point_kappa
    8
    ;; float64 _matched_point_kappa_prime
    8
    ;; float64 _s
    8
    ;; float64 _s_dot
    8
    ;; float64 _s_ddot
    8
    ;; float64 _d
    8
    ;; float64 _d_prime
    8
    ;; float64 _d_pprime
    8
    ;; float64 _stop_point_distance
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; float64 _trajectory_point_x
       (sys::poke _trajectory_point_x (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _trajectory_point_y
       (sys::poke _trajectory_point_y (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _trajectory_point_theta
       (sys::poke _trajectory_point_theta (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _trajectory_point_kappa
       (sys::poke _trajectory_point_kappa (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _trajectory_point_v
       (sys::poke _trajectory_point_v (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _trajectory_point_a
       (sys::poke _trajectory_point_a (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _matched_point_s
       (sys::poke _matched_point_s (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _matched_point_x
       (sys::poke _matched_point_x (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _matched_point_y
       (sys::poke _matched_point_y (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _matched_point_theta
       (sys::poke _matched_point_theta (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _matched_point_kappa
       (sys::poke _matched_point_kappa (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _matched_point_kappa_prime
       (sys::poke _matched_point_kappa_prime (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _s
       (sys::poke _s (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _s_dot
       (sys::poke _s_dot (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _s_ddot
       (sys::poke _s_ddot (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _d
       (sys::poke _d (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _d_prime
       (sys::poke _d_prime (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _d_pprime
       (sys::poke _d_pprime (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _stop_point_distance
       (sys::poke _stop_point_distance (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; float64 _trajectory_point_x
     (setq _trajectory_point_x (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _trajectory_point_y
     (setq _trajectory_point_y (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _trajectory_point_theta
     (setq _trajectory_point_theta (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _trajectory_point_kappa
     (setq _trajectory_point_kappa (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _trajectory_point_v
     (setq _trajectory_point_v (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _trajectory_point_a
     (setq _trajectory_point_a (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _matched_point_s
     (setq _matched_point_s (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _matched_point_x
     (setq _matched_point_x (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _matched_point_y
     (setq _matched_point_y (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _matched_point_theta
     (setq _matched_point_theta (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _matched_point_kappa
     (setq _matched_point_kappa (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _matched_point_kappa_prime
     (setq _matched_point_kappa_prime (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _s
     (setq _s (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _s_dot
     (setq _s_dot (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _s_ddot
     (setq _s_ddot (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _d
     (setq _d (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _d_prime
     (setq _d_prime (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _d_pprime
     (setq _d_pprime (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _stop_point_distance
     (setq _stop_point_distance (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(setf (get in2ulv_msgs::LatticeDebug :md5sum-) "3feccd66a4ab06d8162cf5e6ebd8f19f")
(setf (get in2ulv_msgs::LatticeDebug :datatype-) "in2ulv_msgs/LatticeDebug")
(setf (get in2ulv_msgs::LatticeDebug :definition-)
      "std_msgs/Header header

float64 trajectory_point_x
float64 trajectory_point_y
float64 trajectory_point_theta
float64 trajectory_point_kappa
float64 trajectory_point_v
float64 trajectory_point_a

float64 matched_point_s
float64 matched_point_x
float64 matched_point_y
float64 matched_point_theta
float64 matched_point_kappa
float64 matched_point_kappa_prime

float64 s
float64 s_dot
float64 s_ddot
float64 d
float64 d_prime
float64 d_pprime

float64 stop_point_distance
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



(provide :in2ulv_msgs/LatticeDebug "3feccd66a4ab06d8162cf5e6ebd8f19f")


