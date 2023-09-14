; Auto-generated. Do not edit!


(cl:in-package plan_execution-msg)


;//! \htmlinclude ExecutePlanResult.msg.html

(cl:defclass <ExecutePlanResult> (roslisp-msg-protocol:ros-message)
  ((status
    :reader status
    :initarg :status
    :type cl:integer
    :initform 0)
   (final_action
    :reader final_action
    :initarg :final_action
    :type plan_execution-msg:AspFluent
    :initform (cl:make-instance 'plan_execution-msg:AspFluent))
   (plan_remainder
    :reader plan_remainder
    :initarg :plan_remainder
    :type (cl:vector plan_execution-msg:AspFluent)
   :initform (cl:make-array 0 :element-type 'plan_execution-msg:AspFluent :initial-element (cl:make-instance 'plan_execution-msg:AspFluent)))
   (inconsistent_rules
    :reader inconsistent_rules
    :initarg :inconsistent_rules
    :type (cl:vector plan_execution-msg:AspRule)
   :initform (cl:make-array 0 :element-type 'plan_execution-msg:AspRule :initial-element (cl:make-instance 'plan_execution-msg:AspRule)))
   (message
    :reader message
    :initarg :message
    :type cl:string
    :initform ""))
)

(cl:defclass ExecutePlanResult (<ExecutePlanResult>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ExecutePlanResult>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ExecutePlanResult)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name plan_execution-msg:<ExecutePlanResult> is deprecated: use plan_execution-msg:ExecutePlanResult instead.")))

(cl:ensure-generic-function 'status-val :lambda-list '(m))
(cl:defmethod status-val ((m <ExecutePlanResult>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader plan_execution-msg:status-val is deprecated.  Use plan_execution-msg:status instead.")
  (status m))

(cl:ensure-generic-function 'final_action-val :lambda-list '(m))
(cl:defmethod final_action-val ((m <ExecutePlanResult>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader plan_execution-msg:final_action-val is deprecated.  Use plan_execution-msg:final_action instead.")
  (final_action m))

(cl:ensure-generic-function 'plan_remainder-val :lambda-list '(m))
(cl:defmethod plan_remainder-val ((m <ExecutePlanResult>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader plan_execution-msg:plan_remainder-val is deprecated.  Use plan_execution-msg:plan_remainder instead.")
  (plan_remainder m))

(cl:ensure-generic-function 'inconsistent_rules-val :lambda-list '(m))
(cl:defmethod inconsistent_rules-val ((m <ExecutePlanResult>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader plan_execution-msg:inconsistent_rules-val is deprecated.  Use plan_execution-msg:inconsistent_rules instead.")
  (inconsistent_rules m))

(cl:ensure-generic-function 'message-val :lambda-list '(m))
(cl:defmethod message-val ((m <ExecutePlanResult>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader plan_execution-msg:message-val is deprecated.  Use plan_execution-msg:message instead.")
  (message m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<ExecutePlanResult>)))
    "Constants for message type '<ExecutePlanResult>"
  '((:SUCCEEDED . 1)
    (:FAILED_TO_PLAN . 2)
    (:TOO_MANY_ACTION_FAILURES . 3))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'ExecutePlanResult)))
    "Constants for message type 'ExecutePlanResult"
  '((:SUCCEEDED . 1)
    (:FAILED_TO_PLAN . 2)
    (:TOO_MANY_ACTION_FAILURES . 3))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ExecutePlanResult>) ostream)
  "Serializes a message object of type '<ExecutePlanResult>"
  (cl:let* ((signed (cl:slot-value msg 'status)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'final_action) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'plan_remainder))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'plan_remainder))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'inconsistent_rules))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'inconsistent_rules))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'message))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'message))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ExecutePlanResult>) istream)
  "Deserializes a message object of type '<ExecutePlanResult>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'status) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'final_action) istream)
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'plan_remainder) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'plan_remainder)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'plan_execution-msg:AspFluent))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'inconsistent_rules) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'inconsistent_rules)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'plan_execution-msg:AspRule))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'message) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'message) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ExecutePlanResult>)))
  "Returns string type for a message object of type '<ExecutePlanResult>"
  "plan_execution/ExecutePlanResult")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ExecutePlanResult)))
  "Returns string type for a message object of type 'ExecutePlanResult"
  "plan_execution/ExecutePlanResult")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ExecutePlanResult>)))
  "Returns md5sum for a message object of type '<ExecutePlanResult>"
  "80745bbaf00d0889663923066dad51c0")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ExecutePlanResult)))
  "Returns md5sum for a message object of type 'ExecutePlanResult"
  "80745bbaf00d0889663923066dad51c0")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ExecutePlanResult>)))
  "Returns full string definition for message of type '<ExecutePlanResult>"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%int32 SUCCEEDED = 1~%int32 FAILED_TO_PLAN = 2~%int32 TOO_MANY_ACTION_FAILURES = 3~%int32 status~%AspFluent final_action~%AspFluent[] plan_remainder~%AspRule[] inconsistent_rules~%string message~%~%================================================================================~%MSG: plan_execution/AspFluent~%string name~%string[] variables~%uint32 timeStep~%~%================================================================================~%MSG: plan_execution/AspRule~%AspFluent[] head~%AspFluent[] body~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ExecutePlanResult)))
  "Returns full string definition for message of type 'ExecutePlanResult"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%int32 SUCCEEDED = 1~%int32 FAILED_TO_PLAN = 2~%int32 TOO_MANY_ACTION_FAILURES = 3~%int32 status~%AspFluent final_action~%AspFluent[] plan_remainder~%AspRule[] inconsistent_rules~%string message~%~%================================================================================~%MSG: plan_execution/AspFluent~%string name~%string[] variables~%uint32 timeStep~%~%================================================================================~%MSG: plan_execution/AspRule~%AspFluent[] head~%AspFluent[] body~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ExecutePlanResult>))
  (cl:+ 0
     4
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'final_action))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'plan_remainder) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'inconsistent_rules) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     4 (cl:length (cl:slot-value msg 'message))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ExecutePlanResult>))
  "Converts a ROS message object to a list"
  (cl:list 'ExecutePlanResult
    (cl:cons ':status (status msg))
    (cl:cons ':final_action (final_action msg))
    (cl:cons ':plan_remainder (plan_remainder msg))
    (cl:cons ':inconsistent_rules (inconsistent_rules msg))
    (cl:cons ':message (message msg))
))
