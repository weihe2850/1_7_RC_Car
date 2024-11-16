;; Auto-generated. Do not edit!


(when (boundp 'in2ulv_msgs::HMISettingCommand)
  (if (not (find-package "IN2ULV_MSGS"))
    (make-package "IN2ULV_MSGS"))
  (shadow 'HMISettingCommand (find-package "IN2ULV_MSGS")))
(unless (find-package "IN2ULV_MSGS::HMISETTINGCOMMAND")
  (make-package "IN2ULV_MSGS::HMISETTINGCOMMAND"))
(unless (find-package "IN2ULV_MSGS::HMISETTINGCOMMANDREQUEST")
  (make-package "IN2ULV_MSGS::HMISETTINGCOMMANDREQUEST"))
(unless (find-package "IN2ULV_MSGS::HMISETTINGCOMMANDRESPONSE")
  (make-package "IN2ULV_MSGS::HMISETTINGCOMMANDRESPONSE"))

(in-package "ROS")

(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))




(defclass in2ulv_msgs::HMISettingCommandRequest
  :super ros::object
  :slots (_header _hmi_command_list _target_point_list _station_id_list ))

(defmethod in2ulv_msgs::HMISettingCommandRequest
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:hmi_command_list __hmi_command_list) (make-array 0 :initial-element 0 :element-type :char))
    ((:target_point_list __target_point_list) ())
    ((:station_id_list __station_id_list) (make-array 0 :initial-element 0 :element-type :integer))
    )
   (send-super :init)
   (setq _header __header)
   (setq _hmi_command_list __hmi_command_list)
   (setq _target_point_list __target_point_list)
   (setq _station_id_list __station_id_list)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:hmi_command_list
   (&optional __hmi_command_list)
   (if __hmi_command_list (setq _hmi_command_list __hmi_command_list)) _hmi_command_list)
  (:target_point_list
   (&rest __target_point_list)
   (if (keywordp (car __target_point_list))
       (send* _target_point_list __target_point_list)
     (progn
       (if __target_point_list (setq _target_point_list (car __target_point_list)))
       _target_point_list)))
  (:station_id_list
   (&optional __station_id_list)
   (if __station_id_list (setq _station_id_list __station_id_list)) _station_id_list)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; uint8[] _hmi_command_list
    (* 1    (length _hmi_command_list)) 4
    ;; geometry_msgs/Point[] _target_point_list
    (apply #'+ (send-all _target_point_list :serialization-length)) 4
    ;; uint32[] _station_id_list
    (* 4    (length _station_id_list)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; uint8[] _hmi_command_list
     (write-long (length _hmi_command_list) s)
     (princ _hmi_command_list s)
     ;; geometry_msgs/Point[] _target_point_list
     (write-long (length _target_point_list) s)
     (dolist (elem _target_point_list)
       (send elem :serialize s)
       )
     ;; uint32[] _station_id_list
     (write-long (length _station_id_list) s)
     (dotimes (i (length _station_id_list))
       (write-long (elt _station_id_list i) s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; uint8[] _hmi_command_list
   (let ((n (sys::peek buf ptr- :integer))) (incf ptr- 4)
     (setq _hmi_command_list (make-array n :element-type :char))
     (replace _hmi_command_list buf :start2 ptr-) (incf ptr- n))
   ;; geometry_msgs/Point[] _target_point_list
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _target_point_list (let (r) (dotimes (i n) (push (instance geometry_msgs::Point :init) r)) r))
     (dolist (elem- _target_point_list)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; uint32[] _station_id_list
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _station_id_list (instantiate integer-vector n))
     (dotimes (i n)
     (setf (elt _station_id_list i) (sys::peek buf ptr- :integer)) (incf ptr- 4)
     ))
   ;;
   self)
  )

(defclass in2ulv_msgs::HMISettingCommandResponse
  :super ros::object
  :slots (_receive_status _receive_info ))

(defmethod in2ulv_msgs::HMISettingCommandResponse
  (:init
   (&key
    ((:receive_status __receive_status) nil)
    ((:receive_info __receive_info) "")
    )
   (send-super :init)
   (setq _receive_status __receive_status)
   (setq _receive_info (string __receive_info))
   self)
  (:receive_status
   (&optional (__receive_status :null))
   (if (not (eq __receive_status :null)) (setq _receive_status __receive_status)) _receive_status)
  (:receive_info
   (&optional __receive_info)
   (if __receive_info (setq _receive_info __receive_info)) _receive_info)
  (:serialization-length
   ()
   (+
    ;; bool _receive_status
    1
    ;; string _receive_info
    4 (length _receive_info)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _receive_status
       (if _receive_status (write-byte -1 s) (write-byte 0 s))
     ;; string _receive_info
       (write-long (length _receive_info) s) (princ _receive_info s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _receive_status
     (setq _receive_status (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; string _receive_info
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _receive_info (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass in2ulv_msgs::HMISettingCommand
  :super ros::object
  :slots ())

(setf (get in2ulv_msgs::HMISettingCommand :md5sum-) "77df7fba1f2ff481f39b2e6000b80ae0")
(setf (get in2ulv_msgs::HMISettingCommand :datatype-) "in2ulv_msgs/HMISettingCommand")
(setf (get in2ulv_msgs::HMISettingCommand :request) in2ulv_msgs::HMISettingCommandRequest)
(setf (get in2ulv_msgs::HMISettingCommand :response) in2ulv_msgs::HMISettingCommandResponse)

(defmethod in2ulv_msgs::HMISettingCommandRequest
  (:response () (instance in2ulv_msgs::HMISettingCommandResponse :init)))

(setf (get in2ulv_msgs::HMISettingCommandRequest :md5sum-) "77df7fba1f2ff481f39b2e6000b80ae0")
(setf (get in2ulv_msgs::HMISettingCommandRequest :datatype-) "in2ulv_msgs/HMISettingCommandRequest")
(setf (get in2ulv_msgs::HMISettingCommandRequest :definition-)
      "# 帧头，包含时间戳信息
std_msgs/Header header

# 指令类型序列
uint8[] hmi_command_list

# 目标点序列
# 注意长度和 hmi_command_list 中的 HEAD_FOR_GOAL 任务数量匹配
geometry_msgs/Point[] target_point_list

# station id
# 注意和 target_point_list 长度一致
uint32[] station_id_list

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

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z
---
# 指令接收状态
bool receive_status

# 指令接收信息
string receive_info
")

(setf (get in2ulv_msgs::HMISettingCommandResponse :md5sum-) "77df7fba1f2ff481f39b2e6000b80ae0")
(setf (get in2ulv_msgs::HMISettingCommandResponse :datatype-) "in2ulv_msgs/HMISettingCommandResponse")
(setf (get in2ulv_msgs::HMISettingCommandResponse :definition-)
      "# 帧头，包含时间戳信息
std_msgs/Header header

# 指令类型序列
uint8[] hmi_command_list

# 目标点序列
# 注意长度和 hmi_command_list 中的 HEAD_FOR_GOAL 任务数量匹配
geometry_msgs/Point[] target_point_list

# station id
# 注意和 target_point_list 长度一致
uint32[] station_id_list

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

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z
---
# 指令接收状态
bool receive_status

# 指令接收信息
string receive_info
")



(provide :in2ulv_msgs/HMISettingCommand "77df7fba1f2ff481f39b2e6000b80ae0")


