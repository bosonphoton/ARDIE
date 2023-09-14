;; Auto-generated. Do not edit!


(when (boundp 'bwi_msgs::AvailableRobot)
  (if (not (find-package "BWI_MSGS"))
    (make-package "BWI_MSGS"))
  (shadow 'AvailableRobot (find-package "BWI_MSGS")))
(unless (find-package "BWI_MSGS::AVAILABLEROBOT")
  (make-package "BWI_MSGS::AVAILABLEROBOT"))

(in-package "ROS")
;;//! \htmlinclude AvailableRobot.msg.html


(intern "*SEGBOT*" (find-package "BWI_MSGS::AVAILABLEROBOT"))
(shadow '*SEGBOT* (find-package "BWI_MSGS::AVAILABLEROBOT"))
(defconstant bwi_msgs::AvailableRobot::*SEGBOT* 1)
(intern "*SEGBOT_ARM*" (find-package "BWI_MSGS::AVAILABLEROBOT"))
(shadow '*SEGBOT_ARM* (find-package "BWI_MSGS::AVAILABLEROBOT"))
(defconstant bwi_msgs::AvailableRobot::*SEGBOT_ARM* 2)
(intern "*TURTLEBOT*" (find-package "BWI_MSGS::AVAILABLEROBOT"))
(shadow '*TURTLEBOT* (find-package "BWI_MSGS::AVAILABLEROBOT"))
(defconstant bwi_msgs::AvailableRobot::*TURTLEBOT* 3)
(defclass bwi_msgs::AvailableRobot
  :super ros::object
  :slots (_name _type ))

(defmethod bwi_msgs::AvailableRobot
  (:init
   (&key
    ((:name __name) "")
    ((:type __type) 0)
    )
   (send-super :init)
   (setq _name (string __name))
   (setq _type (round __type))
   self)
  (:name
   (&optional __name)
   (if __name (setq _name __name)) _name)
  (:type
   (&optional __type)
   (if __type (setq _type __type)) _type)
  (:serialization-length
   ()
   (+
    ;; string _name
    4 (length _name)
    ;; int32 _type
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _name
       (write-long (length _name) s) (princ _name s)
     ;; int32 _type
       (write-long _type s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; int32 _type
     (setq _type (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get bwi_msgs::AvailableRobot :md5sum-) "30fc6869415622f85eeb8ffa688c745a")
(setf (get bwi_msgs::AvailableRobot :datatype-) "bwi_msgs/AvailableRobot")
(setf (get bwi_msgs::AvailableRobot :definition-)
      "# The current list of robots supported in the BWI Ecosystem. In an ideal world, this functionality would be replaced
# by the capabilities framework.

int32 SEGBOT = 1
int32 SEGBOT_ARM = 2
int32 TURTLEBOT = 3

string name
int32 type

")



(provide :bwi_msgs/AvailableRobot "30fc6869415622f85eeb8ffa688c745a")


