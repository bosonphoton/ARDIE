;; Auto-generated. Do not edit!


(when (boundp 'bwi_perception::ButtonDetection)
  (if (not (find-package "BWI_PERCEPTION"))
    (make-package "BWI_PERCEPTION"))
  (shadow 'ButtonDetection (find-package "BWI_PERCEPTION")))
(unless (find-package "BWI_PERCEPTION::BUTTONDETECTION")
  (make-package "BWI_PERCEPTION::BUTTONDETECTION"))
(unless (find-package "BWI_PERCEPTION::BUTTONDETECTIONREQUEST")
  (make-package "BWI_PERCEPTION::BUTTONDETECTIONREQUEST"))
(unless (find-package "BWI_PERCEPTION::BUTTONDETECTIONRESPONSE")
  (make-package "BWI_PERCEPTION::BUTTONDETECTIONRESPONSE"))

(in-package "ROS")



(if (not (find-package "SENSOR_MSGS"))
  (ros::roseus-add-msgs "sensor_msgs"))


(defclass bwi_perception::ButtonDetectionRequest
  :super ros::object
  :slots ())

(defmethod bwi_perception::ButtonDetectionRequest
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

(defclass bwi_perception::ButtonDetectionResponse
  :super ros::object
  :slots (_button_found _cloud_button ))

(defmethod bwi_perception::ButtonDetectionResponse
  (:init
   (&key
    ((:button_found __button_found) nil)
    ((:cloud_button __cloud_button) (instance sensor_msgs::PointCloud2 :init))
    )
   (send-super :init)
   (setq _button_found __button_found)
   (setq _cloud_button __cloud_button)
   self)
  (:button_found
   (&optional __button_found)
   (if __button_found (setq _button_found __button_found)) _button_found)
  (:cloud_button
   (&rest __cloud_button)
   (if (keywordp (car __cloud_button))
       (send* _cloud_button __cloud_button)
     (progn
       (if __cloud_button (setq _cloud_button (car __cloud_button)))
       _cloud_button)))
  (:serialization-length
   ()
   (+
    ;; bool _button_found
    1
    ;; sensor_msgs/PointCloud2 _cloud_button
    (send _cloud_button :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _button_found
       (if _button_found (write-byte -1 s) (write-byte 0 s))
     ;; sensor_msgs/PointCloud2 _cloud_button
       (send _cloud_button :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _button_found
     (setq _button_found (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; sensor_msgs/PointCloud2 _cloud_button
     (send _cloud_button :deserialize buf ptr-) (incf ptr- (send _cloud_button :serialization-length))
   ;;
   self)
  )

(defclass bwi_perception::ButtonDetection
  :super ros::object
  :slots ())

(setf (get bwi_perception::ButtonDetection :md5sum-) "db92d35083261fda0bc93a2e246a3490")
(setf (get bwi_perception::ButtonDetection :datatype-) "bwi_perception/ButtonDetection")
(setf (get bwi_perception::ButtonDetection :request) bwi_perception::ButtonDetectionRequest)
(setf (get bwi_perception::ButtonDetection :response) bwi_perception::ButtonDetectionResponse)

(defmethod bwi_perception::ButtonDetectionRequest
  (:response () (instance bwi_perception::ButtonDetectionResponse :init)))

(setf (get bwi_perception::ButtonDetectionRequest :md5sum-) "db92d35083261fda0bc93a2e246a3490")
(setf (get bwi_perception::ButtonDetectionRequest :datatype-) "bwi_perception/ButtonDetectionRequest")
(setf (get bwi_perception::ButtonDetectionRequest :definition-)
      "---
bool button_found
sensor_msgs/PointCloud2 cloud_button


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

(setf (get bwi_perception::ButtonDetectionResponse :md5sum-) "db92d35083261fda0bc93a2e246a3490")
(setf (get bwi_perception::ButtonDetectionResponse :datatype-) "bwi_perception/ButtonDetectionResponse")
(setf (get bwi_perception::ButtonDetectionResponse :definition-)
      "---
bool button_found
sensor_msgs/PointCloud2 cloud_button


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



(provide :bwi_perception/ButtonDetection "db92d35083261fda0bc93a2e246a3490")


