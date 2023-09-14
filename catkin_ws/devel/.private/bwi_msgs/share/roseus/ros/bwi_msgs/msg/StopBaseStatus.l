;; Auto-generated. Do not edit!


(when (boundp 'bwi_msgs::StopBaseStatus)
  (if (not (find-package "BWI_MSGS"))
    (make-package "BWI_MSGS"))
  (shadow 'StopBaseStatus (find-package "BWI_MSGS")))
(unless (find-package "BWI_MSGS::STOPBASESTATUS")
  (make-package "BWI_MSGS::STOPBASESTATUS"))

(in-package "ROS")
;;//! \htmlinclude StopBaseStatus.msg.html


(intern "*RUNNING*" (find-package "BWI_MSGS::STOPBASESTATUS"))
(shadow '*RUNNING* (find-package "BWI_MSGS::STOPBASESTATUS"))
(defconstant bwi_msgs::StopBaseStatus::*RUNNING* 0)
(intern "*PAUSED*" (find-package "BWI_MSGS::STOPBASESTATUS"))
(shadow '*PAUSED* (find-package "BWI_MSGS::STOPBASESTATUS"))
(defconstant bwi_msgs::StopBaseStatus::*PAUSED* 1)
(intern "*STOPPED*" (find-package "BWI_MSGS::STOPBASESTATUS"))
(shadow '*STOPPED* (find-package "BWI_MSGS::STOPBASESTATUS"))
(defconstant bwi_msgs::StopBaseStatus::*STOPPED* 2)
(defclass bwi_msgs::StopBaseStatus
  :super ros::object
  :slots (_status ))

(defmethod bwi_msgs::StopBaseStatus
  (:init
   (&key
    ((:status __status) 0)
    )
   (send-super :init)
   (setq _status (round __status))
   self)
  (:status
   (&optional __status)
   (if __status (setq _status __status)) _status)
  (:serialization-length
   ()
   (+
    ;; uint8 _status
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _status
       (write-byte _status s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _status
     (setq _status (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(setf (get bwi_msgs::StopBaseStatus :md5sum-) "8f231599c0ff2f9f109df07968a43c85")
(setf (get bwi_msgs::StopBaseStatus :datatype-) "bwi_msgs/StopBaseStatus")
(setf (get bwi_msgs::StopBaseStatus :definition-)
      "### Stop base controller status.

uint8 status

# Constants defining the possible states:
uint8 RUNNING = 0       # robot base running normally
uint8 PAUSED =  1       # robot base motion paused
uint8 STOPPED = 2       # terminal state: no more movement allowed

")



(provide :bwi_msgs/StopBaseStatus "8f231599c0ff2f9f109df07968a43c85")


