;; Auto-generated. Do not edit!


(when (boundp 'bwi_msgs::LEDStatus)
  (if (not (find-package "BWI_MSGS"))
    (make-package "BWI_MSGS"))
  (shadow 'LEDStatus (find-package "BWI_MSGS")))
(unless (find-package "BWI_MSGS::LEDSTATUS")
  (make-package "BWI_MSGS::LEDSTATUS"))

(in-package "ROS")
;;//! \htmlinclude LEDStatus.msg.html


(intern "*RUN_ON*" (find-package "BWI_MSGS::LEDSTATUS"))
(shadow '*RUN_ON* (find-package "BWI_MSGS::LEDSTATUS"))
(defconstant bwi_msgs::LEDStatus::*RUN_ON* 1)
(intern "*RUN_OFF*" (find-package "BWI_MSGS::LEDSTATUS"))
(shadow '*RUN_OFF* (find-package "BWI_MSGS::LEDSTATUS"))
(defconstant bwi_msgs::LEDStatus::*RUN_OFF* 0)
(intern "*CAMERA_ON*" (find-package "BWI_MSGS::LEDSTATUS"))
(shadow '*CAMERA_ON* (find-package "BWI_MSGS::LEDSTATUS"))
(defconstant bwi_msgs::LEDStatus::*CAMERA_ON* 3)
(intern "*CAMERA_OFF*" (find-package "BWI_MSGS::LEDSTATUS"))
(shadow '*CAMERA_OFF* (find-package "BWI_MSGS::LEDSTATUS"))
(defconstant bwi_msgs::LEDStatus::*CAMERA_OFF* 2)
(defclass bwi_msgs::LEDStatus
  :super ros::object
  :slots (_status ))

(defmethod bwi_msgs::LEDStatus
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

(setf (get bwi_msgs::LEDStatus :md5sum-) "ca10aeadc7986827cb9450ebce4e4963")
(setf (get bwi_msgs::LEDStatus :datatype-) "bwi_msgs/LEDStatus")
(setf (get bwi_msgs::LEDStatus :definition-)
      "# LED Status

# Service Variables
uint8 RUN_ON = 1
uint8 RUN_OFF = 0
uint8 CAMERA_ON = 3
uint8 CAMERA_OFF = 2

# Selects which animation to execute

uint8 status

")



(provide :bwi_msgs/LEDStatus "ca10aeadc7986827cb9450ebce4e4963")


