
(cl:in-package :asdf)

(defsystem "my_robot_driver-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "Motor_Info" :depends-on ("_package_Motor_Info"))
    (:file "_package_Motor_Info" :depends-on ("_package"))
  ))