; Auto-generated. Do not edit!


(cl:in-package bwi_msgs-msg)


;//! \htmlinclude LEDControlActionGoal.msg.html

(cl:defclass <LEDControlActionGoal> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (goal_id
    :reader goal_id
    :initarg :goal_id
    :type actionlib_msgs-msg:GoalID
    :initform (cl:make-instance 'actionlib_msgs-msg:GoalID))
   (goal
    :reader goal
    :initarg :goal
    :type bwi_msgs-msg:LEDControlGoal
    :initform (cl:make-instance 'bwi_msgs-msg:LEDControlGoal)))
)

(cl:defclass LEDControlActionGoal (<LEDControlActionGoal>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <LEDControlActionGoal>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'LEDControlActionGoal)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name bwi_msgs-msg:<LEDControlActionGoal> is deprecated: use bwi_msgs-msg:LEDControlActionGoal instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <LEDControlActionGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader bwi_msgs-msg:header-val is deprecated.  Use bwi_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'goal_id-val :lambda-list '(m))
(cl:defmethod goal_id-val ((m <LEDControlActionGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader bwi_msgs-msg:goal_id-val is deprecated.  Use bwi_msgs-msg:goal_id instead.")
  (goal_id m))

(cl:ensure-generic-function 'goal-val :lambda-list '(m))
(cl:defmethod goal-val ((m <LEDControlActionGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader bwi_msgs-msg:goal-val is deprecated.  Use bwi_msgs-msg:goal instead.")
  (goal m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <LEDControlActionGoal>) ostream)
  "Serializes a message object of type '<LEDControlActionGoal>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'goal_id) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'goal) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <LEDControlActionGoal>) istream)
  "Deserializes a message object of type '<LEDControlActionGoal>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'goal_id) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'goal) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<LEDControlActionGoal>)))
  "Returns string type for a message object of type '<LEDControlActionGoal>"
  "bwi_msgs/LEDControlActionGoal")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'LEDControlActionGoal)))
  "Returns string type for a message object of type 'LEDControlActionGoal"
  "bwi_msgs/LEDControlActionGoal")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<LEDControlActionGoal>)))
  "Returns md5sum for a message object of type '<LEDControlActionGoal>"
  "5e1488514713d1cdc740a8ff99416a63")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'LEDControlActionGoal)))
  "Returns md5sum for a message object of type 'LEDControlActionGoal"
  "5e1488514713d1cdc740a8ff99416a63")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<LEDControlActionGoal>)))
  "Returns full string definition for message of type '<LEDControlActionGoal>"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%~%Header header~%actionlib_msgs/GoalID goal_id~%LEDControlGoal goal~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: actionlib_msgs/GoalID~%# The stamp should store the time at which this goal was requested.~%# It is used by an action server when it tries to preempt all~%# goals that were requested before a certain time~%time stamp~%~%# The id provides a way to associate feedback and~%# result message with specific goal requests. The id~%# specified must be unique.~%string id~%~%~%================================================================================~%MSG: bwi_msgs/LEDControlGoal~%# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%#goal definition~%bwi_msgs/LEDAnimations type~%duration timeout~%~%================================================================================~%MSG: bwi_msgs/LEDAnimations~%# LED Animations~%~%# Action Variables~%uint8 LEFT_TURN = 1~%uint8 RIGHT_TURN = 2~%uint8 REVERSE = 3~%uint8 BLOCKED = 4~%uint8 UP = 5~%uint8 DOWN = 6~%uint8 NEED_ASSIST = 7~%~%# Selects which animation to execute~%~%uint8 led_animations~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'LEDControlActionGoal)))
  "Returns full string definition for message of type 'LEDControlActionGoal"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%~%Header header~%actionlib_msgs/GoalID goal_id~%LEDControlGoal goal~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: actionlib_msgs/GoalID~%# The stamp should store the time at which this goal was requested.~%# It is used by an action server when it tries to preempt all~%# goals that were requested before a certain time~%time stamp~%~%# The id provides a way to associate feedback and~%# result message with specific goal requests. The id~%# specified must be unique.~%string id~%~%~%================================================================================~%MSG: bwi_msgs/LEDControlGoal~%# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%#goal definition~%bwi_msgs/LEDAnimations type~%duration timeout~%~%================================================================================~%MSG: bwi_msgs/LEDAnimations~%# LED Animations~%~%# Action Variables~%uint8 LEFT_TURN = 1~%uint8 RIGHT_TURN = 2~%uint8 REVERSE = 3~%uint8 BLOCKED = 4~%uint8 UP = 5~%uint8 DOWN = 6~%uint8 NEED_ASSIST = 7~%~%# Selects which animation to execute~%~%uint8 led_animations~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <LEDControlActionGoal>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'goal_id))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'goal))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <LEDControlActionGoal>))
  "Converts a ROS message object to a list"
  (cl:list 'LEDControlActionGoal
    (cl:cons ':header (header msg))
    (cl:cons ':goal_id (goal_id msg))
    (cl:cons ':goal (goal msg))
))