; Auto-generated. Do not edit!


(cl:in-package face_detector-msg)


;//! \htmlinclude face_msgs.msg.html

(cl:defclass <face_msgs> (roslisp-msg-protocol:ros-message)
  ((index
    :reader index
    :initarg :index
    :type cl:fixnum
    :initform 0)
   (location
    :reader location
    :initarg :location
    :type (cl:vector face_detector-msg:my_list)
   :initform (cl:make-array 0 :element-type 'face_detector-msg:my_list :initial-element (cl:make-instance 'face_detector-msg:my_list))))
)

(cl:defclass face_msgs (<face_msgs>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <face_msgs>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'face_msgs)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name face_detector-msg:<face_msgs> is deprecated: use face_detector-msg:face_msgs instead.")))

(cl:ensure-generic-function 'index-val :lambda-list '(m))
(cl:defmethod index-val ((m <face_msgs>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader face_detector-msg:index-val is deprecated.  Use face_detector-msg:index instead.")
  (index m))

(cl:ensure-generic-function 'location-val :lambda-list '(m))
(cl:defmethod location-val ((m <face_msgs>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader face_detector-msg:location-val is deprecated.  Use face_detector-msg:location instead.")
  (location m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <face_msgs>) ostream)
  "Serializes a message object of type '<face_msgs>"
  (cl:let* ((signed (cl:slot-value msg 'index)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
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
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'index) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'location) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'location)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'face_detector-msg:my_list))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<face_msgs>)))
  "Returns string type for a message object of type '<face_msgs>"
  "face_detector/face_msgs")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'face_msgs)))
  "Returns string type for a message object of type 'face_msgs"
  "face_detector/face_msgs")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<face_msgs>)))
  "Returns md5sum for a message object of type '<face_msgs>"
  "8b8cdd61744da60b1fa004570af7b850")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'face_msgs)))
  "Returns md5sum for a message object of type 'face_msgs"
  "8b8cdd61744da60b1fa004570af7b850")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<face_msgs>)))
  "Returns full string definition for message of type '<face_msgs>"
  (cl:format cl:nil "int16 index~%my_list[] location~%~%================================================================================~%MSG: face_detector/my_list~%#list 4D~%string lable~%int16 top~%int16 right~%int16 bottom ~%int16 left~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'face_msgs)))
  "Returns full string definition for message of type 'face_msgs"
  (cl:format cl:nil "int16 index~%my_list[] location~%~%================================================================================~%MSG: face_detector/my_list~%#list 4D~%string lable~%int16 top~%int16 right~%int16 bottom ~%int16 left~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <face_msgs>))
  (cl:+ 0
     2
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'location) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <face_msgs>))
  "Converts a ROS message object to a list"
  (cl:list 'face_msgs
    (cl:cons ':index (index msg))
    (cl:cons ':location (location msg))
))
