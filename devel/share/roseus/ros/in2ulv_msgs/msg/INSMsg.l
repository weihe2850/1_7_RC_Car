;; Auto-generated. Do not edit!


(when (boundp 'in2ulv_msgs::INSMsg)
  (if (not (find-package "IN2ULV_MSGS"))
    (make-package "IN2ULV_MSGS"))
  (shadow 'INSMsg (find-package "IN2ULV_MSGS")))
(unless (find-package "IN2ULV_MSGS::INSMSG")
  (make-package "IN2ULV_MSGS::INSMSG"))

(in-package "ROS")
;;//! \htmlinclude INSMsg.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass in2ulv_msgs::INSMsg
  :super ros::object
  :slots (_header _module_type _error_code _ins_data _ACC_X _ACC_Y _ACC_Z _GYRO_X _GYRO_Y _GYRO_Z _INS_PitchAngle _INS_RollAngle _INS_HeadingAngle _INS_LocatHeight _INS_Time _INS_Latitude _INS_Longitude _INS_NorthSpd _INS_EastSpd _INS_ToGroundSpd _INS_GpsFlag_Pos _INS_NumSV _INS_GpsFlag_Heading _INS_Gps_Age _INS_Car_Status _INS_Status _INS_Std_Lat _INS_Std_Lon _INS_Std_LocatHeight _INS_Std_Heading ))

(defmethod in2ulv_msgs::INSMsg
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:module_type __module_type) 0)
    ((:error_code __error_code) 0)
    ((:ins_data __ins_data) "")
    ((:ACC_X __ACC_X) 0)
    ((:ACC_Y __ACC_Y) 0)
    ((:ACC_Z __ACC_Z) 0)
    ((:GYRO_X __GYRO_X) 0)
    ((:GYRO_Y __GYRO_Y) 0)
    ((:GYRO_Z __GYRO_Z) 0)
    ((:INS_PitchAngle __INS_PitchAngle) 0)
    ((:INS_RollAngle __INS_RollAngle) 0)
    ((:INS_HeadingAngle __INS_HeadingAngle) 0)
    ((:INS_LocatHeight __INS_LocatHeight) 0)
    ((:INS_Time __INS_Time) 0)
    ((:INS_Latitude __INS_Latitude) 0)
    ((:INS_Longitude __INS_Longitude) 0)
    ((:INS_NorthSpd __INS_NorthSpd) 0)
    ((:INS_EastSpd __INS_EastSpd) 0)
    ((:INS_ToGroundSpd __INS_ToGroundSpd) 0)
    ((:INS_GpsFlag_Pos __INS_GpsFlag_Pos) 0)
    ((:INS_NumSV __INS_NumSV) 0)
    ((:INS_GpsFlag_Heading __INS_GpsFlag_Heading) 0)
    ((:INS_Gps_Age __INS_Gps_Age) 0)
    ((:INS_Car_Status __INS_Car_Status) 0)
    ((:INS_Status __INS_Status) 0)
    ((:INS_Std_Lat __INS_Std_Lat) 0)
    ((:INS_Std_Lon __INS_Std_Lon) 0)
    ((:INS_Std_LocatHeight __INS_Std_LocatHeight) 0)
    ((:INS_Std_Heading __INS_Std_Heading) 0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _module_type (round __module_type))
   (setq _error_code (round __error_code))
   (setq _ins_data (string __ins_data))
   (setq _ACC_X (round __ACC_X))
   (setq _ACC_Y (round __ACC_Y))
   (setq _ACC_Z (round __ACC_Z))
   (setq _GYRO_X (round __GYRO_X))
   (setq _GYRO_Y (round __GYRO_Y))
   (setq _GYRO_Z (round __GYRO_Z))
   (setq _INS_PitchAngle (round __INS_PitchAngle))
   (setq _INS_RollAngle (round __INS_RollAngle))
   (setq _INS_HeadingAngle (round __INS_HeadingAngle))
   (setq _INS_LocatHeight (round __INS_LocatHeight))
   (setq _INS_Time (round __INS_Time))
   (setq _INS_Latitude (round __INS_Latitude))
   (setq _INS_Longitude (round __INS_Longitude))
   (setq _INS_NorthSpd (round __INS_NorthSpd))
   (setq _INS_EastSpd (round __INS_EastSpd))
   (setq _INS_ToGroundSpd (round __INS_ToGroundSpd))
   (setq _INS_GpsFlag_Pos (round __INS_GpsFlag_Pos))
   (setq _INS_NumSV (round __INS_NumSV))
   (setq _INS_GpsFlag_Heading (round __INS_GpsFlag_Heading))
   (setq _INS_Gps_Age (round __INS_Gps_Age))
   (setq _INS_Car_Status (round __INS_Car_Status))
   (setq _INS_Status (round __INS_Status))
   (setq _INS_Std_Lat (round __INS_Std_Lat))
   (setq _INS_Std_Lon (round __INS_Std_Lon))
   (setq _INS_Std_LocatHeight (round __INS_Std_LocatHeight))
   (setq _INS_Std_Heading (round __INS_Std_Heading))
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
  (:ins_data
   (&optional __ins_data)
   (if __ins_data (setq _ins_data __ins_data)) _ins_data)
  (:ACC_X
   (&optional __ACC_X)
   (if __ACC_X (setq _ACC_X __ACC_X)) _ACC_X)
  (:ACC_Y
   (&optional __ACC_Y)
   (if __ACC_Y (setq _ACC_Y __ACC_Y)) _ACC_Y)
  (:ACC_Z
   (&optional __ACC_Z)
   (if __ACC_Z (setq _ACC_Z __ACC_Z)) _ACC_Z)
  (:GYRO_X
   (&optional __GYRO_X)
   (if __GYRO_X (setq _GYRO_X __GYRO_X)) _GYRO_X)
  (:GYRO_Y
   (&optional __GYRO_Y)
   (if __GYRO_Y (setq _GYRO_Y __GYRO_Y)) _GYRO_Y)
  (:GYRO_Z
   (&optional __GYRO_Z)
   (if __GYRO_Z (setq _GYRO_Z __GYRO_Z)) _GYRO_Z)
  (:INS_PitchAngle
   (&optional __INS_PitchAngle)
   (if __INS_PitchAngle (setq _INS_PitchAngle __INS_PitchAngle)) _INS_PitchAngle)
  (:INS_RollAngle
   (&optional __INS_RollAngle)
   (if __INS_RollAngle (setq _INS_RollAngle __INS_RollAngle)) _INS_RollAngle)
  (:INS_HeadingAngle
   (&optional __INS_HeadingAngle)
   (if __INS_HeadingAngle (setq _INS_HeadingAngle __INS_HeadingAngle)) _INS_HeadingAngle)
  (:INS_LocatHeight
   (&optional __INS_LocatHeight)
   (if __INS_LocatHeight (setq _INS_LocatHeight __INS_LocatHeight)) _INS_LocatHeight)
  (:INS_Time
   (&optional __INS_Time)
   (if __INS_Time (setq _INS_Time __INS_Time)) _INS_Time)
  (:INS_Latitude
   (&optional __INS_Latitude)
   (if __INS_Latitude (setq _INS_Latitude __INS_Latitude)) _INS_Latitude)
  (:INS_Longitude
   (&optional __INS_Longitude)
   (if __INS_Longitude (setq _INS_Longitude __INS_Longitude)) _INS_Longitude)
  (:INS_NorthSpd
   (&optional __INS_NorthSpd)
   (if __INS_NorthSpd (setq _INS_NorthSpd __INS_NorthSpd)) _INS_NorthSpd)
  (:INS_EastSpd
   (&optional __INS_EastSpd)
   (if __INS_EastSpd (setq _INS_EastSpd __INS_EastSpd)) _INS_EastSpd)
  (:INS_ToGroundSpd
   (&optional __INS_ToGroundSpd)
   (if __INS_ToGroundSpd (setq _INS_ToGroundSpd __INS_ToGroundSpd)) _INS_ToGroundSpd)
  (:INS_GpsFlag_Pos
   (&optional __INS_GpsFlag_Pos)
   (if __INS_GpsFlag_Pos (setq _INS_GpsFlag_Pos __INS_GpsFlag_Pos)) _INS_GpsFlag_Pos)
  (:INS_NumSV
   (&optional __INS_NumSV)
   (if __INS_NumSV (setq _INS_NumSV __INS_NumSV)) _INS_NumSV)
  (:INS_GpsFlag_Heading
   (&optional __INS_GpsFlag_Heading)
   (if __INS_GpsFlag_Heading (setq _INS_GpsFlag_Heading __INS_GpsFlag_Heading)) _INS_GpsFlag_Heading)
  (:INS_Gps_Age
   (&optional __INS_Gps_Age)
   (if __INS_Gps_Age (setq _INS_Gps_Age __INS_Gps_Age)) _INS_Gps_Age)
  (:INS_Car_Status
   (&optional __INS_Car_Status)
   (if __INS_Car_Status (setq _INS_Car_Status __INS_Car_Status)) _INS_Car_Status)
  (:INS_Status
   (&optional __INS_Status)
   (if __INS_Status (setq _INS_Status __INS_Status)) _INS_Status)
  (:INS_Std_Lat
   (&optional __INS_Std_Lat)
   (if __INS_Std_Lat (setq _INS_Std_Lat __INS_Std_Lat)) _INS_Std_Lat)
  (:INS_Std_Lon
   (&optional __INS_Std_Lon)
   (if __INS_Std_Lon (setq _INS_Std_Lon __INS_Std_Lon)) _INS_Std_Lon)
  (:INS_Std_LocatHeight
   (&optional __INS_Std_LocatHeight)
   (if __INS_Std_LocatHeight (setq _INS_Std_LocatHeight __INS_Std_LocatHeight)) _INS_Std_LocatHeight)
  (:INS_Std_Heading
   (&optional __INS_Std_Heading)
   (if __INS_Std_Heading (setq _INS_Std_Heading __INS_Std_Heading)) _INS_Std_Heading)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; uint8 _module_type
    1
    ;; uint32 _error_code
    4
    ;; string _ins_data
    4 (length _ins_data)
    ;; uint16 _ACC_X
    2
    ;; uint16 _ACC_Y
    2
    ;; uint16 _ACC_Z
    2
    ;; uint16 _GYRO_X
    2
    ;; uint16 _GYRO_Y
    2
    ;; uint16 _GYRO_Z
    2
    ;; uint16 _INS_PitchAngle
    2
    ;; uint16 _INS_RollAngle
    2
    ;; uint16 _INS_HeadingAngle
    2
    ;; uint32 _INS_LocatHeight
    4
    ;; uint32 _INS_Time
    4
    ;; uint32 _INS_Latitude
    4
    ;; uint32 _INS_Longitude
    4
    ;; uint16 _INS_NorthSpd
    2
    ;; uint16 _INS_EastSpd
    2
    ;; uint16 _INS_ToGroundSpd
    2
    ;; uint8 _INS_GpsFlag_Pos
    1
    ;; uint8 _INS_NumSV
    1
    ;; uint8 _INS_GpsFlag_Heading
    1
    ;; uint8 _INS_Gps_Age
    1
    ;; uint8 _INS_Car_Status
    1
    ;; uint8 _INS_Status
    1
    ;; uint16 _INS_Std_Lat
    2
    ;; uint16 _INS_Std_Lon
    2
    ;; uint16 _INS_Std_LocatHeight
    2
    ;; uint16 _INS_Std_Heading
    2
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
     ;; string _ins_data
       (write-long (length _ins_data) s) (princ _ins_data s)
     ;; uint16 _ACC_X
       (write-word _ACC_X s)
     ;; uint16 _ACC_Y
       (write-word _ACC_Y s)
     ;; uint16 _ACC_Z
       (write-word _ACC_Z s)
     ;; uint16 _GYRO_X
       (write-word _GYRO_X s)
     ;; uint16 _GYRO_Y
       (write-word _GYRO_Y s)
     ;; uint16 _GYRO_Z
       (write-word _GYRO_Z s)
     ;; uint16 _INS_PitchAngle
       (write-word _INS_PitchAngle s)
     ;; uint16 _INS_RollAngle
       (write-word _INS_RollAngle s)
     ;; uint16 _INS_HeadingAngle
       (write-word _INS_HeadingAngle s)
     ;; uint32 _INS_LocatHeight
       (write-long _INS_LocatHeight s)
     ;; uint32 _INS_Time
       (write-long _INS_Time s)
     ;; uint32 _INS_Latitude
       (write-long _INS_Latitude s)
     ;; uint32 _INS_Longitude
       (write-long _INS_Longitude s)
     ;; uint16 _INS_NorthSpd
       (write-word _INS_NorthSpd s)
     ;; uint16 _INS_EastSpd
       (write-word _INS_EastSpd s)
     ;; uint16 _INS_ToGroundSpd
       (write-word _INS_ToGroundSpd s)
     ;; uint8 _INS_GpsFlag_Pos
       (write-byte _INS_GpsFlag_Pos s)
     ;; uint8 _INS_NumSV
       (write-byte _INS_NumSV s)
     ;; uint8 _INS_GpsFlag_Heading
       (write-byte _INS_GpsFlag_Heading s)
     ;; uint8 _INS_Gps_Age
       (write-byte _INS_Gps_Age s)
     ;; uint8 _INS_Car_Status
       (write-byte _INS_Car_Status s)
     ;; uint8 _INS_Status
       (write-byte _INS_Status s)
     ;; uint16 _INS_Std_Lat
       (write-word _INS_Std_Lat s)
     ;; uint16 _INS_Std_Lon
       (write-word _INS_Std_Lon s)
     ;; uint16 _INS_Std_LocatHeight
       (write-word _INS_Std_LocatHeight s)
     ;; uint16 _INS_Std_Heading
       (write-word _INS_Std_Heading s)
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
   ;; string _ins_data
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _ins_data (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; uint16 _ACC_X
     (setq _ACC_X (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; uint16 _ACC_Y
     (setq _ACC_Y (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; uint16 _ACC_Z
     (setq _ACC_Z (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; uint16 _GYRO_X
     (setq _GYRO_X (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; uint16 _GYRO_Y
     (setq _GYRO_Y (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; uint16 _GYRO_Z
     (setq _GYRO_Z (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; uint16 _INS_PitchAngle
     (setq _INS_PitchAngle (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; uint16 _INS_RollAngle
     (setq _INS_RollAngle (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; uint16 _INS_HeadingAngle
     (setq _INS_HeadingAngle (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; uint32 _INS_LocatHeight
     (setq _INS_LocatHeight (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint32 _INS_Time
     (setq _INS_Time (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint32 _INS_Latitude
     (setq _INS_Latitude (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint32 _INS_Longitude
     (setq _INS_Longitude (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint16 _INS_NorthSpd
     (setq _INS_NorthSpd (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; uint16 _INS_EastSpd
     (setq _INS_EastSpd (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; uint16 _INS_ToGroundSpd
     (setq _INS_ToGroundSpd (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; uint8 _INS_GpsFlag_Pos
     (setq _INS_GpsFlag_Pos (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _INS_NumSV
     (setq _INS_NumSV (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _INS_GpsFlag_Heading
     (setq _INS_GpsFlag_Heading (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _INS_Gps_Age
     (setq _INS_Gps_Age (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _INS_Car_Status
     (setq _INS_Car_Status (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _INS_Status
     (setq _INS_Status (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint16 _INS_Std_Lat
     (setq _INS_Std_Lat (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; uint16 _INS_Std_Lon
     (setq _INS_Std_Lon (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; uint16 _INS_Std_LocatHeight
     (setq _INS_Std_LocatHeight (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; uint16 _INS_Std_Heading
     (setq _INS_Std_Heading (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;;
   self)
  )

(setf (get in2ulv_msgs::INSMsg :md5sum-) "7becfa5a7d632c7c67b72fd6b667376f")
(setf (get in2ulv_msgs::INSMsg :datatype-) "in2ulv_msgs/INSMsg")
(setf (get in2ulv_msgs::INSMsg :definition-)
      "# 帧头，包含时间戳信息
std_msgs/Header header

# 模块类型
uint8 module_type

# error_code
uint32 error_code

# 模块信息
string ins_data

# INS_Acc (0X500)
uint16 ACC_X
uint16 ACC_Y
uint16 ACC_Z

# INS_GYRO (0X501)
uint16 GYRO_X
uint16 GYRO_Y
uint16 GYRO_Z

# INS_HeadingPitchRoll (0X502)
uint16 INS_PitchAngle
uint16 INS_RollAngle
uint16 INS_HeadingAngle

# INS_HeightAndTime (0X503)
uint32 INS_LocatHeight
uint32 INS_Time

# INS_LatitudeLongitude (0X504)
uint32 INS_Latitude
uint32 INS_Longitude

# INS_Speed (0X505)
uint16 INS_NorthSpd
uint16 INS_EastSpd
uint16 INS_ToGroundSpd

# INS_DataInfo (0X506)
uint8 INS_GpsFlag_Pos
uint8 INS_NumSV     #星数
uint8 INS_GpsFlag_Heading
uint8 INS_Gps_Age
uint8 INS_Car_Status
uint8 INS_Status

# INS_Std (0X507)
uint16 INS_Std_Lat
uint16 INS_Std_Lon
uint16 INS_Std_LocatHeight
uint16 INS_Std_Heading

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



(provide :in2ulv_msgs/INSMsg "7becfa5a7d632c7c67b72fd6b667376f")


