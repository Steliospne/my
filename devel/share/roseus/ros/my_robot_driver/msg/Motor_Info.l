;; Auto-generated. Do not edit!


(when (boundp 'my_robot_driver::Motor_Info)
  (if (not (find-package "MY_ROBOT_DRIVER"))
    (make-package "MY_ROBOT_DRIVER"))
  (shadow 'Motor_Info (find-package "MY_ROBOT_DRIVER")))
(unless (find-package "MY_ROBOT_DRIVER::MOTOR_INFO")
  (make-package "MY_ROBOT_DRIVER::MOTOR_INFO"))

(in-package "ROS")
;;//! \htmlinclude Motor_Info.msg.html


(defclass my_robot_driver::Motor_Info
  :super ros::object
  :slots (_speed _motor_state ))

(defmethod my_robot_driver::Motor_Info
  (:init
   (&key
    ((:speed __speed) 0)
    ((:motor_state __motor_state) "")
    )
   (send-super :init)
   (setq _speed (round __speed))
   (setq _motor_state (string __motor_state))
   self)
  (:speed
   (&optional __speed)
   (if __speed (setq _speed __speed)) _speed)
  (:motor_state
   (&optional __motor_state)
   (if __motor_state (setq _motor_state __motor_state)) _motor_state)
  (:serialization-length
   ()
   (+
    ;; int32 _speed
    4
    ;; string _motor_state
    4 (length _motor_state)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _speed
       (write-long _speed s)
     ;; string _motor_state
       (write-long (length _motor_state) s) (princ _motor_state s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _speed
     (setq _speed (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; string _motor_state
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _motor_state (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(setf (get my_robot_driver::Motor_Info :md5sum-) "727388caaf5c9d9c438c26406d5890e4")
(setf (get my_robot_driver::Motor_Info :datatype-) "my_robot_driver/Motor_Info")
(setf (get my_robot_driver::Motor_Info :definition-)
      "
int32 speed
string motor_state
")



(provide :my_robot_driver/Motor_Info "727388caaf5c9d9c438c26406d5890e4")


