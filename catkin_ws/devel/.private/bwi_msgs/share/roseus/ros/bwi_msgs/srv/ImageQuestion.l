;; Auto-generated. Do not edit!


(when (boundp 'bwi_msgs::ImageQuestion)
  (if (not (find-package "BWI_MSGS"))
    (make-package "BWI_MSGS"))
  (shadow 'ImageQuestion (find-package "BWI_MSGS")))
(unless (find-package "BWI_MSGS::IMAGEQUESTION")
  (make-package "BWI_MSGS::IMAGEQUESTION"))
(unless (find-package "BWI_MSGS::IMAGEQUESTIONREQUEST")
  (make-package "BWI_MSGS::IMAGEQUESTIONREQUEST"))
(unless (find-package "BWI_MSGS::IMAGEQUESTIONRESPONSE")
  (make-package "BWI_MSGS::IMAGEQUESTIONRESPONSE"))

(in-package "ROS")

(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))
(if (not (find-package "SENSOR_MSGS"))
  (ros::roseus-add-msgs "sensor_msgs"))




(defclass bwi_msgs::ImageQuestionRequest
  :super ros::object
  :slots (_image _point_cloud _pose _timeout _question ))

(defmethod bwi_msgs::ImageQuestionRequest
  (:init
   (&key
    ((:image __image) (instance sensor_msgs::Image :init))
    ((:point_cloud __point_cloud) (instance sensor_msgs::PointCloud2 :init))
    ((:pose __pose) (instance geometry_msgs::Pose :init))
    ((:timeout __timeout) 0)
    ((:question __question) "")
    )
   (send-super :init)
   (setq _image __image)
   (setq _point_cloud __point_cloud)
   (setq _pose __pose)
   (setq _timeout (round __timeout))
   (setq _question (string __question))
   self)
  (:image
   (&rest __image)
   (if (keywordp (car __image))
       (send* _image __image)
     (progn
       (if __image (setq _image (car __image)))
       _image)))
  (:point_cloud
   (&rest __point_cloud)
   (if (keywordp (car __point_cloud))
       (send* _point_cloud __point_cloud)
     (progn
       (if __point_cloud (setq _point_cloud (car __point_cloud)))
       _point_cloud)))
  (:pose
   (&rest __pose)
   (if (keywordp (car __pose))
       (send* _pose __pose)
     (progn
       (if __pose (setq _pose (car __pose)))
       _pose)))
  (:timeout
   (&optional __timeout)
   (if __timeout (setq _timeout __timeout)) _timeout)
  (:question
   (&optional __question)
   (if __question (setq _question __question)) _question)
  (:serialization-length
   ()
   (+
    ;; sensor_msgs/Image _image
    (send _image :serialization-length)
    ;; sensor_msgs/PointCloud2 _point_cloud
    (send _point_cloud :serialization-length)
    ;; geometry_msgs/Pose _pose
    (send _pose :serialization-length)
    ;; int64 _timeout
    8
    ;; string _question
    4 (length _question)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; sensor_msgs/Image _image
       (send _image :serialize s)
     ;; sensor_msgs/PointCloud2 _point_cloud
       (send _point_cloud :serialize s)
     ;; geometry_msgs/Pose _pose
       (send _pose :serialize s)
     ;; int64 _timeout
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _timeout (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _timeout) (= (length (_timeout . bv)) 2)) ;; bignum
              (write-long (ash (elt (_timeout . bv) 0) 0) s)
              (write-long (ash (elt (_timeout . bv) 1) -1) s))
             ((and (class _timeout) (= (length (_timeout . bv)) 1)) ;; big1
              (write-long (elt (_timeout . bv) 0) s)
              (write-long (if (>= _timeout 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _timeout s)(write-long (if (>= _timeout 0) 0 #xffffffff) s)))
     ;; string _question
       (write-long (length _question) s) (princ _question s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; sensor_msgs/Image _image
     (send _image :deserialize buf ptr-) (incf ptr- (send _image :serialization-length))
   ;; sensor_msgs/PointCloud2 _point_cloud
     (send _point_cloud :deserialize buf ptr-) (incf ptr- (send _point_cloud :serialization-length))
   ;; geometry_msgs/Pose _pose
     (send _pose :deserialize buf ptr-) (incf ptr- (send _pose :serialization-length))
   ;; int64 _timeout
#+(or :alpha :irix6 :x86_64)
      (setf _timeout (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _timeout (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
   ;; string _question
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _question (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(intern "*SUCCESSFUL_ANSWER*" (find-package "BWI_MSGS::IMAGEQUESTIONRESPONSE"))
(shadow '*SUCCESSFUL_ANSWER* (find-package "BWI_MSGS::IMAGEQUESTIONRESPONSE"))
(defconstant bwi_msgs::ImageQuestionResponse::*SUCCESSFUL_ANSWER* 0)
(intern "*TIMEOUT*" (find-package "BWI_MSGS::IMAGEQUESTIONRESPONSE"))
(shadow '*TIMEOUT* (find-package "BWI_MSGS::IMAGEQUESTIONRESPONSE"))
(defconstant bwi_msgs::ImageQuestionResponse::*TIMEOUT* 1)
(intern "*CANCELLED*" (find-package "BWI_MSGS::IMAGEQUESTIONRESPONSE"))
(shadow '*CANCELLED* (find-package "BWI_MSGS::IMAGEQUESTIONRESPONSE"))
(defconstant bwi_msgs::ImageQuestionResponse::*CANCELLED* 2)
(defclass bwi_msgs::ImageQuestionResponse
  :super ros::object
  :slots (_answers _end_reason ))

(defmethod bwi_msgs::ImageQuestionResponse
  (:init
   (&key
    ((:answers __answers) (let (r) (dotimes (i 0) (push "" r)) r))
    ((:end_reason __end_reason) 0)
    )
   (send-super :init)
   (setq _answers __answers)
   (setq _end_reason (round __end_reason))
   self)
  (:answers
   (&optional __answers)
   (if __answers (setq _answers __answers)) _answers)
  (:end_reason
   (&optional __end_reason)
   (if __end_reason (setq _end_reason __end_reason)) _end_reason)
  (:serialization-length
   ()
   (+
    ;; string[] _answers
    (apply #'+ (mapcar #'(lambda (x) (+ 4 (length x))) _answers)) 4
    ;; int32 _end_reason
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string[] _answers
     (write-long (length _answers) s)
     (dolist (elem _answers)
       (write-long (length elem) s) (princ elem s)
       )
     ;; int32 _end_reason
       (write-long _end_reason s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string[] _answers
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _answers (make-list n))
     (dotimes (i n)
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setf (elt _answers i) (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
     ))
   ;; int32 _end_reason
     (setq _end_reason (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(defclass bwi_msgs::ImageQuestion
  :super ros::object
  :slots ())

(setf (get bwi_msgs::ImageQuestion :md5sum-) "57c2d8b25cad32762a1bf1f70c8a327b")
(setf (get bwi_msgs::ImageQuestion :datatype-) "bwi_msgs/ImageQuestion")
(setf (get bwi_msgs::ImageQuestion :request) bwi_msgs::ImageQuestionRequest)
(setf (get bwi_msgs::ImageQuestion :response) bwi_msgs::ImageQuestionResponse)

(defmethod bwi_msgs::ImageQuestionRequest
  (:response () (instance bwi_msgs::ImageQuestionResponse :init)))

(setf (get bwi_msgs::ImageQuestionRequest :md5sum-) "57c2d8b25cad32762a1bf1f70c8a327b")
(setf (get bwi_msgs::ImageQuestionRequest :datatype-) "bwi_msgs/ImageQuestionRequest")
(setf (get bwi_msgs::ImageQuestionRequest :definition-)
      "sensor_msgs/Image image
sensor_msgs/PointCloud2 point_cloud
geometry_msgs/Pose pose
int64 timeout
string question

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
int32 SUCCESSFUL_ANSWER=0
int32 TIMEOUT=1
int32 CANCELLED=2

string[] answers
int32 end_reason

")

(setf (get bwi_msgs::ImageQuestionResponse :md5sum-) "57c2d8b25cad32762a1bf1f70c8a327b")
(setf (get bwi_msgs::ImageQuestionResponse :datatype-) "bwi_msgs/ImageQuestionResponse")
(setf (get bwi_msgs::ImageQuestionResponse :definition-)
      "sensor_msgs/Image image
sensor_msgs/PointCloud2 point_cloud
geometry_msgs/Pose pose
int64 timeout
string question

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
int32 SUCCESSFUL_ANSWER=0
int32 TIMEOUT=1
int32 CANCELLED=2

string[] answers
int32 end_reason

")



(provide :bwi_msgs/ImageQuestion "57c2d8b25cad32762a1bf1f70c8a327b")


