;; Auto-generated. Do not edit!


(when (boundp 'in2ulv_msgs::HDMapPrimitive)
  (if (not (find-package "IN2ULV_MSGS"))
    (make-package "IN2ULV_MSGS"))
  (shadow 'HDMapPrimitive (find-package "IN2ULV_MSGS")))
(unless (find-package "IN2ULV_MSGS::HDMAPPRIMITIVE")
  (make-package "IN2ULV_MSGS::HDMAPPRIMITIVE"))

(in-package "ROS")
;;//! \htmlinclude HDMapPrimitive.msg.html


(defclass in2ulv_msgs::HDMapPrimitive
  :super ros::object
  :slots (_id _primitive_type ))

(defmethod in2ulv_msgs::HDMapPrimitive
  (:init
   (&key
    ((:id __id) 0)
    ((:primitive_type __primitive_type) "")
    )
   (send-super :init)
   (setq _id (round __id))
   (setq _primitive_type (string __primitive_type))
   self)
  (:id
   (&optional __id)
   (if __id (setq _id __id)) _id)
  (:primitive_type
   (&optional __primitive_type)
   (if __primitive_type (setq _primitive_type __primitive_type)) _primitive_type)
  (:serialization-length
   ()
   (+
    ;; int64 _id
    8
    ;; string _primitive_type
    4 (length _primitive_type)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int64 _id
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _id (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _id) (= (length (_id . bv)) 2)) ;; bignum
              (write-long (ash (elt (_id . bv) 0) 0) s)
              (write-long (ash (elt (_id . bv) 1) -1) s))
             ((and (class _id) (= (length (_id . bv)) 1)) ;; big1
              (write-long (elt (_id . bv) 0) s)
              (write-long (if (>= _id 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _id s)(write-long (if (>= _id 0) 0 #xffffffff) s)))
     ;; string _primitive_type
       (write-long (length _primitive_type) s) (princ _primitive_type s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int64 _id
#+(or :alpha :irix6 :x86_64)
      (setf _id (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _id (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
   ;; string _primitive_type
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _primitive_type (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(setf (get in2ulv_msgs::HDMapPrimitive :md5sum-) "71178c1a30e0d8abc901046ed42eed0a")
(setf (get in2ulv_msgs::HDMapPrimitive :datatype-) "in2ulv_msgs/HDMapPrimitive")
(setf (get in2ulv_msgs::HDMapPrimitive :definition-)
      "# Map primitive information
int64 id

# Type of primitive, such as lane, polygon, line.
string primitive_type
")



(provide :in2ulv_msgs/HDMapPrimitive "71178c1a30e0d8abc901046ed42eed0a")


