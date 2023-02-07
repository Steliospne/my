; Auto-generated. Do not edit!


(cl:in-package my_robot_driver-msg)


;//! \htmlinclude Buttons.msg.html

(cl:defclass <Buttons> (roslisp-msg-protocol:ros-message)
  ((reset
    :reader reset
    :initarg :reset
    :type cl:boolean
    :initform cl:nil)
   (mode
    :reader mode
    :initarg :mode
    :type cl:boolean
    :initform cl:nil)
   (stop
    :reader stop
    :initarg :stop
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass Buttons (<Buttons>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Buttons>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Buttons)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name my_robot_driver-msg:<Buttons> is deprecated: use my_robot_driver-msg:Buttons instead.")))

(cl:ensure-generic-function 'reset-val :lambda-list '(m))
(cl:defmethod reset-val ((m <Buttons>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader my_robot_driver-msg:reset-val is deprecated.  Use my_robot_driver-msg:reset instead.")
  (reset m))

(cl:ensure-generic-function 'mode-val :lambda-list '(m))
(cl:defmethod mode-val ((m <Buttons>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader my_robot_driver-msg:mode-val is deprecated.  Use my_robot_driver-msg:mode instead.")
  (mode m))

(cl:ensure-generic-function 'stop-val :lambda-list '(m))
(cl:defmethod stop-val ((m <Buttons>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader my_robot_driver-msg:stop-val is deprecated.  Use my_robot_driver-msg:stop instead.")
  (stop m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Buttons>) ostream)
  "Serializes a message object of type '<Buttons>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'reset) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'mode) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'stop) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Buttons>) istream)
  "Deserializes a message object of type '<Buttons>"
    (cl:setf (cl:slot-value msg 'reset) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'mode) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'stop) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Buttons>)))
  "Returns string type for a message object of type '<Buttons>"
  "my_robot_driver/Buttons")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Buttons)))
  "Returns string type for a message object of type 'Buttons"
  "my_robot_driver/Buttons")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Buttons>)))
  "Returns md5sum for a message object of type '<Buttons>"
  "d5eb4537e3fc1caf4d9efa0e1fbc2aa5")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Buttons)))
  "Returns md5sum for a message object of type 'Buttons"
  "d5eb4537e3fc1caf4d9efa0e1fbc2aa5")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Buttons>)))
  "Returns full string definition for message of type '<Buttons>"
  (cl:format cl:nil "~%bool reset~%bool mode~%bool stop~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Buttons)))
  "Returns full string definition for message of type 'Buttons"
  (cl:format cl:nil "~%bool reset~%bool mode~%bool stop~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Buttons>))
  (cl:+ 0
     1
     1
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Buttons>))
  "Converts a ROS message object to a list"
  (cl:list 'Buttons
    (cl:cons ':reset (reset msg))
    (cl:cons ':mode (mode msg))
    (cl:cons ':stop (stop msg))
))
