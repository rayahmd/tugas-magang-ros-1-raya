
(cl:in-package :asdf)

(defsystem "tgs_ros-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "driver" :depends-on ("_package_driver"))
    (:file "_package_driver" :depends-on ("_package"))
    (:file "order" :depends-on ("_package_order"))
    (:file "_package_order" :depends-on ("_package"))
  ))