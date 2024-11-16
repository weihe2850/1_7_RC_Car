;; Auto-generated. Do not edit!


(when (boundp 'in2ulv_msgs::HDMapService)
  (if (not (find-package "IN2ULV_MSGS"))
    (make-package "IN2ULV_MSGS"))
  (shadow 'HDMapService (find-package "IN2ULV_MSGS")))
(unless (find-package "IN2ULV_MSGS::HDMAPSERVICE")
  (make-package "IN2ULV_MSGS::HDMAPSERVICE"))
(unless (find-package "IN2ULV_MSGS::HDMAPSERVICEREQUEST")
  (make-package "IN2ULV_MSGS::HDMAPSERVICEREQUEST"))
(unless (find-package "IN2ULV_MSGS::HDMAPSERVICERESPONSE")
  (make-package "IN2ULV_MSGS::HDMAPSERVICERESPONSE"))

(in-package "ROS")





(defclass in2ulv_msgs::HDMapServiceRequest
  :super ros::object
  :slots (_requested_primitives _geom_upper_bound _geom_lower_bound ))

(defmethod in2ulv_msgs::HDMapServiceRequest
  (:init
   (&key
    ((:requested_primitives __requested_primitives) (make-array 0 :initial-element 0 :element-type :char))
    ((:geom_upper_bound __geom_upper_bound) (make-array 3 :initial-element 0.0 :element-type :float))
    ((:geom_lower_bound __geom_lower_bound) (make-array 3 :initial-element 0.0 :element-type :float))
    )
   (send-super :init)
   (setq _requested_primitives __requested_primitives)
   (setq _geom_upper_bound __geom_upper_bound)
   (setq _geom_lower_bound __geom_lower_bound)
   self)
  (:requested_primitives
   (&optional __requested_primitives)
   (if __requested_primitives (setq _requested_primitives __requested_primitives)) _requested_primitives)
  (:geom_upper_bound
   (&optional __geom_upper_bound)
   (if __geom_upper_bound (setq _geom_upper_bound __geom_upper_bound)) _geom_upper_bound)
  (:geom_lower_bound
   (&optional __geom_lower_bound)
   (if __geom_lower_bound (setq _geom_lower_bound __geom_lower_bound)) _geom_lower_bound)
  (:serialization-length
   ()
   (+
    ;; uint8[] _requested_primitives
    (* 1    (length _requested_primitives)) 4
    ;; float64[3] _geom_upper_bound
    (* 8    3)
    ;; float64[3] _geom_lower_bound
    (* 8    3)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8[] _requested_primitives
     (write-long (length _requested_primitives) s)
     (princ _requested_primitives s)
     ;; float64[3] _geom_upper_bound
     (dotimes (i 3)
       (sys::poke (elt _geom_upper_bound i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; float64[3] _geom_lower_bound
     (dotimes (i 3)
       (sys::poke (elt _geom_lower_bound i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8[] _requested_primitives
   (let ((n (sys::peek buf ptr- :integer))) (incf ptr- 4)
     (setq _requested_primitives (make-array n :element-type :char))
     (replace _requested_primitives buf :start2 ptr-) (incf ptr- n))
   ;; float64[3] _geom_upper_bound
   (dotimes (i (length _geom_upper_bound))
     (setf (elt _geom_upper_bound i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     )
   ;; float64[3] _geom_lower_bound
   (dotimes (i (length _geom_lower_bound))
     (setf (elt _geom_lower_bound i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     )
   ;;
   self)
  )

(defclass in2ulv_msgs::HDMapServiceResponse
  :super ros::object
  :slots (_map _answer ))

(defmethod in2ulv_msgs::HDMapServiceResponse
  (:init
   (&key
    ((:map __map) (instance in2ulv_msgs::HDMapBin :init))
    ((:answer __answer) 0)
    )
   (send-super :init)
   (setq _map __map)
   (setq _answer (round __answer))
   self)
  (:map
   (&rest __map)
   (if (keywordp (car __map))
       (send* _map __map)
     (progn
       (if __map (setq _map (car __map)))
       _map)))
  (:answer
   (&optional __answer)
   (if __answer (setq _answer __answer)) _answer)
  (:serialization-length
   ()
   (+
    ;; in2ulv_msgs/HDMapBin _map
    (send _map :serialization-length)
    ;; int32 _answer
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; in2ulv_msgs/HDMapBin _map
       (send _map :serialize s)
     ;; int32 _answer
       (write-long _answer s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; in2ulv_msgs/HDMapBin _map
     (send _map :deserialize buf ptr-) (incf ptr- (send _map :serialization-length))
   ;; int32 _answer
     (setq _answer (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(defclass in2ulv_msgs::HDMapService
  :super ros::object
  :slots ())

(setf (get in2ulv_msgs::HDMapService :md5sum-) "08e28d6edd6a5f0aeb88a6dc9e09f47c")
(setf (get in2ulv_msgs::HDMapService :datatype-) "in2ulv_msgs/HDMapService")
(setf (get in2ulv_msgs::HDMapService :request) in2ulv_msgs::HDMapServiceRequest)
(setf (get in2ulv_msgs::HDMapService :response) in2ulv_msgs::HDMapServiceResponse)

(defmethod in2ulv_msgs::HDMapServiceRequest
  (:response () (instance in2ulv_msgs::HDMapServiceResponse :init)))

(setf (get in2ulv_msgs::HDMapServiceRequest :md5sum-) "08e28d6edd6a5f0aeb88a6dc9e09f47c")
(setf (get in2ulv_msgs::HDMapServiceRequest :datatype-) "in2ulv_msgs/HDMapServiceRequest")
(setf (get in2ulv_msgs::HDMapServiceRequest :definition-)
      "uint8[] requested_primitives

# Geometric upper bound of map data requested
float64[3] geom_upper_bound

# Geometric lower bound of map data requested
float64[3] geom_lower_bound

---
HDMapBin map
int32  answer

================================================================================
MSG: in2ulv_msgs/HDMapBin
# This contains the lanelet map in binary format.

# Timestamp and frame_id of the map
Header header

# version of map format. keep this as empty string if unnecessary
string format_version

# version of map version. keep this as empty string if unnecessary
string map_version

# binary data of lanelet2 map. This is meant to be filled using toBinMsg() in lanelet2_extension library
int8[] data

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

(setf (get in2ulv_msgs::HDMapServiceResponse :md5sum-) "08e28d6edd6a5f0aeb88a6dc9e09f47c")
(setf (get in2ulv_msgs::HDMapServiceResponse :datatype-) "in2ulv_msgs/HDMapServiceResponse")
(setf (get in2ulv_msgs::HDMapServiceResponse :definition-)
      "uint8[] requested_primitives

# Geometric upper bound of map data requested
float64[3] geom_upper_bound

# Geometric lower bound of map data requested
float64[3] geom_lower_bound

---
HDMapBin map
int32  answer

================================================================================
MSG: in2ulv_msgs/HDMapBin
# This contains the lanelet map in binary format.

# Timestamp and frame_id of the map
Header header

# version of map format. keep this as empty string if unnecessary
string format_version

# version of map version. keep this as empty string if unnecessary
string map_version

# binary data of lanelet2 map. This is meant to be filled using toBinMsg() in lanelet2_extension library
int8[] data

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



(provide :in2ulv_msgs/HDMapService "08e28d6edd6a5f0aeb88a6dc9e09f47c")


