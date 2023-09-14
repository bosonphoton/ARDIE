; Auto-generated. Do not edit!


(cl:in-package bwi_perception-srv)


;//! \htmlinclude ExtractTabletopScene-request.msg.html

(cl:defclass <ExtractTabletopScene-request> (roslisp-msg-protocol:ros-message)
  ((cloud
    :reader cloud
    :initarg :cloud
    :type sensor_msgs-msg:PointCloud2
    :initform (cl:make-instance 'sensor_msgs-msg:PointCloud2)))
)

(cl:defclass ExtractTabletopScene-request (<ExtractTabletopScene-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ExtractTabletopScene-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ExtractTabletopScene-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name bwi_perception-srv:<ExtractTabletopScene-request> is deprecated: use bwi_perception-srv:ExtractTabletopScene-request instead.")))

(cl:ensure-generic-function 'cloud-val :lambda-list '(m))
(cl:defmethod cloud-val ((m <ExtractTabletopScene-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader bwi_perception-srv:cloud-val is deprecated.  Use bwi_perception-srv:cloud instead.")
  (cloud m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ExtractTabletopScene-request>) ostream)
  "Serializes a message object of type '<ExtractTabletopScene-request>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'cloud) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ExtractTabletopScene-request>) istream)
  "Deserializes a message object of type '<ExtractTabletopScene-request>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'cloud) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ExtractTabletopScene-request>)))
  "Returns string type for a service object of type '<ExtractTabletopScene-request>"
  "bwi_perception/ExtractTabletopSceneRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ExtractTabletopScene-request)))
  "Returns string type for a service object of type 'ExtractTabletopScene-request"
  "bwi_perception/ExtractTabletopSceneRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ExtractTabletopScene-request>)))
  "Returns md5sum for a message object of type '<ExtractTabletopScene-request>"
  "99f74d00a07a5046120147218fc37153")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ExtractTabletopScene-request)))
  "Returns md5sum for a message object of type 'ExtractTabletopScene-request"
  "99f74d00a07a5046120147218fc37153")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ExtractTabletopScene-request>)))
  "Returns full string definition for message of type '<ExtractTabletopScene-request>"
  (cl:format cl:nil "sensor_msgs/PointCloud2 cloud~%~%================================================================================~%MSG: sensor_msgs/PointCloud2~%# This message holds a collection of N-dimensional points, which may~%# contain additional information such as normals, intensity, etc. The~%# point data is stored as a binary blob, its layout described by the~%# contents of the \"fields\" array.~%~%# The point cloud data may be organized 2d (image-like) or 1d~%# (unordered). Point clouds organized as 2d images may be produced by~%# camera depth sensors such as stereo or time-of-flight.~%~%# Time of sensor data acquisition, and the coordinate frame ID (for 3d~%# points).~%Header header~%~%# 2D structure of the point cloud. If the cloud is unordered, height is~%# 1 and width is the length of the point cloud.~%uint32 height~%uint32 width~%~%# Describes the channels and their layout in the binary data blob.~%PointField[] fields~%~%bool    is_bigendian # Is this data bigendian?~%uint32  point_step   # Length of a point in bytes~%uint32  row_step     # Length of a row in bytes~%uint8[] data         # Actual point data, size is (row_step*height)~%~%bool is_dense        # True if there are no invalid points~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: sensor_msgs/PointField~%# This message holds the description of one point entry in the~%# PointCloud2 message format.~%uint8 INT8    = 1~%uint8 UINT8   = 2~%uint8 INT16   = 3~%uint8 UINT16  = 4~%uint8 INT32   = 5~%uint8 UINT32  = 6~%uint8 FLOAT32 = 7~%uint8 FLOAT64 = 8~%~%string name      # Name of field~%uint32 offset    # Offset from start of point struct~%uint8  datatype  # Datatype enumeration, see above~%uint32 count     # How many elements in the field~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ExtractTabletopScene-request)))
  "Returns full string definition for message of type 'ExtractTabletopScene-request"
  (cl:format cl:nil "sensor_msgs/PointCloud2 cloud~%~%================================================================================~%MSG: sensor_msgs/PointCloud2~%# This message holds a collection of N-dimensional points, which may~%# contain additional information such as normals, intensity, etc. The~%# point data is stored as a binary blob, its layout described by the~%# contents of the \"fields\" array.~%~%# The point cloud data may be organized 2d (image-like) or 1d~%# (unordered). Point clouds organized as 2d images may be produced by~%# camera depth sensors such as stereo or time-of-flight.~%~%# Time of sensor data acquisition, and the coordinate frame ID (for 3d~%# points).~%Header header~%~%# 2D structure of the point cloud. If the cloud is unordered, height is~%# 1 and width is the length of the point cloud.~%uint32 height~%uint32 width~%~%# Describes the channels and their layout in the binary data blob.~%PointField[] fields~%~%bool    is_bigendian # Is this data bigendian?~%uint32  point_step   # Length of a point in bytes~%uint32  row_step     # Length of a row in bytes~%uint8[] data         # Actual point data, size is (row_step*height)~%~%bool is_dense        # True if there are no invalid points~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: sensor_msgs/PointField~%# This message holds the description of one point entry in the~%# PointCloud2 message format.~%uint8 INT8    = 1~%uint8 UINT8   = 2~%uint8 INT16   = 3~%uint8 UINT16  = 4~%uint8 INT32   = 5~%uint8 UINT32  = 6~%uint8 FLOAT32 = 7~%uint8 FLOAT64 = 8~%~%string name      # Name of field~%uint32 offset    # Offset from start of point struct~%uint8  datatype  # Datatype enumeration, see above~%uint32 count     # How many elements in the field~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ExtractTabletopScene-request>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'cloud))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ExtractTabletopScene-request>))
  "Converts a ROS message object to a list"
  (cl:list 'ExtractTabletopScene-request
    (cl:cons ':cloud (cloud msg))
))
;//! \htmlinclude ExtractTabletopScene-response.msg.html

(cl:defclass <ExtractTabletopScene-response> (roslisp-msg-protocol:ros-message)
  ((is_plane_found
    :reader is_plane_found
    :initarg :is_plane_found
    :type cl:boolean
    :initform cl:nil)
   (cloud_plane
    :reader cloud_plane
    :initarg :cloud_plane
    :type sensor_msgs-msg:PointCloud2
    :initform (cl:make-instance 'sensor_msgs-msg:PointCloud2))
   (cloud_plane_coef
    :reader cloud_plane_coef
    :initarg :cloud_plane_coef
    :type (cl:vector cl:float)
   :initform (cl:make-array 4 :element-type 'cl:float :initial-element 0.0))
   (cloud_clusters
    :reader cloud_clusters
    :initarg :cloud_clusters
    :type (cl:vector sensor_msgs-msg:PointCloud2)
   :initform (cl:make-array 0 :element-type 'sensor_msgs-msg:PointCloud2 :initial-element (cl:make-instance 'sensor_msgs-msg:PointCloud2))))
)

(cl:defclass ExtractTabletopScene-response (<ExtractTabletopScene-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ExtractTabletopScene-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ExtractTabletopScene-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name bwi_perception-srv:<ExtractTabletopScene-response> is deprecated: use bwi_perception-srv:ExtractTabletopScene-response instead.")))

(cl:ensure-generic-function 'is_plane_found-val :lambda-list '(m))
(cl:defmethod is_plane_found-val ((m <ExtractTabletopScene-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader bwi_perception-srv:is_plane_found-val is deprecated.  Use bwi_perception-srv:is_plane_found instead.")
  (is_plane_found m))

(cl:ensure-generic-function 'cloud_plane-val :lambda-list '(m))
(cl:defmethod cloud_plane-val ((m <ExtractTabletopScene-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader bwi_perception-srv:cloud_plane-val is deprecated.  Use bwi_perception-srv:cloud_plane instead.")
  (cloud_plane m))

(cl:ensure-generic-function 'cloud_plane_coef-val :lambda-list '(m))
(cl:defmethod cloud_plane_coef-val ((m <ExtractTabletopScene-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader bwi_perception-srv:cloud_plane_coef-val is deprecated.  Use bwi_perception-srv:cloud_plane_coef instead.")
  (cloud_plane_coef m))

(cl:ensure-generic-function 'cloud_clusters-val :lambda-list '(m))
(cl:defmethod cloud_clusters-val ((m <ExtractTabletopScene-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader bwi_perception-srv:cloud_clusters-val is deprecated.  Use bwi_perception-srv:cloud_clusters instead.")
  (cloud_clusters m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ExtractTabletopScene-response>) ostream)
  "Serializes a message object of type '<ExtractTabletopScene-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'is_plane_found) 1 0)) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'cloud_plane) ostream)
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-single-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)))
   (cl:slot-value msg 'cloud_plane_coef))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'cloud_clusters))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'cloud_clusters))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ExtractTabletopScene-response>) istream)
  "Deserializes a message object of type '<ExtractTabletopScene-response>"
    (cl:setf (cl:slot-value msg 'is_plane_found) (cl:not (cl:zerop (cl:read-byte istream))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'cloud_plane) istream)
  (cl:setf (cl:slot-value msg 'cloud_plane_coef) (cl:make-array 4))
  (cl:let ((vals (cl:slot-value msg 'cloud_plane_coef)))
    (cl:dotimes (i 4)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-single-float-bits bits)))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'cloud_clusters) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'cloud_clusters)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'sensor_msgs-msg:PointCloud2))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ExtractTabletopScene-response>)))
  "Returns string type for a service object of type '<ExtractTabletopScene-response>"
  "bwi_perception/ExtractTabletopSceneResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ExtractTabletopScene-response)))
  "Returns string type for a service object of type 'ExtractTabletopScene-response"
  "bwi_perception/ExtractTabletopSceneResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ExtractTabletopScene-response>)))
  "Returns md5sum for a message object of type '<ExtractTabletopScene-response>"
  "99f74d00a07a5046120147218fc37153")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ExtractTabletopScene-response)))
  "Returns md5sum for a message object of type 'ExtractTabletopScene-response"
  "99f74d00a07a5046120147218fc37153")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ExtractTabletopScene-response>)))
  "Returns full string definition for message of type '<ExtractTabletopScene-response>"
  (cl:format cl:nil "bool is_plane_found~%sensor_msgs/PointCloud2 cloud_plane~%float32[4] cloud_plane_coef~%sensor_msgs/PointCloud2[] cloud_clusters~%~%~%================================================================================~%MSG: sensor_msgs/PointCloud2~%# This message holds a collection of N-dimensional points, which may~%# contain additional information such as normals, intensity, etc. The~%# point data is stored as a binary blob, its layout described by the~%# contents of the \"fields\" array.~%~%# The point cloud data may be organized 2d (image-like) or 1d~%# (unordered). Point clouds organized as 2d images may be produced by~%# camera depth sensors such as stereo or time-of-flight.~%~%# Time of sensor data acquisition, and the coordinate frame ID (for 3d~%# points).~%Header header~%~%# 2D structure of the point cloud. If the cloud is unordered, height is~%# 1 and width is the length of the point cloud.~%uint32 height~%uint32 width~%~%# Describes the channels and their layout in the binary data blob.~%PointField[] fields~%~%bool    is_bigendian # Is this data bigendian?~%uint32  point_step   # Length of a point in bytes~%uint32  row_step     # Length of a row in bytes~%uint8[] data         # Actual point data, size is (row_step*height)~%~%bool is_dense        # True if there are no invalid points~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: sensor_msgs/PointField~%# This message holds the description of one point entry in the~%# PointCloud2 message format.~%uint8 INT8    = 1~%uint8 UINT8   = 2~%uint8 INT16   = 3~%uint8 UINT16  = 4~%uint8 INT32   = 5~%uint8 UINT32  = 6~%uint8 FLOAT32 = 7~%uint8 FLOAT64 = 8~%~%string name      # Name of field~%uint32 offset    # Offset from start of point struct~%uint8  datatype  # Datatype enumeration, see above~%uint32 count     # How many elements in the field~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ExtractTabletopScene-response)))
  "Returns full string definition for message of type 'ExtractTabletopScene-response"
  (cl:format cl:nil "bool is_plane_found~%sensor_msgs/PointCloud2 cloud_plane~%float32[4] cloud_plane_coef~%sensor_msgs/PointCloud2[] cloud_clusters~%~%~%================================================================================~%MSG: sensor_msgs/PointCloud2~%# This message holds a collection of N-dimensional points, which may~%# contain additional information such as normals, intensity, etc. The~%# point data is stored as a binary blob, its layout described by the~%# contents of the \"fields\" array.~%~%# The point cloud data may be organized 2d (image-like) or 1d~%# (unordered). Point clouds organized as 2d images may be produced by~%# camera depth sensors such as stereo or time-of-flight.~%~%# Time of sensor data acquisition, and the coordinate frame ID (for 3d~%# points).~%Header header~%~%# 2D structure of the point cloud. If the cloud is unordered, height is~%# 1 and width is the length of the point cloud.~%uint32 height~%uint32 width~%~%# Describes the channels and their layout in the binary data blob.~%PointField[] fields~%~%bool    is_bigendian # Is this data bigendian?~%uint32  point_step   # Length of a point in bytes~%uint32  row_step     # Length of a row in bytes~%uint8[] data         # Actual point data, size is (row_step*height)~%~%bool is_dense        # True if there are no invalid points~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: sensor_msgs/PointField~%# This message holds the description of one point entry in the~%# PointCloud2 message format.~%uint8 INT8    = 1~%uint8 UINT8   = 2~%uint8 INT16   = 3~%uint8 UINT16  = 4~%uint8 INT32   = 5~%uint8 UINT32  = 6~%uint8 FLOAT32 = 7~%uint8 FLOAT64 = 8~%~%string name      # Name of field~%uint32 offset    # Offset from start of point struct~%uint8  datatype  # Datatype enumeration, see above~%uint32 count     # How many elements in the field~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ExtractTabletopScene-response>))
  (cl:+ 0
     1
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'cloud_plane))
     0 (cl:reduce #'cl:+ (cl:slot-value msg 'cloud_plane_coef) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'cloud_clusters) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ExtractTabletopScene-response>))
  "Converts a ROS message object to a list"
  (cl:list 'ExtractTabletopScene-response
    (cl:cons ':is_plane_found (is_plane_found msg))
    (cl:cons ':cloud_plane (cloud_plane msg))
    (cl:cons ':cloud_plane_coef (cloud_plane_coef msg))
    (cl:cons ':cloud_clusters (cloud_clusters msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'ExtractTabletopScene)))
  'ExtractTabletopScene-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'ExtractTabletopScene)))
  'ExtractTabletopScene-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ExtractTabletopScene)))
  "Returns string type for a service object of type '<ExtractTabletopScene>"
  "bwi_perception/ExtractTabletopScene")