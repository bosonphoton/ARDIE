; Auto-generated. Do not edit!


(cl:in-package bwi_msgs-srv)


;//! \htmlinclude ActionUpdate-request.msg.html

(cl:defclass <ActionUpdate-request> (roslisp-msg-protocol:ros-message)
  ((time
    :reader time
    :initarg :time
    :type bwi_msgs-msg:WeekTime
    :initform (cl:make-instance 'bwi_msgs-msg:WeekTime))
   (current_location
    :reader current_location
    :initarg :current_location
    :type cl:string
    :initform "")
   (result
    :reader result
    :initarg :result
    :type cl:integer
    :initform 0))
)

(cl:defclass ActionUpdate-request (<ActionUpdate-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ActionUpdate-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ActionUpdate-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name bwi_msgs-srv:<ActionUpdate-request> is deprecated: use bwi_msgs-srv:ActionUpdate-request instead.")))

(cl:ensure-generic-function 'time-val :lambda-list '(m))
(cl:defmethod time-val ((m <ActionUpdate-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader bwi_msgs-srv:time-val is deprecated.  Use bwi_msgs-srv:time instead.")
  (time m))

(cl:ensure-generic-function 'current_location-val :lambda-list '(m))
(cl:defmethod current_location-val ((m <ActionUpdate-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader bwi_msgs-srv:current_location-val is deprecated.  Use bwi_msgs-srv:current_location instead.")
  (current_location m))

(cl:ensure-generic-function 'result-val :lambda-list '(m))
(cl:defmethod result-val ((m <ActionUpdate-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader bwi_msgs-srv:result-val is deprecated.  Use bwi_msgs-srv:result instead.")
  (result m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<ActionUpdate-request>)))
    "Constants for message type '<ActionUpdate-request>"
  '((:QUESTION_ANSWERED . 0)
    (:QUESTION_DENIED . 1)
    (:QUESTION_TIMEOUT . 2)
    (:ARRIVED . 3)
    (:ARRIVAL_FAILURE . 4))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'ActionUpdate-request)))
    "Constants for message type 'ActionUpdate-request"
  '((:QUESTION_ANSWERED . 0)
    (:QUESTION_DENIED . 1)
    (:QUESTION_TIMEOUT . 2)
    (:ARRIVED . 3)
    (:ARRIVAL_FAILURE . 4))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ActionUpdate-request>) ostream)
  "Serializes a message object of type '<ActionUpdate-request>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'time) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'current_location))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'current_location))
  (cl:let* ((signed (cl:slot-value msg 'result)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ActionUpdate-request>) istream)
  "Deserializes a message object of type '<ActionUpdate-request>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'time) istream)
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'current_location) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'current_location) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'result) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ActionUpdate-request>)))
  "Returns string type for a service object of type '<ActionUpdate-request>"
  "bwi_msgs/ActionUpdateRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ActionUpdate-request)))
  "Returns string type for a service object of type 'ActionUpdate-request"
  "bwi_msgs/ActionUpdateRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ActionUpdate-request>)))
  "Returns md5sum for a message object of type '<ActionUpdate-request>"
  "9fe05e403268444079042cdaaf56e486")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ActionUpdate-request)))
  "Returns md5sum for a message object of type 'ActionUpdate-request"
  "9fe05e403268444079042cdaaf56e486")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ActionUpdate-request>)))
  "Returns full string definition for message of type '<ActionUpdate-request>"
  (cl:format cl:nil "int32 QUESTION_ANSWERED = 0~%int32 QUESTION_DENIED = 1~%int32 QUESTION_TIMEOUT = 2~%int32 ARRIVED = 3~%int32 ARRIVAL_FAILURE = 4~%~%bwi_msgs/WeekTime time~%string current_location~%int32 result~%~%================================================================================~%MSG: bwi_msgs/WeekTime~%# Constants defining day of week~%int32 MONDAY=0~%int32 TUESDAY=1~%int32 WEDNESDAY=2~%int32 THURSDAY=3~%int32 FRIDAY=4~%int32 SATURDAY=5~%int32 SUNDAY=6~%~%int32 time_seconds~%int32 day_of_week~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ActionUpdate-request)))
  "Returns full string definition for message of type 'ActionUpdate-request"
  (cl:format cl:nil "int32 QUESTION_ANSWERED = 0~%int32 QUESTION_DENIED = 1~%int32 QUESTION_TIMEOUT = 2~%int32 ARRIVED = 3~%int32 ARRIVAL_FAILURE = 4~%~%bwi_msgs/WeekTime time~%string current_location~%int32 result~%~%================================================================================~%MSG: bwi_msgs/WeekTime~%# Constants defining day of week~%int32 MONDAY=0~%int32 TUESDAY=1~%int32 WEDNESDAY=2~%int32 THURSDAY=3~%int32 FRIDAY=4~%int32 SATURDAY=5~%int32 SUNDAY=6~%~%int32 time_seconds~%int32 day_of_week~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ActionUpdate-request>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'time))
     4 (cl:length (cl:slot-value msg 'current_location))
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ActionUpdate-request>))
  "Converts a ROS message object to a list"
  (cl:list 'ActionUpdate-request
    (cl:cons ':time (time msg))
    (cl:cons ':current_location (current_location msg))
    (cl:cons ':result (result msg))
))
;//! \htmlinclude ActionUpdate-response.msg.html

(cl:defclass <ActionUpdate-response> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass ActionUpdate-response (<ActionUpdate-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ActionUpdate-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ActionUpdate-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name bwi_msgs-srv:<ActionUpdate-response> is deprecated: use bwi_msgs-srv:ActionUpdate-response instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ActionUpdate-response>) ostream)
  "Serializes a message object of type '<ActionUpdate-response>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ActionUpdate-response>) istream)
  "Deserializes a message object of type '<ActionUpdate-response>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ActionUpdate-response>)))
  "Returns string type for a service object of type '<ActionUpdate-response>"
  "bwi_msgs/ActionUpdateResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ActionUpdate-response)))
  "Returns string type for a service object of type 'ActionUpdate-response"
  "bwi_msgs/ActionUpdateResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ActionUpdate-response>)))
  "Returns md5sum for a message object of type '<ActionUpdate-response>"
  "9fe05e403268444079042cdaaf56e486")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ActionUpdate-response)))
  "Returns md5sum for a message object of type 'ActionUpdate-response"
  "9fe05e403268444079042cdaaf56e486")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ActionUpdate-response>)))
  "Returns full string definition for message of type '<ActionUpdate-response>"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ActionUpdate-response)))
  "Returns full string definition for message of type 'ActionUpdate-response"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ActionUpdate-response>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ActionUpdate-response>))
  "Converts a ROS message object to a list"
  (cl:list 'ActionUpdate-response
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'ActionUpdate)))
  'ActionUpdate-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'ActionUpdate)))
  'ActionUpdate-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ActionUpdate)))
  "Returns string type for a service object of type '<ActionUpdate>"
  "bwi_msgs/ActionUpdate")