;; Auto-generated. Do not edit!


(when (boundp 'face_detector::my_list)
  (if (not (find-package "FACE_DETECTOR"))
    (make-package "FACE_DETECTOR"))
  (shadow 'my_list (find-package "FACE_DETECTOR")))
(unless (find-package "FACE_DETECTOR::MY_LIST")
  (make-package "FACE_DETECTOR::MY_LIST"))

(in-package "ROS")
;;//! \htmlinclude my_list.msg.html


(defclass face_detector::my_list
  :super ros::object
  :slots (_lable _top _right _bottom _left ))

(defmethod face_detector::my_list
  (:init
   (&key
    ((:lable __lable) "")
    ((:top __top) 0)
    ((:right __right) 0)
    ((:bottom __bottom) 0)
    ((:left __left) 0)
    )
   (send-super :init)
   (setq _lable (string __lable))
   (setq _top (round __top))
   (setq _right (round __right))
   (setq _bottom (round __bottom))
   (setq _left (round __left))
   self)
  (:lable
   (&optional __lable)
   (if __lable (setq _lable __lable)) _lable)
  (:top
   (&optional __top)
   (if __top (setq _top __top)) _top)
  (:right
   (&optional __right)
   (if __right (setq _right __right)) _right)
  (:bottom
   (&optional __bottom)
   (if __bottom (setq _bottom __bottom)) _bottom)
  (:left
   (&optional __left)
   (if __left (setq _left __left)) _left)
  (:serialization-length
   ()
   (+
    ;; string _lable
    4 (length _lable)
    ;; int16 _top
    2
    ;; int16 _right
    2
    ;; int16 _bottom
    2
    ;; int16 _left
    2
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _lable
       (write-long (length _lable) s) (princ _lable s)
     ;; int16 _top
       (write-word _top s)
     ;; int16 _right
       (write-word _right s)
     ;; int16 _bottom
       (write-word _bottom s)
     ;; int16 _left
       (write-word _left s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _lable
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _lable (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; int16 _top
     (setq _top (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; int16 _right
     (setq _right (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; int16 _bottom
     (setq _bottom (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; int16 _left
     (setq _left (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;;
   self)
  )

(setf (get face_detector::my_list :md5sum-) "590156b43bd12635225eac7ca690e0d9")
(setf (get face_detector::my_list :datatype-) "face_detector/my_list")
(setf (get face_detector::my_list :definition-)
      "#list 4D
string lable
int16 top
int16 right
int16 bottom 
int16 left


")



(provide :face_detector/my_list "590156b43bd12635225eac7ca690e0d9")


