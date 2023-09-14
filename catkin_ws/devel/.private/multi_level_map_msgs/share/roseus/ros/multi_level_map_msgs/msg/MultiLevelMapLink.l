;; Auto-generated. Do not edit!


(when (boundp 'multi_level_map_msgs::MultiLevelMapLink)
  (if (not (find-package "MULTI_LEVEL_MAP_MSGS"))
    (make-package "MULTI_LEVEL_MAP_MSGS"))
  (shadow 'MultiLevelMapLink (find-package "MULTI_LEVEL_MAP_MSGS")))
(unless (find-package "MULTI_LEVEL_MAP_MSGS::MULTILEVELMAPLINK")
  (make-package "MULTI_LEVEL_MAP_MSGS::MULTILEVELMAPLINK"))

(in-package "ROS")
;;//! \htmlinclude MultiLevelMapLink.msg.html


(defclass multi_level_map_msgs::MultiLevelMapLink
  :super ros::object
  :slots (_from_point _to_point _traversal_cost _forward_message _reverse_message ))

(defmethod multi_level_map_msgs::MultiLevelMapLink
  (:init
   (&key
    ((:from_point __from_point) (instance multi_level_map_msgs::MultiLevelMapPoint :init))
    ((:to_point __to_point) (instance multi_level_map_msgs::MultiLevelMapPoint :init))
    ((:traversal_cost __traversal_cost) 0.0)
    ((:forward_message __forward_message) "")
    ((:reverse_message __reverse_message) "")
    )
   (send-super :init)
   (setq _from_point __from_point)
   (setq _to_point __to_point)
   (setq _traversal_cost (float __traversal_cost))
   (setq _forward_message (string __forward_message))
   (setq _reverse_message (string __reverse_message))
   self)
  (:from_point
   (&rest __from_point)
   (if (keywordp (car __from_point))
       (send* _from_point __from_point)
     (progn
       (if __from_point (setq _from_point (car __from_point)))
       _from_point)))
  (:to_point
   (&rest __to_point)
   (if (keywordp (car __to_point))
       (send* _to_point __to_point)
     (progn
       (if __to_point (setq _to_point (car __to_point)))
       _to_point)))
  (:traversal_cost
   (&optional __traversal_cost)
   (if __traversal_cost (setq _traversal_cost __traversal_cost)) _traversal_cost)
  (:forward_message
   (&optional __forward_message)
   (if __forward_message (setq _forward_message __forward_message)) _forward_message)
  (:reverse_message
   (&optional __reverse_message)
   (if __reverse_message (setq _reverse_message __reverse_message)) _reverse_message)
  (:serialization-length
   ()
   (+
    ;; multi_level_map_msgs/MultiLevelMapPoint _from_point
    (send _from_point :serialization-length)
    ;; multi_level_map_msgs/MultiLevelMapPoint _to_point
    (send _to_point :serialization-length)
    ;; float64 _traversal_cost
    8
    ;; string _forward_message
    4 (length _forward_message)
    ;; string _reverse_message
    4 (length _reverse_message)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; multi_level_map_msgs/MultiLevelMapPoint _from_point
       (send _from_point :serialize s)
     ;; multi_level_map_msgs/MultiLevelMapPoint _to_point
       (send _to_point :serialize s)
     ;; float64 _traversal_cost
       (sys::poke _traversal_cost (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; string _forward_message
       (write-long (length _forward_message) s) (princ _forward_message s)
     ;; string _reverse_message
       (write-long (length _reverse_message) s) (princ _reverse_message s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; multi_level_map_msgs/MultiLevelMapPoint _from_point
     (send _from_point :deserialize buf ptr-) (incf ptr- (send _from_point :serialization-length))
   ;; multi_level_map_msgs/MultiLevelMapPoint _to_point
     (send _to_point :deserialize buf ptr-) (incf ptr- (send _to_point :serialization-length))
   ;; float64 _traversal_cost
     (setq _traversal_cost (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; string _forward_message
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _forward_message (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _reverse_message
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _reverse_message (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(setf (get multi_level_map_msgs::MultiLevelMapLink :md5sum-) "b3b52a350b899d69322587cf7b3a1268")
(setf (get multi_level_map_msgs::MultiLevelMapLink :datatype-) "multi_level_map_msgs/MultiLevelMapLink")
(setf (get multi_level_map_msgs::MultiLevelMapLink :definition-)
      "MultiLevelMapPoint from_point
MultiLevelMapPoint to_point
float64 traversal_cost
string forward_message
string reverse_message

================================================================================
MSG: multi_level_map_msgs/MultiLevelMapPoint
string level_id
geometry_msgs/Point point

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

")



(provide :multi_level_map_msgs/MultiLevelMapLink "b3b52a350b899d69322587cf7b3a1268")


