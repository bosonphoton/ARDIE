;; Auto-generated. Do not edit!


(when (boundp 'bwi_msgs::UploadImage)
  (if (not (find-package "BWI_MSGS"))
    (make-package "BWI_MSGS"))
  (shadow 'UploadImage (find-package "BWI_MSGS")))
(unless (find-package "BWI_MSGS::UPLOADIMAGE")
  (make-package "BWI_MSGS::UPLOADIMAGE"))
(unless (find-package "BWI_MSGS::UPLOADIMAGEREQUEST")
  (make-package "BWI_MSGS::UPLOADIMAGEREQUEST"))
(unless (find-package "BWI_MSGS::UPLOADIMAGERESPONSE")
  (make-package "BWI_MSGS::UPLOADIMAGERESPONSE"))

(in-package "ROS")

(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))
(if (not (find-package "SENSOR_MSGS"))
  (ros::roseus-add-msgs "sensor_msgs"))




(defclass bwi_msgs::UploadImageRequest
  :super ros::object
  :slots (_img _pose _pc ))

(defmethod bwi_msgs::UploadImageRequest
  (:init
   (&key
    ((:img __img) (instance sensor_msgs::Image :init))
    ((:pose __pose) (instance geometry_msgs::Pose :init))
    ((:pc __pc) (instance sensor_msgs::PointCloud2 :init))
    )
   (send-super :init)
   (setq _img __img)
   (setq _pose __pose)
   (setq _pc __pc)
   self)
  (:img
   (&rest __img)
   (if (keywordp (car __img))
       (send* _img __img)
     (progn
       (if __img (setq _img (car __img)))
       _img)))
  (:pose
   (&rest __pose)
   (if (keywordp (car __pose))
       (send* _pose __pose)
     (progn
       (if __pose (setq _pose (car __pose)))
       _pose)))
  (:pc
   (&rest __pc)
   (if (keywordp (car __pc))
       (send* _pc __pc)
     (progn
       (if __pc (setq _pc (car __pc)))
       _pc)))
  (:serialization-length
   ()
   (+
    ;; sensor_msgs/Image _img
    (send _img :serialization-length)
    ;; geometry_msgs/Pose _pose
    (send _pose :serialization-length)
    ;; sensor_msgs/PointCloud2 _pc
    (send _pc :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; sensor_msgs/Image _img
       (send _img :serialize s)
     ;; geometry_msgs/Pose _pose
       (send _pose :serialize s)
     ;; sensor_msgs/PointCloud2 _pc
       (send _pc :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; sensor_msgs/Image _img
     (send _img :deserialize buf ptr-) (incf ptr- (send _img :serialization-length))
   ;; geometry_msgs/Pose _pose
     (send _pose :deserialize buf ptr-) (incf ptr- (send _pose :serialization-length))
   ;; sensor_msgs/PointCloud2 _pc
     (send _pc :deserialize buf ptr-) (incf ptr- (send _pc :serialization-length))
   ;;
   self)
  )

(defclass bwi_msgs::UploadImageResponse
  :super ros::object
  :slots (_success _base_name ))

(defmethod bwi_msgs::UploadImageResponse
  (:init
   (&key
    ((:success __success) nil)
    ((:base_name __base_name) "")
    )
   (send-super :init)
   (setq _success __success)
   (setq _base_name (string __base_name))
   self)
  (:success
   (&optional __success)
   (if __success (setq _success __success)) _success)
  (:base_name
   (&optional __base_name)
   (if __base_name (setq _base_name __base_name)) _base_name)
  (:serialization-length
   ()
   (+
    ;; bool _success
    1
    ;; string _base_name
    4 (length _base_name)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _success
       (if _success (write-byte -1 s) (write-byte 0 s))
     ;; string _base_name
       (write-long (length _base_name) s) (princ _base_name s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _success
     (setq _success (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; string _base_name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _base_name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass bwi_msgs::UploadImage
  :super ros::object
  :slots ())

(setf (get bwi_msgs::UploadImage :md5sum-) "d0a1dd2b119f426ba6a9161ec730c8eb")
(setf (get bwi_msgs::UploadImage :datatype-) "bwi_msgs/UploadImage")
(setf (get bwi_msgs::UploadImage :request) bwi_msgs::UploadImageRequest)
(setf (get bwi_msgs::UploadImage :response) bwi_msgs::UploadImageResponse)

(defmethod bwi_msgs::UploadImageRequest
  (:response () (instance bwi_msgs::UploadImageResponse :init)))

(setf (get bwi_msgs::UploadImageRequest :md5sum-) "d0a1dd2b119f426ba6a9161ec730c8eb")
(setf (get bwi_msgs::UploadImageRequest :datatype-) "bwi_msgs/UploadImageRequest")
(setf (get bwi_msgs::UploadImageRequest :definition-)
      "sensor_msgs/Image img
geometry_msgs/Pose pose
sensor_msgs/PointCloud2 pc

================================================================================
MSG: sensor_msgs/Image
# This message contains an uncompressed image
# (0, 0) is at top-left corner of image
#

Header header        # Header timestamp should be acquisition time of image
                     # Header frame_id should be optical frame of camera
                     # origin of frame should be optical center of camera
                     # +x should point to the right in the image
                     # +y should point down in the image
                     # +z should point into to plane of the image
                     # If the frame_id here and the frame_id of the CameraInfo
                     # message associated with the image conflict
                     # the behavior is undefined

uint32 height         # image height, that is, number of rows
uint32 width          # image width, that is, number of columns

# The legal values for encoding are in file src/image_encodings.cpp
# If you want to standardize a new string format, join
# ros-users@lists.sourceforge.net and send an email proposing a new encoding.

string encoding       # Encoding of pixels -- channel meaning, ordering, size
                      # taken from the list of strings in include/sensor_msgs/image_encodings.h

uint8 is_bigendian    # is this data bigendian?
uint32 step           # Full row length in bytes
uint8[] data          # actual matrix data, size is (step * rows)

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
bool success
string base_name

")

(setf (get bwi_msgs::UploadImageResponse :md5sum-) "d0a1dd2b119f426ba6a9161ec730c8eb")
(setf (get bwi_msgs::UploadImageResponse :datatype-) "bwi_msgs/UploadImageResponse")
(setf (get bwi_msgs::UploadImageResponse :definition-)
      "sensor_msgs/Image img
geometry_msgs/Pose pose
sensor_msgs/PointCloud2 pc

================================================================================
MSG: sensor_msgs/Image
# This message contains an uncompressed image
# (0, 0) is at top-left corner of image
#

Header header        # Header timestamp should be acquisition time of image
                     # Header frame_id should be optical frame of camera
                     # origin of frame should be optical center of camera
                     # +x should point to the right in the image
                     # +y should point down in the image
                     # +z should point into to plane of the image
                     # If the frame_id here and the frame_id of the CameraInfo
                     # message associated with the image conflict
                     # the behavior is undefined

uint32 height         # image height, that is, number of rows
uint32 width          # image width, that is, number of columns

# The legal values for encoding are in file src/image_encodings.cpp
# If you want to standardize a new string format, join
# ros-users@lists.sourceforge.net and send an email proposing a new encoding.

string encoding       # Encoding of pixels -- channel meaning, ordering, size
                      # taken from the list of strings in include/sensor_msgs/image_encodings.h

uint8 is_bigendian    # is this data bigendian?
uint32 step           # Full row length in bytes
uint8[] data          # actual matrix data, size is (step * rows)

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
bool success
string base_name

")



(provide :bwi_msgs/UploadImage "d0a1dd2b119f426ba6a9161ec730c8eb")


