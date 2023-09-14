;; Auto-generated. Do not edit!


(when (boundp 'bwi_perception::SetObstacles)
  (if (not (find-package "BWI_PERCEPTION"))
    (make-package "BWI_PERCEPTION"))
  (shadow 'SetObstacles (find-package "BWI_PERCEPTION")))
(unless (find-package "BWI_PERCEPTION::SETOBSTACLES")
  (make-package "BWI_PERCEPTION::SETOBSTACLES"))
(unless (find-package "BWI_PERCEPTION::SETOBSTACLESREQUEST")
  (make-package "BWI_PERCEPTION::SETOBSTACLESREQUEST"))
(unless (find-package "BWI_PERCEPTION::SETOBSTACLESRESPONSE")
  (make-package "BWI_PERCEPTION::SETOBSTACLESRESPONSE"))

(in-package "ROS")

(if (not (find-package "SENSOR_MSGS"))
  (ros::roseus-add-msgs "sensor_msgs"))




(defclass bwi_perception::SetObstaclesRequest
  :super ros::object
  :slots (_clouds ))

(defmethod bwi_perception::SetObstaclesRequest
  (:init
   (&key
    ((:clouds __clouds) (let (r) (dotimes (i 0) (push (instance sensor_msgs::PointCloud2 :init) r)) r))
    )
   (send-super :init)
   (setq _clouds __clouds)
   self)
  (:clouds
   (&rest __clouds)
   (if (keywordp (car __clouds))
       (send* _clouds __clouds)
     (progn
       (if __clouds (setq _clouds (car __clouds)))
       _clouds)))
  (:serialization-length
   ()
   (+
    ;; sensor_msgs/PointCloud2[] _clouds
    (apply #'+ (send-all _clouds :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; sensor_msgs/PointCloud2[] _clouds
     (write-long (length _clouds) s)
     (dolist (elem _clouds)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; sensor_msgs/PointCloud2[] _clouds
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _clouds (let (r) (dotimes (i n) (push (instance sensor_msgs::PointCloud2 :init) r)) r))
     (dolist (elem- _clouds)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(defclass bwi_perception::SetObstaclesResponse
  :super ros::object
  :slots (_response ))

(defmethod bwi_perception::SetObstaclesResponse
  (:init
   (&key
    ((:response __response) nil)
    )
   (send-super :init)
   (setq _response __response)
   self)
  (:response
   (&optional __response)
   (if __response (setq _response __response)) _response)
  (:serialization-length
   ()
   (+
    ;; bool _response
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _response
       (if _response (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _response
     (setq _response (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass bwi_perception::SetObstacles
  :super ros::object
  :slots ())

(setf (get bwi_perception::SetObstacles :md5sum-) "b40bb4c28dbdff808de1bbeb0ba75c7d")
(setf (get bwi_perception::SetObstacles :datatype-) "bwi_perception/SetObstacles")
(setf (get bwi_perception::SetObstacles :request) bwi_perception::SetObstaclesRequest)
(setf (get bwi_perception::SetObstacles :response) bwi_perception::SetObstaclesResponse)

(defmethod bwi_perception::SetObstaclesRequest
  (:response () (instance bwi_perception::SetObstaclesResponse :init)))

(setf (get bwi_perception::SetObstaclesRequest :md5sum-) "b40bb4c28dbdff808de1bbeb0ba75c7d")
(setf (get bwi_perception::SetObstaclesRequest :datatype-) "bwi_perception/SetObstaclesRequest")
(setf (get bwi_perception::SetObstaclesRequest :definition-)
      "sensor_msgs/PointCloud2[] clouds

================================================================================
MSG: sensor_msgs/PointCloud2
# This message holds a collection of N-dimensional points, which may
# contain additional information such as normals, intensity, etc. The
# point data is stored as a binary blob, its layout described by the
# contents of the \"fields\" array.

# The point cloud data may be organized 2d (image-like) or 1d
# (unordered). Point clouds organized as 2d images may be produced by
# camera depth sensors such as stereo or time-of-flight.

# Time of sensor data acquisition, and the coordinate frame ID (for 3d
# points).
Header header

# 2D structure of the point cloud. If the cloud is unordered, height is
# 1 and width is the length of the point cloud.
uint32 height
uint32 width

# Describes the channels and their layout in the binary data blob.
PointField[] fields

bool    is_bigendian # Is this data bigendian?
uint32  point_step   # Length of a point in bytes
uint32  row_step     # Length of a row in bytes
uint8[] data         # Actual point data, size is (row_step*height)

bool is_dense        # True if there are no invalid points

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
MSG: sensor_msgs/PointField
# This message holds the description of one point entry in the
# PointCloud2 message format.
uint8 INT8    = 1
uint8 UINT8   = 2
uint8 INT16   = 3
uint8 UINT16  = 4
uint8 INT32   = 5
uint8 UINT32  = 6
uint8 FLOAT32 = 7
uint8 FLOAT64 = 8

string name      # Name of field
uint32 offset    # Offset from start of point struct
uint8  datatype  # Datatype enumeration, see above
uint32 count     # How many elements in the field
---
bool response

")

(setf (get bwi_perception::SetObstaclesResponse :md5sum-) "b40bb4c28dbdff808de1bbeb0ba75c7d")
(setf (get bwi_perception::SetObstaclesResponse :datatype-) "bwi_perception/SetObstaclesResponse")
(setf (get bwi_perception::SetObstaclesResponse :definition-)
      "sensor_msgs/PointCloud2[] clouds

================================================================================
MSG: sensor_msgs/PointCloud2
# This message holds a collection of N-dimensional points, which may
# contain additional information such as normals, intensity, etc. The
# point data is stored as a binary blob, its layout described by the
# contents of the \"fields\" array.

# The point cloud data may be organized 2d (image-like) or 1d
# (unordered). Point clouds organized as 2d images may be produced by
# camera depth sensors such as stereo or time-of-flight.

# Time of sensor data acquisition, and the coordinate frame ID (for 3d
# points).
Header header

# 2D structure of the point cloud. If the cloud is unordered, height is
# 1 and width is the length of the point cloud.
uint32 height
uint32 width

# Describes the channels and their layout in the binary data blob.
PointField[] fields

bool    is_bigendian # Is this data bigendian?
uint32  point_step   # Length of a point in bytes
uint32  row_step     # Length of a row in bytes
uint8[] data         # Actual point data, size is (row_step*height)

bool is_dense        # True if there are no invalid points

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
MSG: sensor_msgs/PointField
# This message holds the description of one point entry in the
# PointCloud2 message format.
uint8 INT8    = 1
uint8 UINT8   = 2
uint8 INT16   = 3
uint8 UINT16  = 4
uint8 INT32   = 5
uint8 UINT32  = 6
uint8 FLOAT32 = 7
uint8 FLOAT64 = 8

string name      # Name of field
uint32 offset    # Offset from start of point struct
uint8  datatype  # Datatype enumeration, see above
uint32 count     # How many elements in the field
---
bool response

")



(provide :bwi_perception/SetObstacles "b40bb4c28dbdff808de1bbeb0ba75c7d")


