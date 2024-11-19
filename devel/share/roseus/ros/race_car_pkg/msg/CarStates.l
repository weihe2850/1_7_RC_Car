;; Auto-generated. Do not edit!


(when (boundp 'race_car_pkg::CarStates)
  (if (not (find-package "RACE_CAR_PKG"))
    (make-package "RACE_CAR_PKG"))
  (shadow 'CarStates (find-package "RACE_CAR_PKG")))
(unless (find-package "RACE_CAR_PKG::CARSTATES")
  (make-package "RACE_CAR_PKG::CARSTATES"))

(in-package "ROS")
;;//! \htmlinclude CarStates.msg.html


(defclass race_car_pkg::CarStates
  :super ros::object
  :slots (_Ux_mps _Uy_mps _r_radps _ax_mps2 _ay_mps2 _speed_rpm _delta_rad _Single_Motor_TxR_Nm _latitude _longitude _altitude _roll_rad _pitch_rad _yaw_rad _gps_state _UWB_x_m _UWB_y_m _EKF_x_m _EKF_y_m ))

(defmethod race_car_pkg::CarStates
  (:init
   (&key
    ((:Ux_mps __Ux_mps) 0.0)
    ((:Uy_mps __Uy_mps) 0.0)
    ((:r_radps __r_radps) 0.0)
    ((:ax_mps2 __ax_mps2) 0.0)
    ((:ay_mps2 __ay_mps2) 0.0)
    ((:speed_rpm __speed_rpm) 0.0)
    ((:delta_rad __delta_rad) 0.0)
    ((:Single_Motor_TxR_Nm __Single_Motor_TxR_Nm) 0.0)
    ((:latitude __latitude) 0.0)
    ((:longitude __longitude) 0.0)
    ((:altitude __altitude) 0.0)
    ((:roll_rad __roll_rad) 0.0)
    ((:pitch_rad __pitch_rad) 0.0)
    ((:yaw_rad __yaw_rad) 0.0)
    ((:gps_state __gps_state) 0)
    ((:UWB_x_m __UWB_x_m) 0.0)
    ((:UWB_y_m __UWB_y_m) 0.0)
    ((:EKF_x_m __EKF_x_m) 0.0)
    ((:EKF_y_m __EKF_y_m) 0.0)
    )
   (send-super :init)
   (setq _Ux_mps (float __Ux_mps))
   (setq _Uy_mps (float __Uy_mps))
   (setq _r_radps (float __r_radps))
   (setq _ax_mps2 (float __ax_mps2))
   (setq _ay_mps2 (float __ay_mps2))
   (setq _speed_rpm (float __speed_rpm))
   (setq _delta_rad (float __delta_rad))
   (setq _Single_Motor_TxR_Nm (float __Single_Motor_TxR_Nm))
   (setq _latitude (float __latitude))
   (setq _longitude (float __longitude))
   (setq _altitude (float __altitude))
   (setq _roll_rad (float __roll_rad))
   (setq _pitch_rad (float __pitch_rad))
   (setq _yaw_rad (float __yaw_rad))
   (setq _gps_state (round __gps_state))
   (setq _UWB_x_m (float __UWB_x_m))
   (setq _UWB_y_m (float __UWB_y_m))
   (setq _EKF_x_m (float __EKF_x_m))
   (setq _EKF_y_m (float __EKF_y_m))
   self)
  (:Ux_mps
   (&optional __Ux_mps)
   (if __Ux_mps (setq _Ux_mps __Ux_mps)) _Ux_mps)
  (:Uy_mps
   (&optional __Uy_mps)
   (if __Uy_mps (setq _Uy_mps __Uy_mps)) _Uy_mps)
  (:r_radps
   (&optional __r_radps)
   (if __r_radps (setq _r_radps __r_radps)) _r_radps)
  (:ax_mps2
   (&optional __ax_mps2)
   (if __ax_mps2 (setq _ax_mps2 __ax_mps2)) _ax_mps2)
  (:ay_mps2
   (&optional __ay_mps2)
   (if __ay_mps2 (setq _ay_mps2 __ay_mps2)) _ay_mps2)
  (:speed_rpm
   (&optional __speed_rpm)
   (if __speed_rpm (setq _speed_rpm __speed_rpm)) _speed_rpm)
  (:delta_rad
   (&optional __delta_rad)
   (if __delta_rad (setq _delta_rad __delta_rad)) _delta_rad)
  (:Single_Motor_TxR_Nm
   (&optional __Single_Motor_TxR_Nm)
   (if __Single_Motor_TxR_Nm (setq _Single_Motor_TxR_Nm __Single_Motor_TxR_Nm)) _Single_Motor_TxR_Nm)
  (:latitude
   (&optional __latitude)
   (if __latitude (setq _latitude __latitude)) _latitude)
  (:longitude
   (&optional __longitude)
   (if __longitude (setq _longitude __longitude)) _longitude)
  (:altitude
   (&optional __altitude)
   (if __altitude (setq _altitude __altitude)) _altitude)
  (:roll_rad
   (&optional __roll_rad)
   (if __roll_rad (setq _roll_rad __roll_rad)) _roll_rad)
  (:pitch_rad
   (&optional __pitch_rad)
   (if __pitch_rad (setq _pitch_rad __pitch_rad)) _pitch_rad)
  (:yaw_rad
   (&optional __yaw_rad)
   (if __yaw_rad (setq _yaw_rad __yaw_rad)) _yaw_rad)
  (:gps_state
   (&optional __gps_state)
   (if __gps_state (setq _gps_state __gps_state)) _gps_state)
  (:UWB_x_m
   (&optional __UWB_x_m)
   (if __UWB_x_m (setq _UWB_x_m __UWB_x_m)) _UWB_x_m)
  (:UWB_y_m
   (&optional __UWB_y_m)
   (if __UWB_y_m (setq _UWB_y_m __UWB_y_m)) _UWB_y_m)
  (:EKF_x_m
   (&optional __EKF_x_m)
   (if __EKF_x_m (setq _EKF_x_m __EKF_x_m)) _EKF_x_m)
  (:EKF_y_m
   (&optional __EKF_y_m)
   (if __EKF_y_m (setq _EKF_y_m __EKF_y_m)) _EKF_y_m)
  (:serialization-length
   ()
   (+
    ;; float64 _Ux_mps
    8
    ;; float64 _Uy_mps
    8
    ;; float64 _r_radps
    8
    ;; float64 _ax_mps2
    8
    ;; float64 _ay_mps2
    8
    ;; float64 _speed_rpm
    8
    ;; float64 _delta_rad
    8
    ;; float64 _Single_Motor_TxR_Nm
    8
    ;; float64 _latitude
    8
    ;; float64 _longitude
    8
    ;; float64 _altitude
    8
    ;; float64 _roll_rad
    8
    ;; float64 _pitch_rad
    8
    ;; float64 _yaw_rad
    8
    ;; int32 _gps_state
    4
    ;; float64 _UWB_x_m
    8
    ;; float64 _UWB_y_m
    8
    ;; float64 _EKF_x_m
    8
    ;; float64 _EKF_y_m
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64 _Ux_mps
       (sys::poke _Ux_mps (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _Uy_mps
       (sys::poke _Uy_mps (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _r_radps
       (sys::poke _r_radps (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _ax_mps2
       (sys::poke _ax_mps2 (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _ay_mps2
       (sys::poke _ay_mps2 (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _speed_rpm
       (sys::poke _speed_rpm (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _delta_rad
       (sys::poke _delta_rad (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _Single_Motor_TxR_Nm
       (sys::poke _Single_Motor_TxR_Nm (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _latitude
       (sys::poke _latitude (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _longitude
       (sys::poke _longitude (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _altitude
       (sys::poke _altitude (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _roll_rad
       (sys::poke _roll_rad (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _pitch_rad
       (sys::poke _pitch_rad (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _yaw_rad
       (sys::poke _yaw_rad (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; int32 _gps_state
       (write-long _gps_state s)
     ;; float64 _UWB_x_m
       (sys::poke _UWB_x_m (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _UWB_y_m
       (sys::poke _UWB_y_m (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _EKF_x_m
       (sys::poke _EKF_x_m (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _EKF_y_m
       (sys::poke _EKF_y_m (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64 _Ux_mps
     (setq _Ux_mps (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _Uy_mps
     (setq _Uy_mps (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _r_radps
     (setq _r_radps (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _ax_mps2
     (setq _ax_mps2 (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _ay_mps2
     (setq _ay_mps2 (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _speed_rpm
     (setq _speed_rpm (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _delta_rad
     (setq _delta_rad (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _Single_Motor_TxR_Nm
     (setq _Single_Motor_TxR_Nm (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _latitude
     (setq _latitude (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _longitude
     (setq _longitude (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _altitude
     (setq _altitude (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _roll_rad
     (setq _roll_rad (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _pitch_rad
     (setq _pitch_rad (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _yaw_rad
     (setq _yaw_rad (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; int32 _gps_state
     (setq _gps_state (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; float64 _UWB_x_m
     (setq _UWB_x_m (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _UWB_y_m
     (setq _UWB_y_m (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _EKF_x_m
     (setq _EKF_x_m (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _EKF_y_m
     (setq _EKF_y_m (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(setf (get race_car_pkg::CarStates :md5sum-) "8e4453ced50b304c0ba0c546d7acd617")
(setf (get race_car_pkg::CarStates :datatype-) "race_car_pkg/CarStates")
(setf (get race_car_pkg::CarStates :definition-)
      "float64 Ux_mps
float64 Uy_mps
float64 r_radps
float64 ax_mps2
float64 ay_mps2
float64 speed_rpm
float64 delta_rad
float64 Single_Motor_TxR_Nm
float64 latitude
float64 longitude
float64 altitude
float64 roll_rad
float64 pitch_rad
float64 yaw_rad
int32 gps_state
float64 UWB_x_m
float64 UWB_y_m
float64 EKF_x_m
float64 EKF_y_m
")



(provide :race_car_pkg/CarStates "8e4453ced50b304c0ba0c546d7acd617")


