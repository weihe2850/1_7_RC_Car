;; Auto-generated. Do not edit!


(when (boundp 'in2ulv_msgs::ControlResult)
  (if (not (find-package "IN2ULV_MSGS"))
    (make-package "IN2ULV_MSGS"))
  (shadow 'ControlResult (find-package "IN2ULV_MSGS")))
(unless (find-package "IN2ULV_MSGS::CONTROLRESULT")
  (make-package "IN2ULV_MSGS::CONTROLRESULT"))

(in-package "ROS")
;;//! \htmlinclude ControlResult.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass in2ulv_msgs::ControlResult
  :super ros::object
  :slots (_header _steer _brake _if_brake _speed_control _if_speed _acceleration_control _if_acceleration _is_left_lighting _is_right_lighting _is_hook_close _hook_position _gear_info _speed_limit _speed_out ))

(defmethod in2ulv_msgs::ControlResult
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:steer __steer) 0.0)
    ((:brake __brake) 0.0)
    ((:if_brake __if_brake) nil)
    ((:speed_control __speed_control) 0.0)
    ((:if_speed __if_speed) nil)
    ((:acceleration_control __acceleration_control) 0.0)
    ((:if_acceleration __if_acceleration) nil)
    ((:is_left_lighting __is_left_lighting) nil)
    ((:is_right_lighting __is_right_lighting) nil)
    ((:is_hook_close __is_hook_close) nil)
    ((:hook_position __hook_position) 0.0)
    ((:gear_info __gear_info) 0)
    ((:speed_limit __speed_limit) 0.0)
    ((:speed_out __speed_out) 0.0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _steer (float __steer))
   (setq _brake (float __brake))
   (setq _if_brake __if_brake)
   (setq _speed_control (float __speed_control))
   (setq _if_speed __if_speed)
   (setq _acceleration_control (float __acceleration_control))
   (setq _if_acceleration __if_acceleration)
   (setq _is_left_lighting __is_left_lighting)
   (setq _is_right_lighting __is_right_lighting)
   (setq _is_hook_close __is_hook_close)
   (setq _hook_position (float __hook_position))
   (setq _gear_info (round __gear_info))
   (setq _speed_limit (float __speed_limit))
   (setq _speed_out (float __speed_out))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:steer
   (&optional __steer)
   (if __steer (setq _steer __steer)) _steer)
  (:brake
   (&optional __brake)
   (if __brake (setq _brake __brake)) _brake)
  (:if_brake
   (&optional (__if_brake :null))
   (if (not (eq __if_brake :null)) (setq _if_brake __if_brake)) _if_brake)
  (:speed_control
   (&optional __speed_control)
   (if __speed_control (setq _speed_control __speed_control)) _speed_control)
  (:if_speed
   (&optional (__if_speed :null))
   (if (not (eq __if_speed :null)) (setq _if_speed __if_speed)) _if_speed)
  (:acceleration_control
   (&optional __acceleration_control)
   (if __acceleration_control (setq _acceleration_control __acceleration_control)) _acceleration_control)
  (:if_acceleration
   (&optional (__if_acceleration :null))
   (if (not (eq __if_acceleration :null)) (setq _if_acceleration __if_acceleration)) _if_acceleration)
  (:is_left_lighting
   (&optional (__is_left_lighting :null))
   (if (not (eq __is_left_lighting :null)) (setq _is_left_lighting __is_left_lighting)) _is_left_lighting)
  (:is_right_lighting
   (&optional (__is_right_lighting :null))
   (if (not (eq __is_right_lighting :null)) (setq _is_right_lighting __is_right_lighting)) _is_right_lighting)
  (:is_hook_close
   (&optional (__is_hook_close :null))
   (if (not (eq __is_hook_close :null)) (setq _is_hook_close __is_hook_close)) _is_hook_close)
  (:hook_position
   (&optional __hook_position)
   (if __hook_position (setq _hook_position __hook_position)) _hook_position)
  (:gear_info
   (&optional __gear_info)
   (if __gear_info (setq _gear_info __gear_info)) _gear_info)
  (:speed_limit
   (&optional __speed_limit)
   (if __speed_limit (setq _speed_limit __speed_limit)) _speed_limit)
  (:speed_out
   (&optional __speed_out)
   (if __speed_out (setq _speed_out __speed_out)) _speed_out)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; float32 _steer
    4
    ;; float32 _brake
    4
    ;; bool _if_brake
    1
    ;; float32 _speed_control
    4
    ;; bool _if_speed
    1
    ;; float32 _acceleration_control
    4
    ;; bool _if_acceleration
    1
    ;; bool _is_left_lighting
    1
    ;; bool _is_right_lighting
    1
    ;; bool _is_hook_close
    1
    ;; float32 _hook_position
    4
    ;; uint8 _gear_info
    1
    ;; float32 _speed_limit
    4
    ;; float32 _speed_out
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; float32 _steer
       (sys::poke _steer (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _brake
       (sys::poke _brake (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; bool _if_brake
       (if _if_brake (write-byte -1 s) (write-byte 0 s))
     ;; float32 _speed_control
       (sys::poke _speed_control (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; bool _if_speed
       (if _if_speed (write-byte -1 s) (write-byte 0 s))
     ;; float32 _acceleration_control
       (sys::poke _acceleration_control (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; bool _if_acceleration
       (if _if_acceleration (write-byte -1 s) (write-byte 0 s))
     ;; bool _is_left_lighting
       (if _is_left_lighting (write-byte -1 s) (write-byte 0 s))
     ;; bool _is_right_lighting
       (if _is_right_lighting (write-byte -1 s) (write-byte 0 s))
     ;; bool _is_hook_close
       (if _is_hook_close (write-byte -1 s) (write-byte 0 s))
     ;; float32 _hook_position
       (sys::poke _hook_position (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; uint8 _gear_info
       (write-byte _gear_info s)
     ;; float32 _speed_limit
       (sys::poke _speed_limit (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _speed_out
       (sys::poke _speed_out (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; float32 _steer
     (setq _steer (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _brake
     (setq _brake (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; bool _if_brake
     (setq _if_brake (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; float32 _speed_control
     (setq _speed_control (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; bool _if_speed
     (setq _if_speed (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; float32 _acceleration_control
     (setq _acceleration_control (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; bool _if_acceleration
     (setq _if_acceleration (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _is_left_lighting
     (setq _is_left_lighting (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _is_right_lighting
     (setq _is_right_lighting (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _is_hook_close
     (setq _is_hook_close (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; float32 _hook_position
     (setq _hook_position (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; uint8 _gear_info
     (setq _gear_info (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; float32 _speed_limit
     (setq _speed_limit (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _speed_out
     (setq _speed_out (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get in2ulv_msgs::ControlResult :md5sum-) "d0ea0e1d317647aa9e9251fc4a618a52")
(setf (get in2ulv_msgs::ControlResult :datatype-) "in2ulv_msgs/ControlResult")
(setf (get in2ulv_msgs::ControlResult :definition-)
      "std_msgs/Header header

#方向盘打角   -50 ———— +50   左正右负   -720~720
float32 steer   

#油门       0 ———— +100  
# float32 throttle

# 刹车 0-100.0
float32 brake
bool if_brake

# 控速
float32 speed_control
bool if_speed

# 控加速度
float32 acceleration_control
bool if_acceleration

# 左车灯
bool is_left_lighting

# 右车灯
bool is_right_lighting

# 挂钩锁紧
bool is_hook_close

# 挂钩位置
float32 hook_position

# 档位
uint8 gear_info

# pmx - debug
float32 speed_limit
float32 speed_out
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



(provide :in2ulv_msgs/ControlResult "d0ea0e1d317647aa9e9251fc4a618a52")


