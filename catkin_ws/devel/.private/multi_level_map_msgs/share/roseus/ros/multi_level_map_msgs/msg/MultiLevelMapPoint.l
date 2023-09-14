;; Auto-generated. Do not edit!


(when (boundp 'multi_level_map_msgs::MultiLevelMapPoint)
  (if (not (find-package "MULTI_LEVEL_MAP_MSGS"))
    (make-package "MULTI_LEVEL_MAP_MSGS"))
  (shadow 'MultiLevelMapPoint (find-package "MULTI_LEVEL_MAP_MSGS")))
(unless (find-package "MULTI_LEVEL_MAP_MSGS::MULTILEVELMAPPOINT")
  (make-package "MULTI_LEVEL_MAP_MSGS::MULTILEVELMAPPOINT"))

(in-package "ROS")
;;//! \htmlinclude MultiLevelMapPoint.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))


(defclass multi_level_map_msgs::MultiLevelMapPoint
  :super ros::object
  :slots (_level_id _point ))

(defmethod multi_level_map_msgs::MultiLevelMapPoint
  (:init
   (&key
    ((:level_id __level_id) "")
    ((:point __point) (instance geometry_msgs::Point :init))
    )
   (send-super :init)
   (setq _level_id (string __level_id))
   (setq _point __point)
   self)
  (:level_id
   (&optional __level_id)
   (if __level_id (setq _level_id __level_id)) _level_id)
  (:point
   (&rest __point)
   (if (keywordp (car __point))
       (send* _point __point)
     (progn
       (if __point (setq _point (car __point)))
       _point)))
  (:serialization-length
   ()
   (+
    ;; string _level_id
    4 (length _level_id)
    ;; geometry_msgs/Point _point
    (send _point :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _level_id
       (write-long (length _level_id) s) (princ _level_id s)
     ;; geometry_msgs/Point _point
       (send _point :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _level_id
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _level_id (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; geometry_msgs/Point _point
     (send _point :deserialize buf ptr-) (incf ptr- (send _point :serialization-length))
   ;;
   self)
  )

(setf (get multi_level_map_msgs::MultiLevelMapPoint :md5sum-) "c23d10c5d5876c43aeb09f6ec5564702")
(setf (get multi_level_map_msgs::MultiLevelMapPoint :datatype-) "multi_level_map_msgs/MultiLevelMapPoint")
(setf (get multi_level_map_msgs::MultiLevelMapPoint :definition-)
      "string level_id
geometry_msgs/Point point

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

")



(provide :multi_level_map_msgs/MultiLevelMapPoint "c23d10c5d5876c43aeb09f6ec5564702")


