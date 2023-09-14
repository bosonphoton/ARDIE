; Auto-generated. Do not edit!


(cl:in-package bwi_perception-srv)


;//! \htmlinclude ButtonDetection-request.msg.html

(cl:defclass <ButtonDetection-request> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass ButtonDetection-request (<ButtonDetection-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ButtonDetection-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ButtonDetection-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name bwi_perception-srv:<ButtonDetection-request> is deprecated: use bwi_perception-srv:ButtonDetection-request instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ButtonDetection-request>) ostream)
  "Serializes a message object of type '<ButtonDetection-request>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ButtonDetection-request>) istream)
  "Deserializes a message object of type '<ButtonDetection-request>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ButtonDetection-request>)))
  "Returns string type for a service object of type '<ButtonDetection-request>"
  "bwi_perception/ButtonDetectionRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ButtonDetection-request)))
  "Returns string type for a service object of type 'ButtonDetection-request"
  "bwi_perception/ButtonDetectionRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ButtonDetection-request>)))
  "Returns md5sum for a message object of type '<ButtonDetection-request>"
  "db92d35083261fda0bc93a2e246a3490")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ButtonDetection-request)))
  "Returns md5sum for a message object of type 'ButtonDetection-request"
  "db92d35083261fda0bc93a2e246a3490")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ButtonDetection-request>)))
  "Returns full string definition for message of type '<ButtonDetection-request>"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ButtonDetection-request)))
  "Returns full string definition for message of type 'ButtonDetection-request"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ButtonDetection-request>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ButtonDetection-request>))
  "Converts a ROS message object to a list"
  (cl:list 'ButtonDetection-request
))
;//! \htmlinclude ButtonDetection-response.msg.html

