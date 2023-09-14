; Auto-generated. Do not edit!


(cl:in-package bwi_perception-srv)


;//! \htmlinclude PerceiveLargestHorizontalPlane-request.msg.html

(cl:defclass <PerceiveLargestHorizontalPlane-request> (roslisp-msg-protocol:ros-message)
  ((override_filter_z
    :reader override_filter_z
    :initarg :override_filter_z
    :type cl:boolean
    :initform cl:nil)
   (min_z_value
    :reader min_z_value
    :initarg :min_z_value
    :type cl:float
    :initform 0.0)
   (max_z_value
    :reader max_z_value
    :initarg :max_z_value
    :type cl:float
    :initform 0.0)
   (apply_x_box_filter
    :reader apply_x_box_filter
    :initarg :apply_x_box_filter
    :type cl:boolean
    :initform cl:nil)
   (x_min
    :reader x_min
    :initarg :x_min
    :type cl:float
    :initform 0.0)
   (x_max
    :reader x_max
    :initarg :x_max
    :type cl:float
    :initform 0.0))
)

(cl:defclass PerceiveLargestHorizontalPlane-request (<PerceiveLargestHorizontalPlane-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <PerceiveLargestHorizontalPlane-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'PerceiveLargestHorizontalPlane-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name bwi_perception-srv:<PerceiveLargestHorizontalPlane-request> is deprecated: use bwi_perception-srv:PerceiveLargestHorizontalPlane-request instead.")))

(cl:ensure-generic-function 'override_filter_z-val :lambda-list '(m))
(cl:defmethod override_filter_z-val ((m <PerceiveLargestHorizontalPlane-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader bwi_perception-srv:override_filter_z-val is deprecated.  Use bwi_perception-srv:override_filter_z instead.")
  (override_filter_z m))

(cl:ensure-generic-function 'min_z_value-val :lambda-list '(m))
(cl:defmethod min_z_value-val ((m <PerceiveLargestHorizontalPlane-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader bwi_perception-srv:min_z_value-val is deprecated.  Use bwi_perception-srv:min_z_value instead.")
  (min_z_value m))

(cl:ensure-generic-function 'max_z_value-val :lambda-list '(m))
(cl:defmethod max_z_value-val ((m <PerceiveLargestHorizontalPlane-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader bwi_perception-srv:max_z_value-val is deprecated.  Use bwi_perception-srv:max_z_value instead.")
  (max_z_value m))

(cl:ensure-generic-function 'apply_x_box_filter-val :lambda-list '(m))
(cl:defmethod apply_x_box_filter-val ((m <PerceiveLargestHorizontalPlane-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader bwi_perception-srv:apply_x_box_filter-val is deprecated.  Use bwi_perception-srv:apply_x_box_filter instead.")
  (apply_x_box_filter m))

(cl:ensure-generic-function 'x_min-val :lambda-list '(m))
(cl:defmethod x_min-val ((m <PerceiveLargestHorizontalPlane-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader bwi_perception-srv:x_min-val is deprecated.  Use bwi_perception-srv:x_min instead.")
  (x_min m))

(cl:ensure-generic-function 'x_max-val :lambda-list '(m))
(cl:defmethod x_max-val ((m <PerceiveLargestHorizontalPlane-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader bwi_perception-srv:x_max-val is deprecated.  Use bwi_perception-srv:x_max instead.")
  (x_max m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <PerceiveLargestHorizontalPlane-request>) ostream)
  "Serializes a message object of type '<PerceiveLargestHorizontalPlane-request>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'override_filter_z) 1 0)) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'min_z_value))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'max_z_value))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'apply_x_box_filter) 1 0)) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'x_min))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'x_max))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <PerceiveLargestHorizontalPlane-request>) istream)
  "Deserializes a message object of type '<PerceiveLargestHorizontalPlane-request>"
    (cl:setf (cl:slot-value msg 'override_filter_z) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'min_z_value) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'max_z_value) (roslisp-utils:decode-single-float-bits bits)))
    (cl:setf (cl:slot-value msg 'apply_x_box_filter) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'x_min) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'x_max) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<PerceiveLargestHorizontalPlane-request>)))
  "Returns string type for a service object of type '<PerceiveLargestHorizontalPlane-request>"
  "bwi_perception/PerceiveLargestHorizontalPlaneRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'PerceiveLargestHorizontalPlane-request)))
  "Returns string type for a service object of type 'PerceiveLargestHorizontalPlane-request"
  "bwi_perception/PerceiveLargestHorizontalPlaneRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<PerceiveLargestHorizontalPlane-request>)))
  "Returns md5sum for a message object of type '<PerceiveLargestHorizontalPlane-request>"
  "34fffc23b5e8ba50f79d3b901bb1af8e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'PerceiveLargestHorizontalPlane-request)))
  "Returns md5sum for a message object of type 'PerceiveLargestHorizontalPlane-request"
  "34fffc23b5e8ba50f79d3b901bb1af8e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<PerceiveLargestHorizontalPlane-request>)))
  "Returns full string definition for message of type '<PerceiveLargestHorizontalPlane-request>"
  (cl:format cl:nil "# if you want to override the default z filter~%bool override_filter_z~%float32 min_z_value~%float32 max_z_value~%~%# if you want to apply an x filter (i.e., side to side)~%bool apply_x_box_filter~%float32 x_min~%float32 x_max~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'PerceiveLargestHorizontalPlane-request)))
  "Returns full string definition for message of type 'PerceiveLargestHorizontalPlane-request"
  (cl:format cl:nil "# if you want to override the default z filter~%bool override_filter_z~%float32 min_z_value~%float32 max_z_value~%~%# if you want to apply an x filter (i.e., side to side)~%bool apply_x_box_filter~%float32 x_min~%float32 x_max~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <PerceiveLargestHorizontalPlane-request>))
  (cl:+ 0
     1
     4
     4
     1
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <PerceiveLargestHorizontalPlane-request>))
  "Converts a ROS message object to a list"
  (cl:list 'PerceiveLargestHorizontalPlane-request
    (cl:cons ':override_filter_z (override_filter_z msg))
    (cl:cons ':min_z_value (min_z_value msg))
    (cl:cons ':max_z_value (max_z_value msg))
    (cl:cons ':apply_x_box_filter (apply_x_box_filter msg))
    (cl:cons ':x_min (x_min msg))
    (cl:cons ':x_max (x_max msg))
))
;//! \htmlinclude PerceiveLargestHorizontalPlane-response.msg.html

(cl:defclass <PerceiveLargestHorizontalPlane-response> (roslisp-msg-protocol:ros-message)
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
   :initform (cl:make-array 4 :element-type 'cl:float :initial-element 0.0)))
)

(cl:defclass PerceiveLargestHorizontalPlane-response (<PerceiveLargestHorizontalPlane-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <PerceiveLargestHorizontalPlane-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'PerceiveLargestHorizontalPlane-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name bwi_perception-srv:<PerceiveLargestHorizontalPlane-response> is deprecated: use bwi_perception-srv:PerceiveLargestHorizontalPlane-response instead.")))

(cl:ensure-generic-function 'is_plane_found-val :lambda-list '(m))
(cl:defmethod is_plane_found-val ((m <PerceiveLargestHorizontalPlane-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader bwi_perception-srv:is_plane_found-val is deprecated.  Use bwi_perception-srv:is_plane_found instead.")
  (is_plane_found m))

(cl:ensure-generic-function 'cloud_plane-val :lambda-list '(m))
(cl:defmethod cloud_plane-val ((m <PerceiveLargestHorizontalPlane-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader bwi_perception-srv:cloud_plane-val is deprecated.  Use bwi_perception-srv:cloud_plane instead.")
  (cloud_plane m))

(cl:ensure-generic-function 'cloud_plane_coef-val :lambda-list '(m))
(cl:defmethod cloud_plane_coef-val ((m <PerceiveLargestHorizontalPlane-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader bwi_perception-srv:cloud_plane_coef-val is deprecated.  Use bwi_perception-srv:cloud_plane_coef instead.")
  (cloud_plane_coef m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <PerceiveLargestHorizontalPlane-response>) ostream)
  "Serializes a message object of type '<PerceiveLargestHorizontalPlane-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'is_plane_found) 1 0)) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'cloud_plane) ostream)
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-single-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)))
   (cl:slot-value msg 'cloud_plane_coef))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <PerceiveLargestHorizontalPlane-response>) istream)
  "Deserializes a message object of type '<PerceiveLargestHorizontalPlane-response>"
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
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<PerceiveLargestHorizontalPlane-response>)))
  "Returns string type for a service object of type '<PerceiveLargestHorizontalPlane-response>"
  "bwi_perception/PerceiveLargestHorizontalPlaneResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'PerceiveLargestHorizontalPlane-response)))
  "Returns string type for a service object of type 'PerceiveLargestHorizontalPlane-response"
  "bwi_perception/PerceiveLargestHorizontalPlaneResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<PerceiveLargestHorizontalPlane-response>)))
  "Returns md5sum for a message object of type '<PerceiveLargestHorizontalPlane-response>"
  "34fffc23b5e8ba50f79d3b901bb1af8e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'PerceiveLargestHorizontalPlane-response)))
  "Returns md5sum for a message object of type 'PerceiveLargestHorizontalPlane-response"
  "34fffc23b5e8ba50f79d3b901bb1af8e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<PerceiveLargestHorizontalPlane-response>)))
  "Returns full string definition for message of type '<PerceiveLargestHorizontalPlane-response>"
  (cl:format cl:nil "bool is_plane_found~%sensor_msgs/PointCloud2 cloud_plane~%float32[4] cloud_plane_coef~%~%~%================================================================================~%MSG: sensor_msgs/PointCloud2~%# This message holds a collection of N-dimensional points, which may~%# contain additional information such as normals, intensity, etc. The~%# point data is stored as a binary blob, its layout described by the~%# contents of the \"fields\" array.~%~%# The point cloud data may be organized 2d (image-like) or 1d~%# (unordered). Point clouds organized as 2d images may be produced by~%# camera depth sensors such as stereo or time-of-flight.~%~%# Time of sensor data acquisition, and the coordinate frame ID (for 3d~%# points).~%Header header~%~%# 2D structure of the point cloud. If the cloud is unordered, height is~%# 1 and width is the length of the point cloud.~%uint32 height~%uint32 width~%~%# Describes the channels and their layout in the binary data blob.~%PointField[] fields~%~%bool    is_bigendian # Is this data bigendian?~%uint32  point_step   # Length of a point in bytes~%uint32  row_step     # Length of a row in bytes~%uint8[] data         # Actual point data, size is (row_step*height)~%~%bool is_dense        # True if there are no invalid points~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: sensor_msgs/PointField~%# This message holds the description of one point entry in the~%# PointCloud2 message format.~%uint8 INT8    = 1~%uint8 UINT8   = 2~%uint8 INT16   = 3~%uint8 UINT16  = 4~%uint8 INT32   = 5~%uint8 UINT32  = 6~%uint8 FLOAT32 = 7~%uint8 FLOAT64 = 8~%~%string name      # Name of field~%uint32 offset    # Offset from start of point struct~%uint8  datatype  # Datatype enumeration, see above~%uint32 count     # How many elements in the field~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'PerceiveLargestHorizontalPlane-response)))
  "Returns full string definition for message of type 'PerceiveLargestHorizontalPlane-response"
  (cl:format cl:nil "bool is_plane_found~%sensor_msgs/PointCloud2 cloud_plane~%float32[4] cloud_plane_coef~%~%~%================================================================================~%MSG: sensor_msgs/PointCloud2~%# This message holds a collection of N-dimensional points, which may~%# contain additional information such as normals, intensity, etc. The~%# point data is stored as a binary blob, its layout described by the~%# contents of the \"fields\" array.~%~%# The point cloud data may be organized 2d (image-like) or 1d~%# (unordered). Point clouds organized as 2d images may be produced by~%# camera depth sensors such as stereo or time-of-flight.~%~%# Time of sensor data acquisition, and the coordinate frame ID (for 3d~%# points).~%Header header~%~%# 2D structure of the point cloud. If the cloud is unordered, height is~%# 1 and width is the length of the point cloud.~%uint32 height~%uint32 width~%~%# Describes the channels and their layout in the binary data blob.~%PointField[] fields~%~%bool    is_bigendian # Is this data bigendian?~%uint32  point_step   # Length of a point in bytes~%uint32  row_step     # Length of a row in bytes~%uint8[] data         # Actual point data, size is (row_step*height)~%~%bool is_dense        # True if there are no invalid points~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: sensor_msgs/PointField~%# This message holds the description of one point entry in the~%# PointCloud2 message format.~%uint8 INT8    = 1~%uint8 UINT8   = 2~%uint8 INT16   = 3~%uint8 UINT16  = 4~%uint8 INT32   = 5~%uint8 UINT32  = 6~%uint8 FLOAT32 = 7~%uint8 FLOAT64 = 8~%~%string name      # Name of field~%uint32 offset    # Offset from start of point struct~%uint8  datatype  # Datatype enumeration, see above~%uint32 count     # How many elements in the field~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <PerceiveLargestHorizontalPlane-response>))
  (cl:+ 0
     1
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'cloud_plane))
     0 (cl:reduce #'cl:+ (cl:slot-value msg 'cloud_plane_coef) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <PerceiveLargestHorizontalPlane-response>))
  "Converts a ROS message object to a list"
  (cl:list 'PerceiveLargestHorizontalPlane-response
    (cl:cons ':is_plane_found (is_plane_found msg))
    (cl:cons ':cloud_plane (cloud_plane msg))
    (cl:cons ':cloud_plane_coef (cloud_plane_coef msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'PerceiveLargestHorizontalPlane)))
  'PerceiveLargestHorizontalPlane-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'PerceiveLargestHorizontalPlane)))
  'PerceiveLargestHorizontalPlane-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'PerceiveLargestHorizontalPlane)))
  "Returns string type for a service object of type '<PerceiveLargestHorizontalPlane>"
  "bwi_perception/PerceiveLargestHorizontalPlane")