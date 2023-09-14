; Auto-generated. Do not edit!


(cl:in-package bwi_perception-srv)


;//! \htmlinclude FeatureExtraction-request.msg.html

(cl:defclass <FeatureExtraction-request> (roslisp-msg-protocol:ros-message)
  ((cloud
    :reader cloud
    :initarg :cloud
    :type sensor_msgs-msg:PointCloud2
    :initform (cl:make-instance 'sensor_msgs-msg:PointCloud2))
   (params_int
    :reader params_int
    :initarg :params_int
    :type (cl:vector cl:fixnum)
   :initform (cl:make-array 0 :element-type 'cl:fixnum :initial-element 0)))
)

(cl:defclass FeatureExtraction-request (<FeatureExtraction-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <FeatureExtraction-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'FeatureExtraction-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name bwi_perception-srv:<FeatureExtraction-request> is deprecated: use bwi_perception-srv:FeatureExtraction-request instead.")))

(cl:ensure-generic-function 'cloud-val :lambda-list '(m))
(cl:defmethod cloud-val ((m <FeatureExtraction-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader bwi_perception-srv:cloud-val is deprecated.  Use bwi_perception-srv:cloud instead.")
  (cloud m))

(cl:ensure-generic-function 'params_int-val :lambda-list '(m))
(cl:defmethod params_int-val ((m <FeatureExtraction-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader bwi_perception-srv:params_int-val is deprecated.  Use bwi_perception-srv:params_int instead.")
  (params_int m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <FeatureExtraction-request>) ostream)
  "Serializes a message object of type '<FeatureExtraction-request>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'cloud) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'params_int))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let* ((signed ele) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    ))
   (cl:slot-value msg 'params_int))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <FeatureExtraction-request>) istream)
  "Deserializes a message object of type '<FeatureExtraction-request>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'cloud) istream)
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'params_int) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'params_int)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:aref vals i) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256)))))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<FeatureExtraction-request>)))
  "Returns string type for a service object of type '<FeatureExtraction-request>"
  "bwi_perception/FeatureExtractionRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'FeatureExtraction-request)))
  "Returns string type for a service object of type 'FeatureExtraction-request"
  "bwi_perception/FeatureExtractionRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<FeatureExtraction-request>)))
  "Returns md5sum for a message object of type '<FeatureExtraction-request>"
  "d1e05f2e0627a4123131d2576998f66b")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'FeatureExtraction-request)))
  "Returns md5sum for a message object of type 'FeatureExtraction-request"
  "d1e05f2e0627a4123131d2576998f66b")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<FeatureExtraction-request>)))
  "Returns full string definition for message of type '<FeatureExtraction-request>"
  (cl:format cl:nil "sensor_msgs/PointCloud2 cloud~%int8[] params_int~%~%================================================================================~%MSG: sensor_msgs/PointCloud2~%# This message holds a collection of N-dimensional points, which may~%# contain additional information such as normals, intensity, etc. The~%# point data is stored as a binary blob, its layout described by the~%# contents of the \"fields\" array.~%~%# The point cloud data may be organized 2d (image-like) or 1d~%# (unordered). Point clouds organized as 2d images may be produced by~%# camera depth sensors such as stereo or time-of-flight.~%~%# Time of sensor data acquisition, and the coordinate frame ID (for 3d~%# points).~%Header header~%~%# 2D structure of the point cloud. If the cloud is unordered, height is~%# 1 and width is the length of the point cloud.~%uint32 height~%uint32 width~%~%# Describes the channels and their layout in the binary data blob.~%PointField[] fields~%~%bool    is_bigendian # Is this data bigendian?~%uint32  point_step   # Length of a point in bytes~%uint32  row_step     # Length of a row in bytes~%uint8[] data         # Actual point data, size is (row_step*height)~%~%bool is_dense        # True if there are no invalid points~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: sensor_msgs/PointField~%# This message holds the description of one point entry in the~%# PointCloud2 message format.~%uint8 INT8    = 1~%uint8 UINT8   = 2~%uint8 INT16   = 3~%uint8 UINT16  = 4~%uint8 INT32   = 5~%uint8 UINT32  = 6~%uint8 FLOAT32 = 7~%uint8 FLOAT64 = 8~%~%string name      # Name of field~%uint32 offset    # Offset from start of point struct~%uint8  datatype  # Datatype enumeration, see above~%uint32 count     # How many elements in the field~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'FeatureExtraction-request)))
  "Returns full string definition for message of type 'FeatureExtraction-request"
  (cl:format cl:nil "sensor_msgs/PointCloud2 cloud~%int8[] params_int~%~%================================================================================~%MSG: sensor_msgs/PointCloud2~%# This message holds a collection of N-dimensional points, which may~%# contain additional information such as normals, intensity, etc. The~%# point data is stored as a binary blob, its layout described by the~%# contents of the \"fields\" array.~%~%# The point cloud data may be organized 2d (image-like) or 1d~%# (unordered). Point clouds organized as 2d images may be produced by~%# camera depth sensors such as stereo or time-of-flight.~%~%# Time of sensor data acquisition, and the coordinate frame ID (for 3d~%# points).~%Header header~%~%# 2D structure of the point cloud. If the cloud is unordered, height is~%# 1 and width is the length of the point cloud.~%uint32 height~%uint32 width~%~%# Describes the channels and their layout in the binary data blob.~%PointField[] fields~%~%bool    is_bigendian # Is this data bigendian?~%uint32  point_step   # Length of a point in bytes~%uint32  row_step     # Length of a row in bytes~%uint8[] data         # Actual point data, size is (row_step*height)~%~%bool is_dense        # True if there are no invalid points~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: sensor_msgs/PointField~%# This message holds the description of one point entry in the~%# PointCloud2 message format.~%uint8 INT8    = 1~%uint8 UINT8   = 2~%uint8 INT16   = 3~%uint8 UINT16  = 4~%uint8 INT32   = 5~%uint8 UINT32  = 6~%uint8 FLOAT32 = 7~%uint8 FLOAT64 = 8~%~%string name      # Name of field~%uint32 offset    # Offset from start of point struct~%uint8  datatype  # Datatype enumeration, see above~%uint32 count     # How many elements in the field~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <FeatureExtraction-request>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'cloud))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'params_int) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 1)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <FeatureExtraction-request>))
  "Converts a ROS message object to a list"
  (cl:list 'FeatureExtraction-request
    (cl:cons ':cloud (cloud msg))
    (cl:cons ':params_int (params_int msg))
))
;//! \htmlinclude FeatureExtraction-response.msg.html

(cl:defclass <FeatureExtraction-response> (roslisp-msg-protocol:ros-message)
  ((feature_vector
    :reader feature_vector
    :initarg :feature_vector
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0)))
)

(cl:defclass FeatureExtraction-response (<FeatureExtraction-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <FeatureExtraction-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'FeatureExtraction-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name bwi_perception-srv:<FeatureExtraction-response> is deprecated: use bwi_perception-srv:FeatureExtraction-response instead.")))

(cl:ensure-generic-function 'feature_vector-val :lambda-list '(m))
(cl:defmethod feature_vector-val ((m <FeatureExtraction-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader bwi_perception-srv:feature_vector-val is deprecated.  Use bwi_perception-srv:feature_vector instead.")
  (feature_vector m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <FeatureExtraction-response>) ostream)
  "Serializes a message object of type '<FeatureExtraction-response>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'feature_vector))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-double-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream)))
   (cl:slot-value msg 'feature_vector))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <FeatureExtraction-response>) istream)
  "Deserializes a message object of type '<FeatureExtraction-response>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'feature_vector) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'feature_vector)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-double-float-bits bits))))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<FeatureExtraction-response>)))
  "Returns string type for a service object of type '<FeatureExtraction-response>"
  "bwi_perception/FeatureExtractionResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'FeatureExtraction-response)))
  "Returns string type for a service object of type 'FeatureExtraction-response"
  "bwi_perception/FeatureExtractionResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<FeatureExtraction-response>)))
  "Returns md5sum for a message object of type '<FeatureExtraction-response>"
  "d1e05f2e0627a4123131d2576998f66b")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'FeatureExtraction-response)))
  "Returns md5sum for a message object of type 'FeatureExtraction-response"
  "d1e05f2e0627a4123131d2576998f66b")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<FeatureExtraction-response>)))
  "Returns full string definition for message of type '<FeatureExtraction-response>"
  (cl:format cl:nil "float64[] feature_vector~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'FeatureExtraction-response)))
  "Returns full string definition for message of type 'FeatureExtraction-response"
  (cl:format cl:nil "float64[] feature_vector~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <FeatureExtraction-response>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'feature_vector) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 8)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <FeatureExtraction-response>))
  "Converts a ROS message object to a list"
  (cl:list 'FeatureExtraction-response
    (cl:cons ':feature_vector (feature_vector msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'FeatureExtraction)))
  'FeatureExtraction-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'FeatureExtraction)))
  'FeatureExtraction-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'FeatureExtraction)))
  "Returns string type for a service object of type '<FeatureExtraction>"
  "bwi_perception/FeatureExtraction")