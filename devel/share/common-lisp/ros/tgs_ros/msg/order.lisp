; Auto-generated. Do not edit!


(cl:in-package tgs_ros-msg)


;//! \htmlinclude order.msg.html

(cl:defclass <order> (roslisp-msg-protocol:ros-message)
  ((user_name
    :reader user_name
    :initarg :user_name
    :type cl:string
    :initform ""))
)

(cl:defclass order (<order>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <order>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'order)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name tgs_ros-msg:<order> is deprecated: use tgs_ros-msg:order instead.")))

(cl:ensure-generic-function 'user_name-val :lambda-list '(m))
(cl:defmethod user_name-val ((m <order>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tgs_ros-msg:user_name-val is deprecated.  Use tgs_ros-msg:user_name instead.")
  (user_name m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <order>) ostream)
  "Serializes a message object of type '<order>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'user_name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'user_name))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <order>) istream)
  "Deserializes a message object of type '<order>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'user_name) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'user_name) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<order>)))
  "Returns string type for a message object of type '<order>"
  "tgs_ros/order")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'order)))
  "Returns string type for a message object of type 'order"
  "tgs_ros/order")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<order>)))
  "Returns md5sum for a message object of type '<order>"
  "159b36609af19853383ab1313ed185b0")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'order)))
  "Returns md5sum for a message object of type 'order"
  "159b36609af19853383ab1313ed185b0")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<order>)))
  "Returns full string definition for message of type '<order>"
  (cl:format cl:nil "string user_name~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'order)))
  "Returns full string definition for message of type 'order"
  (cl:format cl:nil "string user_name~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <order>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'user_name))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <order>))
  "Converts a ROS message object to a list"
  (cl:list 'order
    (cl:cons ':user_name (user_name msg))
))
