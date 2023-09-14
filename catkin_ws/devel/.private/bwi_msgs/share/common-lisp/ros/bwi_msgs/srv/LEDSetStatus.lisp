; Auto-generated. Do not edit!


(cl:in-package bwi_msgs-srv)


;//! \htmlinclude LEDSetStatus-request.msg.html

(cl:defclass <LEDSetStatus-request> (roslisp-msg-protocol:ros-message)
  ((type
    :reader type
    :initarg :type
    :type bwi_msgs-msg:LEDStatus
    :initform (cl:make-instance 'bwi_msgs-msg:LEDStatus)))
)

(cl:defclass LEDSetStatus-request (<LEDSetStatus-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <LEDSetStatus-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'LEDSetStatus-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name bwi_msgs-srv:<LEDSetStatus-request> is deprecated: use bwi_msgs-srv:LEDSetStatus-request instead.")))

(cl:ensure-generic-function 'type-val :lambda-list '(m))
(cl:defmethod type-val ((m <LEDSetStatus-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader bwi_msgs-srv:type-val is deprecated.  Use bwi_msgs-srv:type instead.")
  (type m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <LEDSetStatus-request>) ostream)
  "Serializes a message object of type '<LEDSetStatus-request>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'type) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <LEDSetStatus-request>) istream)
  "Deserializes a message object of type '<LEDSetStatus-request>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'type) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<LEDSetStatus-request>)))
  "Returns string type for a service object of type '<LEDSetStatus-request>"
  "bwi_msgs/LEDSetStatusRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'LEDSetStatus-request)))
  "Returns string type for a service object of type 'LEDSetStatus-request"
  "bwi_msgs/LEDSetStatusRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<LEDSetStatus-request>)))
  "Returns md5sum for a message object of type '<LEDSetStatus-request>"
  "d7fccd8c755ec75bb63839fded669f45")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'LEDSetStatus-request)))
  "Returns md5sum for a message object of type 'LEDSetStatus-request"
  "d7fccd8c755ec75bb63839fded669f45")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<LEDSetStatus-request>)))
  "Returns full string definition for message of type '<LEDSetStatus-request>"
  (cl:format cl:nil "bwi_msgs/LEDStatus type~%~%================================================================================~%MSG: bwi_msgs/LEDStatus~%# LED Status~%~%# Service Variables~%uint8 RUN_ON = 1~%uint8 RUN_OFF = 0~%uint8 CAMERA_ON = 3~%uint8 CAMERA_OFF = 2~%~%# Selects which animation to execute~%~%uint8 status~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'LEDSetStatus-request)))
  "Returns full string definition for message of type 'LEDSetStatus-request"
  (cl:format cl:nil "bwi_msgs/LEDStatus type~%~%================================================================================~%MSG: bwi_msgs/LEDStatus~%# LED Status~%~%# Service Variables~%uint8 RUN_ON = 1~%uint8 RUN_OFF = 0~%uint8 CAMERA_ON = 3~%uint8 CAMERA_OFF = 2~%~%# Selects which animation to execute~%~%uint8 status~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <LEDSetStatus-request>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'type))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <LEDSetStatus-request>))
  "Converts a ROS message object to a list"
  (cl:list 'LEDSetStatus-request
    (cl:cons ':type (type msg))
))
;//! \htmlinclude LEDSetStatus-response.msg.html

(cl:defclass <LEDSetStatus-response> (roslisp-msg-protocol:ros-message)
  ((success
    :reader success
    :initarg :success
    :type cl:boolean
    :initform cl:nil)
   (status
    :reader status
    :initarg :status
    :type cl:string
    :initform ""))
)

(cl:defclass LEDSetStatus-response (<LEDSetStatus-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <LEDSetStatus-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'LEDSetStatus-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name bwi_msgs-srv:<LEDSetStatus-response> is deprecated: use bwi_msgs-srv:LEDSetStatus-response instead.")))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <LEDSetStatus-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader bwi_msgs-srv:success-val is deprecated.  Use bwi_msgs-srv:success instead.")
  (success m))

(cl:ensure-generic-function 'status-val :lambda-list '(m))
(cl:defmethod status-val ((m <LEDSetStatus-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader bwi_msgs-srv:status-val is deprecated.  Use bwi_msgs-srv:status instead.")
  (status m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <LEDSetStatus-response>) ostream)
  "Serializes a message object of type '<LEDSetStatus-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'status))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'status))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <LEDSetStatus-response>) istream)
  "Deserializes a message object of type '<LEDSetStatus-response>"
    (cl:setf (cl:slot-value msg 'success) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'status) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'status) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<LEDSetStatus-response>)))
  "Returns string type for a service object of type '<LEDSetStatus-response>"
  "bwi_msgs/LEDSetStatusResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'LEDSetStatus-response)))
  "Returns string type for a service object of type 'LEDSetStatus-response"
  "bwi_msgs/LEDSetStatusResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<LEDSetStatus-response>)))
  "Returns md5sum for a message object of type '<LEDSetStatus-response>"
  "d7fccd8c755ec75bb63839fded669f45")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'LEDSetStatus-response)))
  "Returns md5sum for a message object of type 'LEDSetStatus-response"
  "d7fccd8c755ec75bb63839fded669f45")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<LEDSetStatus-response>)))
  "Returns full string definition for message of type '<LEDSetStatus-response>"
  (cl:format cl:nil "bool success~%string status~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'LEDSetStatus-response)))
  "Returns full string definition for message of type 'LEDSetStatus-response"
  (cl:format cl:nil "bool success~%string status~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <LEDSetStatus-response>))
  (cl:+ 0
     1
     4 (cl:length (cl:slot-value msg 'status))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <LEDSetStatus-response>))
  "Converts a ROS message object to a list"
  (cl:list 'LEDSetStatus-response
    (cl:cons ':success (success msg))
    (cl:cons ':status (status msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'LEDSetStatus)))
  'LEDSetStatus-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'LEDSetStatus)))
  'LEDSetStatus-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'LEDSetStatus)))
  "Returns string type for a service object of type '<LEDSetStatus>"
  "bwi_msgs/LEDSetStatus")