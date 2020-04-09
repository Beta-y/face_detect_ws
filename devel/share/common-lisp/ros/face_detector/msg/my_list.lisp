; Auto-generated. Do not edit!


(cl:in-package face_detector-msg)


;//! \htmlinclude my_list.msg.html

(cl:defclass <my_list> (roslisp-msg-protocol:ros-message)
  ((lable
    :reader lable
    :initarg :lable
    :type cl:string
    :initform "")
   (top
    :reader top
    :initarg :top
    :type cl:fixnum
    :initform 0)
   (right
    :reader right
    :initarg :right
    :type cl:fixnum
    :initform 0)
   (bottom
    :reader bottom
    :initarg :bottom
    :type cl:fixnum
    :initform 0)
   (left
    :reader left
    :initarg :left
    :type cl:fixnum
    :initform 0))
)

(cl:defclass my_list (<my_list>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <my_list>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'my_list)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name face_detector-msg:<my_list> is deprecated: use face_detector-msg:my_list instead.")))

(cl:ensure-generic-function 'lable-val :lambda-list '(m))
(cl:defmethod lable-val ((m <my_list>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader face_detector-msg:lable-val is deprecated.  Use face_detector-msg:lable instead.")
  (lable m))

(cl:ensure-generic-function 'top-val :lambda-list '(m))
(cl:defmethod top-val ((m <my_list>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader face_detector-msg:top-val is deprecated.  Use face_detector-msg:top instead.")
  (top m))

(cl:ensure-generic-function 'right-val :lambda-list '(m))
(cl:defmethod right-val ((m <my_list>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader face_detector-msg:right-val is deprecated.  Use face_detector-msg:right instead.")
  (right m))

(cl:ensure-generic-function 'bottom-val :lambda-list '(m))
(cl:defmethod bottom-val ((m <my_list>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader face_detector-msg:bottom-val is deprecated.  Use face_detector-msg:bottom instead.")
  (bottom m))

(cl:ensure-generic-function 'left-val :lambda-list '(m))
(cl:defmethod left-val ((m <my_list>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader face_detector-msg:left-val is deprecated.  Use face_detector-msg:left instead.")
  (left m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <my_list>) ostream)
  "Serializes a message object of type '<my_list>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'lable))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'lable))
  (cl:let* ((signed (cl:slot-value msg 'top)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'right)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'bottom)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'left)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <my_list>) istream)
  "Deserializes a message object of type '<my_list>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'lable) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'lable) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'top) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'right) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'bottom) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'left) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<my_list>)))
  "Returns string type for a message object of type '<my_list>"
  "face_detector/my_list")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'my_list)))
  "Returns string type for a message object of type 'my_list"
  "face_detector/my_list")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<my_list>)))
  "Returns md5sum for a message object of type '<my_list>"
  "590156b43bd12635225eac7ca690e0d9")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'my_list)))
  "Returns md5sum for a message object of type 'my_list"
  "590156b43bd12635225eac7ca690e0d9")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<my_list>)))
  "Returns full string definition for message of type '<my_list>"
  (cl:format cl:nil "#list 4D~%string lable~%int16 top~%int16 right~%int16 bottom ~%int16 left~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'my_list)))
  "Returns full string definition for message of type 'my_list"
  (cl:format cl:nil "#list 4D~%string lable~%int16 top~%int16 right~%int16 bottom ~%int16 left~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <my_list>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'lable))
     2
     2
     2
     2
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <my_list>))
  "Converts a ROS message object to a list"
  (cl:list 'my_list
    (cl:cons ':lable (lable msg))
    (cl:cons ':top (top msg))
    (cl:cons ':right (right msg))
    (cl:cons ':bottom (bottom msg))
    (cl:cons ':left (left msg))
))
