; Auto-generated. Do not edit!


(cl:in-package plan_execution-msg)


;//! \htmlinclude ExecutePlanFeedback.msg.html

(cl:defclass <ExecutePlanFeedback> (roslisp-msg-protocol:ros-message)
  ((event_type
    :reader event_type
    :initarg :event_type
    :type cl:integer
    :initform 0)
   (plan
    :reader plan
    :initarg :plan
    :type (cl:vector plan_execution-msg:AspFluent)
   :initform (cl:make-array 0 :element-type 'plan_execution-msg:AspFluent :initial-element (cl:make-instance 'plan_execution-msg:AspFluent))))
)

(cl:defclass ExecutePlanFeedback (<ExecutePlanFeedback>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ExecutePlanFeedback>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ExecutePlanFeedback)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name plan_execution-msg:<ExecutePlanFeedback> is deprecated: use plan_execution-msg:ExecutePlanFeedback instead.")))

(cl:ensure-generic-function 'event_type-val :lambda-list '(m))
(cl:defmethod event_type-val ((m <ExecutePlanFeedback>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader plan_execution-msg:event_type-val is deprecated.  Use plan_execution-msg:event_type instead.")
  (event_type m))

(cl:ensure-generic-function 'plan-val :lambda-list '(m))
(cl:defmethod plan-val ((m <ExecutePlanFeedback>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader plan_execution-msg:plan-val is deprecated.  Use plan_execution-msg:plan instead.")
  (plan m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<ExecutePlanFeedback>)))
    "Constants for message type '<ExecutePlanFeedback>"
  '((:PLAN_CHANGED_EVENT . 1)
    (:ACTION_STARTED_EVENT . 2)
    (:ACTION_ENDED_EVENT . 3))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'ExecutePlanFeedback)))
    "Constants for message type 'ExecutePlanFeedback"
  '((:PLAN_CHANGED_EVENT . 1)
    (:ACTION_STARTED_EVENT . 2)
    (:ACTION_ENDED_EVENT . 3))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ExecutePlanFeedback>) ostream)
  "Serializes a message object of type '<ExecutePlanFeedback>"
  (cl:let* ((signed (cl:slot-value msg 'event_type)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'plan))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'plan))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ExecutePlanFeedback>) istream)
  "Deserializes a message object of type '<ExecutePlanFeedback>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'event_type) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'plan) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'plan)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'plan_execution-msg:AspFluent))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ExecutePlanFeedback>)))
  "Returns string type for a message object of type '<ExecutePlanFeedback>"
  "plan_execution/ExecutePlanFeedback")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ExecutePlanFeedback)))
  "Returns string type for a message object of type 'ExecutePlanFeedback"
  "plan_execution/ExecutePlanFeedback")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ExecutePlanFeedback>)))
  "Returns md5sum for a message object of type '<ExecutePlanFeedback>"
  "94ff676cd2eeea6adc43ba9737fa2e30")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ExecutePlanFeedback)))
  "Returns md5sum for a message object of type 'ExecutePlanFeedback"
  "94ff676cd2eeea6adc43ba9737fa2e30")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ExecutePlanFeedback>)))
  "Returns full string definition for message of type '<ExecutePlanFeedback>"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%int32 PLAN_CHANGED_EVENT = 1~%int32 ACTION_STARTED_EVENT = 2~%int32 ACTION_ENDED_EVENT = 3~%int32 event_type~%AspFluent[] plan~%~%~%================================================================================~%MSG: plan_execution/AspFluent~%string name~%string[] variables~%uint32 timeStep~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ExecutePlanFeedback)))
  "Returns full string definition for message of type 'ExecutePlanFeedback"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%int32 PLAN_CHANGED_EVENT = 1~%int32 ACTION_STARTED_EVENT = 2~%int32 ACTION_ENDED_EVENT = 3~%int32 event_type~%AspFluent[] plan~%~%~%================================================================================~%MSG: plan_execution/AspFluent~%string name~%string[] variables~%uint32 timeStep~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ExecutePlanFeedback>))
  (cl:+ 0
     4
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'plan) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ExecutePlanFeedback>))
  "Converts a ROS message object to a list"
  (cl:list 'ExecutePlanFeedback
    (cl:cons ':event_type (event_type msg))
    (cl:cons ':plan (plan msg))
))
