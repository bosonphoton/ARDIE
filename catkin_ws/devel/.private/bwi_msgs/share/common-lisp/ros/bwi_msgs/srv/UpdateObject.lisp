; Auto-generated. Do not edit!


(cl:in-package bwi_msgs-srv)


;//! \htmlinclude UpdateObject-request.msg.html

(cl:defclass <UpdateObject-request> (roslisp-msg-protocol:ros-message)
  ((object_name
    :reader object_name
    :initarg :object_name
    :type cl:string
    :initform "")
   (pose
    :reader pose
    :initarg :pose
    :type geometry_msgs-msg:Pose
    :initform (cl:make-instance 'geometry_msgs-msg:Pose))
   (type
    :reader type
    :initarg :type
    :type cl:integer
    :initform 0))
)

(cl:defclass UpdateObject-request (<UpdateObject-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <UpdateObject-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'UpdateObject-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name bwi_msgs-srv:<UpdateObject-request> is deprecated: use bwi_msgs-srv:UpdateObject-request instead.")))

(cl:ensure-generic-function 'object_name-val :lambda-list '(m))
(cl:defmethod object_name-val ((m <UpdateObject-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader bwi_msgs-srv:object_name-val is deprecated.  Use bwi_msgs-srv:object_name instead.")
  (object_name m))

(cl:ensure-generic-function 'pose-val :lambda-list '(m))
(cl:defmethod pose-val ((m <UpdateObject-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader bwi_msgs-srv:pose-val is deprecated.  Use bwi_msgs-srv:pose instead.")
  (pose m))

(cl:ensure-generic-function 'type-val :lambda-list '(m))
(cl:defmethod type-val ((m <UpdateObject-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader bwi_msgs-srv:type-val is deprecated.  Use bwi_msgs-srv:type instead.")
  (type m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<UpdateObject-request>)))
    "Constants for message type '<UpdateObject-request>"
  '((:UPDATE . 0)
    (:REMOVE . 1))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'UpdateObject-request)))
    "Constants for message type 'UpdateObject-request"
  '((:UPDATE . 0)
    (:REMOVE . 1))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <UpdateObject-request>) ostream)
  "Serializes a message object of type '<UpdateObject-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'object_name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'object_name))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'pose) ostream)
  (cl:let* ((signed (cl:slot-value msg 'type)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <UpdateObject-request>) istream)
  "Deserializes a message object of type '<UpdateObject-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'object_name) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'object_name) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'pose) istream)
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'type) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<UpdateObject-request>)))
  "Returns string type for a service object of type '<UpdateObject-request>"
  "bwi_msgs/UpdateObjectRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'UpdateObject-request)))
  "Returns string type for a service object of type 'UpdateObject-request"
  "bwi_msgs/UpdateObjectRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<UpdateObject-request>)))
  "Returns md5sum for a message object of type '<UpdateObject-request>"
  "0430080c34a0e759837456f589ece57f")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'UpdateObject-request)))
  "Returns md5sum for a message object of type 'UpdateObject-request"
  "0430080c34a0e759837456f589ece57f")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<UpdateObject-request>)))
  "Returns full string definition for message of type '<UpdateObject-request>"
  (cl:format cl:nil "int32 UPDATE = 0~%int32 REMOVE = 1~%~%string object_name~%geometry_msgs/Pose pose~%int32 type~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'UpdateObject-request)))
  "Returns full string definition for message of type 'UpdateObject-request"
  (cl:format cl:nil "int32 UPDATE = 0~%int32 REMOVE = 1~%~%string object_name~%geometry_msgs/Pose pose~%int32 type~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <UpdateObject-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'object_name))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'pose))
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <UpdateObject-request>))
  "Converts a ROS message object to a list"
  (cl:list 'UpdateObject-request
    (cl:cons ':object_name (object_name msg))
    (cl:cons ':pose (pose msg))
    (cl:cons ':type (type msg))
))
;//! \htmlinclude UpdateObject-response.msg.html

(cl:defclass <UpdateObject-response> (roslisp-msg-protocol:ros-message)
  ((success
    :reader success
    :initarg :success
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass UpdateObject-response (<UpdateObject-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <UpdateObject-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'UpdateObject-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name bwi_msgs-srv:<UpdateObject-response> is deprecated: use bwi_msgs-srv:UpdateObject-response instead.")))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <UpdateObject-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader bwi_msgs-srv:success-val is deprecated.  Use bwi_msgs-srv:success instead.")
  (success m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <UpdateObject-response>) ostream)
  "Serializes a message object of type '<UpdateObject-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <UpdateObject-response>) istream)
  "Deserializes a message object of type '<UpdateObject-response>"
    (cl:setf (cl:slot-value msg 'success) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<UpdateObject-response>)))
  "Returns string type for a service object of type '<UpdateObject-response>"
  "bwi_msgs/UpdateObjectResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'UpdateObject-response)))
  "Returns string type for a service object of type 'UpdateObject-response"
  "bwi_msgs/UpdateObjectResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<UpdateObject-response>)))
  "Returns md5sum for a message object of type '<UpdateObject-response>"
  "0430080c34a0e759837456f589ece57f")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'UpdateObject-response)))
  "Returns md5sum for a message object of type 'UpdateObject-response"
  "0430080c34a0e759837456f589ece57f")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<UpdateObject-response>)))
  "Returns full string definition for message of type '<UpdateObject-response>"
  (cl:format cl:nil "bool success~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'UpdateObject-response)))
  "Returns full string definition for message of type 'UpdateObject-response"
  (cl:format cl:nil "bool success~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <UpdateObject-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <UpdateObject-response>))
  "Converts a ROS message object to a list"
  (cl:list 'UpdateObject-response
    (cl:cons ':success (success msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'UpdateObject)))
  'UpdateObject-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'UpdateObject)))
  'UpdateObject-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'UpdateObject)))
  "Returns string type for a service object of type '<UpdateObject>"
  "bwi_msgs/UpdateObject")