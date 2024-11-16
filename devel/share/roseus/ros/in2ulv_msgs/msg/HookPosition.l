;; Auto-generated. Do not edit!


(when (boundp 'in2ulv_msgs::HookPosition)
  (if (not (find-package "IN2ULV_MSGS"))
    (make-package "IN2ULV_MSGS"))
  (shadow 'HookPosition (find-package "IN2ULV_MSGS")))
(unless (find-package "IN2ULV_MSGS::HOOKPOSITION")
  (make-package "IN2ULV_MSGS::HOOKPOSITION"))

(in-package "ROS")
;;//! \htmlinclude HookPosition.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass in2ulv_msgs::HookPosition
  :super ros::object
  :slots (_header _position_flag _hook_position _hook_offset ))

(defmethod in2ulv_msgs::HookPosition
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:position_flag __position_flag) 0)
    ((:hook_position __hook_position) 0.0)
    ((:hook_offset __hook_offset) 0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _position_flag (round __position_flag))
   (setq _hook_position (float __hook_position))
   (setq _hook_offset (round __hook_offset))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:position_flag
   (&optional __position_flag)
   (if __position_flag (setq _position_flag __position_flag)) _position_flag)
  (:hook_position
   (&optional __hook_position)
   (if __hook_position (setq _hook_position __hook_position)) _hook_position)
  (:hook_offset
   (&optional __hook_offset)
   (if __hook_offset (setq _hook_offset __hook_offset)) _hook_offset)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; uint8 _position_flag
    1
    ;; float32 _hook_position
    4
    ;; int16 _hook_offset
    2
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; uint8 _position_flag
       (write-byte _position_flag s)
     ;; float32 _hook_position
       (sys::poke _hook_position (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; int16 _hook_offset
       (write-word _hook_offset s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; uint8 _position_flag
     (setq _position_flag (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; float32 _hook_position
     (setq _hook_position (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; int16 _hook_offset
     (setq _hook_offset (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;;
   self)
  )

(setf (get in2ulv_msgs::HookPosition :md5sum-) "d2da94a5865fbfe6adbdd32d2335a6b5")
(setf (get in2ulv_msgs::HookPosition :datatype-) "in2ulv_msgs/HookPosition")
(setf (get in2ulv_msgs::HookPosition :definition-)
      "std_msgs/Header header

uint8 position_flag

# 挂钩位置（cm）
float32 hook_position

# 挂钩纠偏值（-300 ~ 300 mm）
int16 hook_offset

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



(provide :in2ulv_msgs/HookPosition "d2da94a5865fbfe6adbdd32d2335a6b5")


