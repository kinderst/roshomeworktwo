
(cl:in-package :asdf)

(defsystem "scki2725_hw2-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "Timer" :depends-on ("_package_Timer"))
    (:file "_package_Timer" :depends-on ("_package"))
  ))