(cl:defclass <ButtonDetection-response> (roslisp-msg-protocol:ros-message)
  ((button_found
    :reader button_found
    :initarg :button_found
    :type cl:boolean
    :initform cl:nil)
   (cloud_button
    :reader cloud_button
    :initarg :cloud_button
    :type sensor_msgs-msg:PointCloud2
    :initform (cl:make-instance 'sensor_msgs-msg:PointCloud2)))
)

(cl:defclass ButtonDetection-response (<ButtonDetection-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ButtonDetection-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ButtonDetection-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name bwi_perception-srv:<ButtonDetection-response> is deprecated: use bwi_perception-srv:ButtonDetection-response instead.")))

(cl:ensure-generic-function 'button_found-val :lambda-list '(m))
(cl:defmethod button_found-val ((m <ButtonDetection-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader bwi_perception-srv:button_found-val is deprecated.  Use bwi_perception-srv:button_found instead.")
  (button_found m))

(cl:ensure-generic-function 'cloud_button-val :lambda-list '(m))
(cl:defmethod cloud_button-val ((m <ButtonDetection-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader bwi_perception-srv:cloud_button-val is deprecated.  Use bwi_perception-srv:cloud_button instead.")
  (cloud_button m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ButtonDetection-response>) ostream)
  "Serializes a message object of type '<ButtonDetection-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'button_found) 1 0)) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'cloud_button) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ButtonDetection-response>) istream)
  "Deserializes a message object of type '<ButtonDetection-response>"
    (cl:setf (cl:slot-value msg 'button_found) (cl:not (cl:zerop (cl:read-byte istream))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'cloud_button) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ButtonDetection-response>)))
  "Returns string type for a service object of type '<ButtonDetection-response>"
  "bwi_perception/ButtonDetectionResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ButtonDetection-response)))
  "Returns string type for a service object of type 'ButtonDetection-response"
  "bwi_perception/ButtonDetectionResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ButtonDetection-response>)))
  "Returns md5sum for a message object of type '<ButtonDetection-response>"
  "db92d35083261fda0bc93a2e246a3490")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ButtonDetection-response)))
  "Returns md5sum for a message object of type 'ButtonDetection-response"
  "db92d35083261fda0bc93a2e246a3490")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ButtonDetection-response>)))
  "Returns full string definition for message of type '<ButtonDetection-response>"
  (cl:format cl:nil "bool button_found~%sensor_msgs/PointCloud2 cloud_button~%~%~%================================================================================~%MSG: sensor_msgs/PointCloud2~%# This message holds a collection of N-dimensional points, which may~%# contain additional information such as normals, intensity, etc. The~%# point data is stored as a binary blob, its layout described by the~%# contents of the \"fields\" array.~%~%# The point cloud data may be organized 2d (image-like) or 1d~%# (unordered). Point clouds organized as 2d images may be produced by~%# camera depth sensors such as stereo or time-of-flight.~%~%# Time of sensor data acquisition, and the coordinate frame ID (for 3d~%# points).~%Header header~%~%# 2D structure of the point cloud. If the cloud is unordered, height is~%# 1 and width is the length of the point cloud.~%uint32 height~%uint32 width~%~%# Describes the channels and their layout in the binary data blob.~%PointField[] fields~%~%bool    is_bigendian # Is this data bigendian?~%uint32  point_step   # Length of a point in bytes~%uint32  row_step     # Length of a row in bytes~%uint8[] data         # Actual point data, size is (row_step*height)~%~%bool is_dense        # True if there are no invalid points~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: sensor_msgs/PointField~%# This message holds the description of one point entry in the~%# PointCloud2 message format.~%uint8 INT8    = 1~%uint8 UINT8   = 2~%uint8 INT16   = 3~%uint8 UINT16  = 4~%uint8 INT32   = 5~%uint8 UINT32  = 6~%uint8 FLOAT32 = 7~%uint8 FLOAT64 = 8~%~%string name      # Name of field~%uint32 offset    # Offset from start of point struct~%uint8  datatype  # Datatype enumeration, see above~%uint32 count     # How many elements in the field~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ButtonDetection-response)))
  "Returns full string definition for message of type 'ButtonDetection-response"
  (cl:format cl:nil "bool button_found~%sensor_msgs/PointCloud2 cloud_button~%~%~%================================================================================~%MSG: sensor_msgs/PointCloud2~%# This message holds a collection of N-dimensional points, which may~%# contain additional information such as normals, intensity, etc. The~%# point data is stored as a binary blob, its layout described by the~%# contents of the \"fields\" array.~%~%# The point cloud data may be organized 2d (image-like) or 1d~%# (unordered). Point clouds organized as 2d images may be produced by~%# camera depth sensors such as stereo or time-of-flight.~%~%# Time of sensor data acquisition, and the coordinate frame ID (for 3d~%# points).~%Header header~%~%# 2D structure of the point cloud. If the cloud is unordered, height is~%# 1 and width is the length of the point cloud.~%uint32 height~%uint32 width~%~%# Describes the channels and their layout in the binary data blob.~%PointField[] fields~%~%bool    is_bigendian # Is this data bigendian?~%uint32  point_step   # Length of a point in bytes~%uint32  row_step     # Length of a row in bytes~%uint8[] data         # Actual point data, size is (row_step*height)~%~%bool is_dense        # True if there are no invalid points~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: sensor_msgs/PointField~%# This message holds the description of one point entry in the~%# PointCloud2 message format.~%uint8 INT8    = 1~%uint8 UINT8   = 2~%uint8 INT16   = 3~%uint8 UINT16  = 4~%uint8 INT32   = 5~%uint8 UINT32  = 6~%uint8 FLOAT32 = 7~%uint8 FLOAT64 = 8~%~%string name      # Name of field~%uint32 offset    # Offset from start of point struct~%uint8  datatype  # Datatype enumeration, see above~%uint32 count     # How many elements in the field~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ButtonDetection-response>))
  (cl:+ 0
     1
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'cloud_button))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ButtonDetection-response>))
  "Converts a ROS message object to a list"
  (cl:list 'ButtonDetection-response
    (cl:cons ':button_found (button_found msg))
    (cl:cons ':cloud_button (cloud_button msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'ButtonDetection)))
  'ButtonDetection-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'ButtonDetection)))
  'ButtonDetection-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ButtonDetection)))
  "Returns string type for a service object of type '<ButtonDetection>"
  "bwi_perception/ButtonDetection")