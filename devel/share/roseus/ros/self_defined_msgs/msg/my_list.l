;; Auto-generated. Do not edit!


(when (boundp 'self_defined_msgs::my_list)
  (if (not (find-package "SELF_DEFINED_MSGS"))
    (make-package "SELF_DEFINED_MSGS"))
  (shadow 'my_list (find-package "SELF_DEFINED_MSGS")))
(unless (find-package "SELF_DEFINED_MSGS::MY_LIST")
  (make-package "SELF_DEFINED_MSGS::MY_LIST"))

(in-package "ROS")
;;//! \htmlinclude my_list.msg.html


(intern "*A*" (find-package "SELF_DEFINED_MSGS::MY_LIST"))
(shadow '*A* (find-package "SELF_DEFINED_MSGS::MY_LIST"))
(defconstant self_defined_msgs::my_list::*A* 0)
(intern "*B*" (find-package "SELF_DEFINED_MSGS::MY_LIST"))
(shadow '*B* (find-package "SELF_DEFINED_MSGS::MY_LIST"))
(defconstant self_defined_msgs::my_list::*B* 0)
(intern "*C*" (find-package "SELF_DEFINED_MSGS::MY_LIST"))
(shadow '*C* (find-package "SELF_DEFINED_MSGS::MY_LIST"))
(defconstant self_defined_msgs::my_list::*C* 0)
(intern "*D*" (find-package "SELF_DEFINED_MSGS::MY_LIST"))
(shadow '*D* (find-package "SELF_DEFINED_MSGS::MY_LIST"))
(defconstant self_defined_msgs::my_list::*D* 0)
(defclass self_defined_msgs::my_list
  :super ros::object
  :slots ())

(defmethod self_defined_msgs::my_list
  (:init
   (&key
    )
   (send-super :init)
   self)
  (:serialization-length
   ()
   (+
    0
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;;
   self)
  )

(setf (get self_defined_msgs::my_list :md5sum-) "1d20127be13903cadd3a4c222505203d")
(setf (get self_defined_msgs::my_list :datatype-) "self_defined_msgs/my_list")
(setf (get self_defined_msgs::my_list :definition-)
      "#list 4D
uint16 a=0
uint16 b=0
uint16 c=0
uint16 d=0

")



(provide :self_defined_msgs/my_list "1d20127be13903cadd3a4c222505203d")


