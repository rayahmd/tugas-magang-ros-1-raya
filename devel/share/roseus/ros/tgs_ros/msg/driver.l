;; Auto-generated. Do not edit!


(when (boundp 'tgs_ros::driver)
  (if (not (find-package "TGS_ROS"))
    (make-package "TGS_ROS"))
  (shadow 'driver (find-package "TGS_ROS")))
(unless (find-package "TGS_ROS::DRIVER")
  (make-package "TGS_ROS::DRIVER"))

(in-package "ROS")
;;//! \htmlinclude driver.msg.html


(defclass tgs_ros::driver
  :super ros::object
  :slots (_driver_id _name _car_brand _car_type _plate ))

(defmethod tgs_ros::driver
  (:init
   (&key
    ((:driver_id __driver_id) "")
    ((:name __name) "")
    ((:car_brand __car_brand) "")
    ((:car_type __car_type) "")
    ((:plate __plate) "")
    )
   (send-super :init)
   (setq _driver_id (string __driver_id))
   (setq _name (string __name))
   (setq _car_brand (string __car_brand))
   (setq _car_type (string __car_type))
   (setq _plate (string __plate))
   self)
  (:driver_id
   (&optional __driver_id)
   (if __driver_id (setq _driver_id __driver_id)) _driver_id)
  (:name
   (&optional __name)
   (if __name (setq _name __name)) _name)
  (:car_brand
   (&optional __car_brand)
   (if __car_brand (setq _car_brand __car_brand)) _car_brand)
  (:car_type
   (&optional __car_type)
   (if __car_type (setq _car_type __car_type)) _car_type)
  (:plate
   (&optional __plate)
   (if __plate (setq _plate __plate)) _plate)
  (:serialization-length
   ()
   (+
    ;; string _driver_id
    4 (length _driver_id)
    ;; string _name
    4 (length _name)
    ;; string _car_brand
    4 (length _car_brand)
    ;; string _car_type
    4 (length _car_type)
    ;; string _plate
    4 (length _plate)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _driver_id
       (write-long (length _driver_id) s) (princ _driver_id s)
     ;; string _name
       (write-long (length _name) s) (princ _name s)
     ;; string _car_brand
       (write-long (length _car_brand) s) (princ _car_brand s)
     ;; string _car_type
       (write-long (length _car_type) s) (princ _car_type s)
     ;; string _plate
       (write-long (length _plate) s) (princ _plate s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _driver_id
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _driver_id (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _car_brand
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _car_brand (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _car_type
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _car_type (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _plate
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _plate (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(setf (get tgs_ros::driver :md5sum-) "93069d58263ad2c724a8a005539b60fe")
(setf (get tgs_ros::driver :datatype-) "tgs_ros/driver")
(setf (get tgs_ros::driver :definition-)
      "string driver_id
string name
string car_brand
string car_type
string plate
")



(provide :tgs_ros/driver "93069d58263ad2c724a8a005539b60fe")


