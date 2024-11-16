; Auto-generated. Do not edit!


(cl:in-package in2ulv_msgs-msg)


;//! \htmlinclude HDMapSegment.msg.html

(cl:defclass <HDMapSegment> (roslisp-msg-protocol:ros-message)
  ((primitives
    :reader primitives
    :initarg :primitives
    :type (cl:vector in2ulv_msgs-msg:HDMapPrimitive)
   :initform (cl:make-array 0 :element-type 'in2ulv_msgs-msg:HDMapPrimitive :initial-element (cl:make-instance 'in2ulv_msgs-msg:HDMapPrimitive)))
   (preferred_primitive_id
    :reader preferred_primitive_id
    :initarg :preferred_primitive_id
    :type cl:integer
    :initform 0))
)

(cl:defclass HDMapSegment (<HDMapSegment>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <HDMapSegment>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'HDMapSegment)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name in2ulv_msgs-msg:<HDMapSegment> is deprecated: use in2ulv_msgs-msg:HDMapSegment instead.")))

(cl:ensure-generic-function 'primitives-val :lambda-list '(m))
(cl:defmethod primitives-val ((m <HDMapSegment>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader in2ulv_msgs-msg:primitives-val is deprecated.  Use in2ulv_msgs-msg:primitives instead.")
  (primitives m))

(cl:ensure-generic-function 'preferred_primitive_id-val :lambda-list '(m))
(cl:defmethod preferred_primitive_id-val ((m <HDMapSegment>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader in2ulv_msgs-msg:preferred_primitive_id-val is deprecated.  Use in2ulv_msgs-msg:preferred_primitive_id instead.")
  (preferred_primitive_id m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <HDMapSegment>) ostream)
  "Serializes a message object of type '<HDMapSegment>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'primitives))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'primitives))
  (cl:let* ((signed (cl:slot-value msg 'preferred_primitive_id)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 18446744073709551616) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <HDMapSegment>) istream)
  "Deserializes a message object of type '<HDMapSegment>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'primitives) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'primitives)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'in2ulv_msgs-msg:HDMapPrimitive))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'preferred_primitive_id) (cl:if (cl:< unsigned 9223372036854775808) unsigned (cl:- unsigned 18446744073709551616))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<HDMapSegment>)))
  "Returns string type for a message object of type '<HDMapSegment>"
  "in2ulv_msgs/HDMapSegment")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'HDMapSegment)))
  "Returns string type for a message object of type 'HDMapSegment"
  "in2ulv_msgs/HDMapSegment")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<HDMapSegment>)))
  "Returns md5sum for a message object of type '<HDMapSegment>"
  "d2c0eed8a8c4b7028940231461cac864")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'HDMapSegment)))
  "Returns md5sum for a message object of type 'HDMapSegment"
  "d2c0eed8a8c4b7028940231461cac864")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<HDMapSegment>)))
  "Returns full string definition for message of type '<HDMapSegment>"
  (cl:format cl:nil "# A segment of an HDMap which contains one or more MapPrimitives.~%in2ulv_msgs/HDMapPrimitive[] primitives~%~%int64 preferred_primitive_id~%~%================================================================================~%MSG: in2ulv_msgs/HDMapPrimitive~%# Map primitive information~%int64 id~%~%# Type of primitive, such as lane, polygon, line.~%string primitive_type~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'HDMapSegment)))
  "Returns full string definition for message of type 'HDMapSegment"
  (cl:format cl:nil "# A segment of an HDMap which contains one or more MapPrimitives.~%in2ulv_msgs/HDMapPrimitive[] primitives~%~%int64 preferred_primitive_id~%~%================================================================================~%MSG: in2ulv_msgs/HDMapPrimitive~%# Map primitive information~%int64 id~%~%# Type of primitive, such as lane, polygon, line.~%string primitive_type~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <HDMapSegment>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'primitives) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <HDMapSegment>))
  "Converts a ROS message object to a list"
  (cl:list 'HDMapSegment
    (cl:cons ':primitives (primitives msg))
    (cl:cons ':preferred_primitive_id (preferred_primitive_id msg))
))
