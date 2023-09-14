;; Auto-generated. Do not edit!


(when (boundp 'bwi_msgs::UpdateObject)
  (if (not (find-package "BWI_MSGS"))
    (make-package "BWI_MSGS"))
  (shadow 'UpdateObject (find-package "BWI_MSGS")))
(unless (find-package "BWI_MSGS::UPDATEOBJECT")
  (make-package "BWI_MSGS::UPDATEOBJECT"))
(unless (find-package "BWI_MSGS::UPDATEOBJECTREQUEST")
  (make-package "BWI_MSGS::UPDATEOBJECTREQUEST"))
(unless (find-package "BWI_MSGS::UPDATEOBJECTRESPONSE")
  (make-package "BWI_MSGS::UPDATEOBJECTRESPONSE"))

(in-package "ROS")

(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))




(intern "*UPDATE*" (find-package "BWI_MSGS::UPDATEOBJECTREQUEST"))
(shadow '*UPDATE* (find-package "BWI_MSGS::UPDATEOBJECTREQUEST"))
(defconstant bwi_msgs::UpdateObjectRequest::*UPDATE* 0)
(intern "*REMOVE*" (find-package "BWI_MSGS::UPDATEOBJECTREQUEST"))
(shadow '*REMOVE* (find-package "BWI_MSGS::UPDATEOBJECTREQUEST"))
(defconstant bwi_msgs::UpdateObjectRequest::*REMOVE* 1)
(defclass bwi_msgs::UpdateObjectRequest
  :super ros::object
  :slots (_object_name _pose _type ))

(defmethod bwi_msgs::UpdateObjectRequest
  (:init
   (&key
    ((:object_name __object_name) "")
    ((:pose __pose) (instance geometry_msgs::Pose :init))
    ((:type __type) 0)
    )
   (send-super :init)
   (setq _object_name (string __object_name))
   (setq _pose __pose)
   (setq _type (round __type))
   self)
  (:object_name
   (&optional __object_name)
   (if __object_name (setq _object_name __object_name)) _object_name)
  (:pose
   (&rest __pose)
   (if (keywordp (car __pose))
       (send* _pose __pose)
     (progn
       (if __pose (setq _pose (car __pose)))
       _pose)))
  (:type
   (&optional __type)
   (if __type (setq _type __type)) _type)
  (:serialization-length
   ()
   (+
    ;; string _object_name
    4 (length _object_name)
    ;; geometry_msgs/Pose _pose
    (send _pose :serialization-length)
    ;; int32 _type
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _object_name
       (write-long (length _object_name) s) (princ _object_name s)
     ;; geometry_msgs/Pose _pose
       (send _pose :serialize s)
     ;; int32 _type
       (write-long _type s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _object_name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _object_name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; geometry_msgs/Pose _pose
     (send _pose :deserialize buf ptr-) (incf ptr- (send _pose :serialization-length))
   ;; int32 _type
     (setq _type (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(defclass bwi_msgs::UpdateObjectResponse
  :super ros::object
  :slots (_success ))

(defmethod bwi_msgs::UpdateObjectResponse
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

(defclass bwi_msgs::UpdateObject
  :super ros::object
  :slots ())

(setf (get bwi_msgs::UpdateObject :md5sum-) "0430080c34a0e759837456f589ece57f")
(setf (get bwi_msgs::UpdateObject :datatype-) "bwi_msgs/UpdateObject")
(setf (get bwi_msgs::UpdateObject :request) bwi_msgs::UpdateObjectRequest)
(setf (get bwi_msgs::UpdateObject :response) bwi_msgs::UpdateObjectResponse)

(defmethod bwi_msgs::UpdateObjectRequest
  (:response () (instance bwi_msgs::UpdateObjectResponse :init)))

(setf (get bwi_msgs::UpdateObjectRequest :md5sum-) "0430080c34a0e759837456f589ece57f")
(setf (get bwi_msgs::UpdateObjectRequest :datatype-) "bwi_msgs/UpdateObjectRequest")
(setf (get bwi_msgs::UpdateObjectRequest :definition-)
      "int32 UPDATE = 0
int32 REMOVE = 1

string object_name
geometry_msgs/Pose pose
int32 type

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

(setf (get bwi_msgs::UpdateObjectResponse :md5sum-) "0430080c34a0e759837456f589ece57f")
(setf (get bwi_msgs::UpdateObjectResponse :datatype-) "bwi_msgs/UpdateObjectResponse")
(setf (get bwi_msgs::UpdateObjectResponse :definition-)
      "int32 UPDATE = 0
int32 REMOVE = 1

string object_name
geometry_msgs/Pose pose
int32 type

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



(provide :bwi_msgs/UpdateObject "0430080c34a0e759837456f589ece57f")


