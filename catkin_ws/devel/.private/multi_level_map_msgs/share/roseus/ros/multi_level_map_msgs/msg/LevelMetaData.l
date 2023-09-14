;; Auto-generated. Do not edit!


(when (boundp 'multi_level_map_msgs::LevelMetaData)
  (if (not (find-package "MULTI_LEVEL_MAP_MSGS"))
    (make-package "MULTI_LEVEL_MAP_MSGS"))
  (shadow 'LevelMetaData (find-package "MULTI_LEVEL_MAP_MSGS")))
(unless (find-package "MULTI_LEVEL_MAP_MSGS::LEVELMETADATA")
  (make-package "MULTI_LEVEL_MAP_MSGS::LEVELMETADATA"))

(in-package "ROS")
;;//! \htmlinclude LevelMetaData.msg.html
(if (not (find-package "NAV_MSGS"))
  (ros::roseus-add-msgs "nav_msgs"))


(defclass multi_level_map_msgs::LevelMetaData
  :super ros::object
  :slots (_level_id _data_directory _map_file _info ))

(defmethod multi_level_map_msgs::LevelMetaData
  (:init
   (&key
    ((:level_id __level_id) "")
    ((:data_directory __data_directory) "")
    ((:map_file __map_file) "")
    ((:info __info) (instance nav_msgs::MapMetaData :init))
    )
   (send-super :init)
   (setq _level_id (string __level_id))
   (setq _data_directory (string __data_directory))
   (setq _map_file (string __map_file))
   (setq _info __info)
   self)
  (:level_id
   (&optional __level_id)
   (if __level_id (setq _level_id __level_id)) _level_id)
  (:data_directory
   (&optional __data_directory)
   (if __data_directory (setq _data_directory __data_directory)) _data_directory)
  (:map_file
   (&optional __map_file)
   (if __map_file (setq _map_file __map_file)) _map_file)
  (:info
   (&rest __info)
   (if (keywordp (car __info))
       (send* _info __info)
     (progn
       (if __info (setq _info (car __info)))
       _info)))
  (:serialization-length
   ()
   (+
    ;; string _level_id
    4 (length _level_id)
    ;; string _data_directory
    4 (length _data_directory)
    ;; string _map_file
    4 (length _map_file)
    ;; nav_msgs/MapMetaData _info
    (send _info :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _level_id
       (write-long (length _level_id) s) (princ _level_id s)
     ;; string _data_directory
       (write-long (length _data_directory) s) (princ _data_directory s)
     ;; string _map_file
       (write-long (length _map_file) s) (princ _map_file s)
     ;; nav_msgs/MapMetaData _info
       (send _info :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _level_id
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _level_id (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _data_directory
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _data_directory (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _map_file
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _map_file (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; nav_msgs/MapMetaData _info
     (send _info :deserialize buf ptr-) (incf ptr- (send _info :serialization-length))
   ;;
   self)
  )

(setf (get multi_level_map_msgs::LevelMetaData :md5sum-) "a9b9f2aeb1f506197c493af4a2fe197c")
(setf (get multi_level_map_msgs::LevelMetaData :datatype-) "multi_level_map_msgs/LevelMetaData")
(setf (get multi_level_map_msgs::LevelMetaData :definition-)
      "string level_id
string data_directory
string map_file
nav_msgs/MapMetaData info

================================================================================
MSG: nav_msgs/MapMetaData
# This hold basic information about the characterists of the OccupancyGrid

# The time at which the map was loaded
time map_load_time
# The map resolution [m/cell]
float32 resolution
# Map width [cells]
uint32 width
# Map height [cells]
uint32 height
# The origin of the map [m, m, rad].  This is the real-world pose of the
# cell (0,0) in the map.
geometry_msgs/Pose origin
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



(provide :multi_level_map_msgs/LevelMetaData "a9b9f2aeb1f506197c493af4a2fe197c")


