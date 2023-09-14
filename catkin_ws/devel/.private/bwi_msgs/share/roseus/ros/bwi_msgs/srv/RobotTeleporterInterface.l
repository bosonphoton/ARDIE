;; Auto-generated. Do not edit!


(when (boundp 'bwi_msgs::RobotTeleporterInterface)
  (if (not (find-package "BWI_MSGS"))
    (make-package "BWI_MSGS"))
  (shadow 'RobotTeleporterInterface (find-package "BWI_MSGS")))
(unless (find-package "BWI_MSGS::ROBOTTELEPORTERINTERFACE")
  (make-package "BWI_MSGS::ROBOTTELEPORTERINTERFACE"))
(unless (find-package "BWI_MSGS::ROBOTTELEPORTERINTERFACEREQUEST")
  (make-package "BWI_MSGS::ROBOTTELEPORTERINTERFACEREQUEST"))
(unless (find-package "BWI_MSGS::ROBOTTELEPORTERINTERFACERESPONSE")
  (make-package "BWI_MSGS::ROBOTTELEPORTERINTERFACERESPONSE"))

(in-package "ROS")

(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))




(defclass bwi_msgs::RobotTeleporterInterfaceRequest
  :super ros::object
  :slots (_pose ))

(defmethod bwi_msgs::RobotTeleporterInterfaceRequest
  (:init
   (&key
    ((:pose __pose) (instance geometry_msgs::Pose :init))
    )
   (send-super :init)
   (setq _pose __pose)
   self)
  (:pose
   (&rest __pose)
   (if (keywordp (car __pose))
       (send* _pose __pose)
     (progn
       (if __pose (setq _pose (car __pose)))
       _pose)))
  (:serialization-length
   ()
   (+
    ;; geometry_msgs/Pose _pose
    (send _pose :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; geometry_msgs/Pose _pose
       (send _pose :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; geometry_msgs/Pose _pose
     (send _pose :deserialize buf ptr-) (incf ptr- (send _pose :serialization-length))
   ;;
   self)
  )

(defclass bwi_msgs::RobotTeleporterInterfaceResponse
  :super ros::object
  :slots (_success ))

(defmethod bwi_msgs::RobotTeleporterInterfaceResponse
  (:init
   (&key
    ((:success __success) nil)
    )
   (send-super :init)
   (setq _success __success)
   self)
  (:success
   (&optional __success)
   (if __success (setq _success __success)) _success)
  (:serialization-length
   ()
   (+
    ;; bool _success
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _success
       (if _success (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _success
     (setq _success (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass bwi_msgs::RobotTeleporterInterface
  :super ros::object
  :slots ())

(setf (get bwi_msgs::RobotTeleporterInterface :md5sum-) "b66f4c8c2fa81b98544cf0f3e10950ee")
(setf (get bwi_msgs::RobotTeleporterInterface :datatype-) "bwi_msgs/RobotTeleporterInterface")
(setf (get bwi_msgs::RobotTeleporterInterface :request) bwi_msgs::RobotTeleporterInterfaceRequest)
(setf (get bwi_msgs::RobotTeleporterInterface :response) bwi_msgs::RobotTeleporterInterfaceResponse)

(defmethod bwi_msgs::RobotTeleporterInterfaceRequest
  (:response () (instance bwi_msgs::RobotTeleporterInterfaceResponse :init)))

(setf (get bwi_msgs::RobotTeleporterInterfaceRequest :md5sum-) "b66f4c8c2fa81b98544cf0f3e10950ee")
(setf (get bwi_msgs::RobotTeleporterInterfaceRequest :datatype-) "bwi_msgs/RobotTeleporterInterfaceRequest")
(setf (get bwi_msgs::RobotTeleporterInterfaceRequest :definition-)
      "geometry_msgs/Pose pose

================================================================================
MSG: geometry_msgs/Pose
# A representation of pose in free space, composed of position and orientation. 
Point position
Quaternion orientation

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

================================================================================
MSG: geometry_msgs/Quaternion
# This represents an orientation in free space in quaternion form.

float64 x
float64 y
float64 z
float64 w
---
bool success

")

(setf (get bwi_msgs::RobotTeleporterInterfaceResponse :md5sum-) "b66f4c8c2fa81b98544cf0f3e10950ee")
(setf (get bwi_msgs::RobotTeleporterInterfaceResponse :datatype-) "bwi_msgs/RobotTeleporterInterfaceResponse")
(setf (get bwi_msgs::RobotTeleporterInterfaceResponse :definition-)
      "geometry_msgs/Pose pose

================================================================================
MSG: geometry_msgs/Pose
# A representation of pose in free space, composed of position and orientation. 
Point position
Quaternion orientation

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

================================================================================
MSG: geometry_msgs/Quaternion
# This represents an orientation in free space in quaternion form.

float64 x
float64 y
float64 z
float64 w
---
bool success

")



(provide :bwi_msgs/RobotTeleporterInterface "b66f4c8c2fa81b98544cf0f3e10950ee")


