; Auto-generated. Do not edit!


(cl:in-package bwi_msgs-srv)


;//! \htmlinclude CheckBool-request.msg.html

(cl:defclass <CheckBool-request> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass CheckBool-request (<CheckBool-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <CheckBool-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'CheckBool-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name bwi_msgs-srv:<CheckBool-request> is deprecated: use bwi_msgs-srv:CheckBool-request instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <CheckBool-request>) ostream)
  "Serializes a message object of type '<CheckBool-request>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <CheckBool-request>) istream)
  "Deserializes a message object of type '<CheckBool-request>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<CheckBool-request>)))
  "Returns string type for a service object of type '<CheckBool-request>"
  "bwi_msgs/CheckBoolRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'CheckBool-request)))
  "Returns string type for a service object of type 'CheckBool-request"
  "bwi_msgs/CheckBoolRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<CheckBool-request>)))
  "Returns md5sum for a message object of type '<CheckBool-request>"
  "e431d687bf4b2c65fbd94b12ae0cb5d9")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'CheckBool-request)))
  "Returns md5sum for a message object of type 'CheckBool-request"
  "e431d687bf4b2c65fbd94b12ae0cb5d9")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<CheckBool-request>)))
  "Returns full string definition for message of type '<CheckBool-request>"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'CheckBool-request)))
  "Returns full string definition for message of type 'CheckBool-request"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <CheckBool-request>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <CheckBool-request>))
  "Converts a ROS message object to a list"
  (cl:list 'CheckBool-request
))
;//! \htmlinclude CheckBool-response.msg.html

(cl:defclass <CheckBool-response> (roslisp-msg-protocol:ros-message)
  ((value
    :reader value
    :initarg :value
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass CheckBool-response (<CheckBool-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <CheckBool-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'CheckBool-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name bwi_msgs-srv:<CheckBool-response> is deprecated: use bwi_msgs-srv:CheckBool-response instead.")))

(cl:ensure-generic-function 'value-val :lambda-list '(m))
(cl:defmethod value-val ((m <CheckBool-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader bwi_msgs-srv:value-val is deprecated.  Use bwi_msgs-srv:value instead.")
  (value m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <CheckBool-response>) ostream)
  "Serializes a message object of type '<CheckBool-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'value) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <CheckBool-response>) istream)
  "Deserializes a message object of type '<CheckBool-response>"
    (cl:setf (cl:slot-value msg 'value) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<CheckBool-response>)))
  "Returns string type for a service object of type '<CheckBool-response>"
  "bwi_msgs/CheckBoolResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'CheckBool-response)))
  "Returns string type for a service object of type 'CheckBool-response"
  "bwi_msgs/CheckBoolResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<CheckBool-response>)))
  "Returns md5sum for a message object of type '<CheckBool-response>"
  "e431d687bf4b2c65fbd94b12ae0cb5d9")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'CheckBool-response)))
  "Returns md5sum for a message object of type 'CheckBool-response"
  "e431d687bf4b2c65fbd94b12ae0cb5d9")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<CheckBool-response>)))
  "Returns full string definition for message of type '<CheckBool-response>"
  (cl:format cl:nil "bool value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'CheckBool-response)))
  "Returns full string definition for message of type 'CheckBool-response"
  (cl:format cl:nil "bool value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <CheckBool-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <CheckBool-response>))
  "Converts a ROS message object to a list"
  (cl:list 'CheckBool-response
    (cl:cons ':value (value msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'CheckBool)))
  'CheckBool-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'CheckBool)))
  'CheckBool-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'CheckBool)))
  "Returns string type for a service object of type '<CheckBool>"
  "bwi_msgs/CheckBool")