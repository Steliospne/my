
(cl:in-package :asdf)

(defsystem "my_robot_driver-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "Buttons" :depends-on ("_package_Buttons"))
    (:file "_package_Buttons" :depends-on ("_package"))
    (:file "Motor_info" :depends-on ("_package_Motor_info"))
    (:file "_package_Motor_info" :depends-on ("_package"))
    (:file "Odom_data" :depends-on ("_package_Odom_data"))
    (:file "_package_Odom_data" :depends-on ("_package"))
  ))