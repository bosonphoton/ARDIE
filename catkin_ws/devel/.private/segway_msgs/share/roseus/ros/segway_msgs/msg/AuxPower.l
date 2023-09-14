;; Auto-generated. Do not edit!


(when (boundp 'segway_msgs::AuxPower)
  (if (not (find-package "SEGWAY_MSGS"))
    (make-package "SEGWAY_MSGS"))
  (shadow 'AuxPower (find-package "SEGWAY_MSGS")))
(unless (find-package "SEGWAY_MSGS::AUXPOWER")
  (make-package "SEGWAY_MSGS::AUXPOWER"))

(in-package "ROS")
;;//! \htmlinclude AuxPower.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass segway_msgs::AuxPower
  :super ros::object
  :slots (_header _aux_soc _aux_voltage_V _aux_current_A _aux_temp_degC _aux_sys_status _aux_bcu_status _aux_bcu_faults _startup_7p2v_batt_voltage_V ))

(defmethod segway_msgs::AuxPower
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:aux_soc __aux_soc) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:aux_voltage_V __aux_voltage_V) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:aux_current_A __aux_current_A) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:aux_temp_degC __aux_temp_degC) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:aux_sys_status __aux_sys_status) (make-array 0 :initial-element 0 :element-type :integer))
    ((:aux_bcu_status __aux_bcu_status) (make-array 0 :initial-element 0 :element-type :integer))
    ((:aux_bcu_faults __aux_bcu_faults) (make-array 0 :initial-element 0 :element-type :integer))
    ((:startup_7p2v_batt_voltage_V __startup_7p2v_batt_voltage_V) 0.0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _aux_soc __aux_soc)
   (setq _aux_voltage_V __aux_voltage_V)
   (setq _aux_current_A __aux_current_A)
   (setq _aux_temp_degC __aux_temp_degC)
   (setq _aux_sys_status __aux_sys_status)
   (setq _aux_bcu_status __aux_bcu_status)
   (setq _aux_bcu_faults __aux_bcu_faults)
   (setq _startup_7p2v_batt_voltage_V (float __startup_7p2v_batt_voltage_V))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:aux_soc
   (&optional __aux_soc)
   (if __aux_soc (setq _aux_soc __aux_soc)) _aux_soc)
  (:aux_voltage_V
   (&optional __aux_voltage_V)
   (if __aux_voltage_V (setq _aux_voltage_V __aux_voltage_V)) _aux_voltage_V)
  (:aux_current_A
   (&optional __aux_current_A)
   (if __aux_current_A (setq _aux_current_A __aux_current_A)) _aux_current_A)
  (:aux_temp_degC
   (&optional __aux_temp_degC)
   (if __aux_temp_degC (setq _aux_temp_degC __aux_temp_degC)) _aux_temp_degC)
  (:aux_sys_status
   (&optional __aux_sys_status)
   (if __aux_sys_status (setq _aux_sys_status __aux_sys_status)) _aux_sys_status)
  (:aux_bcu_status
   (&optional __aux_bcu_status)
   (if __aux_bcu_status (setq _aux_bcu_status __aux_bcu_status)) _aux_bcu_status)
  (:aux_bcu_faults
   (&optional __aux_bcu_faults)
   (if __aux_bcu_faults (setq _aux_bcu_faults __aux_bcu_faults)) _aux_bcu_faults)
  (:startup_7p2v_batt_voltage_V
   (&optional __startup_7p2v_batt_voltage_V)
   (if __startup_7p2v_batt_voltage_V (setq _startup_7p2v_batt_voltage_V __startup_7p2v_batt_voltage_V)) _startup_7p2v_batt_voltage_V)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; float32[] _aux_soc
    (* 4    (length _aux_soc)) 4
    ;; float32[] _aux_voltage_V
    (* 4    (length _aux_voltage_V)) 4
    ;; float32[] _aux_current_A
    (* 4    (length _aux_current_A)) 4
    ;; float32[] _aux_temp_degC
    (* 4    (length _aux_temp_degC)) 4
    ;; uint32[] _aux_sys_status
    (* 4    (length _aux_sys_status)) 4
    ;; uint32[] _aux_bcu_status
    (* 4    (length _aux_bcu_status)) 4
    ;; uint32[] _aux_bcu_faults
    (* 4    (length _aux_bcu_faults)) 4
    ;; float32 _startup_7p2v_batt_voltage_V
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; float32[] _aux_soc
     (write-long (length _aux_soc) s)
     (dotimes (i (length _aux_soc))
       (sys::poke (elt _aux_soc i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;; float32[] _aux_voltage_V
     (write-long (length _aux_voltage_V) s)
     (dotimes (i (length _aux_voltage_V))
       (sys::poke (elt _aux_voltage_V i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;; float32[] _aux_current_A
     (write-long (length _aux_current_A) s)
     (dotimes (i (length _aux_current_A))
       (sys::poke (elt _aux_current_A i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;; float32[] _aux_temp_degC
     (write-long (length _aux_temp_degC) s)
     (dotimes (i (length _aux_temp_degC))
       (sys::poke (elt _aux_temp_degC i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;; uint32[] _aux_sys_status
     (write-long (length _aux_sys_status) s)
     (dotimes (i (length _aux_sys_status))
       (write-long (elt _aux_sys_status i) s)
       )
     ;; uint32[] _aux_bcu_status
     (write-long (length _aux_bcu_status) s)
     (dotimes (i (length _aux_bcu_status))
       (write-long (elt _aux_bcu_status i) s)
       )
     ;; uint32[] _aux_bcu_faults
     (write-long (length _aux_bcu_faults) s)
     (dotimes (i (length _aux_bcu_faults))
       (write-long (elt _aux_bcu_faults i) s)
       )
     ;; float32 _startup_7p2v_batt_voltage_V
       (sys::poke _startup_7p2v_batt_voltage_V (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; float32[] _aux_soc
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _aux_soc (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _aux_soc i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;; float32[] _aux_voltage_V
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _aux_voltage_V (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _aux_voltage_V i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;; float32[] _aux_current_A
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _aux_current_A (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _aux_current_A i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;; float32[] _aux_temp_degC
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _aux_temp_degC (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _aux_temp_degC i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;; uint32[] _aux_sys_status
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _aux_sys_status (instantiate integer-vector n))
     (dotimes (i n)
     (setf (elt _aux_sys_status i) (sys::peek buf ptr- :integer)) (incf ptr- 4)
     ))
   ;; uint32[] _aux_bcu_status
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _aux_bcu_status (instantiate integer-vector n))
     (dotimes (i n)
     (setf (elt _aux_bcu_status i) (sys::peek buf ptr- :integer)) (incf ptr- 4)
     ))
   ;; uint32[] _aux_bcu_faults
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _aux_bcu_faults (instantiate integer-vector n))
     (dotimes (i n)
     (setf (elt _aux_bcu_faults i) (sys::peek buf ptr- :integer)) (incf ptr- 4)
     ))
   ;; float32 _startup_7p2v_batt_voltage_V
     (setq _startup_7p2v_batt_voltage_V (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get segway_msgs::AuxPower :md5sum-) "5c5c3951c2c3b3b11a7ee2c4d5792ef7")
(setf (get segway_msgs::AuxPower :datatype-) "segway_msgs/AuxPower")
(setf (get segway_msgs::AuxPower :definition-)
      "Header header
float32[] aux_soc
float32[] aux_voltage_V
float32[] aux_current_A
float32[] aux_temp_degC
uint32[] aux_sys_status
uint32[] aux_bcu_status
uint32[] aux_bcu_faults
float32 startup_7p2v_batt_voltage_V

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



(provide :segway_msgs/AuxPower "5c5c3951c2c3b3b11a7ee2c4d5792ef7")


