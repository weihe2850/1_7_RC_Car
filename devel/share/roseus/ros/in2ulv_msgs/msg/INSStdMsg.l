;; Auto-generated. Do not edit!


(when (boundp 'in2ulv_msgs::INSStdMsg)
  (if (not (find-package "IN2ULV_MSGS"))
    (make-package "IN2ULV_MSGS"))
  (shadow 'INSStdMsg (find-package "IN2ULV_MSGS")))
(unless (find-package "IN2ULV_MSGS::INSSTDMSG")
  (make-package "IN2ULV_MSGS::INSSTDMSG"))

(in-package "ROS")
;;//! \htmlinclude INSStdMsg.msg.html
(if (not (find-package "SENSOR_MSGS"))
  (ros::roseus-add-msgs "sensor_msgs"))
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass in2ulv_msgs::INSStdMsg
  :super ros::object
  :slots (_header _module_type _error_code _ins_data _imu _nav_sat_fix _ACC_X _ACC_Y _ACC_Z _GYRO_X _GYRO_Y _GYRO_Z _INS_PitchAngle _INS_RollAngle _INS_HeadingAngle _INS_LocatHeight _INS_Time _INS_Latitude _INS_Longitude _INS_NorthSpd _INS_EastSpd _INS_ToGroundSpd _INS_GpsFlag_Pos _INS_NumSV _INS_GpsFlag_Heading _INS_Gps_Age _INS_Car_Status _INS_Status _INS_Std_Lat _INS_Std_Lon _INS_Std_LocatHeight _INS_Std_Heading _INS_UTM_East _INS_UTM_North _INS_UTM_NorthSpd _INS_UTM_EastSpd ))

(defmethod in2ulv_msgs::INSStdMsg
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:module_type __module_type) 0)
    ((:error_code __error_code) 0)
    ((:ins_data __ins_data) "")
    ((:imu __imu) (instance sensor_msgs::Imu :init))
    ((:nav_sat_fix __nav_sat_fix) (instance sensor_msgs::NavSatFix :init))
    ((:ACC_X __ACC_X) 0.0)
    ((:ACC_Y __ACC_Y) 0.0)
    ((:ACC_Z __ACC_Z) 0.0)
    ((:GYRO_X __GYRO_X) 0.0)
    ((:GYRO_Y __GYRO_Y) 0.0)
    ((:GYRO_Z __GYRO_Z) 0.0)
    ((:INS_PitchAngle __INS_PitchAngle) 0.0)
    ((:INS_RollAngle __INS_RollAngle) 0.0)
    ((:INS_HeadingAngle __INS_HeadingAngle) 0.0)
    ((:INS_LocatHeight __INS_LocatHeight) 0.0)
    ((:INS_Time __INS_Time) 0)
    ((:INS_Latitude __INS_Latitude) 0.0)
    ((:INS_Longitude __INS_Longitude) 0.0)
    ((:INS_NorthSpd __INS_NorthSpd) 0.0)
    ((:INS_EastSpd __INS_EastSpd) 0.0)
    ((:INS_ToGroundSpd __INS_ToGroundSpd) 0.0)
    ((:INS_GpsFlag_Pos __INS_GpsFlag_Pos) 0)
    ((:INS_NumSV __INS_NumSV) 0)
    ((:INS_GpsFlag_Heading __INS_GpsFlag_Heading) 0)
    ((:INS_Gps_Age __INS_Gps_Age) 0)
    ((:INS_Car_Status __INS_Car_Status) 0)
    ((:INS_Status __INS_Status) 0)
    ((:INS_Std_Lat __INS_Std_Lat) 0.0)
    ((:INS_Std_Lon __INS_Std_Lon) 0.0)
    ((:INS_Std_LocatHeight __INS_Std_LocatHeight) 0.0)
    ((:INS_Std_Heading __INS_Std_Heading) 0.0)
    ((:INS_UTM_East __INS_UTM_East) 0.0)
    ((:INS_UTM_North __INS_UTM_North) 0.0)
    ((:INS_UTM_NorthSpd __INS_UTM_NorthSpd) 0.0)
    ((:INS_UTM_EastSpd __INS_UTM_EastSpd) 0.0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _module_type (round __module_type))
   (setq _error_code (round __error_code))
   (setq _ins_data (string __ins_data))
   (setq _imu __imu)
   (setq _nav_sat_fix __nav_sat_fix)
   (setq _ACC_X (float __ACC_X))
   (setq _ACC_Y (float __ACC_Y))
   (setq _ACC_Z (float __ACC_Z))
   (setq _GYRO_X (float __GYRO_X))
   (setq _GYRO_Y (float __GYRO_Y))
   (setq _GYRO_Z (float __GYRO_Z))
   (setq _INS_PitchAngle (float __INS_PitchAngle))
   (setq _INS_RollAngle (float __INS_RollAngle))
   (setq _INS_HeadingAngle (float __INS_HeadingAngle))
   (setq _INS_LocatHeight (float __INS_LocatHeight))
   (setq _INS_Time (round __INS_Time))
   (setq _INS_Latitude (float __INS_Latitude))
   (setq _INS_Longitude (float __INS_Longitude))
   (setq _INS_NorthSpd (float __INS_NorthSpd))
   (setq _INS_EastSpd (float __INS_EastSpd))
   (setq _INS_ToGroundSpd (float __INS_ToGroundSpd))
   (setq _INS_GpsFlag_Pos (round __INS_GpsFlag_Pos))
   (setq _INS_NumSV (round __INS_NumSV))
   (setq _INS_GpsFlag_Heading (round __INS_GpsFlag_Heading))
   (setq _INS_Gps_Age (round __INS_Gps_Age))
   (setq _INS_Car_Status (round __INS_Car_Status))
   (setq _INS_Status (round __INS_Status))
   (setq _INS_Std_Lat (float __INS_Std_Lat))
   (setq _INS_Std_Lon (float __INS_Std_Lon))
   (setq _INS_Std_LocatHeight (float __INS_Std_LocatHeight))
   (setq _INS_Std_Heading (float __INS_Std_Heading))
   (setq _INS_UTM_East (float __INS_UTM_East))
   (setq _INS_UTM_North (float __INS_UTM_North))
   (setq _INS_UTM_NorthSpd (float __INS_UTM_NorthSpd))
   (setq _INS_UTM_EastSpd (float __INS_UTM_EastSpd))
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
  (:imu
   (&rest __imu)
   (if (keywordp (car __imu))
       (send* _imu __imu)
     (progn
       (if __imu (setq _imu (car __imu)))
       _imu)))
  (:nav_sat_fix
   (&rest __nav_sat_fix)
   (if (keywordp (car __nav_sat_fix))
       (send* _nav_sat_fix __nav_sat_fix)
     (progn
       (if __nav_sat_fix (setq _nav_sat_fix (car __nav_sat_fix)))
       _nav_sat_fix)))
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
  (:INS_UTM_East
   (&optional __INS_UTM_East)
   (if __INS_UTM_East (setq _INS_UTM_East __INS_UTM_East)) _INS_UTM_East)
  (:INS_UTM_North
   (&optional __INS_UTM_North)
   (if __INS_UTM_North (setq _INS_UTM_North __INS_UTM_North)) _INS_UTM_North)
  (:INS_UTM_NorthSpd
   (&optional __INS_UTM_NorthSpd)
   (if __INS_UTM_NorthSpd (setq _INS_UTM_NorthSpd __INS_UTM_NorthSpd)) _INS_UTM_NorthSpd)
  (:INS_UTM_EastSpd
   (&optional __INS_UTM_EastSpd)
   (if __INS_UTM_EastSpd (setq _INS_UTM_EastSpd __INS_UTM_EastSpd)) _INS_UTM_EastSpd)
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
    ;; sensor_msgs/Imu _imu
    (send _imu :serialization-length)
    ;; sensor_msgs/NavSatFix _nav_sat_fix
    (send _nav_sat_fix :serialization-length)
    ;; float64 _ACC_X
    8
    ;; float64 _ACC_Y
    8
    ;; float64 _ACC_Z
    8
    ;; float64 _GYRO_X
    8
    ;; float64 _GYRO_Y
    8
    ;; float64 _GYRO_Z
    8
    ;; float64 _INS_PitchAngle
    8
    ;; float64 _INS_RollAngle
    8
    ;; float64 _INS_HeadingAngle
    8
    ;; float64 _INS_LocatHeight
    8
    ;; uint32 _INS_Time
    4
    ;; float64 _INS_Latitude
    8
    ;; float64 _INS_Longitude
    8
    ;; float64 _INS_NorthSpd
    8
    ;; float64 _INS_EastSpd
    8
    ;; float64 _INS_ToGroundSpd
    8
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
    ;; float32 _INS_Std_Lat
    4
    ;; float32 _INS_Std_Lon
    4
    ;; float32 _INS_Std_LocatHeight
    4
    ;; float32 _INS_Std_Heading
    4
    ;; float64 _INS_UTM_East
    8
    ;; float64 _INS_UTM_North
    8
    ;; float64 _INS_UTM_NorthSpd
    8
    ;; float64 _INS_UTM_EastSpd
    8
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
     ;; sensor_msgs/Imu _imu
       (send _imu :serialize s)
     ;; sensor_msgs/NavSatFix _nav_sat_fix
       (send _nav_sat_fix :serialize s)
     ;; float64 _ACC_X
       (sys::poke _ACC_X (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _ACC_Y
       (sys::poke _ACC_Y (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _ACC_Z
       (sys::poke _ACC_Z (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _GYRO_X
       (sys::poke _GYRO_X (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _GYRO_Y
       (sys::poke _GYRO_Y (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _GYRO_Z
       (sys::poke _GYRO_Z (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _INS_PitchAngle
       (sys::poke _INS_PitchAngle (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _INS_RollAngle
       (sys::poke _INS_RollAngle (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _INS_HeadingAngle
       (sys::poke _INS_HeadingAngle (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _INS_LocatHeight
       (sys::poke _INS_LocatHeight (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; uint32 _INS_Time
       (write-long _INS_Time s)
     ;; float64 _INS_Latitude
       (sys::poke _INS_Latitude (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _INS_Longitude
       (sys::poke _INS_Longitude (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _INS_NorthSpd
       (sys::poke _INS_NorthSpd (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _INS_EastSpd
       (sys::poke _INS_EastSpd (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _INS_ToGroundSpd
       (sys::poke _INS_ToGroundSpd (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
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
     ;; float32 _INS_Std_Lat
       (sys::poke _INS_Std_Lat (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _INS_Std_Lon
       (sys::poke _INS_Std_Lon (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _INS_Std_LocatHeight
       (sys::poke _INS_Std_LocatHeight (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _INS_Std_Heading
       (sys::poke _INS_Std_Heading (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float64 _INS_UTM_East
       (sys::poke _INS_UTM_East (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _INS_UTM_North
       (sys::poke _INS_UTM_North (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _INS_UTM_NorthSpd
       (sys::poke _INS_UTM_NorthSpd (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _INS_UTM_EastSpd
       (sys::poke _INS_UTM_EastSpd (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
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
   ;; sensor_msgs/Imu _imu
     (send _imu :deserialize buf ptr-) (incf ptr- (send _imu :serialization-length))
   ;; sensor_msgs/NavSatFix _nav_sat_fix
     (send _nav_sat_fix :deserialize buf ptr-) (incf ptr- (send _nav_sat_fix :serialization-length))
   ;; float64 _ACC_X
     (setq _ACC_X (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _ACC_Y
     (setq _ACC_Y (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _ACC_Z
     (setq _ACC_Z (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _GYRO_X
     (setq _GYRO_X (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _GYRO_Y
     (setq _GYRO_Y (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _GYRO_Z
     (setq _GYRO_Z (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _INS_PitchAngle
     (setq _INS_PitchAngle (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _INS_RollAngle
     (setq _INS_RollAngle (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _INS_HeadingAngle
     (setq _INS_HeadingAngle (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _INS_LocatHeight
     (setq _INS_LocatHeight (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; uint32 _INS_Time
     (setq _INS_Time (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; float64 _INS_Latitude
     (setq _INS_Latitude (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _INS_Longitude
     (setq _INS_Longitude (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _INS_NorthSpd
     (setq _INS_NorthSpd (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _INS_EastSpd
     (setq _INS_EastSpd (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _INS_ToGroundSpd
     (setq _INS_ToGroundSpd (sys::peek buf ptr- :double)) (incf ptr- 8)
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
   ;; float32 _INS_Std_Lat
     (setq _INS_Std_Lat (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _INS_Std_Lon
     (setq _INS_Std_Lon (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _INS_Std_LocatHeight
     (setq _INS_Std_LocatHeight (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _INS_Std_Heading
     (setq _INS_Std_Heading (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float64 _INS_UTM_East
     (setq _INS_UTM_East (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _INS_UTM_North
     (setq _INS_UTM_North (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _INS_UTM_NorthSpd
     (setq _INS_UTM_NorthSpd (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _INS_UTM_EastSpd
     (setq _INS_UTM_EastSpd (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(setf (get in2ulv_msgs::INSStdMsg :md5sum-) "e660d7b5d497967dad824f69729739ae")
(setf (get in2ulv_msgs::INSStdMsg :datatype-) "in2ulv_msgs/INSStdMsg")
(setf (get in2ulv_msgs::INSStdMsg :definition-)
      "# 帧头，包含时间戳信息
std_msgs/Header header

# 模块类型
uint8 module_type

# error_code
uint32 error_code

# 模块信息
string ins_data

# ROS 标准信息
sensor_msgs/Imu imu
sensor_msgs/NavSatFix nav_sat_fix

# INS_Acc (0X500)
float64 ACC_X
float64 ACC_Y
float64 ACC_Z

# INS_GYRO (0X501)
float64 GYRO_X
float64 GYRO_Y
float64 GYRO_Z

# INS_HeadingPitchRoll (0X502)
float64 INS_PitchAngle
float64 INS_RollAngle
float64 INS_HeadingAngle

# INS_HeightAndTime (0X503)
float64 INS_LocatHeight
uint32 INS_Time

# INS_LatitudeLongitude (0X504)
float64 INS_Latitude
float64 INS_Longitude

# INS_Speed (0X505)
float64 INS_NorthSpd
float64 INS_EastSpd
float64 INS_ToGroundSpd

# INS_DataInfo (0X506)
uint8 INS_GpsFlag_Pos
uint8 INS_NumSV     #星数
uint8 INS_GpsFlag_Heading
uint8 INS_Gps_Age
uint8 INS_Car_Status
uint8 INS_Status

# INS_Std (0X507)
float32 INS_Std_Lat
float32 INS_Std_Lon
float32 INS_Std_LocatHeight
float32 INS_Std_Heading

# 新增的 UTM 坐标字段
float64 INS_UTM_East
float64 INS_UTM_North
float64 INS_UTM_NorthSpd
float64 INS_UTM_EastSpd
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
MSG: sensor_msgs/Imu
# This is a message to hold data from an IMU (Inertial Measurement Unit)
#
# Accelerations should be in m/s^2 (not in g's), and rotational velocity should be in rad/sec
#
# If the covariance of the measurement is known, it should be filled in (if all you know is the 
# variance of each measurement, e.g. from the datasheet, just put those along the diagonal)
# A covariance matrix of all zeros will be interpreted as \"covariance unknown\", and to use the
# data a covariance will have to be assumed or gotten from some other source
#
# If you have no estimate for one of the data elements (e.g. your IMU doesn't produce an orientation 
# estimate), please set element 0 of the associated covariance matrix to -1
# If you are interpreting this message, please check for a value of -1 in the first element of each 
# covariance matrix, and disregard the associated estimate.

Header header

geometry_msgs/Quaternion orientation
float64[9] orientation_covariance # Row major about x, y, z axes

geometry_msgs/Vector3 angular_velocity
float64[9] angular_velocity_covariance # Row major about x, y, z axes

geometry_msgs/Vector3 linear_acceleration
float64[9] linear_acceleration_covariance # Row major x, y z 

================================================================================
MSG: geometry_msgs/Quaternion
# This represents an orientation in free space in quaternion form.

float64 x
float64 y
float64 z
float64 w

================================================================================
MSG: geometry_msgs/Vector3
# This represents a vector in free space. 
# It is only meant to represent a direction. Therefore, it does not
# make sense to apply a translation to it (e.g., when applying a 
# generic rigid transformation to a Vector3, tf2 will only apply the
# rotation). If you want your data to be translatable too, use the
# geometry_msgs/Point message instead.

float64 x
float64 y
float64 z
================================================================================
MSG: sensor_msgs/NavSatFix
# Navigation Satellite fix for any Global Navigation Satellite System
#
# Specified using the WGS 84 reference ellipsoid

# header.stamp specifies the ROS time for this measurement (the
#        corresponding satellite time may be reported using the
#        sensor_msgs/TimeReference message).
#
# header.frame_id is the frame of reference reported by the satellite
#        receiver, usually the location of the antenna.  This is a
#        Euclidean frame relative to the vehicle, not a reference
#        ellipsoid.
Header header

# satellite fix status information
NavSatStatus status

# Latitude [degrees]. Positive is north of equator; negative is south.
float64 latitude

# Longitude [degrees]. Positive is east of prime meridian; negative is west.
float64 longitude

# Altitude [m]. Positive is above the WGS 84 ellipsoid
# (quiet NaN if no altitude is available).
float64 altitude

# Position covariance [m^2] defined relative to a tangential plane
# through the reported position. The components are East, North, and
# Up (ENU), in row-major order.
#
# Beware: this coordinate system exhibits singularities at the poles.

float64[9] position_covariance

# If the covariance of the fix is known, fill it in completely. If the
# GPS receiver provides the variance of each measurement, put them
# along the diagonal. If only Dilution of Precision is available,
# estimate an approximate covariance from that.

uint8 COVARIANCE_TYPE_UNKNOWN = 0
uint8 COVARIANCE_TYPE_APPROXIMATED = 1
uint8 COVARIANCE_TYPE_DIAGONAL_KNOWN = 2
uint8 COVARIANCE_TYPE_KNOWN = 3

uint8 position_covariance_type

================================================================================
MSG: sensor_msgs/NavSatStatus
# Navigation Satellite fix status for any Global Navigation Satellite System

# Whether to output an augmented fix is determined by both the fix
# type and the last time differential corrections were received.  A
# fix is valid when status >= STATUS_FIX.

int8 STATUS_NO_FIX =  -1        # unable to fix position
int8 STATUS_FIX =      0        # unaugmented fix
int8 STATUS_SBAS_FIX = 1        # with satellite-based augmentation
int8 STATUS_GBAS_FIX = 2        # with ground-based augmentation

int8 status

# Bits defining which Global Navigation Satellite System signals were
# used by the receiver.

uint16 SERVICE_GPS =     1
uint16 SERVICE_GLONASS = 2
uint16 SERVICE_COMPASS = 4      # includes BeiDou.
uint16 SERVICE_GALILEO = 8

uint16 service

")



(provide :in2ulv_msgs/INSStdMsg "e660d7b5d497967dad824f69729739ae")


