; Auto-generated. Do not edit!


(cl:in-package bwi_perception-srv)


;//! \htmlinclude GetPCD-request.msg.html

(cl:defclass <GetPCD-request> (roslisp-msg-protocol:ros-message)
  ((generalImageFilePath
    :reader generalImageFilePath
    :initarg :generalImageFilePath
    :type cl:string
    :initform ""))
)

(cl:defclass GetPCD-request (<GetPCD-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetPCD-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetPCD-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name bwi_perception-srv:<GetPCD-request> is deprecated: use bwi_perception-srv:GetPCD-request instead.")))

(cl:ensure-generic-function 'generalImageFilePath-val :lambda-list '(m))
(cl:defmethod generalImageFilePath-val ((m <GetPCD-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader bwi_perception-srv:generalImageFilePath-val is deprecated.  Use bwi_perception-srv:generalImageFilePath instead.")
  (generalImageFilePath m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetPCD-request>) ostream)
  "Serializes a message object of type '<GetPCD-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'generalImageFilePath))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'generalImageFilePath))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetPCD-request>) istream)
  "Deserializes a message object of type '<GetPCD-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'generalImageFilePath) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'generalImageFilePath) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetPCD-request>)))
  "Returns string type for a service object of type '<GetPCD-request>"
  "bwi_perception/GetPCDRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetPCD-request)))
  "Returns string type for a service object of type 'GetPCD-request"
  "bwi_perception/GetPCDRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetPCD-request>)))
  "Returns md5sum for a message object of type '<GetPCD-request>"
  "3de2b02c910383f9f40b30a875b5c5f2")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetPCD-request)))
  "Returns md5sum for a message object of type 'GetPCD-request"
  "3de2b02c910383f9f40b30a875b5c5f2")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetPCD-request>)))
  "Returns full string definition for message of type '<GetPCD-request>"
  (cl:format cl:nil "string generalImageFilePath~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetPCD-request)))
  "Returns full string definition for message of type 'GetPCD-request"
  (cl:format cl:nil "string generalImageFilePath~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetPCD-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'generalImageFilePath))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetPCD-request>))
  "Converts a ROS message object to a list"
  (cl:list 'GetPCD-request
    (cl:cons ':generalImageFilePath (generalImageFilePath msg))
))
;//! \htmlinclude GetPCD-response.msg.html

(cl:defclass <GetPCD-response> (roslisp-msg-protocol:ros-message)
  ((success
    :reader success
    :initarg :success
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass GetPCD-response (<GetPCD-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetPCD-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetPCD-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name bwi_perception-srv:<GetPCD-response> is deprecated: use bwi_perception-srv:GetPCD-response instead.")))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <GetPCD-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader bwi_perception-srv:success-val is deprecated.  Use bwi_perception-srv:success instead.")
  (success m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetPCD-response>) ostream)
  "Serializes a message object of type '<GetPCD-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetPCD-response>) istream)
  "Deserializes a message object of type '<GetPCD-response>"
    (cl:setf (cl:slot-value msg 'success) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetPCD-response>)))
  "Returns string type for a service object of type '<GetPCD-response>"
  "bwi_perception/GetPCDResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetPCD-response)))
  "Returns string type for a service object of type 'GetPCD-response"
  "bwi_perception/GetPCDResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetPCD-response>)))
  "Returns md5sum for a message object of type '<GetPCD-response>"
  "3de2b02c910383f9f40b30a875b5c5f2")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetPCD-response)))
  "Returns md5sum for a message object of type 'GetPCD-response"
  "3de2b02c910383f9f40b30a875b5c5f2")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetPCD-response>)))
  "Returns full string definition for message of type '<GetPCD-response>"
  (cl:format cl:nil "bool success~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetPCD-response)))
  "Returns full string definition for message of type 'GetPCD-response"
  (cl:format cl:nil "bool success~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetPCD-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetPCD-response>))
  "Converts a ROS message object to a list"
  (cl:list 'GetPCD-response
    (cl:cons ':success (success msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'GetPCD)))
  'GetPCD-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'GetPCD)))
  'GetPCD-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetPCD)))
  "Returns string type for a service object of type '<GetPCD>"
  "bwi_perception/GetPCD")