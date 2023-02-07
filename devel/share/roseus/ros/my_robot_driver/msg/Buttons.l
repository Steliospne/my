;; Auto-generated. Do not edit!


(when (boundp 'my_robot_driver::Buttons)
  (if (not (find-package "MY_ROBOT_DRIVER"))
    (make-package "MY_ROBOT_DRIVER"))
  (shadow 'Buttons (find-package "MY_ROBOT_DRIVER")))
(unless (find-package "MY_ROBOT_DRIVER::BUTTONS")
  (make-package "MY_ROBOT_DRIVER::BUTTONS"))

(in-package "ROS")
;;//! \htmlinclude Buttons.msg.html


(defclass my_robot_driver::Buttons
  :super ros::object
  :slots (_reset _mode _stop ))

(defmethod my_robot_driver::Buttons
  (:init
   (&key
    ((:reset __reset) nil)
    ((:mode __mode) nil)
    ((:stop __stop) nil)
    )
   (send-super :init)
   (setq _reset __reset)
   (setq _mode __mode)
   (setq _stop __stop)
   self)
  (:reset
   (&optional (__reset :null))
   (if (not (eq __reset :null)) (setq _reset __reset)) _reset)
  (:mode
   (&optional (__mode :null))
   (if (not (eq __mode :null)) (setq _mode __mode)) _mode)
  (:stop
   (&optional (__stop :null))
   (if (not (eq __stop :null)) (setq _stop __stop)) _stop)
  (:serialization-length
   ()
   (+
    ;; bool _reset
    1
    ;; bool _mode
    1
    ;; bool _stop
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _reset
       (if _reset (write-byte -1 s) (write-byte 0 s))
     ;; bool _mode
       (if _mode (write-byte -1 s) (write-byte 0 s))
     ;; bool _stop
       (if _stop (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _reset
     (setq _reset (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _mode
     (setq _mode (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _stop
     (setq _stop (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(setf (get my_robot_driver::Buttons :md5sum-) "d5eb4537e3fc1caf4d9efa0e1fbc2aa5")
(setf (get my_robot_driver::Buttons :datatype-) "my_robot_driver/Buttons")
(setf (get my_robot_driver::Buttons :definition-)
      "
bool reset
bool mode
bool stop
")



(provide :my_robot_driver/Buttons "d5eb4537e3fc1caf4d9efa0e1fbc2aa5")


