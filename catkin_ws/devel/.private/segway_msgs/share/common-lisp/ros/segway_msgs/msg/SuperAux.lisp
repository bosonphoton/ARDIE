; Auto-generated. Do not edit!


(cl:in-package segway_msgs-msg)


;//! \htmlinclude SuperAux.msg.html

(cl:defclass <SuperAux> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (battery_state_of_charge_percent
    :reader battery_state_of_charge_percent
    :initarg :battery_state_of_charge_percent
    :type cl:float
    :initform 0.0)
   (battery_current_A0pk
    :reader battery_current_A0pk
    :initarg :battery_current_A0pk
    :type cl:float
    :initform 0.0)
   (battery_voltage_V
    :reader battery_voltage_V
    :initarg :battery_voltage_V
    :type cl:float
    :initform 0.0)
   (max_cell_temp_degc
    :reader max_cell_temp_degc
    :initarg :max_cell_temp_degc
    :type cl:float
    :initform 0.0)
   (max_pcba_temp_degc
    :reader max_pcba_temp_degc
    :initarg :max_pcba_temp_degc
    :type cl:float
    :initform 0.0)
   (max_cell_voltage_V
    :reader max_cell_voltage_V
    :initarg :max_cell_voltage_V
    :type cl:float
    :initform 0.0)
   (min_cell_voltage_V
    :reader min_cell_voltage_V
    :initarg :min_cell_voltage_V
    :type cl:float
    :initform 0.0)
   (battery_interface_status_bits
    :reader battery_interface_status_bits
    :initarg :battery_interface_status_bits
    :type cl:integer
    :initform 0))
)

