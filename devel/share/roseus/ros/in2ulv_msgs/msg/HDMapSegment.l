;; Auto-generated. Do not edit!


(when (boundp 'in2ulv_msgs::HDMapSegment)
  (if (not (find-package "IN2ULV_MSGS"))
    (make-package "IN2ULV_MSGS"))
  (shadow 'HDMapSegment (find-package "IN2ULV_MSGS")))
(unless (find-package "IN2ULV_MSGS::HDMAPSEGMENT")
  (make-package "IN2ULV_MSGS::HDMAPSEGMENT"))

(in-package "ROS")
;;//! \htmlinclude HDMapSegment.msg.html


(defclass in2ulv_msgs::HDMapSegment
  :super ros::object
  :slots (_primitives _preferred_primitive_id ))

(defmethod in2ulv_msgs::HDMapSegment
  (:init
   (&key
    ((:primitives __primitives) ())
    ((:preferred_primitive_id __preferred_primitive_id) 0)
    )
   (send-super :init)
   (setq _primitives __primitives)
   (setq _preferred_primitive_id (round __preferred_primitive_id))
   self)
  (:primitives
   (&rest __primitives)
   (if (keywordp (car __primitives))
       (send* _primitives __primitives)
     (progn
       (if __primitives (setq _primitives (car __primitives)))
       _primitives)))
  (:preferred_primitive_id
   (&optional __preferred_primitive_id)
   (if __preferred_primitive_id (setq _preferred_primitive_id __preferred_primitive_id)) _preferred_primitive_id)
  (:serialization-length
   ()
   (+
    ;; in2ulv_msgs/HDMapPrimitive[] _primitives
    (apply #'+ (send-all _primitives :serialization-length)) 4
    ;; int64 _preferred_primitive_id
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; in2ulv_msgs/HDMapPrimitive[] _primitives
     (write-long (length _primitives) s)
     (dolist (elem _primitives)
       (send elem :serialize s)
       )
     ;; int64 _preferred_primitive_id
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _preferred_primitive_id (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _preferred_primitive_id) (= (length (_preferred_primitive_id . bv)) 2)) ;; bignum
              (write-long (ash (elt (_preferred_primitive_id . bv) 0) 0) s)
              (write-long (ash (elt (_preferred_primitive_id . bv) 1) -1) s))
             ((and (class _preferred_primitive_id) (= (length (_preferred_primitive_id . bv)) 1)) ;; big1
              (write-long (elt (_preferred_primitive_id . bv) 0) s)
              (write-long (if (>= _preferred_primitive_id 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _preferred_primitive_id s)(write-long (if (>= _preferred_primitive_id 0) 0 #xffffffff) s)))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; in2ulv_msgs/HDMapPrimitive[] _primitives
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _primitives (let (r) (dotimes (i n) (push (instance in2ulv_msgs::HDMapPrimitive :init) r)) r))
     (dolist (elem- _primitives)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; int64 _preferred_primitive_id
#+(or :alpha :irix6 :x86_64)
      (setf _preferred_primitive_id (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _preferred_primitive_id (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
   ;;
   self)
  )

(setf (get in2ulv_msgs::HDMapSegment :md5sum-) "d2c0eed8a8c4b7028940231461cac864")
(setf (get in2ulv_msgs::HDMapSegment :datatype-) "in2ulv_msgs/HDMapSegment")
(setf (get in2ulv_msgs::HDMapSegment :definition-)
      "# A segment of an HDMap which contains one or more MapPrimitives.
in2ulv_msgs/HDMapPrimitive[] primitives

int64 preferred_primitive_id

================================================================================
MSG: in2ulv_msgs/HDMapPrimitive
# Map primitive information
int64 id

# Type of primitive, such as lane, polygon, line.
string primitive_type
")



(provide :in2ulv_msgs/HDMapSegment "d2c0eed8a8c4b7028940231461cac864")


