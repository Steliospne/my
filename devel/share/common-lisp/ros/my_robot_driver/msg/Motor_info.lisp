; Auto-generated. Do not edit!


(cl:in-package my_robot_driver-msg)


;//! \htmlinclude Motor_info.msg.html

(cl:defclass <Motor_info> (roslisp-msg-protocol:ros-message)
  ((state
    :reader state
    :initarg :state
    :type cl:string
    :initform ""))
)

(cl:defclass Motor_info (<Motor_info>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Motor_info>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Motor_info)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name my_robot_driver-msg:<Motor_info> is deprecated: use my_robot_driver-msg:Motor_info instead.")))

(cl:ensure-generic-function 'state-val :lambda-list '(m))
(cl:defmethod state-val ((m <Motor_info>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader my_robot_driver-msg:state-val is deprecated.  Use my_robot_driver-msg:state instead.")
  (state m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Motor_info>) ostream)
  "Serializes a message object of type '<Motor_info>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'state))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'state))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Motor_info>) istream)
  "Deserializes a message object of type '<Motor_info>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'state) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'state) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
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
  "af6d3a99f0fbeb66d3248fa4b3e675fb")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Motor_info)))
  "Returns md5sum for a message object of type 'Motor_info"
  "af6d3a99f0fbeb66d3248fa4b3e675fb")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Motor_info>)))
  "Returns full string definition for message of type '<Motor_info>"
  (cl:format cl:nil "string state~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Motor_info)))
  "Returns full string definition for message of type 'Motor_info"
  (cl:format cl:nil "string state~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Motor_info>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'state))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Motor_info>))
  "Converts a ROS message object to a list"
  (cl:list 'Motor_info
    (cl:cons ':state (state msg))
))
