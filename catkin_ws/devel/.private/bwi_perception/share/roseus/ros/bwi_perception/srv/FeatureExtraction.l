;; Auto-generated. Do not edit!


(when (boundp 'bwi_perception::FeatureExtraction)
  (if (not (find-package "BWI_PERCEPTION"))
    (make-package "BWI_PERCEPTION"))
  (shadow 'FeatureExtraction (find-package "BWI_PERCEPTION")))
(unless (find-package "BWI_PERCEPTION::FEATUREEXTRACTION")
  (make-package "BWI_PERCEPTION::FEATUREEXTRACTION"))
(unless (find-package "BWI_PERCEPTION::FEATUREEXTRACTIONREQUEST")
  (make-package "BWI_PERCEPTION::FEATUREEXTRACTIONREQUEST"))
(unless (find-package "BWI_PERCEPTION::FEATUREEXTRACTIONRESPONSE")
  (make-package "BWI_PERCEPTION::FEATUREEXTRACTIONRESPONSE"))

(in-package "ROS")

(if (not (find-package "SENSOR_MSGS"))
  (ros::roseus-add-msgs "sensor_msgs"))




(defclass bwi_perception::FeatureExtractionRequest
  :super ros::object
  :slots (_cloud _params_int ))

(defmethod bwi_perception::FeatureExtractionRequest
  (:init
   (&key
    ((:cloud __cloud) (instance sensor_msgs::PointCloud2 :init))
    ((:params_int __params_int) (make-array 0 :initial-element 0 :element-type :integer))
    )
   (send-super :init)
   (setq _cloud __cloud)
   (setq _params_int __params_int)
   self)
  (:cloud
   (&rest __cloud)
   (if (keywordp (car __cloud))
       (send* _cloud __cloud)
     (progn
       (if __cloud (setq _cloud (car __cloud)))
       _cloud)))
  (:params_int
   (&optional __params_int)
   (if __params_int (setq _params_int __params_int)) _params_int)
  (:serialization-length
   ()
   (+
    ;; sensor_msgs/PointCloud2 _cloud
    (send _cloud :serialization-length)
    ;; int8[] _params_int
    (* 1    (length _params_int)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; sensor_msgs/PointCloud2 _cloud
       (send _cloud :serialize s)
     ;; int8[] _params_int
     (write-long (length _params_int) s)
     (dotimes (i (length _params_int))
       (write-byte (elt _params_int i) s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; sensor_msgs/PointCloud2 _cloud
     (send _cloud :deserialize buf ptr-) (incf ptr- (send _cloud :serialization-length))
   ;; int8[] _params_int
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _params_int (instantiate integer-vector n))
     (dotimes (i n)
     (setf (elt _params_int i) (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> (elt _params_int i) 127) (setf (elt _params_int i) (- (elt _params_int i) 256)))
     ))
   ;;
   self)
  )

(defclass bwi_perception::FeatureExtractionResponse
  :super ros::object
  :slots (_feature_vector ))

(defmethod bwi_perception::FeatureExtractionResponse
  (:init
   (&key
    ((:feature_vector __feature_vector) (make-array 0 :initial-element 0.0 :element-type :float))
    )
   (send-super :init)
   (setq _feature_vector __feature_vector)
   self)
  (:feature_vector
   (&optional __feature_vector)
   (if __feature_vector (setq _feature_vector __feature_vector)) _feature_vector)
  (:serialization-length
   ()
   (+
    ;; float64[] _feature_vector
    (* 8    (length _feature_vector)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64[] _feature_vector
     (write-long (length _feature_vector) s)
     (dotimes (i (length _feature_vector))
       (sys::poke (elt _feature_vector i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64[] _feature_vector
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _feature_vector (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _feature_vector i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;;
   self)
  )

(defclass bwi_perception::FeatureExtraction
  :super ros::object
  :slots ())

(setf (get bwi_perception::FeatureExtraction :md5sum-) "d1e05f2e0627a4123131d2576998f66b")
(setf (get bwi_perception::FeatureExtraction :datatype-) "bwi_perception/FeatureExtraction")
(setf (get bwi_perception::FeatureExtraction :request) bwi_perception::FeatureExtractionRequest)
(setf (get bwi_perception::FeatureExtraction :response) bwi_perception::FeatureExtractionResponse)

(defmethod bwi_perception::FeatureExtractionRequest
  (:response () (instance bwi_perception::FeatureExtractionResponse :init)))

(setf (get bwi_perception::FeatureExtractionRequest :md5sum-) "d1e05f2e0627a4123131d2576998f66b")
(setf (get bwi_perception::FeatureExtractionRequest :datatype-) "bwi_perception/FeatureExtractionRequest")
(setf (get bwi_perception::FeatureExtractionRequest :definition-)
      "sensor_msgs/PointCloud2 cloud
int8[] params_int

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
float64[] feature_vector

")

(setf (get bwi_perception::FeatureExtractionResponse :md5sum-) "d1e05f2e0627a4123131d2576998f66b")
(setf (get bwi_perception::FeatureExtractionResponse :datatype-) "bwi_perception/FeatureExtractionResponse")
(setf (get bwi_perception::FeatureExtractionResponse :definition-)
      "sensor_msgs/PointCloud2 cloud
int8[] params_int

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
float64[] feature_vector

")



(provide :bwi_perception/FeatureExtraction "d1e05f2e0627a4123131d2576998f66b")


