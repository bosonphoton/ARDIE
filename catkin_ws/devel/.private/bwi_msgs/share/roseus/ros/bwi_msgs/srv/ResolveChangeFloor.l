;; Auto-generated. Do not edit!


(when (boundp 'bwi_msgs::ResolveChangeFloor)
  (if (not (find-package "BWI_MSGS"))
    (make-package "BWI_MSGS"))
  (shadow 'ResolveChangeFloor (find-package "BWI_MSGS")))
(unless (find-package "BWI_MSGS::RESOLVECHANGEFLOOR")
  (make-package "BWI_MSGS::RESOLVECHANGEFLOOR"))
(unless (find-package "BWI_MSGS::RESOLVECHANGEFLOORREQUEST")
  (make-package "BWI_MSGS::RESOLVECHANGEFLOORREQUEST"))
(unless (find-package "BWI_MSGS::RESOLVECHANGEFLOORRESPONSE")
  (make-package "BWI_MSGS::RESOLVECHANGEFLOORRESPONSE"))

(in-package "ROS")



(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))


(defclass bwi_msgs::ResolveChangeFloorRequest
  :super ros::object
  :slots (_new_room _facing_door ))

(defmethod bwi_msgs::ResolveChangeFloorRequest
  (:init
   (&key
    ((:new_room __new_room) "")
    ((:facing_door __facing_door) "")
    )
   (send-super :init)
   (setq _new_room (string __new_room))
   (setq _facing_door (string __facing_door))
   self)
  (:new_room
   (&optional __new_room)
   (if __new_room (setq _new_room __new_room)) _new_room)
  (:facing_door
   (&optional __facing_door)
   (if __facing_door (setq _facing_door __facing_door)) _facing_door)
  (:serialization-length
   ()
   (+
    ;; string _new_room
    4 (length _new_room)
    ;; string _facing_door
    4 (length _facing_door)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _new_room
       (write-long (length _new_room) s) (princ _new_room s)
     ;; string _facing_door
       (write-long (length _facing_door) s) (princ _facing_door s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _new_room
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _new_room (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _facing_door
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _facing_door (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass bwi_msgs::ResolveChangeFloorResponse
  :super ros::object
  :slots (_floor_name _pose _success _error_message ))

(defmethod bwi_msgs::ResolveChangeFloorResponse
  (:init
   (&key
    ((:floor_name __floor_name) "")
    ((:pose __pose) (instance geometry_msgs::PoseWithCovarianceStamped :init))
    ((:success __success) nil)
    ((:error_message __error_message) "")
    )
   (send-super :init)
   (setq _floor_name (string __floor_name))
   (setq _pose __pose)
   (setq _success __success)
   (setq _error_message (string __error_message))
   self)
  (:floor_name
   (&optional __floor_name)
   (if __floor_name (setq _floor_name __floor_name)) _floor_name)
  (:pose
   (&rest __pose)
   (if (keywordp (car __pose))
       (send* _pose __pose)
     (progn
       (if __pose (setq _pose (car __pose)))
       _pose)))
  (:success
   (&optional __success)
   (if __success (setq _success __success)) _success)
  (:error_message
   (&optional __error_message)
   (if __error_message (setq _error_message __error_message)) _error_message)
  (:serialization-length
   ()
   (+
    ;; string _floor_name
    4 (length _floor_name)
    ;; geometry_msgs/PoseWithCovarianceStamped _pose
    (send _pose :serialization-length)
    ;; bool _success
    1
    ;; string _error_message
    4 (length _error_message)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _floor_name
       (write-long (length _floor_name) s) (princ _floor_name s)
     ;; geometry_msgs/PoseWithCovarianceStamped _pose
       (send _pose :serialize s)
     ;; bool _success
       (if _success (write-byte -1 s) (write-byte 0 s))
     ;; string _error_message
       (write-long (length _error_message) s) (princ _error_message s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _floor_name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _floor_name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; geometry_msgs/PoseWithCovarianceStamped _pose
     (send _pose :deserialize buf ptr-) (incf ptr- (send _pose :serialization-length))
   ;; bool _success
     (setq _success (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; string _error_message
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _error_message (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass bwi_msgs::ResolveChangeFloor
  :super ros::object
  :slots ())

(setf (get bwi_msgs::ResolveChangeFloor :md5sum-) "d565d7d5ff83ae40abf53092bf5912c5")
(setf (get bwi_msgs::ResolveChangeFloor :datatype-) "bwi_msgs/ResolveChangeFloor")
(setf (get bwi_msgs::ResolveChangeFloor :request) bwi_msgs::ResolveChangeFloorRequest)
(setf (get bwi_msgs::ResolveChangeFloor :response) bwi_msgs::ResolveChangeFloorResponse)

(defmethod bwi_msgs::ResolveChangeFloorRequest
  (:response () (instance bwi_msgs::ResolveChangeFloorResponse :init)))

(setf (get bwi_msgs::ResolveChangeFloorRequest :md5sum-) "d565d7d5ff83ae40abf53092bf5912c5")
(setf (get bwi_msgs::ResolveChangeFloorRequest :datatype-) "bwi_msgs/ResolveChangeFloorRequest")
(setf (get bwi_msgs::ResolveChangeFloorRequest :definition-)
      "string new_room
string facing_door
---
string floor_name
geometry_msgs/PoseWithCovarianceStamped pose
bool success
string error_message


================================================================================
MSG: geometry_msgs/PoseWithCovarianceStamped
# This expresses an estimated pose with a reference coordinate frame and timestamp

Header header
PoseWithCovariance pose

================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
string frame_id

================================================================================
MSG: geometry_msgs/PoseWithCovariance
# This represents a pose in free space with uncertainty.

Pose pose

# Row-major representation of the 6x6 covariance matrix
# The orientation parameters use a fixed-axis representation.
# In order, the parameters are:
# (x, y, z, rotation about X axis, rotation about Y axis, rotation about Z axis)
float64[36] covariance

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
")

(setf (get bwi_msgs::ResolveChangeFloorResponse :md5sum-) "d565d7d5ff83ae40abf53092bf5912c5")
(setf (get bwi_msgs::ResolveChangeFloorResponse :datatype-) "bwi_msgs/ResolveChangeFloorResponse")
(setf (get bwi_msgs::ResolveChangeFloorResponse :definition-)
      "string new_room
string facing_door
---
string floor_name
geometry_msgs/PoseWithCovarianceStamped pose
bool success
string error_message


================================================================================
MSG: geometry_msgs/PoseWithCovarianceStamped
# This expresses an estimated pose with a reference coordinate frame and timestamp

Header header
PoseWithCovariance pose

================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
string frame_id

================================================================================
MSG: geometry_msgs/PoseWithCovariance
# This represents a pose in free space with uncertainty.

Pose pose

# Row-major representation of the 6x6 covariance matrix
# The orientation parameters use a fixed-axis representation.
# In order, the parameters are:
# (x, y, z, rotation about X axis, rotation about Y axis, rotation about Z axis)
float64[36] covariance

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
")



(provide :bwi_msgs/ResolveChangeFloor "d565d7d5ff83ae40abf53092bf5912c5")


