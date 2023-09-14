;; Auto-generated. Do not edit!


(when (boundp 'segway_msgs::Configuration)
  (if (not (find-package "SEGWAY_MSGS"))
    (make-package "SEGWAY_MSGS"))
  (shadow 'Configuration (find-package "SEGWAY_MSGS")))
(unless (find-package "SEGWAY_MSGS::CONFIGURATION")
  (make-package "SEGWAY_MSGS::CONFIGURATION"))

(in-package "ROS")
;;//! \htmlinclude Configuration.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass segway_msgs::Configuration
  :super ros::object
  :slots (_header _teleop_vel_limit_mps _teleop_accel_limit_mps2 _teleop_yaw_rate_limit_rps _teleop_yaw_accel_limit_rps2 _vel_limit_mps _accel_limit_mps2 _decel_limit_mps2 _dtz_decel_limit_mps2 _lateral_accel_limit_mps2 _yaw_rate_limit_rps _yaw_accel_limit_rps2 _tire_diameter_m _wheelbase_length_m _omni_yaw_correction_factor _omni_straffe_correction_factor _wheel_track_width_m _gear_ratio _config_bitmap _eth_ip_address _eth_port_number _eth_subnet_mask _eth_gateway ))

(defmethod segway_msgs::Configuration
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:teleop_vel_limit_mps __teleop_vel_limit_mps) 0.0)
    ((:teleop_accel_limit_mps2 __teleop_accel_limit_mps2) 0.0)
    ((:teleop_yaw_rate_limit_rps __teleop_yaw_rate_limit_rps) 0.0)
    ((:teleop_yaw_accel_limit_rps2 __teleop_yaw_accel_limit_rps2) 0.0)
    ((:vel_limit_mps __vel_limit_mps) 0.0)
    ((:accel_limit_mps2 __accel_limit_mps2) 0.0)
    ((:decel_limit_mps2 __decel_limit_mps2) 0.0)
    ((:dtz_decel_limit_mps2 __dtz_decel_limit_mps2) 0.0)
    ((:lateral_accel_limit_mps2 __lateral_accel_limit_mps2) 0.0)
    ((:yaw_rate_limit_rps __yaw_rate_limit_rps) 0.0)
    ((:yaw_accel_limit_rps2 __yaw_accel_limit_rps2) 0.0)
    ((:tire_diameter_m __tire_diameter_m) 0.0)
    ((:wheelbase_length_m __wheelbase_length_m) 0.0)
    ((:omni_yaw_correction_factor __omni_yaw_correction_factor) 0.0)
    ((:omni_straffe_correction_factor __omni_straffe_correction_factor) 0.0)
    ((:wheel_track_width_m __wheel_track_width_m) 0.0)
    ((:gear_ratio __gear_ratio) 0.0)
    ((:config_bitmap __config_bitmap) 0)
    ((:eth_ip_address __eth_ip_address) "")
    ((:eth_port_number __eth_port_number) 0)
    ((:eth_subnet_mask __eth_subnet_mask) "")
    ((:eth_gateway __eth_gateway) "")
    )
   (send-super :init)
   (setq _header __header)
   (setq _teleop_vel_limit_mps (float __teleop_vel_limit_mps))
   (setq _teleop_accel_limit_mps2 (float __teleop_accel_limit_mps2))
   (setq _teleop_yaw_rate_limit_rps (float __teleop_yaw_rate_limit_rps))
   (setq _teleop_yaw_accel_limit_rps2 (float __teleop_yaw_accel_limit_rps2))
   (setq _vel_limit_mps (float __vel_limit_mps))
   (setq _accel_limit_mps2 (float __accel_limit_mps2))
   (setq _decel_limit_mps2 (float __decel_limit_mps2))
   (setq _dtz_decel_limit_mps2 (float __dtz_decel_limit_mps2))
   (setq _lateral_accel_limit_mps2 (float __lateral_accel_limit_mps2))
   (setq _yaw_rate_limit_rps (float __yaw_rate_limit_rps))
   (setq _yaw_accel_limit_rps2 (float __yaw_accel_limit_rps2))
   (setq _tire_diameter_m (float __tire_diameter_m))
   (setq _wheelbase_length_m (float __wheelbase_length_m))
   (setq _omni_yaw_correction_factor (float __omni_yaw_correction_factor))
   (setq _omni_straffe_correction_factor (float __omni_straffe_correction_factor))
   (setq _wheel_track_width_m (float __wheel_track_width_m))
   (setq _gear_ratio (float __gear_ratio))
   (setq _config_bitmap (round __config_bitmap))
   (setq _eth_ip_address (string __eth_ip_address))
   (setq _eth_port_number (round __eth_port_number))
   (setq _eth_subnet_mask (string __eth_subnet_mask))
   (setq _eth_gateway (string __eth_gateway))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:teleop_vel_limit_mps
   (&optional __teleop_vel_limit_mps)
   (if __teleop_vel_limit_mps (setq _teleop_vel_limit_mps __teleop_vel_limit_mps)) _teleop_vel_limit_mps)
  (:teleop_accel_limit_mps2
   (&optional __teleop_accel_limit_mps2)
   (if __teleop_accel_limit_mps2 (setq _teleop_accel_limit_mps2 __teleop_accel_limit_mps2)) _teleop_accel_limit_mps2)
  (:teleop_yaw_rate_limit_rps
   (&optional __teleop_yaw_rate_limit_rps)
   (if __teleop_yaw_rate_limit_rps (setq _teleop_yaw_rate_limit_rps __teleop_yaw_rate_limit_rps)) _teleop_yaw_rate_limit_rps)
  (:teleop_yaw_accel_limit_rps2
   (&optional __teleop_yaw_accel_limit_rps2)
   (if __teleop_yaw_accel_limit_rps2 (setq _teleop_yaw_accel_limit_rps2 __teleop_yaw_accel_limit_rps2)) _teleop_yaw_accel_limit_rps2)
  (:vel_limit_mps
   (&optional __vel_limit_mps)
   (if __vel_limit_mps (setq _vel_limit_mps __vel_limit_mps)) _vel_limit_mps)
  (:accel_limit_mps2
   (&optional __accel_limit_mps2)
   (if __accel_limit_mps2 (setq _accel_limit_mps2 __accel_limit_mps2)) _accel_limit_mps2)
  (:decel_limit_mps2
   (&optional __decel_limit_mps2)
   (if __decel_limit_mps2 (setq _decel_limit_mps2 __decel_limit_mps2)) _decel_limit_mps2)
  (:dtz_decel_limit_mps2
   (&optional __dtz_decel_limit_mps2)
   (if __dtz_decel_limit_mps2 (setq _dtz_decel_limit_mps2 __dtz_decel_limit_mps2)) _dtz_decel_limit_mps2)
  (:lateral_accel_limit_mps2
   (&optional __lateral_accel_limit_mps2)
   (if __lateral_accel_limit_mps2 (setq _lateral_accel_limit_mps2 __lateral_accel_limit_mps2)) _lateral_accel_limit_mps2)
  (:yaw_rate_limit_rps
   (&optional __yaw_rate_limit_rps)
   (if __yaw_rate_limit_rps (setq _yaw_rate_limit_rps __yaw_rate_limit_rps)) _yaw_rate_limit_rps)
  (:yaw_accel_limit_rps2
   (&optional __yaw_accel_limit_rps2)
   (if __yaw_accel_limit_rps2 (setq _yaw_accel_limit_rps2 __yaw_accel_limit_rps2)) _yaw_accel_limit_rps2)
  (:tire_diameter_m
   (&optional __tire_diameter_m)
   (if __tire_diameter_m (setq _tire_diameter_m __tire_diameter_m)) _tire_diameter_m)
  (:wheelbase_length_m
   (&optional __wheelbase_length_m)
   (if __wheelbase_length_m (setq _wheelbase_length_m __wheelbase_length_m)) _wheelbase_length_m)
  (:omni_yaw_correction_factor
   (&optional __omni_yaw_correction_factor)
   (if __omni_yaw_correction_factor (setq _omni_yaw_correction_factor __omni_yaw_correction_factor)) _omni_yaw_correction_factor)
  (:omni_straffe_correction_factor
   (&optional __omni_straffe_correction_factor)
   (if __omni_straffe_correction_factor (setq _omni_straffe_correction_factor __omni_straffe_correction_factor)) _omni_straffe_correction_factor)
  (:wheel_track_width_m
   (&optional __wheel_track_width_m)
   (if __wheel_track_width_m (setq _wheel_track_width_m __wheel_track_width_m)) _wheel_track_width_m)
  (:gear_ratio
   (&optional __gear_ratio)
   (if __gear_ratio (setq _gear_ratio __gear_ratio)) _gear_ratio)
  (:config_bitmap
   (&optional __config_bitmap)
   (if __config_bitmap (setq _config_bitmap __config_bitmap)) _config_bitmap)
  (:eth_ip_address
   (&optional __eth_ip_address)
   (if __eth_ip_address (setq _eth_ip_address __eth_ip_address)) _eth_ip_address)
  (:eth_port_number
   (&optional __eth_port_number)
   (if __eth_port_number (setq _eth_port_number __eth_port_number)) _eth_port_number)
  (:eth_subnet_mask
   (&optional __eth_subnet_mask)
   (if __eth_subnet_mask (setq _eth_subnet_mask __eth_subnet_mask)) _eth_subnet_mask)
  (:eth_gateway
   (&optional __eth_gateway)
   (if __eth_gateway (setq _eth_gateway __eth_gateway)) _eth_gateway)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; float32 _teleop_vel_limit_mps
    4
    ;; float32 _teleop_accel_limit_mps2
    4
    ;; float32 _teleop_yaw_rate_limit_rps
    4
    ;; float32 _teleop_yaw_accel_limit_rps2
    4
    ;; float32 _vel_limit_mps
    4
    ;; float32 _accel_limit_mps2
    4
    ;; float32 _decel_limit_mps2
    4
    ;; float32 _dtz_decel_limit_mps2
    4
    ;; float32 _lateral_accel_limit_mps2
    4
    ;; float32 _yaw_rate_limit_rps
    4
    ;; float32 _yaw_accel_limit_rps2
    4
    ;; float32 _tire_diameter_m
    4
    ;; float32 _wheelbase_length_m
    4
    ;; float32 _omni_yaw_correction_factor
    4
    ;; float32 _omni_straffe_correction_factor
    4
    ;; float32 _wheel_track_width_m
    4
    ;; float32 _gear_ratio
    4
    ;; uint32 _config_bitmap
    4
    ;; string _eth_ip_address
    4 (length _eth_ip_address)
    ;; uint32 _eth_port_number
    4
    ;; string _eth_subnet_mask
    4 (length _eth_subnet_mask)
    ;; string _eth_gateway
    4 (length _eth_gateway)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; float32 _teleop_vel_limit_mps
       (sys::poke _teleop_vel_limit_mps (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _teleop_accel_limit_mps2
       (sys::poke _teleop_accel_limit_mps2 (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _teleop_yaw_rate_limit_rps
       (sys::poke _teleop_yaw_rate_limit_rps (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _teleop_yaw_accel_limit_rps2
       (sys::poke _teleop_yaw_accel_limit_rps2 (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _vel_limit_mps
       (sys::poke _vel_limit_mps (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _accel_limit_mps2
       (sys::poke _accel_limit_mps2 (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _decel_limit_mps2
       (sys::poke _decel_limit_mps2 (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _dtz_decel_limit_mps2
       (sys::poke _dtz_decel_limit_mps2 (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _lateral_accel_limit_mps2
       (sys::poke _lateral_accel_limit_mps2 (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _yaw_rate_limit_rps
       (sys::poke _yaw_rate_limit_rps (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _yaw_accel_limit_rps2
       (sys::poke _yaw_accel_limit_rps2 (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _tire_diameter_m
       (sys::poke _tire_diameter_m (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _wheelbase_length_m
       (sys::poke _wheelbase_length_m (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _omni_yaw_correction_factor
       (sys::poke _omni_yaw_correction_factor (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _omni_straffe_correction_factor
       (sys::poke _omni_straffe_correction_factor (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _wheel_track_width_m
       (sys::poke _wheel_track_width_m (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _gear_ratio
       (sys::poke _gear_ratio (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; uint32 _config_bitmap
       (write-long _config_bitmap s)
     ;; string _eth_ip_address
       (write-long (length _eth_ip_address) s) (princ _eth_ip_address s)
     ;; uint32 _eth_port_number
       (write-long _eth_port_number s)
     ;; string _eth_subnet_mask
       (write-long (length _eth_subnet_mask) s) (princ _eth_subnet_mask s)
     ;; string _eth_gateway
       (write-long (length _eth_gateway) s) (princ _eth_gateway s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; float32 _teleop_vel_limit_mps
     (setq _teleop_vel_limit_mps (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _teleop_accel_limit_mps2
     (setq _teleop_accel_limit_mps2 (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _teleop_yaw_rate_limit_rps
     (setq _teleop_yaw_rate_limit_rps (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _teleop_yaw_accel_limit_rps2
     (setq _teleop_yaw_accel_limit_rps2 (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _vel_limit_mps
     (setq _vel_limit_mps (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _accel_limit_mps2
     (setq _accel_limit_mps2 (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _decel_limit_mps2
     (setq _decel_limit_mps2 (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _dtz_decel_limit_mps2
     (setq _dtz_decel_limit_mps2 (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _lateral_accel_limit_mps2
     (setq _lateral_accel_limit_mps2 (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _yaw_rate_limit_rps
     (setq _yaw_rate_limit_rps (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _yaw_accel_limit_rps2
     (setq _yaw_accel_limit_rps2 (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _tire_diameter_m
     (setq _tire_diameter_m (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _wheelbase_length_m
     (setq _wheelbase_length_m (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _omni_yaw_correction_factor
     (setq _omni_yaw_correction_factor (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _omni_straffe_correction_factor
     (setq _omni_straffe_correction_factor (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _wheel_track_width_m
     (setq _wheel_track_width_m (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _gear_ratio
     (setq _gear_ratio (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; uint32 _config_bitmap
     (setq _config_bitmap (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; string _eth_ip_address
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _eth_ip_address (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; uint32 _eth_port_number
     (setq _eth_port_number (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; string _eth_subnet_mask
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _eth_subnet_mask (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _eth_gateway
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _eth_gateway (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(setf (get segway_msgs::Configuration :md5sum-) "03157f9e1c3a782af2e296a4e475e4af")
(setf (get segway_msgs::Configuration :datatype-) "segway_msgs/Configuration")
(setf (get segway_msgs::Configuration :definition-)
      "Header header
float32 teleop_vel_limit_mps
float32 teleop_accel_limit_mps2
float32 teleop_yaw_rate_limit_rps
float32 teleop_yaw_accel_limit_rps2
float32 vel_limit_mps
float32 accel_limit_mps2
float32 decel_limit_mps2
float32 dtz_decel_limit_mps2
float32 lateral_accel_limit_mps2
float32 yaw_rate_limit_rps
float32 yaw_accel_limit_rps2
float32 tire_diameter_m
float32 wheelbase_length_m
float32 omni_yaw_correction_factor
float32 omni_straffe_correction_factor
float32 wheel_track_width_m
float32 gear_ratio
uint32 config_bitmap
string eth_ip_address
uint32 eth_port_number
string eth_subnet_mask
string eth_gateway


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



(provide :segway_msgs/Configuration "03157f9e1c3a782af2e296a4e475e4af")


