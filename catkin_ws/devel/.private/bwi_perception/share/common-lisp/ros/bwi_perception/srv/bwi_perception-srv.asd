
(cl:in-package :asdf)

(defsystem "bwi_perception-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :sensor_msgs-msg
               :visualization_msgs-msg
)
  :components ((:file "_package")
    (:file "ButtonDetection" :depends-on ("_package_ButtonDetection"))
    (:file "_package_ButtonDetection" :depends-on ("_package"))
    (:file "DetectHorizontalPlanes" :depends-on ("_package_DetectHorizontalPlanes"))
    (:file "_package_DetectHorizontalPlanes" :depends-on ("_package"))
    (:file "ExtractTabletopScene" :depends-on ("_package_ExtractTabletopScene"))
    (:file "_package_ExtractTabletopScene" :depends-on ("_package"))
    (:file "FeatureExtraction" :depends-on ("_package_FeatureExtraction"))
    (:file "_package_FeatureExtraction" :depends-on ("_package"))
    (:file "GetCloud" :depends-on ("_package_GetCloud"))
    (:file "_package_GetCloud" :depends-on ("_package"))
    (:file "GetPCD" :depends-on ("_package_GetPCD"))
    (:file "_package_GetPCD" :depends-on ("_package"))
    (:file "PerceiveLargestHorizontalPlane" :depends-on ("_package_PerceiveLargestHorizontalPlane"))
    (:file "_package_PerceiveLargestHorizontalPlane" :depends-on ("_package"))
    (:file "PerceiveTabletopScene" :depends-on ("_package_PerceiveTabletopScene"))
    (:file "_package_PerceiveTabletopScene" :depends-on ("_package"))
    (:file "ProcessVision" :depends-on ("_package_ProcessVision"))
    (:file "_package_ProcessVision" :depends-on ("_package"))
    (:file "SetObstacles" :depends-on ("_package_SetObstacles"))
    (:file "_package_SetObstacles" :depends-on ("_package"))
  ))