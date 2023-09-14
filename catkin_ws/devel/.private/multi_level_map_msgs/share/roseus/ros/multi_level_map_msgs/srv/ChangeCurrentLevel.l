;; Auto-generated. Do not edit!


(when (boundp 'multi_level_map_msgs::ChangeCurrentLevel)
  (if (not (find-package "MULTI_LEVEL_MAP_MSGS"))
    (make-package "MULTI_LEVEL_MAP_MSGS"))
  (shadow 'ChangeCurrentLevel (find-package "MULTI_LEVEL_MAP_MSGS")))
(unless (find-package "MULTI_LEVEL_MAP_MSGS::CHANGECURRENTLEVEL")
  (make-package "MULTI_LEVEL_MAP_MSGS::CHANGECURRENTLEVEL"))
(unless (find-package "MULTI_LEVEL_MAP_MSGS::CHANGECURRENTLEVELREQUEST")
  (make-package "MULTI_LEVEL_MAP_MSGS::CHANGECURRENTLEVELREQUEST"))
(unless (find-package "MULTI_LEVEL_MAP_MSGS::CHANGECURRENTLEVELRESPONSE")
  (make-package "MULTI_LEVEL_MAP_MSGS::CHANGECURRENTLEVELRESPONSE"))

(in-package "ROS")

(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))




(defclass multi_level_map_msgs::ChangeCurrentLevelRequest
  :super ros::object
  :slots (_new_level_id _publish_initial_pose _initial_pose ))

(defmethod multi_level_map_msgs::ChangeCurrentLevelRequest
  (:init
   (&key
    ((:new_level_id __new_level_id) "")
    ((:publish_initial_pose __publish_initial_pose) nil)
    ((:initial_pose __initial_pose) (instance geometry_msgs::PoseWithCovarianceStamped :init))
    )
   (send-super :init)
   (setq _new_level_id (string __new_level_id))
   (setq _publish_initial_pose __publish_initial_pose)
   (setq _initial_pose __initial_pose)
   self)
  (:new_level_id
   (&optional __new_level_id)
   (if __new_level_id (setq _new_level_id __new_level_id)) _new_level_id)
  (:publish_initial_pose
   (&optional __publish_initial_pose)
   (if __publish_initial_pose (setq _publish_initial_pose __publish_initial_pose)) _publish_initial_pose)
  (:initial_pose
   (&rest __initial_pose)
   (if (keywordp (car __initial_pose))
       (send* _initial_pose __initial_pose)
     (progn
       (if __initial_pose (setq _initial_pose (car __initial_pose)))
       _initial_pose)))
  (:serialization-length
   ()
   (+
    ;; string _new_level_id
    4 (length _new_level_id)
    ;; bool _publish_initial_pose
    1
    ;; geometry_msgs/PoseWithCovarianceStamped _initial_pose
    (send _initial_pose :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _new_level_id
       (write-long (length _new_level_id) s) (princ _new_level_id s)
     ;; bool _publish_initial_pose
       (if _publish_initial_pose (write-byte -1 s) (write-byte 0 s))
     ;; geometry_msgs/PoseWithCovarianceStamped _initial_pose
       (send _initial_pose :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _new_level_id
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _new_level_id (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; bool _publish_initial_pose
     (setq _publish_initial_pose (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; geometry_msgs/PoseWithCovarianceStamped _initial_pose
     (send _initial_pose :deserialize buf ptr-) (incf ptr- (send _initial_pose :serialization-length))
   ;;
   self)
  )

(defclass multi_level_map_msgs::ChangeCurrentLevelResponse
  :super ros::object
  :slots (_success _error_message ))

(defmethod multi_level_map_msgs::ChangeCurrentLevelResponse
  (:init
   (&key
    ((:success __success) nil)
    ((:error_message __error_message) "")
    )
   (send-super :init)
   (setq _success __success)
   (setq _error_message (string __error_message))
   self)
  (:success
   (&optional __success)
   (if __success (setq _success __success)) _success)
  (:error_message
   (&optional __error_message)
   (if __error_message (setq _error_message __error_message)) _error_message)
  (:serialization-length
   ()
   (+
    ;; bool _success
    1
    ;; string _error_message
    4 (length _error_message)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _success
       (if _success (write-byte -1 s) (write-byte 0 s))
     ;; string _error_message
       (write-long (length _error_message) s) (princ _error_message s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _success
     (setq _success (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; string _error_message
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _error_message (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass multi_level_map_msgs::ChangeCurrentLevel
  :super ros::object
  :slots ())

(setf (get multi_level_map_msgs::ChangeCurrentLevel :md5sum-) "ea2e164e69b835c64629bde577a80f03")
(setf (get multi_level_map_msgs::ChangeCurrentLevel :datatype-) "multi_level_map_msgs/ChangeCurrentLevel")
(setf (get multi_level_map_msgs::ChangeCurrentLevel :request) multi_level_map_msgs::ChangeCurrentLevelRequest)
(setf (get multi_level_map_msgs::ChangeCurrentLevel :response) multi_level_map_msgs::ChangeCurrentLevelResponse)

(defmethod multi_level_map_msgs::ChangeCurrentLevelRequest
  (:response () (instance multi_level_map_msgs::ChangeCurrentLevelResponse :init)))

(setf (get multi_level_map_msgs::ChangeCurrentLevelRequest :md5sum-) "ea2e164e69b835c64629bde577a80f03")
(setf (get multi_level_map_msgs::ChangeCurrentLevelRequest :datatype-) "multi_level_map_msgs/ChangeCurrentLevelRequest")
(setf (get multi_level_map_msgs::ChangeCurrentLevelRequest :definition-)
      "string new_level_id
bool publish_initial_pose
geometry_msgs/PoseWithCovarianceStamped initial_pose

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
---
bool success
string error_message

")

(setf (get multi_level_map_msgs::ChangeCurrentLevelResponse :md5sum-) "ea2e164e69b835c64629bde577a80f03")
(setf (get multi_level_map_msgs::ChangeCurrentLevelResponse :datatype-) "multi_level_map_msgs/ChangeCurrentLevelResponse")
(setf (get multi_level_map_msgs::ChangeCurrentLevelResponse :definition-)
      "string new_level_id
bool publish_initial_pose
geometry_msgs/PoseWithCovarianceStamped initial_pose

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
---
bool success
string error_message

")



(provide :multi_level_map_msgs/ChangeCurrentLevel "ea2e164e69b835c64629bde577a80f03")


