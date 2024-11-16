;; Auto-generated. Do not edit!


(when (boundp 'in2ulv_msgs::ChassisInfoToHMI)
  (if (not (find-package "IN2ULV_MSGS"))
    (make-package "IN2ULV_MSGS"))
  (shadow 'ChassisInfoToHMI (find-package "IN2ULV_MSGS")))
(unless (find-package "IN2ULV_MSGS::CHASSISINFOTOHMI")
  (make-package "IN2ULV_MSGS::CHASSISINFOTOHMI"))

(in-package "ROS")
;;//! \htmlinclude ChassisInfoToHMI.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass in2ulv_msgs::ChassisInfoToHMI
  :super ros::object
  :slots (_header _vin _current_stop _route_stop _route_line _control_mode _veh_status _gps_veh _gps_stop _trip_distance _trip_eta _trip_left_mileage _SysPowMode _HzrdLtIO _WindscenWipSt _Highbeem _Lowbeem _Windows _Doorlock _DoorSwitch _EmergencyButton _speed _angle _soc _event ))

(defmethod in2ulv_msgs::ChassisInfoToHMI
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:vin __vin) "")
    ((:current_stop __current_stop) "")
    ((:route_stop __route_stop) "")
    ((:route_line __route_line) 0)
    ((:control_mode __control_mode) 0)
    ((:veh_status __veh_status) 0)
    ((:gps_veh __gps_veh) (make-array 2 :initial-element 0.0 :element-type :float))
    ((:gps_stop __gps_stop) (make-array 2 :initial-element 0.0 :element-type :float))
    ((:trip_distance __trip_distance) 0.0)
    ((:trip_eta __trip_eta) 0.0)
    ((:trip_left_mileage __trip_left_mileage) 0.0)
    ((:SysPowMode __SysPowMode) 0)
    ((:HzrdLtIO __HzrdLtIO) 0)
    ((:WindscenWipSt __WindscenWipSt) 0)
    ((:Highbeem __Highbeem) 0)
    ((:Lowbeem __Lowbeem) 0)
    ((:Windows __Windows) 0)
    ((:Doorlock __Doorlock) 0)
    ((:DoorSwitch __DoorSwitch) 0)
    ((:EmergencyButton __EmergencyButton) 0)
    ((:speed __speed) 0.0)
    ((:angle __angle) 0.0)
    ((:soc __soc) 0.0)
    ((:event __event) 0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _vin (string __vin))
   (setq _current_stop (string __current_stop))
   (setq _route_stop (string __route_stop))
   (setq _route_line (round __route_line))
   (setq _control_mode (round __control_mode))
   (setq _veh_status (round __veh_status))
   (setq _gps_veh __gps_veh)
   (setq _gps_stop __gps_stop)
   (setq _trip_distance (float __trip_distance))
   (setq _trip_eta (float __trip_eta))
   (setq _trip_left_mileage (float __trip_left_mileage))
   (setq _SysPowMode (round __SysPowMode))
   (setq _HzrdLtIO (round __HzrdLtIO))
   (setq _WindscenWipSt (round __WindscenWipSt))
   (setq _Highbeem (round __Highbeem))
   (setq _Lowbeem (round __Lowbeem))
   (setq _Windows (round __Windows))
   (setq _Doorlock (round __Doorlock))
   (setq _DoorSwitch (round __DoorSwitch))
   (setq _EmergencyButton (round __EmergencyButton))
   (setq _speed (float __speed))
   (setq _angle (float __angle))
   (setq _soc (float __soc))
   (setq _event (round __event))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:vin
   (&optional __vin)
   (if __vin (setq _vin __vin)) _vin)
  (:current_stop
   (&optional __current_stop)
   (if __current_stop (setq _current_stop __current_stop)) _current_stop)
  (:route_stop
   (&optional __route_stop)
   (if __route_stop (setq _route_stop __route_stop)) _route_stop)
  (:route_line
   (&optional __route_line)
   (if __route_line (setq _route_line __route_line)) _route_line)
  (:control_mode
   (&optional __control_mode)
   (if __control_mode (setq _control_mode __control_mode)) _control_mode)
  (:veh_status
   (&optional __veh_status)
   (if __veh_status (setq _veh_status __veh_status)) _veh_status)
  (:gps_veh
   (&optional __gps_veh)
   (if __gps_veh (setq _gps_veh __gps_veh)) _gps_veh)
  (:gps_stop
   (&optional __gps_stop)
   (if __gps_stop (setq _gps_stop __gps_stop)) _gps_stop)
  (:trip_distance
   (&optional __trip_distance)
   (if __trip_distance (setq _trip_distance __trip_distance)) _trip_distance)
  (:trip_eta
   (&optional __trip_eta)
   (if __trip_eta (setq _trip_eta __trip_eta)) _trip_eta)
  (:trip_left_mileage
   (&optional __trip_left_mileage)
   (if __trip_left_mileage (setq _trip_left_mileage __trip_left_mileage)) _trip_left_mileage)
  (:SysPowMode
   (&optional __SysPowMode)
   (if __SysPowMode (setq _SysPowMode __SysPowMode)) _SysPowMode)
  (:HzrdLtIO
   (&optional __HzrdLtIO)
   (if __HzrdLtIO (setq _HzrdLtIO __HzrdLtIO)) _HzrdLtIO)
  (:WindscenWipSt
   (&optional __WindscenWipSt)
   (if __WindscenWipSt (setq _WindscenWipSt __WindscenWipSt)) _WindscenWipSt)
  (:Highbeem
   (&optional __Highbeem)
   (if __Highbeem (setq _Highbeem __Highbeem)) _Highbeem)
  (:Lowbeem
   (&optional __Lowbeem)
   (if __Lowbeem (setq _Lowbeem __Lowbeem)) _Lowbeem)
  (:Windows
   (&optional __Windows)
   (if __Windows (setq _Windows __Windows)) _Windows)
  (:Doorlock
   (&optional __Doorlock)
   (if __Doorlock (setq _Doorlock __Doorlock)) _Doorlock)
  (:DoorSwitch
   (&optional __DoorSwitch)
   (if __DoorSwitch (setq _DoorSwitch __DoorSwitch)) _DoorSwitch)
  (:EmergencyButton
   (&optional __EmergencyButton)
   (if __EmergencyButton (setq _EmergencyButton __EmergencyButton)) _EmergencyButton)
  (:speed
   (&optional __speed)
   (if __speed (setq _speed __speed)) _speed)
  (:angle
   (&optional __angle)
   (if __angle (setq _angle __angle)) _angle)
  (:soc
   (&optional __soc)
   (if __soc (setq _soc __soc)) _soc)
  (:event
   (&optional __event)
   (if __event (setq _event __event)) _event)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; string _vin
    4 (length _vin)
    ;; string _current_stop
    4 (length _current_stop)
    ;; string _route_stop
    4 (length _route_stop)
    ;; uint64 _route_line
    8
    ;; uint8 _control_mode
    1
    ;; uint16 _veh_status
    2
    ;; float64[2] _gps_veh
    (* 8    2)
    ;; float64[2] _gps_stop
    (* 8    2)
    ;; float64 _trip_distance
    8
    ;; float64 _trip_eta
    8
    ;; float64 _trip_left_mileage
    8
    ;; uint8 _SysPowMode
    1
    ;; uint8 _HzrdLtIO
    1
    ;; uint8 _WindscenWipSt
    1
    ;; uint8 _Highbeem
    1
    ;; uint8 _Lowbeem
    1
    ;; uint8 _Windows
    1
    ;; uint8 _Doorlock
    1
    ;; uint8 _DoorSwitch
    1
    ;; uint8 _EmergencyButton
    1
    ;; float64 _speed
    8
    ;; float64 _angle
    8
    ;; float64 _soc
    8
    ;; uint16 _event
    2
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; string _vin
       (write-long (length _vin) s) (princ _vin s)
     ;; string _current_stop
       (write-long (length _current_stop) s) (princ _current_stop s)
     ;; string _route_stop
       (write-long (length _route_stop) s) (princ _route_stop s)
     ;; uint64 _route_line
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _route_line (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _route_line) (= (length (_route_line . bv)) 2)) ;; bignum
              (write-long (ash (elt (_route_line . bv) 0) 0) s)
              (write-long (ash (elt (_route_line . bv) 1) -1) s))
             ((and (class _route_line) (= (length (_route_line . bv)) 1)) ;; big1
              (write-long (elt (_route_line . bv) 0) s)
              (write-long (if (>= _route_line 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _route_line s)(write-long (if (>= _route_line 0) 0 #xffffffff) s)))
     ;; uint8 _control_mode
       (write-byte _control_mode s)
     ;; uint16 _veh_status
       (write-word _veh_status s)
     ;; float64[2] _gps_veh
     (dotimes (i 2)
       (sys::poke (elt _gps_veh i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; float64[2] _gps_stop
     (dotimes (i 2)
       (sys::poke (elt _gps_stop i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; float64 _trip_distance
       (sys::poke _trip_distance (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _trip_eta
       (sys::poke _trip_eta (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _trip_left_mileage
       (sys::poke _trip_left_mileage (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; uint8 _SysPowMode
       (write-byte _SysPowMode s)
     ;; uint8 _HzrdLtIO
       (write-byte _HzrdLtIO s)
     ;; uint8 _WindscenWipSt
       (write-byte _WindscenWipSt s)
     ;; uint8 _Highbeem
       (write-byte _Highbeem s)
     ;; uint8 _Lowbeem
       (write-byte _Lowbeem s)
     ;; uint8 _Windows
       (write-byte _Windows s)
     ;; uint8 _Doorlock
       (write-byte _Doorlock s)
     ;; uint8 _DoorSwitch
       (write-byte _DoorSwitch s)
     ;; uint8 _EmergencyButton
       (write-byte _EmergencyButton s)
     ;; float64 _speed
       (sys::poke _speed (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _angle
       (sys::poke _angle (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _soc
       (sys::poke _soc (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; uint16 _event
       (write-word _event s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; string _vin
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _vin (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _current_stop
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _current_stop (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _route_stop
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _route_stop (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; uint64 _route_line
     
#+(or :alpha :irix6 :x86_64)
      (setf _route_line (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _route_line (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
   ;; uint8 _control_mode
     (setq _control_mode (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint16 _veh_status
     (setq _veh_status (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; float64[2] _gps_veh
   (dotimes (i (length _gps_veh))
     (setf (elt _gps_veh i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     )
   ;; float64[2] _gps_stop
   (dotimes (i (length _gps_stop))
     (setf (elt _gps_stop i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     )
   ;; float64 _trip_distance
     (setq _trip_distance (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _trip_eta
     (setq _trip_eta (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _trip_left_mileage
     (setq _trip_left_mileage (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; uint8 _SysPowMode
     (setq _SysPowMode (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _HzrdLtIO
     (setq _HzrdLtIO (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _WindscenWipSt
     (setq _WindscenWipSt (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _Highbeem
     (setq _Highbeem (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _Lowbeem
     (setq _Lowbeem (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _Windows
     (setq _Windows (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _Doorlock
     (setq _Doorlock (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _DoorSwitch
     (setq _DoorSwitch (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _EmergencyButton
     (setq _EmergencyButton (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; float64 _speed
     (setq _speed (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _angle
     (setq _angle (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _soc
     (setq _soc (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; uint16 _event
     (setq _event (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;;
   self)
  )

(setf (get in2ulv_msgs::ChassisInfoToHMI :md5sum-) "a60f94b6e0bf5a28659ca3510b2db089")
(setf (get in2ulv_msgs::ChassisInfoToHMI :datatype-) "in2ulv_msgs/ChassisInfoToHMI")
(setf (get in2ulv_msgs::ChassisInfoToHMI :definition-)
      "# 帧头，包含时间戳信息
std_msgs/Header header

string vin # 字符串类型, 16 ~ 32个字符， 读取配置文件获取，列如: LK6ADAE21MB100250
string current_stop # 字符串类型, 16 ~ 32个字符, 列如: d0a0d333931203a,
string route_stop # 字符串类型,16 ~ 32个字符, 列如: d0a0d333931203a

uint64 route_line # 路线

uint8 control_mode # 车辆控制模式: 0为自动模式， 1为手动模式

uint16 veh_status  # 0: 无服务请求, 1: 未准备完毕, 2: 准备完毕, 3: 正常行驶, 4: 到达目的地, 5: 服务失败(未到达目的地), 6: 车辆已经暂停, 7: 避障停车

float64[2] gps_veh # 车辆位置经纬度，2个dobule类型的数组, 第一个是车辆位置的纬度， 第二个是车辆位置的经度
float64[2] gps_stop # 车辆目标站点经纬度，2个dobule类型的数组, 第一个是车辆位置的纬度， 第二个是车辆位置的经度

float64 trip_distance     # 行程总里程, 距离站点总里程, 单位: m
float64 trip_eta          # 行程剩余时间, 到达站点预计剩余时间, 单位: ms 
float64 trip_left_mileage # 行程剩余里程, 到达站点剩余里程, 单位: m

uint8 SysPowMode  # 整车电源模式, ACAN的0x565, 0x0: OFF, 0x1: ACC, 0x2: ON
uint8 HzrdLtIO    # 双闪状态, 0: 关闭, 1: 开启
uint8 WindscenWipSt  # 雨刮状态, 0: 关闭, 1: 开启 
uint8 Highbeem       # 远关灯状态, 0: 关闭, 1: 开启
uint8 Lowbeem        # 近光灯状态, 0: 关闭, 1: 开启
uint8 Windows        # 车窗状态, 0: 升起, 1: 落下
uint8 Doorlock       # 门锁状态, 0: 锁车, 1: 解锁
uint8 DoorSwitch     # 门锁开关, 0: 关闭, 1: 未关闭
uint8 EmergencyButton# 按钮状态: 按下为1， 不按下为0

float64 speed	      # 车辆当前速度, IDU从0x36A获取到的车速, 单位m/s
float64 angle          # 车辆转向角度, IDU从0x1E5获取到的转角值, 单位度
float64 soc            # IDU从0x36A获取到的SOC电池值, 单位%
uint16 event         # 故障事件上报, 具体故障事件定义和含义由算法给出


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



(provide :in2ulv_msgs/ChassisInfoToHMI "a60f94b6e0bf5a28659ca3510b2db089")


