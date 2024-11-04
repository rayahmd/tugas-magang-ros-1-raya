;; Auto-generated. Do not edit!


(when (boundp 'tgs_ros::order)
  (if (not (find-package "TGS_ROS"))
    (make-package "TGS_ROS"))
  (shadow 'order (find-package "TGS_ROS")))
(unless (find-package "TGS_ROS::ORDER")
  (make-package "TGS_ROS::ORDER"))

(in-package "ROS")
;;//! \htmlinclude order.msg.html


(defclass tgs_ros::order
  :super ros::object
  :slots (_user_name ))

(defmethod tgs_ros::order
  (:init
   (&key
    ((:user_name __user_name) "")
    )
   (send-super :init)
   (setq _user_name (string __user_name))
   self)
  (:user_name
   (&optional __user_name)
   (if __user_name (setq _user_name __user_name)) _user_name)
  (:serialization-length
   ()
   (+
    ;; string _user_name
    4 (length _user_name)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _user_name
       (write-long (length _user_name) s) (princ _user_name s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _user_name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _user_name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(setf (get tgs_ros::order :md5sum-) "159b36609af19853383ab1313ed185b0")
(setf (get tgs_ros::order :datatype-) "tgs_ros/order")
(setf (get tgs_ros::order :definition-)
      "string user_name
")



(provide :tgs_ros/order "159b36609af19853383ab1313ed185b0")


