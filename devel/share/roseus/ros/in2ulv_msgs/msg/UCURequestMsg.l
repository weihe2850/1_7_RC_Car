;; Auto-generated. Do not edit!


(when (boundp 'in2ulv_msgs::UCURequestMsg)
  (if (not (find-package "IN2ULV_MSGS"))
    (make-package "IN2ULV_MSGS"))
  (shadow 'UCURequestMsg (find-package "IN2ULV_MSGS")))
(unless (find-package "IN2ULV_MSGS::UCUREQUESTMSG")
  (make-package "IN2ULV_MSGS::UCUREQUESTMSG"))

(in-package "ROS")
;;//! \htmlinclude UCURequestMsg.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass in2ulv_msgs::UCURequestMsg
  :super ros::object
  :slots (_header _module_type _error_code _ucu_validity _route_encoder _Version _Province _City _District _Street _Community _FeatureRequest _CarHeading _XXType _MapNumber _StationNumber _RemoteCtrlCommand ))

(defmethod in2ulv_msgs::UCURequestMsg
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:module_type __module_type) 0)
    ((:error_code __error_code) 0)
    ((:ucu_validity __ucu_validity) nil)
    ((:route_encoder __route_encoder) "")
    ((:Version __Version) 0)
    ((:Province __Province) 0)
    ((:City __City) 0)
    ((:District __District) 0)
    ((:Street __Street) 0)
    ((:Community __Community) 0)
    ((:FeatureRequest __FeatureRequest) 0)
    ((:CarHeading __CarHeading) 0)
    ((:XXType __XXType) 0)
    ((:MapNumber __MapNumber) 0)
    ((:StationNumber __StationNumber) 0)
    ((:RemoteCtrlCommand __RemoteCtrlCommand) 0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _module_type (round __module_type))
   (setq _error_code (round __error_code))
   (setq _ucu_validity __ucu_validity)
   (setq _route_encoder (string __route_encoder))
   (setq _Version (round __Version))
   (setq _Province (round __Province))
   (setq _City (round __City))
   (setq _District (round __District))
   (setq _Street (round __Street))
   (setq _Community (round __Community))
   (setq _FeatureRequest (round __FeatureRequest))
   (setq _CarHeading (round __CarHeading))
   (setq _XXType (round __XXType))
   (setq _MapNumber (round __MapNumber))
   (setq _StationNumber (round __StationNumber))
   (setq _RemoteCtrlCommand (round __RemoteCtrlCommand))
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
  (:ucu_validity
   (&optional (__ucu_validity :null))
   (if (not (eq __ucu_validity :null)) (setq _ucu_validity __ucu_validity)) _ucu_validity)
  (:route_encoder
   (&optional __route_encoder)
   (if __route_encoder (setq _route_encoder __route_encoder)) _route_encoder)
  (:Version
   (&optional __Version)
   (if __Version (setq _Version __Version)) _Version)
  (:Province
   (&optional __Province)
   (if __Province (setq _Province __Province)) _Province)
  (:City
   (&optional __City)
   (if __City (setq _City __City)) _City)
  (:District
   (&optional __District)
   (if __District (setq _District __District)) _District)
  (:Street
   (&optional __Street)
   (if __Street (setq _Street __Street)) _Street)
  (:Community
   (&optional __Community)
   (if __Community (setq _Community __Community)) _Community)
  (:FeatureRequest
   (&optional __FeatureRequest)
   (if __FeatureRequest (setq _FeatureRequest __FeatureRequest)) _FeatureRequest)
  (:CarHeading
   (&optional __CarHeading)
   (if __CarHeading (setq _CarHeading __CarHeading)) _CarHeading)
  (:XXType
   (&optional __XXType)
   (if __XXType (setq _XXType __XXType)) _XXType)
  (:MapNumber
   (&optional __MapNumber)
   (if __MapNumber (setq _MapNumber __MapNumber)) _MapNumber)
  (:StationNumber
   (&optional __StationNumber)
   (if __StationNumber (setq _StationNumber __StationNumber)) _StationNumber)
  (:RemoteCtrlCommand
   (&optional __RemoteCtrlCommand)
   (if __RemoteCtrlCommand (setq _RemoteCtrlCommand __RemoteCtrlCommand)) _RemoteCtrlCommand)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; uint8 _module_type
    1
    ;; uint32 _error_code
    4
    ;; bool _ucu_validity
    1
    ;; string _route_encoder
    4 (length _route_encoder)
    ;; uint8 _Version
    1
    ;; uint8 _Province
    1
    ;; uint8 _City
    1
    ;; uint8 _District
    1
    ;; uint8 _Street
    1
    ;; uint8 _Community
    1
    ;; uint8 _FeatureRequest
    1
    ;; uint8 _CarHeading
    1
    ;; uint8 _XXType
    1
    ;; uint16 _MapNumber
    2
    ;; uint8 _StationNumber
    1
    ;; uint8 _RemoteCtrlCommand
    1
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
     ;; bool _ucu_validity
       (if _ucu_validity (write-byte -1 s) (write-byte 0 s))
     ;; string _route_encoder
       (write-long (length _route_encoder) s) (princ _route_encoder s)
     ;; uint8 _Version
       (write-byte _Version s)
     ;; uint8 _Province
       (write-byte _Province s)
     ;; uint8 _City
       (write-byte _City s)
     ;; uint8 _District
       (write-byte _District s)
     ;; uint8 _Street
       (write-byte _Street s)
     ;; uint8 _Community
       (write-byte _Community s)
     ;; uint8 _FeatureRequest
       (write-byte _FeatureRequest s)
     ;; uint8 _CarHeading
       (write-byte _CarHeading s)
     ;; uint8 _XXType
       (write-byte _XXType s)
     ;; uint16 _MapNumber
       (write-word _MapNumber s)
     ;; uint8 _StationNumber
       (write-byte _StationNumber s)
     ;; uint8 _RemoteCtrlCommand
       (write-byte _RemoteCtrlCommand s)
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
   ;; bool _ucu_validity
     (setq _ucu_validity (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; string _route_encoder
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _route_encoder (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; uint8 _Version
     (setq _Version (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _Province
     (setq _Province (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _City
     (setq _City (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _District
     (setq _District (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _Street
     (setq _Street (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _Community
     (setq _Community (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _FeatureRequest
     (setq _FeatureRequest (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _CarHeading
     (setq _CarHeading (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _XXType
     (setq _XXType (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint16 _MapNumber
     (setq _MapNumber (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; uint8 _StationNumber
     (setq _StationNumber (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _RemoteCtrlCommand
     (setq _RemoteCtrlCommand (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(setf (get in2ulv_msgs::UCURequestMsg :md5sum-) "d0e6d4647b85f9842b9c69090dff73da")
(setf (get in2ulv_msgs::UCURequestMsg :datatype-) "in2ulv_msgs/UCURequestMsg")
(setf (get in2ulv_msgs::UCURequestMsg :definition-)
      "# UCU_Requestment_message_4 (0x53E)

# 帧头，包含时间戳信息
std_msgs/Header header
# 模块类型
uint8 module_type

# error_code
uint32 error_code

# UCU数据有效性
bool ucu_validity
string route_encoder

# 版本号
uint8 Version
# 地区信息：省份、城市、区县、街道、校区
uint8 Province
uint8 City
uint8 District
uint8 Street
uint8 Community
# 功能请求
uint8 FeatureRequest
# 车头朝向
uint8 CarHeading
# 类型
uint8 XXType
# 地图编号
uint16 MapNumber
# 站点编号
uint8 StationNumber
# 远程控制命令
uint8 RemoteCtrlCommand

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



(provide :in2ulv_msgs/UCURequestMsg "d0e6d4647b85f9842b9c69090dff73da")


