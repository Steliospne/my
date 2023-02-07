;; Auto-generated. Do not edit!


(when (boundp 'my_robot_driver::Motor_info)
  (if (not (find-package "MY_ROBOT_DRIVER"))
    (make-package "MY_ROBOT_DRIVER"))
  (shadow 'Motor_info (find-package "MY_ROBOT_DRIVER")))
(unless (find-package "MY_ROBOT_DRIVER::MOTOR_INFO")
  (make-package "MY_ROBOT_DRIVER::MOTOR_INFO"))

(in-package "ROS")
;;//! \htmlinclude Motor_info.msg.html


(defclass my_robot_driver::Motor_info
  :super ros::object
  :slots (_current_speed_l _current_speed_r ))

(defmethod my_robot_driver::Motor_info
  (:init
   (&key
    ((:current_speed_l __current_speed_l) 0.0)
    ((:current_speed_r __current_speed_r) 0.0)
    )
   (send-super :init)
   (setq _current_speed_l (float __current_speed_l))
   (setq _current_speed_r (float __current_speed_r))
   self)
  (:current_speed_l
   (&optional __current_speed_l)
   (if __current_speed_l (setq _current_speed_l __current_speed_l)) _current_speed_l)
  (:current_speed_r
   (&optional __current_speed_r)
   (if __current_speed_r (setq _current_speed_r __current_speed_r)) _current_speed_r)
  (:serialization-length
   ()
   (+
    ;; float32 _current_speed_l
    4
    ;; float32 _current_speed_r
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32 _current_speed_l
       (sys::poke _current_speed_l (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _current_speed_r
       (sys::poke _current_speed_r (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32 _current_speed_l
     (setq _current_speed_l (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _current_speed_r
     (setq _current_speed_r (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get my_robot_driver::Motor_info :md5sum-) "25e2b75d3711d982ee897267a66f9df5")
(setf (get my_robot_driver::Motor_info :datatype-) "my_robot_driver/Motor_info")
(setf (get my_robot_driver::Motor_info :definition-)
      "float32 current_speed_l
float32 current_speed_r
")



(provide :my_robot_driver/Motor_info "25e2b75d3711d982ee897267a66f9df5")