(cl:defclass SuperAux (<SuperAux>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SuperAux>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SuperAux)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name segway_msgs-msg:<SuperAux> is deprecated: use segway_msgs-msg:SuperAux instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <SuperAux>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader segway_msgs-msg:header-val is deprecated.  Use segway_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'battery_state_of_charge_percent-val :lambda-list '(m))
(cl:defmethod battery_state_of_charge_percent-val ((m <SuperAux>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader segway_msgs-msg:battery_state_of_charge_percent-val is deprecated.  Use segway_msgs-msg:battery_state_of_charge_percent instead.")
  (battery_state_of_charge_percent m))

(cl:ensure-generic-function 'battery_current_A0pk-val :lambda-list '(m))
(cl:defmethod battery_current_A0pk-val ((m <SuperAux>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader segway_msgs-msg:battery_current_A0pk-val is deprecated.  Use segway_msgs-msg:battery_current_A0pk instead.")
  (battery_current_A0pk m))

(cl:ensure-generic-function 'battery_voltage_V-val :lambda-list '(m))
(cl:defmethod battery_voltage_V-val ((m <SuperAux>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader segway_msgs-msg:battery_voltage_V-val is deprecated.  Use segway_msgs-msg:battery_voltage_V instead.")
  (battery_voltage_V m))

(cl:ensure-generic-function 'max_cell_temp_degc-val :lambda-list '(m))
(cl:defmethod max_cell_temp_degc-val ((m <SuperAux>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader segway_msgs-msg:max_cell_temp_degc-val is deprecated.  Use segway_msgs-msg:max_cell_temp_degc instead.")
  (max_cell_temp_degc m))

(cl:ensure-generic-function 'max_pcba_temp_degc-val :lambda-list '(m))
(cl:defmethod max_pcba_temp_degc-val ((m <SuperAux>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader segway_msgs-msg:max_pcba_temp_degc-val is deprecated.  Use segway_msgs-msg:max_pcba_temp_degc instead.")
  (max_pcba_temp_degc m))

(cl:ensure-generic-function 'max_cell_voltage_V-val :lambda-list '(m))
(cl:defmethod max_cell_voltage_V-val ((m <SuperAux>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader segway_msgs-msg:max_cell_voltage_V-val is deprecated.  Use segway_msgs-msg:max_cell_voltage_V instead.")
  (max_cell_voltage_V m))

(cl:ensure-generic-function 'min_cell_voltage_V-val :lambda-list '(m))
(cl:defmethod min_cell_voltage_V-val ((m <SuperAux>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader segway_msgs-msg:min_cell_voltage_V-val is deprecated.  Use segway_msgs-msg:min_cell_voltage_V instead.")
  (min_cell_voltage_V m))

(cl:ensure-generic-function 'battery_interface_status_bits-val :lambda-list '(m))
(cl:defmethod battery_interface_status_bits-val ((m <SuperAux>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader segway_msgs-msg:battery_interface_status_bits-val is deprecated.  Use segway_msgs-msg:battery_interface_status_bits instead.")
  (battery_interface_status_bits m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SuperAux>) ostream)
  "Serializes a message object of type '<SuperAux>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'battery_state_of_charge_percent))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'battery_current_A0pk))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'battery_voltage_V))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'max_cell_temp_degc))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'max_pcba_temp_degc))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'max_cell_voltage_V))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'min_cell_voltage_V))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'battery_interface_status_bits)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'battery_interface_status_bits)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'battery_interface_status_bits)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'battery_interface_status_bits)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SuperAux>) istream)
  "Deserializes a message object of type '<SuperAux>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'battery_state_of_charge_percent) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'battery_current_A0pk) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'battery_voltage_V) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'max_cell_temp_degc) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'max_pcba_temp_degc) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'max_cell_voltage_V) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'min_cell_voltage_V) (roslisp-utils:decode-single-float-bits bits)))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'battery_interface_status_bits)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'battery_interface_status_bits)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'battery_interface_status_bits)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'battery_interface_status_bits)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SuperAux>)))
  "Returns string type for a message object of type '<SuperAux>"
  "segway_msgs/SuperAux")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SuperAux)))
  "Returns string type for a message object of type 'SuperAux"
  "segway_msgs/SuperAux")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SuperAux>)))
  "Returns md5sum for a message object of type '<SuperAux>"
  "34aa6b9336bda114f082ad32bd812cf5")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SuperAux)))
  "Returns md5sum for a message object of type 'SuperAux"
  "34aa6b9336bda114f082ad32bd812cf5")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SuperAux>)))
  "Returns full string definition for message of type '<SuperAux>"
  (cl:format cl:nil "Header header~%float32 battery_state_of_charge_percent~%float32 battery_current_A0pk~%float32 battery_voltage_V~%float32 max_cell_temp_degc~%float32 max_pcba_temp_degc~%float32 max_cell_voltage_V~%float32 min_cell_voltage_V~%uint32  battery_interface_status_bits~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SuperAux)))
  "Returns full string definition for message of type 'SuperAux"
  (cl:format cl:nil "Header header~%float32 battery_state_of_charge_percent~%float32 battery_current_A0pk~%float32 battery_voltage_V~%float32 max_cell_temp_degc~%float32 max_pcba_temp_degc~%float32 max_cell_voltage_V~%float32 min_cell_voltage_V~%uint32  battery_interface_status_bits~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SuperAux>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4
     4
     4
     4
     4
     4
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SuperAux>))
  "Converts a ROS message object to a list"
  (cl:list 'SuperAux
    (cl:cons ':header (header msg))
    (cl:cons ':battery_state_of_charge_percent (battery_state_of_charge_percent msg))
    (cl:cons ':battery_current_A0pk (battery_current_A0pk msg))
    (cl:cons ':battery_voltage_V (battery_voltage_V msg))
    (cl:cons ':max_cell_temp_degc (max_cell_temp_degc msg))
    (cl:cons ':max_pcba_temp_degc (max_pcba_temp_degc msg))
    (cl:cons ':max_cell_voltage_V (max_cell_voltage_V msg))
    (cl:cons ':min_cell_voltage_V (min_cell_voltage_V msg))
    (cl:cons ':battery_interface_status_bits (battery_interface_status_bits msg))
))
