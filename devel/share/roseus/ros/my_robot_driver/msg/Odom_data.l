;; Auto-generated. Do not edit!


(when (boundp 'my_robot_driver::Odom_data)
  (if (not (find-package "MY_ROBOT_DRIVER"))
    (make-package "MY_ROBOT_DRIVER"))
  (shadow 'Odom_data (find-package "MY_ROBOT_DRIVER")))
(unless (find-package "MY_ROBOT_DRIVER::ODOM_DATA")
  (make-package "MY_ROBOT_DRIVER::ODOM_DATA"))

(in-package "ROS")
;;//! \htmlinclude Odom_data.msg.html


(defclass my_robot_driver::Odom_data
  :super ros::object
  :slots (_x _y _theta _counter_l _counter_r ))

(defmethod my_robot_driver::Odom_data
  (:init
   (&key
    ((:x __x) 0.0)
    ((:y __y) 0.0)
    ((:theta __theta) 0.0)
    ((:counter_l __counter_l) 0)
    ((:counter_r __counter_r) 0)
    )
   (send-super :init)
   (setq _x (float __x))
   (setq _y (float __y))
   (setq _theta (float __theta))
   (setq _counter_l (round __counter_l))
   (setq _counter_r (round __counter_r))
   self)
  (:x
   (&optional __x)
   (if __x (setq _x __x)) _x)
  (:y
   (&optional __y)
   (if __y (setq _y __y)) _y)
  (:theta
   (&optional __theta)
   (if __theta (setq _theta __theta)) _theta)
  (:counter_l
   (&optional __counter_l)
   (if __counter_l (setq _counter_l __counter_l)) _counter_l)
  (:counter_r
   (&optional __counter_r)
   (if __counter_r (setq _counter_r __counter_r)) _counter_r)
  (:serialization-length
   ()
   (+
    ;; float64 _x
    8
    ;; float64 _y
    8
    ;; float64 _theta
    8
    ;; uint16 _counter_l
    2
    ;; uint16 _counter_r
    2
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64 _x
       (sys::poke _x (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _y
       (sys::poke _y (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _theta
       (sys::poke _theta (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; uint16 _counter_l
       (write-word _counter_l s)
     ;; uint16 _counter_r
       (write-word _counter_r s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64 _x
     (setq _x (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _y
     (setq _y (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _theta
     (setq _theta (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; uint16 _counter_l
     (setq _counter_l (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; uint16 _counter_r
     (setq _counter_r (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;;
   self)
  )

(setf (get my_robot_driver::Odom_data :md5sum-) "44e713b4d9df4d172e1faa1169f3d407")
(setf (get my_robot_driver::Odom_data :datatype-) "my_robot_driver/Odom_data")
(setf (get my_robot_driver::Odom_data :definition-)
      "
float64 x
float64 y
float64 theta
uint16 counter_l
uint16 counter_r
")



(provide :my_robot_driver/Odom_data "44e713b4d9df4d172e1faa1169f3d407")


