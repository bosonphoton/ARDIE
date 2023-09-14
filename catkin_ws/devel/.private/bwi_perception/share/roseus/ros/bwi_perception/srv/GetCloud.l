;; Auto-generated. Do not edit!


(when (boundp 'bwi_perception::GetCloud)
  (if (not (find-package "BWI_PERCEPTION"))
    (make-package "BWI_PERCEPTION"))
  (shadow 'GetCloud (find-package "BWI_PERCEPTION")))
(unless (find-package "BWI_PERCEPTION::GETCLOUD")
  (make-package "BWI_PERCEPTION::GETCLOUD"))
(unless (find-package "BWI_PERCEPTION::GETCLOUDREQUEST")
  (make-package "BWI_PERCEPTION::GETCLOUDREQUEST"))
(unless (find-package "BWI_PERCEPTION::GETCLOUDRESPONSE")
  (make-package "BWI_PERCEPTION::GETCLOUDRESPONSE"))

(in-package "ROS")



(if (not (find-package "SENSOR_MSGS"))
  (ros::roseus-add-msgs "sensor_msgs"))


(defclass bwi_perception::GetCloudRequest
  :super ros::object
  :slots ())

(defmethod bwi_perception::GetCloudRequest
  (:init
   (&key
    )
   (send-super :init)
   self)
  (:serialization-length
   ()
   (+
    0
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;;
   self)
  )

(defclass bwi_perception::GetCloudResponse
  :super ros::object
  :slots (_cloud ))

(defmethod bwi_perception::GetCloudResponse
  (:init
   (&key
    ((:cloud __cloud) (instance sensor_msgs::PointCloud2 :init))
    )
   (send-super :init)
   (setq _cloud __cloud)
   self)
  (:cloud
   (&rest __cloud)
   (if (keywordp (car __cloud))
       (send* _cloud __cloud)
     (progn
       (if __cloud (setq _cloud (car __cloud)))
       _cloud)))
  (:serialization-length
   ()
   (+
    ;; sensor_msgs/PointCloud2 _cloud
    (send _cloud :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; sensor_msgs/PointCloud2 _cloud
       (send _cloud :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; sensor_msgs/PointCloud2 _cloud
     (send _cloud :deserialize buf ptr-) (incf ptr- (send _cloud :serialization-length))
   ;;
   self)
  )

(defclass bwi_perception::GetCloud
  :super ros::object
  :slots ())

(setf (get bwi_perception::GetCloud :md5sum-) "96cec5374164b3b3d1d7ef5d7628a7ed")
(setf (get bwi_perception::GetCloud :datatype-) "bwi_perception/GetCloud")
(setf (get bwi_perception::GetCloud :request) bwi_perception::GetCloudRequest)
(setf (get bwi_perception::GetCloud :response) bwi_perception::GetCloudResponse)

(defmethod bwi_perception::GetCloudRequest
  (:response () (instance bwi_perception::GetCloudResponse :init)))

(setf (get bwi_perception::GetCloudRequest :md5sum-) "96cec5374164b3b3d1d7ef5d7628a7ed")
(setf (get bwi_perception::GetCloudRequest :datatype-) "bwi_perception/GetCloudRequest")
(setf (get bwi_perception::GetCloudRequest :definition-)
      "---
sensor_msgs/PointCloud2 cloud


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
")

(setf (get bwi_perception::GetCloudResponse :md5sum-) "96cec5374164b3b3d1d7ef5d7628a7ed")
(setf (get bwi_perception::GetCloudResponse :datatype-) "bwi_perception/GetCloudResponse")
(setf (get bwi_perception::GetCloudResponse :definition-)
      "---
sensor_msgs/PointCloud2 cloud


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
")



(provide :bwi_perception/GetCloud "96cec5374164b3b3d1d7ef5d7628a7ed")


