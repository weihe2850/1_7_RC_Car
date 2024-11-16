; Auto-generated. Do not edit!


(cl:in-package in2ulv_msgs-msg)


;//! \htmlinclude HDMapPrimitive.msg.html

(cl:defclass <HDMapPrimitive> (roslisp-msg-protocol:ros-message)
  ((id
    :reader id
    :initarg :id
    :type cl:integer
    :initform 0)
   (primitive_type
    :reader primitive_type
    :initarg :primitive_type
    :type cl:string
    :initform ""))
)

(cl:defclass HDMapPrimitive (<HDMapPrimitive>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <HDMapPrimitive>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'HDMapPrimitive)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name in2ulv_msgs-msg:<HDMapPrimitive> is deprecated: use in2ulv_msgs-msg:HDMapPrimitive instead.")))

(cl:ensure-generic-function 'id-val :lambda-list '(m))
(cl:defmethod id-val ((m <HDMapPrimitive>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader in2ulv_msgs-msg:id-val is deprecated.  Use in2ulv_msgs-msg:id instead.")
  (id m))

(cl:ensure-generic-function 'primitive_type-val :lambda-list '(m))
(cl:defmethod primitive_type-val ((m <HDMapPrimitive>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader in2ulv_msgs-msg:primitive_type-val is deprecated.  Use in2ulv_msgs-msg:primitive_type instead.")
  (primitive_type m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <HDMapPrimitive>) ostream)
  "Serializes a message object of type '<HDMapPrimitive>"
  (cl:let* ((signed (cl:slot-value msg 'id)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 18446744073709551616) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) unsigned) ostream)
    )
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'primitive_type))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'primitive_type))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <HDMapPrimitive>) istream)
  "Deserializes a message object of type '<HDMapPrimitive>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'id) (cl:if (cl:< unsigned 9223372036854775808) unsigned (cl:- unsigned 18446744073709551616))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'primitive_type) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'primitive_type) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<HDMapPrimitive>)))
  "Returns string type for a message object of type '<HDMapPrimitive>"
  "in2ulv_msgs/HDMapPrimitive")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'HDMapPrimitive)))
  "Returns string type for a message object of type 'HDMapPrimitive"
  "in2ulv_msgs/HDMapPrimitive")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<HDMapPrimitive>)))
  "Returns md5sum for a message object of type '<HDMapPrimitive>"
  "71178c1a30e0d8abc901046ed42eed0a")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'HDMapPrimitive)))
  "Returns md5sum for a message object of type 'HDMapPrimitive"
  "71178c1a30e0d8abc901046ed42eed0a")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<HDMapPrimitive>)))
  "Returns full string definition for message of type '<HDMapPrimitive>"
  (cl:format cl:nil "# Map primitive information~%int64 id~%~%# Type of primitive, such as lane, polygon, line.~%string primitive_type~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'HDMapPrimitive)))
  "Returns full string definition for message of type 'HDMapPrimitive"
  (cl:format cl:nil "# Map primitive information~%int64 id~%~%# Type of primitive, such as lane, polygon, line.~%string primitive_type~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <HDMapPrimitive>))
  (cl:+ 0
     8
     4 (cl:length (cl:slot-value msg 'primitive_type))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <HDMapPrimitive>))
  "Converts a ROS message object to a list"
  (cl:list 'HDMapPrimitive
    (cl:cons ':id (id msg))
    (cl:cons ':primitive_type (primitive_type msg))
))
