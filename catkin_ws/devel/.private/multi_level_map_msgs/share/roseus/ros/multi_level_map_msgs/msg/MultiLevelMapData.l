;; Auto-generated. Do not edit!


(when (boundp 'multi_level_map_msgs::MultiLevelMapData)
  (if (not (find-package "MULTI_LEVEL_MAP_MSGS"))
    (make-package "MULTI_LEVEL_MAP_MSGS"))
  (shadow 'MultiLevelMapData (find-package "MULTI_LEVEL_MAP_MSGS")))
(unless (find-package "MULTI_LEVEL_MAP_MSGS::MULTILEVELMAPDATA")
  (make-package "MULTI_LEVEL_MAP_MSGS::MULTILEVELMAPDATA"))

(in-package "ROS")
;;//! \htmlinclude MultiLevelMapData.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass multi_level_map_msgs::MultiLevelMapData
  :super ros::object
  :slots (_header _levels _links ))

(defmethod multi_level_map_msgs::MultiLevelMapData
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:levels __levels) (let (r) (dotimes (i 0) (push (instance multi_level_map_msgs::LevelMetaData :init) r)) r))
    ((:links __links) (let (r) (dotimes (i 0) (push (instance multi_level_map_msgs::MultiLevelMapLink :init) r)) r))
    )
   (send-super :init)
   (setq _header __header)
   (setq _levels __levels)
   (setq _links __links)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:levels
   (&rest __levels)
   (if (keywordp (car __levels))
       (send* _levels __levels)
     (progn
       (if __levels (setq _levels (car __levels)))
       _levels)))
  (:links
   (&rest __links)
   (if (keywordp (car __links))
       (send* _links __links)
     (progn
       (if __links (setq _links (car __links)))
       _links)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; multi_level_map_msgs/LevelMetaData[] _levels
    (apply #'+ (send-all _levels :serialization-length)) 4
    ;; multi_level_map_msgs/MultiLevelMapLink[] _links
    (apply #'+ (send-all _links :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; multi_level_map_msgs/LevelMetaData[] _levels
     (write-long (length _levels) s)
     (dolist (elem _levels)
       (send elem :serialize s)
       )
     ;; multi_level_map_msgs/MultiLevelMapLink[] _links
     (write-long (length _links) s)
     (dolist (elem _links)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; multi_level_map_msgs/LevelMetaData[] _levels
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _levels (let (r) (dotimes (i n) (push (instance multi_level_map_msgs::LevelMetaData :init) r)) r))
     (dolist (elem- _levels)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; multi_level_map_msgs/MultiLevelMapLink[] _links
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _links (let (r) (dotimes (i n) (push (instance multi_level_map_msgs::MultiLevelMapLink :init) r)) r))
     (dolist (elem- _links)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get multi_level_map_msgs::MultiLevelMapData :md5sum-) "39402ce2a58e2634a68644e43995cbff")
(setf (get multi_level_map_msgs::MultiLevelMapData :datatype-) "multi_level_map_msgs/MultiLevelMapData")
(setf (get multi_level_map_msgs::MultiLevelMapData :definition-)
      "Header header
LevelMetaData[] levels
MultiLevelMapLink[] links


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
MSG: multi_level_map_msgs/LevelMetaData
string level_id
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

================================================================================
MSG: multi_level_map_msgs/MultiLevelMapLink
MultiLevelMapPoint from_point
MultiLevelMapPoint to_point
float64 traversal_cost
string forward_message
string reverse_message

================================================================================
MSG: multi_level_map_msgs/MultiLevelMapPoint
string level_id
geometry_msgs/Point point

")



(provide :multi_level_map_msgs/MultiLevelMapData "39402ce2a58e2634a68644e43995cbff")


