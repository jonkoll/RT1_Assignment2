
(cl:in-package :asdf)

(defsystem "assignment_2_2022-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "goalTally" :depends-on ("_package_goalTally"))
    (:file "_package_goalTally" :depends-on ("_package"))
  ))