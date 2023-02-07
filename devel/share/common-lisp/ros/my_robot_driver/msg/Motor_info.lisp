; Auto-generated. Do not edit!


(cl:in-package my_robot_driver-msg)


;//! \htmlinclude Motor_info.msg.html

(cl:defclass <Motor_info> (roslisp-msg-protocol:ros-message)
  ((current_speed_l
    :reader current_speed_l
    :initarg :current_speed_l
    :type cl:float
    :initform 0.0)
   (current_speed_r
    :reader current_speed_r
    :initarg :current_speed_r
    :type cl:float
    :initform 0.0))
)

(cl:defclass Motor_info (<Motor_info>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Motor_info>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Motor_info)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name my_robot_driver-msg:<Motor_info> is deprecated: use my_robot_driver-msg:Motor_info instead.")))

(cl:ensure-generic-function 'current_speed_l-val :lambda-list '(m))
(cl:defmethod current_speed_l-val ((m <Motor_info>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader my_robot_driver-msg:current_speed_l-val is deprecated.  Use my_robot_driver-msg:current_speed_l instead.")
  (current_speed_l m))

(cl:ensure-generic-function 'current_speed_r-val :lambda-list '(m))
(cl:defmethod current_speed_r-val ((m <Motor_info>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader my_robot_driver-msg:current_speed_r-val is deprecated.  Use my_robot_driver-msg:current_speed_r instead.")
  (current_speed_r m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Motor_info>) ostream)
  "Serializes a message object of type '<Motor_info>"
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'current_speed_l))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'current_speed_r))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Motor_info>) istream)
  "Deserializes a message object of type '<Motor_info>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'current_speed_l) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'current_speed_r) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Motor_info>)))
  "Returns string type for a message object of type '<Motor_info>"
  "my_robot_driver/Motor_info")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Motor_info)))
  "Returns string type for a message object of type 'Motor_info"
  "my_robot_driver/Motor_info")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Motor_info>)))
  "Returns md5sum for a message object of type '<Motor_info>"
  "25e2b75d3711d982ee897267a66f9df5")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Motor_info)))
  "Returns md5sum for a message object of type 'Motor_info"
  "25e2b75d3711d982ee897267a66f9df5")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Motor_info>)))
  "Returns full string definition for message of type '<Motor_info>"
  (cl:format cl:nil "float32 current_speed_l~%float32 current_speed_r~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Motor_info)))
  "Returns full string definition for message of type 'Motor_info"
  (cl:format cl:nil "float32 current_speed_l~%float32 current_speed_r~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Motor_info>))
  (cl:+ 0
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Motor_info>))
  "Converts a ROS message object to a list"
  (cl:list 'Motor_info
    (cl:cons ':current_speed_l (current_speed_l msg))
    (cl:cons ':current_speed_r (current_speed_r msg))
))
