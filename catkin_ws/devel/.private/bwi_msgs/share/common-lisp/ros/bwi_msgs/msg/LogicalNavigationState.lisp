; Auto-generated. Do not edit!


(cl:in-package bwi_msgs-msg)


;//! \htmlinclude LogicalNavigationState.msg.html

(cl:defclass <LogicalNavigationState> (roslisp-msg-protocol:ros-message)
  ((room
    :reader room
    :initarg :room
    :type cl:string
    :initform "")
   (nearby_locations
    :reader nearby_locations
    :initarg :nearby_locations
    :type (cl:vector cl:string)
   :initform (cl:make-array 0 :element-type 'cl:string :initial-element ""))
   (facing
    :reader facing
    :initarg :facing
    :type (cl:vector cl:boolean)
   :initform (cl:make-array 0 :element-type 'cl:boolean :initial-element cl:nil)))
)

(cl:defclass LogicalNavigationState (<LogicalNavigationState>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <LogicalNavigationState>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'LogicalNavigationState)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name bwi_msgs-msg:<LogicalNavigationState> is deprecated: use bwi_msgs-msg:LogicalNavigationState instead.")))

(cl:ensure-generic-function 'room-val :lambda-list '(m))
(cl:defmethod room-val ((m <LogicalNavigationState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader bwi_msgs-msg:room-val is deprecated.  Use bwi_msgs-msg:room instead.")
  (room m))

(cl:ensure-generic-function 'nearby_locations-val :lambda-list '(m))
(cl:defmethod nearby_locations-val ((m <LogicalNavigationState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader bwi_msgs-msg:nearby_locations-val is deprecated.  Use bwi_msgs-msg:nearby_locations instead.")
  (nearby_locations m))

(cl:ensure-generic-function 'facing-val :lambda-list '(m))
(cl:defmethod facing-val ((m <LogicalNavigationState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader bwi_msgs-msg:facing-val is deprecated.  Use bwi_msgs-msg:facing instead.")
  (facing m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <LogicalNavigationState>) ostream)
  "Serializes a message object of type '<LogicalNavigationState>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'room))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'room))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'nearby_locations))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((__ros_str_len (cl:length ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) ele))
   (cl:slot-value msg 'nearby_locations))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'facing))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if ele 1 0)) ostream))
   (cl:slot-value msg 'facing))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <LogicalNavigationState>) istream)
  "Deserializes a message object of type '<LogicalNavigationState>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'room) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'room) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'nearby_locations) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'nearby_locations)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:aref vals i) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:aref vals i) __ros_str_idx) (cl:code-char (cl:read-byte istream))))))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'facing) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'facing)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:not (cl:zerop (cl:read-byte istream)))))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<LogicalNavigationState>)))
  "Returns string type for a message object of type '<LogicalNavigationState>"
  "bwi_msgs/LogicalNavigationState")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'LogicalNavigationState)))
  "Returns string type for a message object of type 'LogicalNavigationState"
  "bwi_msgs/LogicalNavigationState")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<LogicalNavigationState>)))
  "Returns md5sum for a message object of type '<LogicalNavigationState>"
  "61b5fec880100a091a9019844c6c5b20")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'LogicalNavigationState)))
  "Returns md5sum for a message object of type 'LogicalNavigationState"
  "61b5fec880100a091a9019844c6c5b20")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<LogicalNavigationState>)))
  "Returns full string definition for message of type '<LogicalNavigationState>"
  (cl:format cl:nil "string room~%string[] nearby_locations~%bool[] facing~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'LogicalNavigationState)))
  "Returns full string definition for message of type 'LogicalNavigationState"
  (cl:format cl:nil "string room~%string[] nearby_locations~%bool[] facing~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <LogicalNavigationState>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'room))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'nearby_locations) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4 (cl:length ele))))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'facing) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 1)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <LogicalNavigationState>))
  "Converts a ROS message object to a list"
  (cl:list 'LogicalNavigationState
    (cl:cons ':room (room msg))
    (cl:cons ':nearby_locations (nearby_locations msg))
    (cl:cons ':facing (facing msg))
))
