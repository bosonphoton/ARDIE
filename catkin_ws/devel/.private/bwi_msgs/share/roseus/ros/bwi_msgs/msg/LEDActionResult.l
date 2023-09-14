;; Auto-generated. Do not edit!


(when (boundp 'bwi_msgs::LEDActionResult)
  (if (not (find-package "BWI_MSGS"))
    (make-package "BWI_MSGS"))
  (shadow 'LEDActionResult (find-package "BWI_MSGS")))
(unless (find-package "BWI_MSGS::LEDACTIONRESULT")
  (make-package "BWI_MSGS::LEDACTIONRESULT"))

(in-package "ROS")
;;//! \htmlinclude LEDActionResult.msg.html


(intern "*SUCCESS*" (find-package "BWI_MSGS::LEDACTIONRESULT"))
(shadow '*SUCCESS* (find-package "BWI_MSGS::LEDACTIONRESULT"))
(defconstant bwi_msgs::LEDActionResult::*SUCCESS* 1)
(intern "*SHUTDOWN*" (find-package "BWI_MSGS::LEDACTIONRESULT"))
(shadow '*SHUTDOWN* (find-package "BWI_MSGS::LEDACTIONRESULT"))
(defconstant bwi_msgs::LEDActionResult::*SHUTDOWN* 2)
(intern "*PREEMPTED*" (find-package "BWI_MSGS::LEDACTIONRESULT"))
(shadow '*PREEMPTED* (find-package "BWI_MSGS::LEDACTIONRESULT"))
(defconstant bwi_msgs::LEDActionResult::*PREEMPTED* 3)
(intern "*FAILURE*" (find-package "BWI_MSGS::LEDACTIONRESULT"))
(shadow '*FAILURE* (find-package "BWI_MSGS::LEDACTIONRESULT"))
(defconstant bwi_msgs::LEDActionResult::*FAILURE* 4)
(defclass bwi_msgs::LEDActionResult
  :super ros::object
  :slots (_result_type ))

(defmethod bwi_msgs::LEDActionResult
  (:init
   (&key
    ((:result_type __result_type) 0)
    )
   (send-super :init)
   (setq _result_type (round __result_type))
   self)
  (:result_type
   (&optional __result_type)
   (if __result_type (setq _result_type __result_type)) _result_type)
  (:serialization-length
   ()
   (+
    ;; uint8 _result_type
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _result_type
       (write-byte _result_type s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _result_type
     (setq _result_type (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(setf (get bwi_msgs::LEDActionResult :md5sum-) "f94ab4126b134ed382c1614cabfab694")
(setf (get bwi_msgs::LEDActionResult :datatype-) "bwi_msgs/LEDActionResult")
(setf (get bwi_msgs::LEDActionResult :definition-)
      "# LED Action Result Type

# Action Variables
uint8 SUCCESS = 1
uint8 SHUTDOWN = 2
uint8 PREEMPTED = 3
uint8 FAILURE = 4

# Result type returned from LED Control action

uint8 result_type
")



(provide :bwi_msgs/LEDActionResult "f94ab4126b134ed382c1614cabfab694")


