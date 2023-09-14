; Auto-generated. Do not edit!


(cl:in-package bwi_msgs-srv)


;//! \htmlinclude LocationAction-request.msg.html

(cl:defclass <LocationAction-request> (roslisp-msg-protocol:ros-message)
  ((time
    :reader time
    :initarg :time
    :type bwi_msgs-msg:WeekTime
    :initform (cl:make-instance 'bwi_msgs-msg:WeekTime))
   (current_location
    :reader current_location
    :initarg :current_location
    :type cl:string
    :initform ""))
)

(cl:defclass LocationAction-request (<LocationAction-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <LocationAction-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'LocationAction-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name bwi_msgs-srv:<LocationAction-request> is deprecated: use bwi_msgs-srv:LocationAction-request instead.")))

(cl:ensure-generic-function 'time-val :lambda-list '(m))
(cl:defmethod time-val ((m <LocationAction-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader bwi_msgs-srv:time-val is deprecated.  Use bwi_msgs-srv:time instead.")
  (time m))

(cl:ensure-generic-function 'current_location-val :lambda-list '(m))
(cl:defmethod current_location-val ((m <LocationAction-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader bwi_msgs-srv:current_location-val is deprecated.  Use bwi_msgs-srv:current_location instead.")
  (current_location m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <LocationAction-request>) ostream)
  "Serializes a message object of type '<LocationAction-request>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'time) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'current_location))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'current_location))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <LocationAction-request>) istream)
  "Deserializes a message object of type '<LocationAction-request>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'time) istream)
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'current_location) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'current_location) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<LocationAction-request>)))
  "Returns string type for a service object of type '<LocationAction-request>"
  "bwi_msgs/LocationActionRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'LocationAction-request)))
  "Returns string type for a service object of type 'LocationAction-request"
  "bwi_msgs/LocationActionRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<LocationAction-request>)))
  "Returns md5sum for a message object of type '<LocationAction-request>"
  "0dde773e38870fb29fdf55706196344e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'LocationAction-request)))
  "Returns md5sum for a message object of type 'LocationAction-request"
  "0dde773e38870fb29fdf55706196344e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<LocationAction-request>)))
  "Returns full string definition for message of type '<LocationAction-request>"
  (cl:format cl:nil "bwi_msgs/WeekTime time~%string current_location~%~%================================================================================~%MSG: bwi_msgs/WeekTime~%# Constants defining day of week~%int32 MONDAY=0~%int32 TUESDAY=1~%int32 WEDNESDAY=2~%int32 THURSDAY=3~%int32 FRIDAY=4~%int32 SATURDAY=5~%int32 SUNDAY=6~%~%int32 time_seconds~%int32 day_of_week~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'LocationAction-request)))
  "Returns full string definition for message of type 'LocationAction-request"
  (cl:format cl:nil "bwi_msgs/WeekTime time~%string current_location~%~%================================================================================~%MSG: bwi_msgs/WeekTime~%# Constants defining day of week~%int32 MONDAY=0~%int32 TUESDAY=1~%int32 WEDNESDAY=2~%int32 THURSDAY=3~%int32 FRIDAY=4~%int32 SATURDAY=5~%int32 SUNDAY=6~%~%int32 time_seconds~%int32 day_of_week~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <LocationAction-request>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'time))
     4 (cl:length (cl:slot-value msg 'current_location))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <LocationAction-request>))
  "Converts a ROS message object to a list"
  (cl:list 'LocationAction-request
    (cl:cons ':time (time msg))
    (cl:cons ':current_location (current_location msg))
))
;//! \htmlinclude LocationAction-response.msg.html

(cl:defclass <LocationAction-response> (roslisp-msg-protocol:ros-message)
  ((ask_question
    :reader ask_question
    :initarg :ask_question
    :type cl:boolean
    :initform cl:nil)
   (location
    :reader location
    :initarg :location
    :type cl:string
    :initform ""))
)

(cl:defclass LocationAction-response (<LocationAction-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <LocationAction-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'LocationAction-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name bwi_msgs-srv:<LocationAction-response> is deprecated: use bwi_msgs-srv:LocationAction-response instead.")))

(cl:ensure-generic-function 'ask_question-val :lambda-list '(m))
(cl:defmethod ask_question-val ((m <LocationAction-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader bwi_msgs-srv:ask_question-val is deprecated.  Use bwi_msgs-srv:ask_question instead.")
  (ask_question m))

(cl:ensure-generic-function 'location-val :lambda-list '(m))
(cl:defmethod location-val ((m <LocationAction-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader bwi_msgs-srv:location-val is deprecated.  Use bwi_msgs-srv:location instead.")
  (location m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <LocationAction-response>) ostream)
  "Serializes a message object of type '<LocationAction-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'ask_question) 1 0)) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'location))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'location))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <LocationAction-response>) istream)
  "Deserializes a message object of type '<LocationAction-response>"
    (cl:setf (cl:slot-value msg 'ask_question) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'location) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'location) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<LocationAction-response>)))
  "Returns string type for a service object of type '<LocationAction-response>"
  "bwi_msgs/LocationActionResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'LocationAction-response)))
  "Returns string type for a service object of type 'LocationAction-response"
  "bwi_msgs/LocationActionResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<LocationAction-response>)))
  "Returns md5sum for a message object of type '<LocationAction-response>"
  "0dde773e38870fb29fdf55706196344e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'LocationAction-response)))
  "Returns md5sum for a message object of type 'LocationAction-response"
  "0dde773e38870fb29fdf55706196344e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<LocationAction-response>)))
  "Returns full string definition for message of type '<LocationAction-response>"
  (cl:format cl:nil "bool ask_question~%string location~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'LocationAction-response)))
  "Returns full string definition for message of type 'LocationAction-response"
  (cl:format cl:nil "bool ask_question~%string location~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <LocationAction-response>))
  (cl:+ 0
     1
     4 (cl:length (cl:slot-value msg 'location))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <LocationAction-response>))
  "Converts a ROS message object to a list"
  (cl:list 'LocationAction-response
    (cl:cons ':ask_question (ask_question msg))
    (cl:cons ':location (location msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'LocationAction)))
  'LocationAction-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'LocationAction)))
  'LocationAction-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'LocationAction)))
  "Returns string type for a service object of type '<LocationAction>"
  "bwi_msgs/LocationAction")