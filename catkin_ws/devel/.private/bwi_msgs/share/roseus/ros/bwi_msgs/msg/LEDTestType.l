;; Auto-generated. Do not edit!


(when (boundp 'bwi_msgs::LEDTestType)
  (if (not (find-package "BWI_MSGS"))
    (make-package "BWI_MSGS"))
  (shadow 'LEDTestType (find-package "BWI_MSGS")))
(unless (find-package "BWI_MSGS::LEDTESTTYPE")
  (make-package "BWI_MSGS::LEDTESTTYPE"))

(in-package "ROS")
;;//! \htmlinclude LEDTestType.msg.html


(intern "*SET_EVERY_FIFTH*" (find-package "BWI_MSGS::LEDTESTTYPE"))
(shadow '*SET_EVERY_FIFTH* (find-package "BWI_MSGS::LEDTESTTYPE"))
(defconstant bwi_msgs::LEDTestType::*SET_EVERY_FIFTH* 1)
(intern "*SET_FIRST_FIVE*" (find-package "BWI_MSGS::LEDTESTTYPE"))
(shadow '*SET_FIRST_FIVE* (find-package "BWI_MSGS::LEDTESTTYPE"))
(defconstant bwi_msgs::LEDTestType::*SET_FIRST_FIVE* 2)
(intern "*TEST_STRIP*" (find-package "BWI_MSGS::LEDTESTTYPE"))
(shadow '*TEST_STRIP* (find-package "BWI_MSGS::LEDTESTTYPE"))
(defconstant bwi_msgs::LEDTestType::*TEST_STRIP* 3)
(defclass bwi_msgs::LEDTestType
  :super ros::object
  :slots (_test_type ))

(defmethod bwi_msgs::LEDTestType
  (:init
   (&key
    ((:test_type __test_type) 0)
    )
   (send-super :init)
   (setq _test_type (round __test_type))
   self)
  (:test_type
   (&optional __test_type)
   (if __test_type (setq _test_type __test_type)) _test_type)
  (:serialization-length
   ()
   (+
    ;; uint8 _test_type
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _test_type
       (write-byte _test_type s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _test_type
     (setq _test_type (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(setf (get bwi_msgs::LEDTestType :md5sum-) "7319100562ff4b6eeae3f766074dac4b")
(setf (get bwi_msgs::LEDTestType :datatype-) "bwi_msgs/LEDTestType")
(setf (get bwi_msgs::LEDTestType :definition-)
      "# LED Test Type

# Service Variables
uint8 SET_EVERY_FIFTH = 1
uint8 SET_FIRST_FIVE = 2
uint8 TEST_STRIP = 3

# Selects which animation to execute

uint8 test_type
")



(provide :bwi_msgs/LEDTestType "7319100562ff4b6eeae3f766074dac4b")


