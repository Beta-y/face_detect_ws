;; Auto-generated. Do not edit!


(when (boundp 'face_detector::face_msgs)
  (if (not (find-package "FACE_DETECTOR"))
    (make-package "FACE_DETECTOR"))
  (shadow 'face_msgs (find-package "FACE_DETECTOR")))
(unless (find-package "FACE_DETECTOR::FACE_MSGS")
  (make-package "FACE_DETECTOR::FACE_MSGS"))

(in-package "ROS")
;;//! \htmlinclude face_msgs.msg.html


(defclass face_detector::face_msgs
  :super ros::object
  :slots (_index _location ))

(defmethod face_detector::face_msgs
  (:init
   (&key
    ((:index __index) 0)
    ((:location __location) (let (r) (dotimes (i 0) (push (instance face_detector::my_list :init) r)) r))
    )
   (send-super :init)
   (setq _index (round __index))
   (setq _location __location)
   self)
  (:index
   (&optional __index)
   (if __index (setq _index __index)) _index)
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
    ;; int16 _index
    2
    ;; face_detector/my_list[] _location
    (apply #'+ (send-all _location :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int16 _index
       (write-word _index s)
     ;; face_detector/my_list[] _location
     (write-long (length _location) s)
     (dolist (elem _location)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int16 _index
     (setq _index (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; face_detector/my_list[] _location
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _location (let (r) (dotimes (i n) (push (instance face_detector::my_list :init) r)) r))
     (dolist (elem- _location)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get face_detector::face_msgs :md5sum-) "8b8cdd61744da60b1fa004570af7b850")
(setf (get face_detector::face_msgs :datatype-) "face_detector/face_msgs")
(setf (get face_detector::face_msgs :definition-)
      "int16 index
my_list[] location

================================================================================
MSG: face_detector/my_list
#list 4D
string lable
int16 top
int16 right
int16 bottom 
int16 left


")



(provide :face_detector/face_msgs "8b8cdd61744da60b1fa004570af7b850")


