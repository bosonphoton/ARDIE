;; Auto-generated. Do not edit!


(when (boundp 'segway_msgs::SuperAux)
  (if (not (find-package "SEGWAY_MSGS"))
    (make-package "SEGWAY_MSGS"))
  (shadow 'SuperAux (find-package "SEGWAY_MSGS")))
(unless (find-package "SEGWAY_MSGS::SUPERAUX")
  (make-package "SEGWAY_MSGS::SUPERAUX"))

(in-package "ROS")
;;//! \htmlinclude SuperAux.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass segway_msgs::SuperAux
  :super ros::object
  :slots (_header _battery_state_of_charge_percent _battery_current_A0pk _battery_voltage_V _max_cell_temp_degc _max_pcba_temp_degc _max_cell_voltage_V _min_cell_voltage_V _battery_interface_status_bits ))

(defmethod segway_msgs::SuperAux
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:battery_state_of_charge_percent __battery_state_of_charge_percent) 0.0)
    ((:battery_current_A0pk __battery_current_A0pk) 0.0)
    ((:battery_voltage_V __battery_voltage_V) 0.0)
    ((:max_cell_temp_degc __max_cell_temp_degc) 0.0)
    ((:max_pcba_temp_degc __max_pcba_temp_degc) 0.0)
    ((:max_cell_voltage_V __max_cell_voltage_V) 0.0)
    ((:min_cell_voltage_V __min_cell_voltage_V) 0.0)
    ((:battery_interface_status_bits __battery_interface_status_bits) 0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _battery_state_of_charge_percent (float __battery_state_of_charge_percent))
   (setq _battery_current_A0pk (float __battery_current_A0pk))
   (setq _battery_voltage_V (float __battery_voltage_V))
   (setq _max_cell_temp_degc (float __max_cell_temp_degc))
   (setq _max_pcba_temp_degc (float __max_pcba_temp_degc))
   (setq _max_cell_voltage_V (float __max_cell_voltage_V))
   (setq _min_cell_voltage_V (float __min_cell_voltage_V))
   (setq _battery_interface_status_bits (round __battery_interface_status_bits))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:battery_state_of_charge_percent
   (&optional __battery_state_of_charge_percent)
   (if __battery_state_of_charge_percent (setq _battery_state_of_charge_percent __battery_state_of_charge_percent)) _battery_state_of_charge_percent)
  (:battery_current_A0pk
   (&optional __battery_current_A0pk)
   (if __battery_current_A0pk (setq _battery_current_A0pk __battery_current_A0pk)) _battery_current_A0pk)
  (:battery_voltage_V
   (&optional __battery_voltage_V)
   (if __battery_voltage_V (setq _battery_voltage_V __battery_voltage_V)) _battery_voltage_V)
  (:max_cell_temp_degc
   (&optional __max_cell_temp_degc)
   (if __max_cell_temp_degc (setq _max_cell_temp_degc __max_cell_temp_degc)) _max_cell_temp_degc)
  (:max_pcba_temp_degc
   (&optional __max_pcba_temp_degc)
   (if __max_pcba_temp_degc (setq _max_pcba_temp_degc __max_pcba_temp_degc)) _max_pcba_temp_degc)
  (:max_cell_voltage_V
   (&optional __max_cell_voltage_V)
   (if __max_cell_voltage_V (setq _max_cell_voltage_V __max_cell_voltage_V)) _max_cell_voltage_V)
  (:min_cell_voltage_V
   (&optional __min_cell_voltage_V)
   (if __min_cell_voltage_V (setq _min_cell_voltage_V __min_cell_voltage_V)) _min_cell_voltage_V)
  (:battery_interface_status_bits
   (&optional __battery_interface_status_bits)
   (if __battery_interface_status_bits (setq _battery_interface_status_bits __battery_interface_status_bits)) _battery_interface_status_bits)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; float32 _battery_state_of_charge_percent
    4
    ;; float32 _battery_current_A0pk
    4
    ;; float32 _battery_voltage_V
    4
    ;; float32 _max_cell_temp_degc
    4
    ;; float32 _max_pcba_temp_degc
    4
    ;; float32 _max_cell_voltage_V
    4
    ;; float32 _min_cell_voltage_V
    4
    ;; uint32 _battery_interface_status_bits
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; float32 _battery_state_of_charge_percent
       (sys::poke _battery_state_of_charge_percent (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _battery_current_A0pk
       (sys::poke _battery_current_A0pk (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _battery_voltage_V
       (sys::poke _battery_voltage_V (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _max_cell_temp_degc
       (sys::poke _max_cell_temp_degc (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _max_pcba_temp_degc
       (sys::poke _max_pcba_temp_degc (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _max_cell_voltage_V
       (sys::poke _max_cell_voltage_V (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _min_cell_voltage_V
       (sys::poke _min_cell_voltage_V (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; uint32 _battery_interface_status_bits
       (write-long _battery_interface_status_bits s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; float32 _battery_state_of_charge_percent
     (setq _battery_state_of_charge_percent (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _battery_current_A0pk
     (setq _battery_current_A0pk (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _battery_voltage_V
     (setq _battery_voltage_V (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _max_cell_temp_degc
     (setq _max_cell_temp_degc (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _max_pcba_temp_degc
     (setq _max_pcba_temp_degc (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _max_cell_voltage_V
     (setq _max_cell_voltage_V (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _min_cell_voltage_V
     (setq _min_cell_voltage_V (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; uint32 _battery_interface_status_bits
     (setq _battery_interface_status_bits (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get segway_msgs::SuperAux :md5sum-) "34aa6b9336bda114f082ad32bd812cf5")
(setf (get segway_msgs::SuperAux :datatype-) "segway_msgs/SuperAux")
(setf (get segway_msgs::SuperAux :definition-)
      "Header header
float32 battery_state_of_charge_percent
float32 battery_current_A0pk
float32 battery_voltage_V
float32 max_cell_temp_degc
float32 max_pcba_temp_degc
float32 max_cell_voltage_V
float32 min_cell_voltage_V
uint32  battery_interface_status_bits

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



(provide :segway_msgs/SuperAux "34aa6b9336bda114f082ad32bd812cf5")


