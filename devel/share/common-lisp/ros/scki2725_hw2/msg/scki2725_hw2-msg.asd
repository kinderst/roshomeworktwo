
(cl:in-package :asdf)

(defsystem "scki2725_hw2-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :std_msgs-msg
)
  :components ((:file "_package")
    (:file "TimeCheck" :depends-on ("_package_TimeCheck"))
    (:file "_package_TimeCheck" :depends-on ("_package"))
  ))