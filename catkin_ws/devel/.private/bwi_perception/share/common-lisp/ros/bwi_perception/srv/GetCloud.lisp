; Auto-generated. Do not edit!


(cl:in-package bwi_perception-srv)


;//! \htmlinclude GetCloud-request.msg.html

(cl:defclass <GetCloud-request> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass GetCloud-request (<GetCloud-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetCloud-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetCloud-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name bwi_perception-srv:<GetCloud-request> is deprecated: use bwi_perception-srv:GetCloud-request instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetCloud-request>) ostream)
  "Serializes a message object of type '<GetCloud-request>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetCloud-request>) istream)
  "Deserializes a message object of type '<GetCloud-request>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetCloud-request>)))
  "Returns string type for a service object of type '<GetCloud-request>"
  "bwi_perception/GetCloudRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetCloud-request)))
  "Returns string type for a service object of type 'GetCloud-request"
  "bwi_perception/GetCloudRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetCloud-request>)))
  "Returns md5sum for a message object of type '<GetCloud-request>"
  "96cec5374164b3b3d1d7ef5d7628a7ed")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetCloud-request)))
  "Returns md5sum for a message object of type 'GetCloud-request"
  "96cec5374164b3b3d1d7ef5d7628a7ed")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetCloud-request>)))
  "Returns full string definition for message of type '<GetCloud-request>"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetCloud-request)))
  "Returns full string definition for message of type 'GetCloud-request"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetCloud-request>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetCloud-request>))
  "Converts a ROS message object to a list"
  (cl:list 'GetCloud-request
))
;//! \htmlinclude GetCloud-response.msg.html

(cl:defclass <GetCloud-response> (roslisp-msg-protocol:ros-message)
  ((cloud
    :reader cloud
    :initarg :cloud
    :type sensor_msgs-msg:PointCloud2
    :initform (cl:make-instance 'sensor_msgs-msg:PointCloud2)))
)

(cl:defclass GetCloud-response (<GetCloud-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetCloud-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetCloud-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name bwi_perception-srv:<GetCloud-response> is deprecated: use bwi_perception-srv:GetCloud-response instead.")))

(cl:ensure-generic-function 'cloud-val :lambda-list '(m))
(cl:defmethod cloud-val ((m <GetCloud-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader bwi_perception-srv:cloud-val is deprecated.  Use bwi_perception-srv:cloud instead.")
  (cloud m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetCloud-response>) ostream)
  "Serializes a message object of type '<GetCloud-response>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'cloud) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetCloud-response>) istream)
  "Deserializes a message object of type '<GetCloud-response>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'cloud) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetCloud-response>)))
  "Returns string type for a service object of type '<GetCloud-response>"
  "bwi_perception/GetCloudResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetCloud-response)))
  "Returns string type for a service object of type 'GetCloud-response"
  "bwi_perception/GetCloudResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetCloud-response>)))
  "Returns md5sum for a message object of type '<GetCloud-response>"
  "96cec5374164b3b3d1d7ef5d7628a7ed")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetCloud-response)))
  "Returns md5sum for a message object of type 'GetCloud-response"
  "96cec5374164b3b3d1d7ef5d7628a7ed")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetCloud-response>)))
  "Returns full string definition for message of type '<GetCloud-response>"
  (cl:format cl:nil "sensor_msgs/PointCloud2 cloud~%~%~%================================================================================~%MSG: sensor_msgs/PointCloud2~%# This message holds a collection of N-dimensional points, which may~%# contain additional information such as normals, intensity, etc. The~%# point data is stored as a binary blob, its layout described by the~%# contents of the \"fields\" array.~%~%# The point cloud data may be organized 2d (image-like) or 1d~%# (unordered). Point clouds organized as 2d images may be produced by~%# camera depth sensors such as stereo or time-of-flight.~%~%# Time of sensor data acquisition, and the coordinate frame ID (for 3d~%# points).~%Header header~%~%# 2D structure of the point cloud. If the cloud is unordered, height is~%# 1 and width is the length of the point cloud.~%uint32 height~%uint32 width~%~%# Describes the channels and their layout in the binary data blob.~%PointField[] fields~%~%bool    is_bigendian # Is this data bigendian?~%uint32  point_step   # Length of a point in bytes~%uint32  row_step     # Length of a row in bytes~%uint8[] data         # Actual point data, size is (row_step*height)~%~%bool is_dense        # True if there are no invalid points~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: sensor_msgs/PointField~%# This message holds the description of one point entry in the~%# PointCloud2 message format.~%uint8 INT8    = 1~%uint8 UINT8   = 2~%uint8 INT16   = 3~%uint8 UINT16  = 4~%uint8 INT32   = 5~%uint8 UINT32  = 6~%uint8 FLOAT32 = 7~%uint8 FLOAT64 = 8~%~%string name      # Name of field~%uint32 offset    # Offset from start of point struct~%uint8  datatype  # Datatype enumeration, see above~%uint32 count     # How many elements in the field~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetCloud-response)))
  "Returns full string definition for message of type 'GetCloud-response"
  (cl:format cl:nil "sensor_msgs/PointCloud2 cloud~%~%~%================================================================================~%MSG: sensor_msgs/PointCloud2~%# This message holds a collection of N-dimensional points, which may~%# contain additional information such as normals, intensity, etc. The~%# point data is stored as a binary blob, its layout described by the~%# contents of the \"fields\" array.~%~%# The point cloud data may be organized 2d (image-like) or 1d~%# (unordered). Point clouds organized as 2d images may be produced by~%# camera depth sensors such as stereo or time-of-flight.~%~%# Time of sensor data acquisition, and the coordinate frame ID (for 3d~%# points).~%Header header~%~%# 2D structure of the point cloud. If the cloud is unordered, height is~%# 1 and width is the length of the point cloud.~%uint32 height~%uint32 width~%~%# Describes the channels and their layout in the binary data blob.~%PointField[] fields~%~%bool    is_bigendian # Is this data bigendian?~%uint32  point_step   # Length of a point in bytes~%uint32  row_step     # Length of a row in bytes~%uint8[] data         # Actual point data, size is (row_step*height)~%~%bool is_dense        # True if there are no invalid points~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: sensor_msgs/PointField~%# This message holds the description of one point entry in the~%# PointCloud2 message format.~%uint8 INT8    = 1~%uint8 UINT8   = 2~%uint8 INT16   = 3~%uint8 UINT16  = 4~%uint8 INT32   = 5~%uint8 UINT32  = 6~%uint8 FLOAT32 = 7~%uint8 FLOAT64 = 8~%~%string name      # Name of field~%uint32 offset    # Offset from start of point struct~%uint8  datatype  # Datatype enumeration, see above~%uint32 count     # How many elements in the field~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetCloud-response>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'cloud))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetCloud-response>))
  "Converts a ROS message object to a list"
  (cl:list 'GetCloud-response
    (cl:cons ':cloud (cloud msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'GetCloud)))
  'GetCloud-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'GetCloud)))
  'GetCloud-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetCloud)))
  "Returns string type for a service object of type '<GetCloud>"
  "bwi_perception/GetCloud")