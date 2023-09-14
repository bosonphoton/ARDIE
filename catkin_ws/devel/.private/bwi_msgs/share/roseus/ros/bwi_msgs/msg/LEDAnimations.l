;; Auto-generated. Do not edit!


(when (boundp 'bwi_msgs::LEDAnimations)
  (if (not (find-package "BWI_MSGS"))
    (make-package "BWI_MSGS"))
  (shadow 'LEDAnimations (find-package "BWI_MSGS")))
(unless (find-package "BWI_MSGS::LEDANIMATIONS")
  (make-package "BWI_MSGS::LEDANIMATIONS"))

(in-package "ROS")
;;//! \htmlinclude LEDAnimations.msg.html


(intern "*LEFT_TURN*" (find-package "BWI_MSGS::LEDANIMATIONS"))
(shadow '*LEFT_TURN* (find-package "BWI_MSGS::LEDANIMATIONS"))
(defconstant bwi_msgs::LEDAnimations::*LEFT_TURN* 1)
(intern "*RIGHT_TURN*" (find-package "BWI_MSGS::LEDANIMATIONS"))
(shadow '*RIGHT_TURN* (find-package "BWI_MSGS::LEDANIMATIONS"))
(defconstant bwi_msgs::LEDAnimations::*RIGHT_TURN* 2)
(intern "*REVERSE*" (find-package "BWI_MSGS::LEDANIMATIONS"))
(shadow '*REVERSE* (find-package "BWI_MSGS::LEDANIMATIONS"))
(defconstant bwi_msgs::LEDAnimations::*REVERSE* 3)
(intern "*BLOCKED*" (find-package "BWI_MSGS::LEDANIMATIONS"))
(shadow '*BLOCKED* (find-package "BWI_MSGS::LEDANIMATIONS"))
(defconstant bwi_msgs::LEDAnimations::*BLOCKED* 4)
(intern "*UP*" (find-package "BWI_MSGS::LEDANIMATIONS"))
(shadow '*UP* (find-package "BWI_MSGS::LEDANIMATIONS"))
(defconstant bwi_msgs::LEDAnimations::*UP* 5)
(intern "*DOWN*" (find-package "BWI_MSGS::LEDANIMATIONS"))
(shadow '*DOWN* (find-package "BWI_MSGS::LEDANIMATIONS"))
(defconstant bwi_msgs::LEDAnimations::*DOWN* 6)
(intern "*NEED_ASSIST*" (find-package "BWI_MSGS::LEDANIMATIONS"))
(shadow '*NEED_ASSIST* (find-package "BWI_MSGS::LEDANIMATIONS"))
(defconstant bwi_msgs::LEDAnimations::*NEED_ASSIST* 7)
(defclass bwi_msgs::LEDAnimations
  :super ros::object
  :slots (_led_animations ))

(defmethod bwi_msgs::LEDAnimations
  (:init
   (&key
    ((:led_animations __led_animations) 0)
    )
   (send-super :init)
   (setq _led_animations (round __led_animations))
   self)
  (:led_animations
   (&optional __led_animations)
   (if __led_animations (setq _led_animations __led_animations)) _led_animations)
  (:serialization-length
   ()
   (+
    ;; uint8 _led_animations
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _led_animations
       (write-byte _led_animations s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _led_animations
     (setq _led_animations (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(setf (get bwi_msgs::LEDAnimations :md5sum-) "d7b2a068392ac708121e3251cf2dde04")
(setf (get bwi_msgs::LEDAnimations :datatype-) "bwi_msgs/LEDAnimations")
(setf (get bwi_msgs::LEDAnimations :definition-)
      "# LED Animations

# Action Variables
uint8 LEFT_TURN = 1
uint8 RIGHT_TURN = 2
uint8 REVERSE = 3
uint8 BLOCKED = 4
uint8 UP = 5
uint8 DOWN = 6
uint8 NEED_ASSIST = 7

# Selects which animation to execute

uint8 led_animations
")



(provide :bwi_msgs/LEDAnimations "d7b2a068392ac708121e3251cf2dde04")


