; Auto-generated. Do not edit!


(cl:in-package plan_execution-msg)


;//! \htmlinclude HriMessage.msg.html

(cl:defclass <HriMessage> (roslisp-msg-protocol:ros-message)
  ((id
    :reader id
    :initarg :id
    :type cl:string
    :initform "")
   (content
    :reader content
    :initarg :content
    :type cl:string
    :initform "")
   (from
    :reader from
    :initarg :from
    :type cl:string
    :initform "")
   (to
    :reader to
    :initarg :to
    :type cl:string
    :initform ""))
)

(cl:defclass HriMessage (<HriMessage>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <HriMessage>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'HriMessage)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name plan_execution-msg:<HriMessage> is deprecated: use plan_execution-msg:HriMessage instead.")))

(cl:ensure-generic-function 'id-val :lambda-list '(m))
(cl:defmethod id-val ((m <HriMessage>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader plan_execution-msg:id-val is deprecated.  Use plan_execution-msg:id instead.")
  (id m))

(cl:ensure-generic-function 'content-val :lambda-list '(m))
(cl:defmethod content-val ((m <HriMessage>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader plan_execution-msg:content-val is deprecated.  Use plan_execution-msg:content instead.")
  (content m))

(cl:ensure-generic-function 'from-val :lambda-list '(m))
(cl:defmethod from-val ((m <HriMessage>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader plan_execution-msg:from-val is deprecated.  Use plan_execution-msg:from instead.")
  (from m))

(cl:ensure-generic-function 'to-val :lambda-list '(m))
(cl:defmethod to-val ((m <HriMessage>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader plan_execution-msg:to-val is deprecated.  Use plan_execution-msg:to instead.")
  (to m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <HriMessage>) ostream)
  "Serializes a message object of type '<HriMessage>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'id))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'id))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'content))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'content))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'from))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'from))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'to))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'to))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <HriMessage>) istream)
  "Deserializes a message object of type '<HriMessage>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'id) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'id) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'content) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'content) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'from) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'from) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'to) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'to) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<HriMessage>)))
  "Returns string type for a message object of type '<HriMessage>"
  "plan_execution/HriMessage")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'HriMessage)))
  "Returns string type for a message object of type 'HriMessage"
  "plan_execution/HriMessage")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<HriMessage>)))
  "Returns md5sum for a message object of type '<HriMessage>"
  "4708b0c47a957a02c20845120a2f4b1c")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'HriMessage)))
  "Returns md5sum for a message object of type 'HriMessage"
  "4708b0c47a957a02c20845120a2f4b1c")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<HriMessage>)))
  "Returns full string definition for message of type '<HriMessage>"
  (cl:format cl:nil "string id~%string content~%string from~%string to~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'HriMessage)))
  "Returns full string definition for message of type 'HriMessage"
  (cl:format cl:nil "string id~%string content~%string from~%string to~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <HriMessage>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'id))
     4 (cl:length (cl:slot-value msg 'content))
     4 (cl:length (cl:slot-value msg 'from))
     4 (cl:length (cl:slot-value msg 'to))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <HriMessage>))
  "Converts a ROS message object to a list"
  (cl:list 'HriMessage
    (cl:cons ':id (id msg))
    (cl:cons ':content (content msg))
    (cl:cons ':from (from msg))
    (cl:cons ':to (to msg))
))
