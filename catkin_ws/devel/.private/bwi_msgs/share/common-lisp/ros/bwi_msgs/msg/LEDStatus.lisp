; Auto-generated. Do not edit!


(cl:in-package bwi_msgs-msg)


;//! \htmlinclude LEDStatus.msg.html

(cl:defclass <LEDStatus> (roslisp-msg-protocol:ros-message)
  ((status
    :reader status
    :initarg :status
    :type cl:fixnum
    :initform 0))
)

(cl:defclass LEDStatus (<LEDStatus>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <LEDStatus>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'LEDStatus)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name bwi_msgs-msg:<LEDStatus> is deprecated: use bwi_msgs-msg:LEDStatus instead.")))

(cl:ensure-generic-function 'status-val :lambda-list '(m))
(cl:defmethod status-val ((m <LEDStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader bwi_msgs-msg:status-val is deprecated.  Use bwi_msgs-msg:status instead.")
  (status m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<LEDStatus>)))
    "Constants for message type '<LEDStatus>"
  '((:RUN_ON . 1)
    (:RUN_OFF . 0)
    (:CAMERA_ON . 3)
    (:CAMERA_OFF . 2))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'LEDStatus)))
    "Constants for message type 'LEDStatus"
  '((:RUN_ON . 1)
    (:RUN_OFF . 0)
    (:CAMERA_ON . 3)
    (:CAMERA_OFF . 2))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <LEDStatus>) ostream)
  "Serializes a message object of type '<LEDStatus>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'status)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <LEDStatus>) istream)
  "Deserializes a message object of type '<LEDStatus>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'status)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<LEDStatus>)))
  "Returns string type for a message object of type '<LEDStatus>"
  "bwi_msgs/LEDStatus")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'LEDStatus)))
  "Returns string type for a message object of type 'LEDStatus"
  "bwi_msgs/LEDStatus")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<LEDStatus>)))
  "Returns md5sum for a message object of type '<LEDStatus>"
  "ca10aeadc7986827cb9450ebce4e4963")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'LEDStatus)))
  "Returns md5sum for a message object of type 'LEDStatus"
  "ca10aeadc7986827cb9450ebce4e4963")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<LEDStatus>)))
  "Returns full string definition for message of type '<LEDStatus>"
  (cl:format cl:nil "# LED Status~%~%# Service Variables~%uint8 RUN_ON = 1~%uint8 RUN_OFF = 0~%uint8 CAMERA_ON = 3~%uint8 CAMERA_OFF = 2~%~%# Selects which animation to execute~%~%uint8 status~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'LEDStatus)))
  "Returns full string definition for message of type 'LEDStatus"
  (cl:format cl:nil "# LED Status~%~%# Service Variables~%uint8 RUN_ON = 1~%uint8 RUN_OFF = 0~%uint8 CAMERA_ON = 3~%uint8 CAMERA_OFF = 2~%~%# Selects which animation to execute~%~%uint8 status~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <LEDStatus>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <LEDStatus>))
  "Converts a ROS message object to a list"
  (cl:list 'LEDStatus
    (cl:cons ':status (status msg))
))
