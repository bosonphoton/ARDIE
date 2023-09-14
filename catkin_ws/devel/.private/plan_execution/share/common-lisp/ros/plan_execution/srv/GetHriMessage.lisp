; Auto-generated. Do not edit!


(cl:in-package plan_execution-srv)


;//! \htmlinclude GetHriMessage-request.msg.html

(cl:defclass <GetHriMessage-request> (roslisp-msg-protocol:ros-message)
  ((message_id
    :reader message_id
    :initarg :message_id
    :type cl:string
    :initform ""))
)

(cl:defclass GetHriMessage-request (<GetHriMessage-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetHriMessage-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetHriMessage-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name plan_execution-srv:<GetHriMessage-request> is deprecated: use plan_execution-srv:GetHriMessage-request instead.")))

(cl:ensure-generic-function 'message_id-val :lambda-list '(m))
(cl:defmethod message_id-val ((m <GetHriMessage-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader plan_execution-srv:message_id-val is deprecated.  Use plan_execution-srv:message_id instead.")
  (message_id m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetHriMessage-request>) ostream)
  "Serializes a message object of type '<GetHriMessage-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'message_id))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'message_id))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetHriMessage-request>) istream)
  "Deserializes a message object of type '<GetHriMessage-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'message_id) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'message_id) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetHriMessage-request>)))
  "Returns string type for a service object of type '<GetHriMessage-request>"
  "plan_execution/GetHriMessageRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetHriMessage-request)))
  "Returns string type for a service object of type 'GetHriMessage-request"
  "plan_execution/GetHriMessageRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetHriMessage-request>)))
  "Returns md5sum for a message object of type '<GetHriMessage-request>"
  "09269fe575715249f3753f62218a600a")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetHriMessage-request)))
  "Returns md5sum for a message object of type 'GetHriMessage-request"
  "09269fe575715249f3753f62218a600a")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetHriMessage-request>)))
  "Returns full string definition for message of type '<GetHriMessage-request>"
  (cl:format cl:nil "string message_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetHriMessage-request)))
  "Returns full string definition for message of type 'GetHriMessage-request"
  (cl:format cl:nil "string message_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetHriMessage-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'message_id))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetHriMessage-request>))
  "Converts a ROS message object to a list"
  (cl:list 'GetHriMessage-request
    (cl:cons ':message_id (message_id msg))
))
;//! \htmlinclude GetHriMessage-response.msg.html

(cl:defclass <GetHriMessage-response> (roslisp-msg-protocol:ros-message)
  ((message
    :reader message
    :initarg :message
    :type plan_execution-msg:HriMessage
    :initform (cl:make-instance 'plan_execution-msg:HriMessage)))
)

(cl:defclass GetHriMessage-response (<GetHriMessage-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetHriMessage-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetHriMessage-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name plan_execution-srv:<GetHriMessage-response> is deprecated: use plan_execution-srv:GetHriMessage-response instead.")))

(cl:ensure-generic-function 'message-val :lambda-list '(m))
(cl:defmethod message-val ((m <GetHriMessage-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader plan_execution-srv:message-val is deprecated.  Use plan_execution-srv:message instead.")
  (message m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetHriMessage-response>) ostream)
  "Serializes a message object of type '<GetHriMessage-response>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'message) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetHriMessage-response>) istream)
  "Deserializes a message object of type '<GetHriMessage-response>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'message) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetHriMessage-response>)))
  "Returns string type for a service object of type '<GetHriMessage-response>"
  "plan_execution/GetHriMessageResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetHriMessage-response)))
  "Returns string type for a service object of type 'GetHriMessage-response"
  "plan_execution/GetHriMessageResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetHriMessage-response>)))
  "Returns md5sum for a message object of type '<GetHriMessage-response>"
  "09269fe575715249f3753f62218a600a")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetHriMessage-response)))
  "Returns md5sum for a message object of type 'GetHriMessage-response"
  "09269fe575715249f3753f62218a600a")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetHriMessage-response>)))
  "Returns full string definition for message of type '<GetHriMessage-response>"
  (cl:format cl:nil "HriMessage message~%~%================================================================================~%MSG: plan_execution/HriMessage~%string id~%string content~%string from~%string to~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetHriMessage-response)))
  "Returns full string definition for message of type 'GetHriMessage-response"
  (cl:format cl:nil "HriMessage message~%~%================================================================================~%MSG: plan_execution/HriMessage~%string id~%string content~%string from~%string to~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetHriMessage-response>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'message))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetHriMessage-response>))
  "Converts a ROS message object to a list"
  (cl:list 'GetHriMessage-response
    (cl:cons ':message (message msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'GetHriMessage)))
  'GetHriMessage-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'GetHriMessage)))
  'GetHriMessage-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetHriMessage)))
  "Returns string type for a service object of type '<GetHriMessage>"
  "plan_execution/GetHriMessage")