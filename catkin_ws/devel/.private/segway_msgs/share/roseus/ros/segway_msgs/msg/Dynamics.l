;; Auto-generated. Do not edit!


(when (boundp 'segway_msgs::Dynamics)
  (if (not (find-package "SEGWAY_MSGS"))
    (make-package "SEGWAY_MSGS"))
  (shadow 'Dynamics (find-package "SEGWAY_MSGS")))
(unless (find-package "SEGWAY_MSGS::DYNAMICS")
  (make-package "SEGWAY_MSGS::DYNAMICS"))

(in-package "ROS")
;;//! \htmlinclude Dynamics.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass segway_msgs::Dynamics
  :super ros::object
  :slots (_header _x_vel_target_mps _y_vel_target_mps _yaw_rate_target_rps _vel_limit_mps _yaw_rate_limit_rps _wheel_vel_mps _wheel_pos_m _x_accel_mps2 _y_accel_mps2 _yaw_accel_mps2 _yaw_angle_rad _odom_yaw_angle_rad ))

(defmethod segway_msgs::Dynamics
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:x_vel_target_mps __x_vel_target_mps) 0.0)
    ((:y_vel_target_mps __y_vel_target_mps) 0.0)
    ((:yaw_rate_target_rps __yaw_rate_target_rps) 0.0)
    ((:vel_limit_mps __vel_limit_mps) 0.0)
    ((:yaw_rate_limit_rps __yaw_rate_limit_rps) 0.0)
    ((:wheel_vel_mps __wheel_vel_mps) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:wheel_pos_m __wheel_pos_m) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:x_accel_mps2 __x_accel_mps2) 0.0)
    ((:y_accel_mps2 __y_accel_mps2) 0.0)
    ((:yaw_accel_mps2 __yaw_accel_mps2) 0.0)
    ((:yaw_angle_rad __yaw_angle_rad) 0.0)
    ((:odom_yaw_angle_rad __odom_yaw_angle_rad) 0.0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _x_vel_target_mps (float __x_vel_target_mps))
   (setq _y_vel_target_mps (float __y_vel_target_mps))
   (setq _yaw_rate_target_rps (float __yaw_rate_target_rps))
   (setq _vel_limit_mps (float __vel_limit_mps))
   (setq _yaw_rate_limit_rps (float __yaw_rate_limit_rps))
   (setq _wheel_vel_mps __wheel_vel_mps)
   (setq _wheel_pos_m __wheel_pos_m)
   (setq _x_accel_mps2 (float __x_accel_mps2))
   (setq _y_accel_mps2 (float __y_accel_mps2))
   (setq _yaw_accel_mps2 (float __yaw_accel_mps2))
   (setq _yaw_angle_rad (float __yaw_angle_rad))
   (setq _odom_yaw_angle_rad (float __odom_yaw_angle_rad))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:x_vel_target_mps
   (&optional __x_vel_target_mps)
   (if __x_vel_target_mps (setq _x_vel_target_mps __x_vel_target_mps)) _x_vel_target_mps)
  (:y_vel_target_mps
   (&optional __y_vel_target_mps)
   (if __y_vel_target_mps (setq _y_vel_target_mps __y_vel_target_mps)) _y_vel_target_mps)
  (:yaw_rate_target_rps
   (&optional __yaw_rate_target_rps)
   (if __yaw_rate_target_rps (setq _yaw_rate_target_rps __yaw_rate_target_rps)) _yaw_rate_target_rps)
  (:vel_limit_mps
   (&optional __vel_limit_mps)
   (if __vel_limit_mps (setq _vel_limit_mps __vel_limit_mps)) _vel_limit_mps)
  (:yaw_rate_limit_rps
   (&optional __yaw_rate_limit_rps)
   (if __yaw_rate_limit_rps (setq _yaw_rate_limit_rps __yaw_rate_limit_rps)) _yaw_rate_limit_rps)
  (:wheel_vel_mps
   (&optional __wheel_vel_mps)
   (if __wheel_vel_mps (setq _wheel_vel_mps __wheel_vel_mps)) _wheel_vel_mps)
  (:wheel_pos_m
   (&optional __wheel_pos_m)
   (if __wheel_pos_m (setq _wheel_pos_m __wheel_pos_m)) _wheel_pos_m)
  (:x_accel_mps2
   (&optional __x_accel_mps2)
   (if __x_accel_mps2 (setq _x_accel_mps2 __x_accel_mps2)) _x_accel_mps2)
  (:y_accel_mps2
   (&optional __y_accel_mps2)
   (if __y_accel_mps2 (setq _y_accel_mps2 __y_accel_mps2)) _y_accel_mps2)
  (:yaw_accel_mps2
   (&optional __yaw_accel_mps2)
   (if __yaw_accel_mps2 (setq _yaw_accel_mps2 __yaw_accel_mps2)) _yaw_accel_mps2)
  (:yaw_angle_rad
   (&optional __yaw_angle_rad)
   (if __yaw_angle_rad (setq _yaw_angle_rad __yaw_angle_rad)) _yaw_angle_rad)
  (:odom_yaw_angle_rad
   (&optional __odom_yaw_angle_rad)
   (if __odom_yaw_angle_rad (setq _odom_yaw_angle_rad __odom_yaw_angle_rad)) _odom_yaw_angle_rad)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; float32 _x_vel_target_mps
    4
    ;; float32 _y_vel_target_mps
    4
    ;; float32 _yaw_rate_target_rps
    4
    ;; float32 _vel_limit_mps
    4
    ;; float32 _yaw_rate_limit_rps
    4
    ;; float32[] _wheel_vel_mps
    (* 4    (length _wheel_vel_mps)) 4
    ;; float32[] _wheel_pos_m
    (* 4    (length _wheel_pos_m)) 4
    ;; float32 _x_accel_mps2
    4
    ;; float32 _y_accel_mps2
    4
    ;; float32 _yaw_accel_mps2
    4
    ;; float32 _yaw_angle_rad
    4
    ;; float32 _odom_yaw_angle_rad
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; float32 _x_vel_target_mps
       (sys::poke _x_vel_target_mps (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _y_vel_target_mps
       (sys::poke _y_vel_target_mps (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _yaw_rate_target_rps
       (sys::poke _yaw_rate_target_rps (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _vel_limit_mps
       (sys::poke _vel_limit_mps (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _yaw_rate_limit_rps
       (sys::poke _yaw_rate_limit_rps (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32[] _wheel_vel_mps
     (write-long (length _wheel_vel_mps) s)
     (dotimes (i (length _wheel_vel_mps))
       (sys::poke (elt _wheel_vel_mps i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;; float32[] _wheel_pos_m
     (write-long (length _wheel_pos_m) s)
     (dotimes (i (length _wheel_pos_m))
       (sys::poke (elt _wheel_pos_m i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;; float32 _x_accel_mps2
       (sys::poke _x_accel_mps2 (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _y_accel_mps2
       (sys::poke _y_accel_mps2 (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _yaw_accel_mps2
       (sys::poke _yaw_accel_mps2 (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _yaw_angle_rad
       (sys::poke _yaw_angle_rad (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _odom_yaw_angle_rad
       (sys::poke _odom_yaw_angle_rad (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; float32 _x_vel_target_mps
     (setq _x_vel_target_mps (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _y_vel_target_mps
     (setq _y_vel_target_mps (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _yaw_rate_target_rps
     (setq _yaw_rate_target_rps (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _vel_limit_mps
     (setq _vel_limit_mps (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _yaw_rate_limit_rps
     (setq _yaw_rate_limit_rps (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32[] _wheel_vel_mps
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _wheel_vel_mps (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _wheel_vel_mps i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;; float32[] _wheel_pos_m
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _wheel_pos_m (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _wheel_pos_m i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;; float32 _x_accel_mps2
     (setq _x_accel_mps2 (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _y_accel_mps2
     (setq _y_accel_mps2 (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _yaw_accel_mps2
     (setq _yaw_accel_mps2 (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _yaw_angle_rad
     (setq _yaw_angle_rad (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _odom_yaw_angle_rad
     (setq _odom_yaw_angle_rad (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get segway_msgs::Dynamics :md5sum-) "0b23bce5066773fe1ee204d2d2317ad4")
(setf (get segway_msgs::Dynamics :datatype-) "segway_msgs/Dynamics")
(setf (get segway_msgs::Dynamics :definition-)
      "Header header
float32 x_vel_target_mps
float32 y_vel_target_mps
float32 yaw_rate_target_rps
float32 vel_limit_mps
float32 yaw_rate_limit_rps
float32[] wheel_vel_mps
float32[] wheel_pos_m
float32 x_accel_mps2
float32 y_accel_mps2
float32 yaw_accel_mps2
float32 yaw_angle_rad
float32 odom_yaw_angle_rad

================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
string frame_id

")



(provide :segway_msgs/Dynamics "0b23bce5066773fe1ee204d2d2317ad4")


