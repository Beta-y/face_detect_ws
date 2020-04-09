;; Auto-generated. Do not edit!


(when (boundp 'self_defined_msgs::face_msgs)
  (if (not (find-package "SELF_DEFINED_MSGS"))
    (make-package "SELF_DEFINED_MSGS"))
  (shadow 'face_msgs (find-package "SELF_DEFINED_MSGS")))
(unless (find-package "SELF_DEFINED_MSGS::FACE_MSGS")
  (make-package "SELF_DEFINED_MSGS::FACE_MSGS"))

(in-package "ROS")
;;//! \htmlinclude face_msgs.msg.html


(intern "*INDEX*" (find-package "SELF_DEFINED_MSGS::FACE_MSGS"))
(shadow '*INDEX* (find-package "SELF_DEFINED_MSGS::FACE_MSGS"))
(defconstant self_defined_msgs::face_msgs::*INDEX* 0)
(defclass self_defined_msgs::face_msgs
  :super ros::object
  :slots (_location ))

(defmethod self_defined_msgs::face_msgs
  (:init
   (&key
    ((:location __location) (let (r) (dotimes (i 0) (push (instance self_defined_msgs::my_list :init) r)) r))
    )
   (send-super :init)
   (setq _location __location)
   self)
  (:location
   (&rest __location)
   (if (keywordp (car __location))
       (send* _location __location)
     (progn
       (if __location (setq _location (car __location)))
       _location)))
  (:serialization-length
   ()
   (+
    ;; self_defined_msgs/my_list[] _location
    (apply #'+ (send-all _location :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; self_defined_msgs/my_list[] _location
     (write-long (length _location) s)
     (dolist (elem _location)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; self_defined_msgs/my_list[] _location
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _location (let (r) (dotimes (i n) (push (instance self_defined_msgs::my_list :init) r)) r))
     (dolist (elem- _location)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get self_defined_msgs::face_msgs :md5sum-) "bee29f659ddcd80e70bd0b7494b2547b")
(setf (get self_defined_msgs::face_msgs :datatype-) "self_defined_msgs/face_msgs")
(setf (get self_defined_msgs::face_msgs :definition-)
      "int16 index=0
my_list[] location

================================================================================
MSG: self_defined_msgs/my_list
#list 4D
uint16 a=0
uint16 b=0
uint16 c=0
uint16 d=0

")



(provide :self_defined_msgs/face_msgs "bee29f659ddcd80e70bd0b7494b2547b")


