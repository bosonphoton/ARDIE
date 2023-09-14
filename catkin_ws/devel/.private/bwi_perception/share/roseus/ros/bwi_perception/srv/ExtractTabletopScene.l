;; Auto-generated. Do not edit!


(when (boundp 'bwi_perception::ExtractTabletopScene)
  (if (not (find-package "BWI_PERCEPTION"))
    (make-package "BWI_PERCEPTION"))
  (shadow 'ExtractTabletopScene (find-package "BWI_PERCEPTION")))
(unless (find-package "BWI_PERCEPTION::EXTRACTTABLETOPSCENE")
  (make-package "BWI_PERCEPTION::EXTRACTTABLETOPSCENE"))
(unless (find-package "BWI_PERCEPTION::EXTRACTTABLETOPSCENEREQUEST")
  (make-package "BWI_PERCEPTION::EXTRACTTABLETOPSCENEREQUEST"))
(unless (find-package "BWI_PERCEPTION::EXTRACTTABLETOPSCENERESPONSE")
  (make-package "BWI_PERCEPTION::EXTRACTTABLETOPSCENERESPONSE"))

(in-package "ROS")

(if (not (find-package "SENSOR_MSGS"))
  (ros::roseus-add-msgs "sensor_msgs"))


(if (not (find-package "SENSOR_MSGS"))
  (ros::roseus-add-msgs "sensor_msgs"))


(defclass bwi_perception::ExtractTabletopSceneRequest
  :super ros::object
  :slots (_cloud ))

(defmethod bwi_perception::ExtractTabletopSceneRequest
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

(defclass bwi_perception::ExtractTabletopSceneResponse
  :super ros::object
  :slots (_is_plane_found _cloud_plane _cloud_plane_coef _cloud_clusters ))

(defmethod bwi_perception::ExtractTabletopSceneResponse
  (:init
   (&key
    ((:is_plane_found __is_plane_found) nil)
    ((:cloud_plane __cloud_plane) (instance sensor_msgs::PointCloud2 :init))
    ((:cloud_plane_coef __cloud_plane_coef) (make-array 4 :initial-element 0.0 :element-type :float))
    ((:cloud_clusters __cloud_clusters) (let (r) (dotimes (i 0) (push (instance sensor_msgs::PointCloud2 :init) r)) r))
    )
   (send-super :init)
   (setq _is_plane_found __is_plane_found)
   (setq _cloud_plane __cloud_plane)
   (setq _cloud_plane_coef __cloud_plane_coef)
   (setq _cloud_clusters __cloud_clusters)
   self)
  (:is_plane_found
   (&optional __is_plane_found)
   (if __is_plane_found (setq _is_plane_found __is_plane_found)) _is_plane_found)
  (:cloud_plane
   (&rest __cloud_plane)
   (if (keywordp (car __cloud_plane))
       (send* _cloud_plane __cloud_plane)
     (progn
       (if __cloud_plane (setq _cloud_plane (car __cloud_plane)))
       _cloud_plane)))
  (:cloud_plane_coef
   (&optional __cloud_plane_coef)
   (if __cloud_plane_coef (setq _cloud_plane_coef __cloud_plane_coef)) _cloud_plane_coef)
  (:cloud_clusters
   (&rest __cloud_clusters)
   (if (keywordp (car __cloud_clusters))
       (send* _cloud_clusters __cloud_clusters)
     (progn
       (if __cloud_clusters (setq _cloud_clusters (car __cloud_clusters)))
       _cloud_clusters)))
  (:serialization-length
   ()
   (+
    ;; bool _is_plane_found
    1
    ;; sensor_msgs/PointCloud2 _cloud_plane
    (send _cloud_plane :serialization-length)
    ;; float32[4] _cloud_plane_coef
    (* 4    4)
    ;; sensor_msgs/PointCloud2[] _cloud_clusters
    (apply #'+ (send-all _cloud_clusters :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _is_plane_found
       (if _is_plane_found (write-byte -1 s) (write-byte 0 s))
     ;; sensor_msgs/PointCloud2 _cloud_plane
       (send _cloud_plane :serialize s)
     ;; float32[4] _cloud_plane_coef
     (dotimes (i 4)
       (sys::poke (elt _cloud_plane_coef i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;; sensor_msgs/PointCloud2[] _cloud_clusters
     (write-long (length _cloud_clusters) s)
     (dolist (elem _cloud_clusters)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _is_plane_found
     (setq _is_plane_found (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; sensor_msgs/PointCloud2 _cloud_plane
     (send _cloud_plane :deserialize buf ptr-) (incf ptr- (send _cloud_plane :serialization-length))
   ;; float32[4] _cloud_plane_coef
   (dotimes (i (length _cloud_plane_coef))
     (setf (elt _cloud_plane_coef i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     )
   ;; sensor_msgs/PointCloud2[] _cloud_clusters
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _cloud_clusters (let (r) (dotimes (i n) (push (instance sensor_msgs::PointCloud2 :init) r)) r))
     (dolist (elem- _cloud_clusters)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(defclass bwi_perception::ExtractTabletopScene
  :super ros::object
  :slots ())

(setf (get bwi_perception::ExtractTabletopScene :md5sum-) "99f74d00a07a5046120147218fc37153")
(setf (get bwi_perception::ExtractTabletopScene :datatype-) "bwi_perception/ExtractTabletopScene")
(setf (get bwi_perception::ExtractTabletopScene :request) bwi_perception::ExtractTabletopSceneRequest)
(setf (get bwi_perception::ExtractTabletopScene :response) bwi_perception::ExtractTabletopSceneResponse)

(defmethod bwi_perception::ExtractTabletopSceneRequest
  (:response () (instance bwi_perception::ExtractTabletopSceneResponse :init)))

(setf (get bwi_perception::ExtractTabletopSceneRequest :md5sum-) "99f74d00a07a5046120147218fc37153")
(setf (get bwi_perception::ExtractTabletopSceneRequest :datatype-) "bwi_perception/ExtractTabletopSceneRequest")
(setf (get bwi_perception::ExtractTabletopSceneRequest :definition-)
      "sensor_msgs/PointCloud2 cloud

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
bool is_plane_found
sensor_msgs/PointCloud2 cloud_plane
float32[4] cloud_plane_coef
sensor_msgs/PointCloud2[] cloud_clusters


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

(setf (get bwi_perception::ExtractTabletopSceneResponse :md5sum-) "99f74d00a07a5046120147218fc37153")
(setf (get bwi_perception::ExtractTabletopSceneResponse :datatype-) "bwi_perception/ExtractTabletopSceneResponse")
(setf (get bwi_perception::ExtractTabletopSceneResponse :definition-)
      "sensor_msgs/PointCloud2 cloud

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
bool is_plane_found
sensor_msgs/PointCloud2 cloud_plane
float32[4] cloud_plane_coef
sensor_msgs/PointCloud2[] cloud_clusters


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



(provide :bwi_perception/ExtractTabletopScene "99f74d00a07a5046120147218fc37153")


