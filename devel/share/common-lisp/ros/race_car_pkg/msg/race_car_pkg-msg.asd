
(cl:in-package :asdf)

(defsystem "race_car_pkg-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "CarStates" :depends-on ("_package_CarStates"))
    (:file "_package_CarStates" :depends-on ("_package"))
  ))