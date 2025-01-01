
(cl:in-package :asdf)

(defsystem "traj_utils-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :std_msgs-msg
)
  :components ((:file "_package")
    (:file "DataDisp" :depends-on ("_package_DataDisp"))
    (:file "_package_DataDisp" :depends-on ("_package"))
  ))