; Auto-generated. Do not edit!


(cl:in-package bwi_perception-srv)


;//! \htmlinclude SetObstacles-request.msg.html

(cl:defclass <SetObstacles-request> (roslisp-msg-protocol:ros-message)
  ((clouds
    :reader clouds
    :initarg :clouds
    :type (cl:vector sensor_msgs-msg:PointCloud2)
   :initform (cl:make-array 0 :element-type 'sensor_msgs-msg:PointCloud2 :initial-element (cl:make-instance 'sensor_msgs-msg:PointCloud2))))
)

(cl:defclass SetObstacles-request (<SetObstacles-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SetObstacles-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SetObstacles-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name bwi_perception-srv:<SetObstacles-request> is deprecated: use bwi_perception-srv:SetObstacles-request instead.")))

(cl:ensure-generic-function 'clouds-val :lambda-list '(m))
(cl:defmethod clouds-val ((m <SetObstacles-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader bwi_perception-srv:clouds-val is deprecated.  Use bwi_perception-srv:clouds instead.")
  (clouds m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SetObstacles-request>) ostream)
  "Serializes a message object of type '<SetObstacles-request>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'clouds))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'clouds))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SetObstacles-request>) istream)
  "Deserializes a message object of type '<SetObstacles-request>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'clouds) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'clouds)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'sensor_msgs-msg:PointCloud2))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SetObstacles-request>)))
  "Returns string type for a service object of type '<SetObstacles-request>"
  "bwi_perception/SetObstaclesRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetObstacles-request)))
  "Returns string type for a service object of type 'SetObstacles-request"
  "bwi_perception/SetObstaclesRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SetObstacles-request>)))
  "Returns md5sum for a message object of type '<SetObstacles-request>"
  "b40bb4c28dbdff808de1bbeb0ba75c7d")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SetObstacles-request)))
  "Returns md5sum for a message object of type 'SetObstacles-request"
  "b40bb4c28dbdff808de1bbeb0ba75c7d")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SetObstacles-request>)))
  "Returns full string definition for message of type '<SetObstacles-request>"
  (cl:format cl:nil "sensor_msgs/PointCloud2[] clouds~%~%================================================================================~%MSG: sensor_msgs/PointCloud2~%# This message holds a collection of N-dimensional points, which may~%# contain additional information such as normals, intensity, etc. The~%# point data is stored as a binary blob, its layout described by the~%# contents of the \"fields\" array.~%~%# The point cloud data may be organized 2d (image-like) or 1d~%# (unordered). Point clouds organized as 2d images may be produced by~%# camera depth sensors such as stereo or time-of-flight.~%~%# Time of sensor data acquisition, and the coordinate frame ID (for 3d~%# points).~%Header header~%~%# 2D structure of the point cloud. If the cloud is unordered, height is~%# 1 and width is the length of the point cloud.~%uint32 height~%uint32 width~%~%# Describes the channels and their layout in the binary data blob.~%PointField[] fields~%~%bool    is_bigendian # Is this data bigendian?~%uint32  point_step   # Length of a point in bytes~%uint32  row_step     # Length of a row in bytes~%uint8[] data         # Actual point data, size is (row_step*height)~%~%bool is_dense        # True if there are no invalid points~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: sensor_msgs/PointField~%# This message holds the description of one point entry in the~%# PointCloud2 message format.~%uint8 INT8    = 1~%uint8 UINT8   = 2~%uint8 INT16   = 3~%uint8 UINT16  = 4~%uint8 INT32   = 5~%uint8 UINT32  = 6~%uint8 FLOAT32 = 7~%uint8 FLOAT64 = 8~%~%string name      # Name of field~%uint32 offset    # Offset from start of point struct~%uint8  datatype  # Datatype enumeration, see above~%uint32 count     # How many elements in the field~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SetObstacles-request)))
  "Returns full string definition for message of type 'SetObstacles-request"
  (cl:format cl:nil "sensor_msgs/PointCloud2[] clouds~%~%================================================================================~%MSG: sensor_msgs/PointCloud2~%# This message holds a collection of N-dimensional points, which may~%# contain additional information such as normals, intensity, etc. The~%# point data is stored as a binary blob, its layout described by the~%# contents of the \"fields\" array.~%~%# The point cloud data may be organized 2d (image-like) or 1d~%# (unordered). Point clouds organized as 2d images may be produced by~%# camera depth sensors such as stereo or time-of-flight.~%~%# Time of sensor data acquisition, and the coordinate frame ID (for 3d~%# points).~%Header header~%~%# 2D structure of the point cloud. If the cloud is unordered, height is~%# 1 and width is the length of the point cloud.~%uint32 height~%uint32 width~%~%# Describes the channels and their layout in the binary data blob.~%PointField[] fields~%~%bool    is_bigendian # Is this data bigendian?~%uint32  point_step   # Length of a point in bytes~%uint32  row_step     # Length of a row in bytes~%uint8[] data         # Actual point data, size is (row_step*height)~%~%bool is_dense        # True if there are no invalid points~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: sensor_msgs/PointField~%# This message holds the description of one point entry in the~%# PointCloud2 message format.~%uint8 INT8    = 1~%uint8 UINT8   = 2~%uint8 INT16   = 3~%uint8 UINT16  = 4~%uint8 INT32   = 5~%uint8 UINT32  = 6~%uint8 FLOAT32 = 7~%uint8 FLOAT64 = 8~%~%string name      # Name of field~%uint32 offset    # Offset from start of point struct~%uint8  datatype  # Datatype enumeration, see above~%uint32 count     # How many elements in the field~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SetObstacles-request>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'clouds) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SetObstacles-request>))
  "Converts a ROS message object to a list"
  (cl:list 'SetObstacles-request
    (cl:cons ':clouds (clouds msg))
))
;//! \htmlinclude SetObstacles-response.msg.html

(cl:defclass <SetObstacles-response> (roslisp-msg-protocol:ros-message)
  ((response
    :reader response
    :initarg :response
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass SetObstacles-response (<SetObstacles-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SetObstacles-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SetObstacles-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name bwi_perception-srv:<SetObstacles-response> is deprecated: use bwi_perception-srv:SetObstacles-response instead.")))

(cl:ensure-generic-function 'response-val :lambda-list '(m))
(cl:defmethod response-val ((m <SetObstacles-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader bwi_perception-srv:response-val is deprecated.  Use bwi_perception-srv:response instead.")
  (response m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SetObstacles-response>) ostream)
  "Serializes a message object of type '<SetObstacles-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'response) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SetObstacles-response>) istream)
  "Deserializes a message object of type '<SetObstacles-response>"
    (cl:setf (cl:slot-value msg 'response) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SetObstacles-response>)))
  "Returns string type for a service object of type '<SetObstacles-response>"
  "bwi_perception/SetObstaclesResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetObstacles-response)))
  "Returns string type for a service object of type 'SetObstacles-response"
  "bwi_perception/SetObstaclesResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SetObstacles-response>)))
  "Returns md5sum for a message object of type '<SetObstacles-response>"
  "b40bb4c28dbdff808de1bbeb0ba75c7d")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SetObstacles-response)))
  "Returns md5sum for a message object of type 'SetObstacles-response"
  "b40bb4c28dbdff808de1bbeb0ba75c7d")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SetObstacles-response>)))
  "Returns full string definition for message of type '<SetObstacles-response>"
  (cl:format cl:nil "bool response~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SetObstacles-response)))
  "Returns full string definition for message of type 'SetObstacles-response"
  (cl:format cl:nil "bool response~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SetObstacles-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SetObstacles-response>))
  "Converts a ROS message object to a list"
  (cl:list 'SetObstacles-response
    (cl:cons ':response (response msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'SetObstacles)))
  'SetObstacles-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'SetObstacles)))
  'SetObstacles-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetObstacles)))
  "Returns string type for a service object of type '<SetObstacles>"
  "bwi_perception/SetObstacles")