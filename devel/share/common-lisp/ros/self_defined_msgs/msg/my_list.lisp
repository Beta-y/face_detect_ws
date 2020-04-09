; Auto-generated. Do not edit!


(cl:in-package self_defined_msgs-msg)


;//! \htmlinclude my_list.msg.html

(cl:defclass <my_list> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass my_list (<my_list>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <my_list>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'my_list)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name self_defined_msgs-msg:<my_list> is deprecated: use self_defined_msgs-msg:my_list instead.")))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<my_list>)))
    "Constants for message type '<my_list>"
  '((:A . 0)
    (:B . 0)
    (:C . 0)
    (:D . 0))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'my_list)))
    "Constants for message type 'my_list"
  '((:A . 0)
    (:B . 0)
    (:C . 0)
    (:D . 0))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <my_list>) ostream)
  "Serializes a message object of type '<my_list>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <my_list>) istream)
  "Deserializes a message object of type '<my_list>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<my_list>)))
  "Returns string type for a message object of type '<my_list>"
  "self_defined_msgs/my_list")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'my_list)))
  "Returns string type for a message object of type 'my_list"
  "self_defined_msgs/my_list")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<my_list>)))
  "Returns md5sum for a message object of type '<my_list>"
  "1d20127be13903cadd3a4c222505203d")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'my_list)))
  "Returns md5sum for a message object of type 'my_list"
  "1d20127be13903cadd3a4c222505203d")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<my_list>)))
  "Returns full string definition for message of type '<my_list>"
  (cl:format cl:nil "#list 4D~%uint16 a=0~%uint16 b=0~%uint16 c=0~%uint16 d=0~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'my_list)))
  "Returns full string definition for message of type 'my_list"
  (cl:format cl:nil "#list 4D~%uint16 a=0~%uint16 b=0~%uint16 c=0~%uint16 d=0~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <my_list>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <my_list>))
  "Converts a ROS message object to a list"
  (cl:list 'my_list
))
