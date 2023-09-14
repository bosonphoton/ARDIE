; Auto-generated. Do not edit!


(cl:in-package bwi_msgs-msg)


;//! \htmlinclude WeekTime.msg.html

(cl:defclass <WeekTime> (roslisp-msg-protocol:ros-message)
  ((time_seconds
    :reader time_seconds
    :initarg :time_seconds
    :type cl:integer
    :initform 0)
   (day_of_week
    :reader day_of_week
    :initarg :day_of_week
    :type cl:integer
    :initform 0))
)

(cl:defclass WeekTime (<WeekTime>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <WeekTime>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'WeekTime)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name bwi_msgs-msg:<WeekTime> is deprecated: use bwi_msgs-msg:WeekTime instead.")))

(cl:ensure-generic-function 'time_seconds-val :lambda-list '(m))
(cl:defmethod time_seconds-val ((m <WeekTime>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader bwi_msgs-msg:time_seconds-val is deprecated.  Use bwi_msgs-msg:time_seconds instead.")
  (time_seconds m))

(cl:ensure-generic-function 'day_of_week-val :lambda-list '(m))
(cl:defmethod day_of_week-val ((m <WeekTime>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader bwi_msgs-msg:day_of_week-val is deprecated.  Use bwi_msgs-msg:day_of_week instead.")
  (day_of_week m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<WeekTime>)))
    "Constants for message type '<WeekTime>"
  '((:MONDAY . 0)
    (:TUESDAY . 1)
    (:WEDNESDAY . 2)
    (:THURSDAY . 3)
    (:FRIDAY . 4)
    (:SATURDAY . 5)
    (:SUNDAY . 6))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'WeekTime)))
    "Constants for message type 'WeekTime"
  '((:MONDAY . 0)
    (:TUESDAY . 1)
    (:WEDNESDAY . 2)
    (:THURSDAY . 3)
    (:FRIDAY . 4)
    (:SATURDAY . 5)
    (:SUNDAY . 6))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <WeekTime>) ostream)
  "Serializes a message object of type '<WeekTime>"
  (cl:let* ((signed (cl:slot-value msg 'time_seconds)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'day_of_week)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <WeekTime>) istream)
  "Deserializes a message object of type '<WeekTime>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'time_seconds) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'day_of_week) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<WeekTime>)))
  "Returns string type for a message object of type '<WeekTime>"
  "bwi_msgs/WeekTime")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'WeekTime)))
  "Returns string type for a message object of type 'WeekTime"
  "bwi_msgs/WeekTime")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<WeekTime>)))
  "Returns md5sum for a message object of type '<WeekTime>"
  "128bbf0c1abd22da3f2eb8d4ab1ad941")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'WeekTime)))
  "Returns md5sum for a message object of type 'WeekTime"
  "128bbf0c1abd22da3f2eb8d4ab1ad941")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<WeekTime>)))
  "Returns full string definition for message of type '<WeekTime>"
  (cl:format cl:nil "# Constants defining day of week~%int32 MONDAY=0~%int32 TUESDAY=1~%int32 WEDNESDAY=2~%int32 THURSDAY=3~%int32 FRIDAY=4~%int32 SATURDAY=5~%int32 SUNDAY=6~%~%int32 time_seconds~%int32 day_of_week~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'WeekTime)))
  "Returns full string definition for message of type 'WeekTime"
  (cl:format cl:nil "# Constants defining day of week~%int32 MONDAY=0~%int32 TUESDAY=1~%int32 WEDNESDAY=2~%int32 THURSDAY=3~%int32 FRIDAY=4~%int32 SATURDAY=5~%int32 SUNDAY=6~%~%int32 time_seconds~%int32 day_of_week~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <WeekTime>))
  (cl:+ 0
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <WeekTime>))
  "Converts a ROS message object to a list"
  (cl:list 'WeekTime
    (cl:cons ':time_seconds (time_seconds msg))
    (cl:cons ':day_of_week (day_of_week msg))
))
