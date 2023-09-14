;; Auto-generated. Do not edit!


(when (boundp 'segway_msgs::Propulsion)
  (if (not (find-package "SEGWAY_MSGS"))
    (make-package "SEGWAY_MSGS"))
  (shadow 'Propulsion (find-package "SEGWAY_MSGS")))
(unless (find-package "SEGWAY_MSGS::PROPULSION")
  (make-package "SEGWAY_MSGS::PROPULSION"))

(in-package "ROS")
;;//! \htmlinclude Propulsion.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass segway_msgs::Propulsion
  :super ros::object
  :slots (_header _min_propulsion_battery_soc _mcu_battery_soc _mcu_battery_temp_degC _mcu_inst_power_W _mcu_total_energy_Wh _motor_current_A0pk _max_motor_current_A0pk _motor_current_limit_A0pk _min_motor_current_limit_A0pk ))

(defmethod segway_msgs::Propulsion
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:min_propulsion_battery_soc __min_propulsion_battery_soc) 0.0)
    ((:mcu_battery_soc __mcu_battery_soc) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:mcu_battery_temp_degC __mcu_battery_temp_degC) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:mcu_inst_power_W __mcu_inst_power_W) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:mcu_total_energy_Wh __mcu_total_energy_Wh) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:motor_current_A0pk __motor_current_A0pk) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:max_motor_current_A0pk __max_motor_current_A0pk) 0.0)
    ((:motor_current_limit_A0pk __motor_current_limit_A0pk) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:min_motor_current_limit_A0pk __min_motor_current_limit_A0pk) 0.0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _min_propulsion_battery_soc (float __min_propulsion_battery_soc))
   (setq _mcu_battery_soc __mcu_battery_soc)
   (setq _mcu_battery_temp_degC __mcu_battery_temp_degC)
   (setq _mcu_inst_power_W __mcu_inst_power_W)
   (setq _mcu_total_energy_Wh __mcu_total_energy_Wh)
   (setq _motor_current_A0pk __motor_current_A0pk)
   (setq _max_motor_current_A0pk (float __max_motor_current_A0pk))
   (setq _motor_current_limit_A0pk __motor_current_limit_A0pk)
   (setq _min_motor_current_limit_A0pk (float __min_motor_current_limit_A0pk))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:min_propulsion_battery_soc
   (&optional __min_propulsion_battery_soc)
   (if __min_propulsion_battery_soc (setq _min_propulsion_battery_soc __min_propulsion_battery_soc)) _min_propulsion_battery_soc)
  (:mcu_battery_soc
   (&optional __mcu_battery_soc)
   (if __mcu_battery_soc (setq _mcu_battery_soc __mcu_battery_soc)) _mcu_battery_soc)
  (:mcu_battery_temp_degC
   (&optional __mcu_battery_temp_degC)
   (if __mcu_battery_temp_degC (setq _mcu_battery_temp_degC __mcu_battery_temp_degC)) _mcu_battery_temp_degC)
  (:mcu_inst_power_W
   (&optional __mcu_inst_power_W)
   (if __mcu_inst_power_W (setq _mcu_inst_power_W __mcu_inst_power_W)) _mcu_inst_power_W)
  (:mcu_total_energy_Wh
   (&optional __mcu_total_energy_Wh)
   (if __mcu_total_energy_Wh (setq _mcu_total_energy_Wh __mcu_total_energy_Wh)) _mcu_total_energy_Wh)
  (:motor_current_A0pk
   (&optional __motor_current_A0pk)
   (if __motor_current_A0pk (setq _motor_current_A0pk __motor_current_A0pk)) _motor_current_A0pk)
  (:max_motor_current_A0pk
   (&optional __max_motor_current_A0pk)
   (if __max_motor_current_A0pk (setq _max_motor_current_A0pk __max_motor_current_A0pk)) _max_motor_current_A0pk)
  (:motor_current_limit_A0pk
   (&optional __motor_current_limit_A0pk)
   (if __motor_current_limit_A0pk (setq _motor_current_limit_A0pk __motor_current_limit_A0pk)) _motor_current_limit_A0pk)
  (:min_motor_current_limit_A0pk
   (&optional __min_motor_current_limit_A0pk)
   (if __min_motor_current_limit_A0pk (setq _min_motor_current_limit_A0pk __min_motor_current_limit_A0pk)) _min_motor_current_limit_A0pk)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; float32 _min_propulsion_battery_soc
    4
    ;; float32[] _mcu_battery_soc
    (* 4    (length _mcu_battery_soc)) 4
    ;; float32[] _mcu_battery_temp_degC
    (* 4    (length _mcu_battery_temp_degC)) 4
    ;; float32[] _mcu_inst_power_W
    (* 4    (length _mcu_inst_power_W)) 4
    ;; float32[] _mcu_total_energy_Wh
    (* 4    (length _mcu_total_energy_Wh)) 4
    ;; float32[] _motor_current_A0pk
    (* 4    (length _motor_current_A0pk)) 4
    ;; float32 _max_motor_current_A0pk
    4
    ;; float32[] _motor_current_limit_A0pk
    (* 4    (length _motor_current_limit_A0pk)) 4
    ;; float32 _min_motor_current_limit_A0pk
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; float32 _min_propulsion_battery_soc
       (sys::poke _min_propulsion_battery_soc (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32[] _mcu_battery_soc
     (write-long (length _mcu_battery_soc) s)
     (dotimes (i (length _mcu_battery_soc))
       (sys::poke (elt _mcu_battery_soc i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;; float32[] _mcu_battery_temp_degC
     (write-long (length _mcu_battery_temp_degC) s)
     (dotimes (i (length _mcu_battery_temp_degC))
       (sys::poke (elt _mcu_battery_temp_degC i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;; float32[] _mcu_inst_power_W
     (write-long (length _mcu_inst_power_W) s)
     (dotimes (i (length _mcu_inst_power_W))
       (sys::poke (elt _mcu_inst_power_W i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;; float32[] _mcu_total_energy_Wh
     (write-long (length _mcu_total_energy_Wh) s)
     (dotimes (i (length _mcu_total_energy_Wh))
       (sys::poke (elt _mcu_total_energy_Wh i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;; float32[] _motor_current_A0pk
     (write-long (length _motor_current_A0pk) s)
     (dotimes (i (length _motor_current_A0pk))
       (sys::poke (elt _motor_current_A0pk i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;; float32 _max_motor_current_A0pk
       (sys::poke _max_motor_current_A0pk (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32[] _motor_current_limit_A0pk
     (write-long (length _motor_current_limit_A0pk) s)
     (dotimes (i (length _motor_current_limit_A0pk))
       (sys::poke (elt _motor_current_limit_A0pk i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;; float32 _min_motor_current_limit_A0pk
       (sys::poke _min_motor_current_limit_A0pk (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; float32 _min_propulsion_battery_soc
     (setq _min_propulsion_battery_soc (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32[] _mcu_battery_soc
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _mcu_battery_soc (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _mcu_battery_soc i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;; float32[] _mcu_battery_temp_degC
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _mcu_battery_temp_degC (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _mcu_battery_temp_degC i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;; float32[] _mcu_inst_power_W
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _mcu_inst_power_W (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _mcu_inst_power_W i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;; float32[] _mcu_total_energy_Wh
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _mcu_total_energy_Wh (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _mcu_total_energy_Wh i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;; float32[] _motor_current_A0pk
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _motor_current_A0pk (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _motor_current_A0pk i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;; float32 _max_motor_current_A0pk
     (setq _max_motor_current_A0pk (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32[] _motor_current_limit_A0pk
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _motor_current_limit_A0pk (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _motor_current_limit_A0pk i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;; float32 _min_motor_current_limit_A0pk
     (setq _min_motor_current_limit_A0pk (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get segway_msgs::Propulsion :md5sum-) "8db8f550407de4bfaf53927720c28e50")
(setf (get segway_msgs::Propulsion :datatype-) "segway_msgs/Propulsion")
(setf (get segway_msgs::Propulsion :definition-)
      "Header header
float32 min_propulsion_battery_soc
float32[] mcu_battery_soc
float32[] mcu_battery_temp_degC
float32[] mcu_inst_power_W
float32[] mcu_total_energy_Wh
float32[] motor_current_A0pk
float32 max_motor_current_A0pk
float32[] motor_current_limit_A0pk
float32 min_motor_current_limit_A0pk



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



(provide :segway_msgs/Propulsion "8db8f550407de4bfaf53927720c28e50")


