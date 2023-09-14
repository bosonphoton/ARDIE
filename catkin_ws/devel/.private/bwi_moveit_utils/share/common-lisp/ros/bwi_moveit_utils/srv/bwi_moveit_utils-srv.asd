
(cl:in-package :asdf)

(defsystem "bwi_moveit_utils-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :geometry_msgs-msg
               :moveit_msgs-msg
)
  :components ((:file "_package")
    (:file "MoveitCartesianPose" :depends-on ("_package_MoveitCartesianPose"))
    (:file "_package_MoveitCartesianPose" :depends-on ("_package"))
    (:file "MoveitJointPose" :depends-on ("_package_MoveitJointPose"))
    (:file "_package_MoveitJointPose" :depends-on ("_package"))
    (:file "MoveitWaypoint" :depends-on ("_package_MoveitWaypoint"))
    (:file "_package_MoveitWaypoint" :depends-on ("_package"))
  ))