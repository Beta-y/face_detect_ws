
(cl:in-package :asdf)

(defsystem "self_defined_msgs-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "face_msgs" :depends-on ("_package_face_msgs"))
    (:file "_package_face_msgs" :depends-on ("_package"))
    (:file "my_list" :depends-on ("_package_my_list"))
    (:file "_package_my_list" :depends-on ("_package"))
  ))