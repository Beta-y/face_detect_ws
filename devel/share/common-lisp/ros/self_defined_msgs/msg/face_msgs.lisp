; Auto-generated. Do not edit!


(cl:in-package self_defined_msgs-msg)


;//! \htmlinclude face_msgs.msg.html

(cl:defclass <face_msgs> (roslisp-msg-protocol:ros-message)
  ((location
    :reader location
    :initarg :location
    :type (cl:vector self_defined_msgs-msg:my_list)
   :initform (cl:make-array 0 :element-type 'self_defined_msgs-msg:my_list :initial-element (cl:make-instance 'self_defined_msgs-msg:my_list))))
)

(cl:defclass face_msgs (<face_msgs>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <face_msgs>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'face_msgs)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name self_defined_msgs-msg:<face_msgs> is deprecated: use self_defined_msgs-msg:face_msgs instead.")))

(cl:ensure-generic-function 'location-val :lambda-list '(m))
(cl:defmethod location-val ((m <face_msgs>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader self_defined_msgs-msg:location-val is deprecated.  Use self_defined_msgs-msg:location instead.")
  (location m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<face_msgs>)))
    "Constants for message type '<face_msgs>"
  '((:INDEX . 0))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'face_msgs)))
    "Constants for message type 'face_msgs"
  '((:INDEX . 0))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <face_msgs>) ostream)
  "Serializes a message object of type '<face_msgs>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'location))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'location))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <face_msgs>) istream)
  "Deserializes a message object of type '<face_msgs>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'location) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'location)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'self_defined_msgs-msg:my_list))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<face_msgs>)))
  "Returns string type for a message object of type '<face_msgs>"
  "self_defined_msgs/face_msgs")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'face_msgs)))
  "Returns string type for a message object of type 'face_msgs"
  "self_defined_msgs/face_msgs")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<face_msgs>)))
  "Returns md5sum for a message object of type '<face_msgs>"
  "bee29f659ddcd80e70bd0b7494b2547b")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'face_msgs)))
  "Returns md5sum for a message object of type 'face_msgs"
  "bee29f659ddcd80e70bd0b7494b2547b")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<face_msgs>)))
  "Returns full string definition for message of type '<face_msgs>"
  (cl:format cl:nil "int16 index=0~%my_list[] location~%~%================================================================================~%MSG: self_defined_msgs/my_list~%#list 4D~%uint16 a=0~%uint16 b=0~%uint16 c=0~%uint16 d=0~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'face_msgs)))
  "Returns full string definition for message of type 'face_msgs"
  (cl:format cl:nil "int16 index=0~%my_list[] location~%~%================================================================================~%MSG: self_defined_msgs/my_list~%#list 4D~%uint16 a=0~%uint16 b=0~%uint16 c=0~%uint16 d=0~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <face_msgs>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'location) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <face_msgs>))
  "Converts a ROS message object to a list"
  (cl:list 'face_msgs
    (cl:cons ':location (location msg))
))
