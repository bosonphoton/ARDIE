; Auto-generated. Do not edit!


(cl:in-package plan_execution-msg)


;//! \htmlinclude ExecuteSmachStateMachineFeedback.msg.html

(cl:defclass <ExecuteSmachStateMachineFeedback> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass ExecuteSmachStateMachineFeedback (<ExecuteSmachStateMachineFeedback>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ExecuteSmachStateMachineFeedback>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ExecuteSmachStateMachineFeedback)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name plan_execution-msg:<ExecuteSmachStateMachineFeedback> is deprecated: use plan_execution-msg:ExecuteSmachStateMachineFeedback instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ExecuteSmachStateMachineFeedback>) ostream)
  "Serializes a message object of type '<ExecuteSmachStateMachineFeedback>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ExecuteSmachStateMachineFeedback>) istream)
  "Deserializes a message object of type '<ExecuteSmachStateMachineFeedback>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ExecuteSmachStateMachineFeedback>)))
  "Returns string type for a message object of type '<ExecuteSmachStateMachineFeedback>"
  "plan_execution/ExecuteSmachStateMachineFeedback")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ExecuteSmachStateMachineFeedback)))
  "Returns string type for a message object of type 'ExecuteSmachStateMachineFeedback"
  "plan_execution/ExecuteSmachStateMachineFeedback")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ExecuteSmachStateMachineFeedback>)))
  "Returns md5sum for a message object of type '<ExecuteSmachStateMachineFeedback>"
  "d41d8cd98f00b204e9800998ecf8427e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ExecuteSmachStateMachineFeedback)))
  "Returns md5sum for a message object of type 'ExecuteSmachStateMachineFeedback"
  "d41d8cd98f00b204e9800998ecf8427e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ExecuteSmachStateMachineFeedback>)))
  "Returns full string definition for message of type '<ExecuteSmachStateMachineFeedback>"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ExecuteSmachStateMachineFeedback)))
  "Returns full string definition for message of type 'ExecuteSmachStateMachineFeedback"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ExecuteSmachStateMachineFeedback>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ExecuteSmachStateMachineFeedback>))
  "Converts a ROS message object to a list"
  (cl:list 'ExecuteSmachStateMachineFeedback
))
