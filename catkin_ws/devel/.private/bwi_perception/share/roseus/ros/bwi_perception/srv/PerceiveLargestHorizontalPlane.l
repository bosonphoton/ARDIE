;; Auto-generated. Do not edit!


(when (boundp 'bwi_perception::PerceiveLargestHorizontalPlane)
  (if (not (find-package "BWI_PERCEPTION"))
    (make-package "BWI_PERCEPTION"))
  (shadow 'PerceiveLargestHorizontalPlane (find-package "BWI_PERCEPTION")))
(unless (find-package "BWI_PERCEPTION::PERCEIVELARGESTHORIZONTALPLANE")
  (make-package "BWI_PERCEPTION::PERCEIVELARGESTHORIZONTALPLANE"))
(unless (find-package "BWI_PERCEPTION::PERCEIVELARGESTHORIZONTALPLANEREQUEST")
  (make-package "BWI_PERCEPTION::PERCEIVELARGESTHORIZONTALPLANEREQUEST"))
(unless (find-package "BWI_PERCEPTION::PERCEIVELARGESTHORIZONTALPLANERESPONSE")
  (make-package "BWI_PERCEPTION::PERCEIVELARGESTHORIZONTALPLANERESPONSE"))

(in-package "ROS")



(if (not (find-package "SENSOR_MSGS"))
  (ros::roseus-add-msgs "sensor_msgs"))


(defclass bwi_perception::PerceiveLargestHorizontalPlaneRequest
  :super ros::object
  :slots (_override_filter_z _min_z_value _max_z_value _apply_x_box_filter _x_min _x_max ))

(defmethod bwi_perception::PerceiveLargestHorizontalPlaneRequest
  (:init
   (&key
    ((:override_filter_z __override_filter_z) nil)
    ((:min_z_value __min_z_value) 0.0)
    ((:max_z_value __max_z_value) 0.0)
    ((:apply_x_box_filter __apply_x_box_filter) nil)
    ((:x_min __x_min) 0.0)
    ((:x_max __x_max) 0.0)
    )
   (send-super :init)
   (setq _override_filter_z __override_filter_z)
   (setq _min_z_value (float __min_z_value))
   (setq _max_z_value (float __max_z_value))
   (setq _apply_x_box_filter __apply_x_box_filter)
   (setq _x_min (float __x_min))
   (setq _x_max (float __x_max))
   self)
  (:override_filter_z
   (&optional __override_filter_z)
   (if __override_filter_z (setq _override_filter_z __override_filter_z)) _override_filter_z)
  (:min_z_value
   (&optional __min_z_value)
   (if __min_z_value (setq _min_z_value __min_z_value)) _min_z_value)
  (:max_z_value
   (&optional __max_z_value)
   (if __max_z_value (setq _max_z_value __max_z_value)) _max_z_value)
  (:apply_x_box_filter
   (&optional __apply_x_box_filter)
   (if __apply_x_box_filter (setq _apply_x_box_filter __apply_x_box_filter)) _apply_x_box_filter)
  (:x_min
   (&optional __x_min)
   (if __x_min (setq _x_min __x_min)) _x_min)
  (:x_max
   (&optional __x_max)
   (if __x_max (setq _x_max __x_max)) _x_max)
  (:serialization-length
   ()
   (+
    ;; bool _override_filter_z
    1
    ;; float32 _min_z_value
    4
    ;; float32 _max_z_value
    4
    ;; bool _apply_x_box_filter
    1
    ;; float32 _x_min
    4
    ;; float32 _x_max
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _override_filter_z
       (if _override_filter_z (write-byte -1 s) (write-byte 0 s))
     ;; float32 _min_z_value
       (sys::poke _min_z_value (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _max_z_value
       (sys::poke _max_z_value (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; bool _apply_x_box_filter
       (if _apply_x_box_filter (write-byte -1 s) (write-byte 0 s))
     ;; float32 _x_min
       (sys::poke _x_min (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _x_max
       (sys::poke _x_max (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _override_filter_z
     (setq _override_filter_z (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; float32 _min_z_value
     (setq _min_z_value (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _max_z_value
     (setq _max_z_value (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; bool _apply_x_box_filter
     (setq _apply_x_box_filter (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; float32 _x_min
     (setq _x_min (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _x_max
     (setq _x_max (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(defclass bwi_perception::PerceiveLargestHorizontalPlaneResponse
  :super ros::object
  :slots (_is_plane_found _cloud_plane _cloud_plane_coef ))

(defmethod bwi_perception::PerceiveLargestHorizontalPlaneResponse
  (:init
   (&key
    ((:is_plane_found __is_plane_found) nil)
    ((:cloud_plane __cloud_plane) (instance sensor_msgs::PointCloud2 :init))
    ((:cloud_plane_coef __cloud_plane_coef) (make-array 4 :initial-element 0.0 :element-type :float))
    )
   (send-super :init)
   (setq _is_plane_found __is_plane_found)
   (setq _cloud_plane __cloud_plane)
   (setq _cloud_plane_coef __cloud_plane_coef)
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
  (:serialization-length
   ()
   (+
    ;; bool _is_plane_found
    1
    ;; sensor_msgs/PointCloud2 _cloud_plane
    (send _cloud_plane :serialization-length)
    ;; float32[4] _cloud_plane_coef
    (* 4    4)
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
   ;;
   self)
  )

(defclass bwi_perception::PerceiveLargestHorizontalPlane
  :super ros::object
  :slots ())

(setf (get bwi_perception::PerceiveLargestHorizontalPlane :md5sum-) "34fffc23b5e8ba50f79d3b901bb1af8e")
(setf (get bwi_perception::PerceiveLargestHorizontalPlane :datatype-) "bwi_perception/PerceiveLargestHorizontalPlane")
(setf (get bwi_perception::PerceiveLargestHorizontalPlane :request) bwi_perception::PerceiveLargestHorizontalPlaneRequest)
(setf (get bwi_perception::PerceiveLargestHorizontalPlane :response) bwi_perception::PerceiveLargestHorizontalPlaneResponse)

(defmethod bwi_perception::PerceiveLargestHorizontalPlaneRequest
  (:response () (instance bwi_perception::PerceiveLargestHorizontalPlaneResponse :init)))

(setf (get bwi_perception::PerceiveLargestHorizontalPlaneRequest :md5sum-) "34fffc23b5e8ba50f79d3b901bb1af8e")
(setf (get bwi_perception::PerceiveLargestHorizontalPlaneRequest :datatype-) "bwi_perception/PerceiveLargestHorizontalPlaneRequest")
(setf (get bwi_perception::PerceiveLargestHorizontalPlaneRequest :definition-)
      "# if you want to override the default z filter
bool override_filter_z
float32 min_z_value
float32 max_z_value

# if you want to apply an x filter (i.e., side to side)
bool apply_x_box_filter
float32 x_min
float32 x_max
---
bool is_plane_found
sensor_msgs/PointCloud2 cloud_plane
float32[4] cloud_plane_coef


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

(setf (get bwi_perception::PerceiveLargestHorizontalPlaneResponse :md5sum-) "34fffc23b5e8ba50f79d3b901bb1af8e")
(setf (get bwi_perception::PerceiveLargestHorizontalPlaneResponse :datatype-) "bwi_perception/PerceiveLargestHorizontalPlaneResponse")
(setf (get bwi_perception::PerceiveLargestHorizontalPlaneResponse :definition-)
      "# if you want to override the default z filter
bool override_filter_z
float32 min_z_value
float32 max_z_value

# if you want to apply an x filter (i.e., side to side)
bool apply_x_box_filter
float32 x_min
float32 x_max
---
bool is_plane_found
sensor_msgs/PointCloud2 cloud_plane
float32[4] cloud_plane_coef


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



(provide :bwi_perception/PerceiveLargestHorizontalPlane "34fffc23b5e8ba50f79d3b901bb1af8e")


