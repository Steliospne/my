; Auto-generated. Do not edit!


(cl:in-package my_robot_driver-msg)


;//! \htmlinclude Motor_Info.msg.html

(cl:defclass <Motor_Info> (roslisp-msg-protocol:ros-message)
  ((speed
    :reader speed
    :initarg :speed
    :type cl:integer
    :initform 0)
   (motor_state
    :reader motor_state
    :initarg :motor_state
    :type cl:string
    :initform ""))
)

(cl:defclass Motor_Info (<Motor_Info>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Motor_Info>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Motor_Info)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name my_robot_driver-msg:<Motor_Info> is deprecated: use my_robot_driver-msg:Motor_Info instead.")))

(cl:ensure-generic-function 'speed-val :lambda-list '(m))
(cl:defmethod speed-val ((m <Motor_Info>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader my_robot_driver-msg:speed-val is deprecated.  Use my_robot_driver-msg:speed instead.")
  (speed m))

(cl:ensure-generic-function 'motor_state-val :lambda-list '(m))
(cl:defmethod motor_state-val ((m <Motor_Info>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader my_robot_driver-msg:motor_state-val is deprecated.  Use my_robot_driver-msg:motor_state instead.")
  (motor_state m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Motor_Info>) ostream)
  "Serializes a message object of type '<Motor_Info>"
  (cl:let* ((signed (cl:slot-value msg 'speed)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'motor_state))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'motor_state))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Motor_Info>) istream)
  "Deserializes a message object of type '<Motor_Info>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'speed) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'motor_state) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'motor_state) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Motor_Info>)))
  "Returns string type for a message object of type '<Motor_Info>"
  "my_robot_driver/Motor_Info")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Motor_Info)))
  "Returns string type for a message object of type 'Motor_Info"
  "my_robot_driver/Motor_Info")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Motor_Info>)))
  "Returns md5sum for a message object of type '<Motor_Info>"
  "727388caaf5c9d9c438c26406d5890e4")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Motor_Info)))
  "Returns md5sum for a message object of type 'Motor_Info"
  "727388caaf5c9d9c438c26406d5890e4")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Motor_Info>)))
  "Returns full string definition for message of type '<Motor_Info>"
  (cl:format cl:nil "~%int32 speed~%string motor_state~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Motor_Info)))
  "Returns full string definition for message of type 'Motor_Info"
  (cl:format cl:nil "~%int32 speed~%string motor_state~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Motor_Info>))
  (cl:+ 0
     4
     4 (cl:length (cl:slot-value msg 'motor_state))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Motor_Info>))
  "Converts a ROS message object to a list"
  (cl:list 'Motor_Info
    (cl:cons ':speed (speed msg))
    (cl:cons ':motor_state (motor_state msg))
))
