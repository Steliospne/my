; Auto-generated. Do not edit!


(cl:in-package my_robot_driver-msg)


;//! \htmlinclude Odom_data.msg.html

(cl:defclass <Odom_data> (roslisp-msg-protocol:ros-message)
  ((x
    :reader x
    :initarg :x
    :type cl:float
    :initform 0.0)
   (y
    :reader y
    :initarg :y
    :type cl:float
    :initform 0.0)
   (theta
    :reader theta
    :initarg :theta
    :type cl:float
    :initform 0.0)
   (counter_l
    :reader counter_l
    :initarg :counter_l
    :type cl:fixnum
    :initform 0)
   (counter_r
    :reader counter_r
    :initarg :counter_r
    :type cl:fixnum
    :initform 0))
)

(cl:defclass Odom_data (<Odom_data>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Odom_data>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Odom_data)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name my_robot_driver-msg:<Odom_data> is deprecated: use my_robot_driver-msg:Odom_data instead.")))

(cl:ensure-generic-function 'x-val :lambda-list '(m))
(cl:defmethod x-val ((m <Odom_data>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader my_robot_driver-msg:x-val is deprecated.  Use my_robot_driver-msg:x instead.")
  (x m))

(cl:ensure-generic-function 'y-val :lambda-list '(m))
(cl:defmethod y-val ((m <Odom_data>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader my_robot_driver-msg:y-val is deprecated.  Use my_robot_driver-msg:y instead.")
  (y m))

(cl:ensure-generic-function 'theta-val :lambda-list '(m))
(cl:defmethod theta-val ((m <Odom_data>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader my_robot_driver-msg:theta-val is deprecated.  Use my_robot_driver-msg:theta instead.")
  (theta m))

(cl:ensure-generic-function 'counter_l-val :lambda-list '(m))
(cl:defmethod counter_l-val ((m <Odom_data>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader my_robot_driver-msg:counter_l-val is deprecated.  Use my_robot_driver-msg:counter_l instead.")
  (counter_l m))

(cl:ensure-generic-function 'counter_r-val :lambda-list '(m))
(cl:defmethod counter_r-val ((m <Odom_data>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader my_robot_driver-msg:counter_r-val is deprecated.  Use my_robot_driver-msg:counter_r instead.")
  (counter_r m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Odom_data>) ostream)
  "Serializes a message object of type '<Odom_data>"
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'x))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'y))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'theta))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'counter_l)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'counter_l)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'counter_r)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'counter_r)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Odom_data>) istream)
  "Deserializes a message object of type '<Odom_data>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'x) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'y) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'theta) (roslisp-utils:decode-double-float-bits bits)))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'counter_l)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'counter_l)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'counter_r)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'counter_r)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Odom_data>)))
  "Returns string type for a message object of type '<Odom_data>"
  "my_robot_driver/Odom_data")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Odom_data)))
  "Returns string type for a message object of type 'Odom_data"
  "my_robot_driver/Odom_data")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Odom_data>)))
  "Returns md5sum for a message object of type '<Odom_data>"
  "44e713b4d9df4d172e1faa1169f3d407")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Odom_data)))
  "Returns md5sum for a message object of type 'Odom_data"
  "44e713b4d9df4d172e1faa1169f3d407")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Odom_data>)))
  "Returns full string definition for message of type '<Odom_data>"
  (cl:format cl:nil "~%float64 x~%float64 y~%float64 theta~%uint16 counter_l~%uint16 counter_r~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Odom_data)))
  "Returns full string definition for message of type 'Odom_data"
  (cl:format cl:nil "~%float64 x~%float64 y~%float64 theta~%uint16 counter_l~%uint16 counter_r~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Odom_data>))
  (cl:+ 0
     8
     8
     8
     2
     2
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Odom_data>))
  "Converts a ROS message object to a list"
  (cl:list 'Odom_data
    (cl:cons ':x (x msg))
    (cl:cons ':y (y msg))
    (cl:cons ':theta (theta msg))
    (cl:cons ':counter_l (counter_l msg))
    (cl:cons ':counter_r (counter_r msg))
))
