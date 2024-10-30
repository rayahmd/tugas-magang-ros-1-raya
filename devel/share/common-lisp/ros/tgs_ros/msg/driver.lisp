; Auto-generated. Do not edit!


(cl:in-package tgs_ros-msg)


;//! \htmlinclude driver.msg.html

(cl:defclass <driver> (roslisp-msg-protocol:ros-message)
  ((driver_id
    :reader driver_id
    :initarg :driver_id
    :type cl:string
    :initform "")
   (name
    :reader name
    :initarg :name
    :type cl:string
    :initform "")
   (car_brand
    :reader car_brand
    :initarg :car_brand
    :type cl:string
    :initform "")
   (car_type
    :reader car_type
    :initarg :car_type
    :type cl:string
    :initform "")
   (plate
    :reader plate
    :initarg :plate
    :type cl:string
    :initform ""))
)

(cl:defclass driver (<driver>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <driver>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'driver)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name tgs_ros-msg:<driver> is deprecated: use tgs_ros-msg:driver instead.")))

(cl:ensure-generic-function 'driver_id-val :lambda-list '(m))
(cl:defmethod driver_id-val ((m <driver>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tgs_ros-msg:driver_id-val is deprecated.  Use tgs_ros-msg:driver_id instead.")
  (driver_id m))

(cl:ensure-generic-function 'name-val :lambda-list '(m))
(cl:defmethod name-val ((m <driver>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tgs_ros-msg:name-val is deprecated.  Use tgs_ros-msg:name instead.")
  (name m))

(cl:ensure-generic-function 'car_brand-val :lambda-list '(m))
(cl:defmethod car_brand-val ((m <driver>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tgs_ros-msg:car_brand-val is deprecated.  Use tgs_ros-msg:car_brand instead.")
  (car_brand m))

(cl:ensure-generic-function 'car_type-val :lambda-list '(m))
(cl:defmethod car_type-val ((m <driver>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tgs_ros-msg:car_type-val is deprecated.  Use tgs_ros-msg:car_type instead.")
  (car_type m))

(cl:ensure-generic-function 'plate-val :lambda-list '(m))
(cl:defmethod plate-val ((m <driver>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tgs_ros-msg:plate-val is deprecated.  Use tgs_ros-msg:plate instead.")
  (plate m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <driver>) ostream)
  "Serializes a message object of type '<driver>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'driver_id))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'driver_id))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'name))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'car_brand))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'car_brand))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'car_type))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'car_type))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'plate))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'plate))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <driver>) istream)
  "Deserializes a message object of type '<driver>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'driver_id) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'driver_id) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'name) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'name) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'car_brand) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'car_brand) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'car_type) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'car_type) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'plate) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'plate) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<driver>)))
  "Returns string type for a message object of type '<driver>"
  "tgs_ros/driver")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'driver)))
  "Returns string type for a message object of type 'driver"
  "tgs_ros/driver")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<driver>)))
  "Returns md5sum for a message object of type '<driver>"
  "93069d58263ad2c724a8a005539b60fe")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'driver)))
  "Returns md5sum for a message object of type 'driver"
  "93069d58263ad2c724a8a005539b60fe")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<driver>)))
  "Returns full string definition for message of type '<driver>"
  (cl:format cl:nil "string driver_id~%string name~%string car_brand~%string car_type~%string plate~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'driver)))
  "Returns full string definition for message of type 'driver"
  (cl:format cl:nil "string driver_id~%string name~%string car_brand~%string car_type~%string plate~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <driver>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'driver_id))
     4 (cl:length (cl:slot-value msg 'name))
     4 (cl:length (cl:slot-value msg 'car_brand))
     4 (cl:length (cl:slot-value msg 'car_type))
     4 (cl:length (cl:slot-value msg 'plate))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <driver>))
  "Converts a ROS message object to a list"
  (cl:list 'driver
    (cl:cons ':driver_id (driver_id msg))
    (cl:cons ':name (name msg))
    (cl:cons ':car_brand (car_brand msg))
    (cl:cons ':car_type (car_type msg))
    (cl:cons ':plate (plate msg))
))
