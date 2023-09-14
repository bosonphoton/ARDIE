;; Auto-generated. Do not edit!


(when (boundp 'bwi_msgs::AvailableRobotArray)
  (if (not (find-package "BWI_MSGS"))
    (make-package "BWI_MSGS"))
  (shadow 'AvailableRobotArray (find-package "BWI_MSGS")))
(unless (find-package "BWI_MSGS::AVAILABLEROBOTARRAY")
  (make-package "BWI_MSGS::AVAILABLEROBOTARRAY"))

(in-package "ROS")
;;//! \htmlinclude AvailableRobotArray.msg.html


(defclass bwi_msgs::AvailableRobotArray
  :super ros::object
  :slots (_robots ))

(defmethod bwi_msgs::AvailableRobotArray
  (:init
   (&key
    ((:robots __robots) (let (r) (dotimes (i 0) (push (instance bwi_msgs::AvailableRobot :init) r)) r))
    )
   (send-super :init)
   (setq _robots __robots)
   self)
  (:robots
   (&rest __robots)
   (if (keywordp (car __robots))
       (send* _robots __robots)
     (progn
       (if __robots (setq _robots (car __robots)))
       _robots)))
  (:serialization-length
   ()
   (+
    ;; bwi_msgs/AvailableRobot[] _robots
    (apply #'+ (send-all _robots :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bwi_msgs/AvailableRobot[] _robots
     (write-long (length _robots) s)
     (dolist (elem _robots)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bwi_msgs/AvailableRobot[] _robots
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _robots (let (r) (dotimes (i n) (push (instance bwi_msgs::AvailableRobot :init) r)) r))
     (dolist (elem- _robots)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get bwi_msgs::AvailableRobotArray :md5sum-) "b0231c0f851faa92decfde91f5d24b51")
(setf (get bwi_msgs::AvailableRobotArray :datatype-) "bwi_msgs/AvailableRobotArray")
(setf (get bwi_msgs::AvailableRobotArray :definition-)
      "AvailableRobot[] robots

================================================================================
MSG: bwi_msgs/AvailableRobot
# The current list of robots supported in the BWI Ecosystem. In an ideal world, this functionality would be replaced
# by the capabilities framework.

int32 SEGBOT = 1
int32 SEGBOT_ARM = 2
int32 TURTLEBOT = 3

string name
int32 type

")



(provide :bwi_msgs/AvailableRobotArray "b0231c0f851faa92decfde91f5d24b51")


