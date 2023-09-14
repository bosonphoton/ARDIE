;; Auto-generated. Do not edit!


(when (boundp 'bwi_msgs::WeekTime)
  (if (not (find-package "BWI_MSGS"))
    (make-package "BWI_MSGS"))
  (shadow 'WeekTime (find-package "BWI_MSGS")))
(unless (find-package "BWI_MSGS::WEEKTIME")
  (make-package "BWI_MSGS::WEEKTIME"))

(in-package "ROS")
;;//! \htmlinclude WeekTime.msg.html


(intern "*MONDAY*" (find-package "BWI_MSGS::WEEKTIME"))
(shadow '*MONDAY* (find-package "BWI_MSGS::WEEKTIME"))
(defconstant bwi_msgs::WeekTime::*MONDAY* 0)
(intern "*TUESDAY*" (find-package "BWI_MSGS::WEEKTIME"))
(shadow '*TUESDAY* (find-package "BWI_MSGS::WEEKTIME"))
(defconstant bwi_msgs::WeekTime::*TUESDAY* 1)
(intern "*WEDNESDAY*" (find-package "BWI_MSGS::WEEKTIME"))
(shadow '*WEDNESDAY* (find-package "BWI_MSGS::WEEKTIME"))
(defconstant bwi_msgs::WeekTime::*WEDNESDAY* 2)
(intern "*THURSDAY*" (find-package "BWI_MSGS::WEEKTIME"))
(shadow '*THURSDAY* (find-package "BWI_MSGS::WEEKTIME"))
(defconstant bwi_msgs::WeekTime::*THURSDAY* 3)
(intern "*FRIDAY*" (find-package "BWI_MSGS::WEEKTIME"))
(shadow '*FRIDAY* (find-package "BWI_MSGS::WEEKTIME"))
(defconstant bwi_msgs::WeekTime::*FRIDAY* 4)
(intern "*SATURDAY*" (find-package "BWI_MSGS::WEEKTIME"))
(shadow '*SATURDAY* (find-package "BWI_MSGS::WEEKTIME"))
(defconstant bwi_msgs::WeekTime::*SATURDAY* 5)
(intern "*SUNDAY*" (find-package "BWI_MSGS::WEEKTIME"))
(shadow '*SUNDAY* (find-package "BWI_MSGS::WEEKTIME"))
(defconstant bwi_msgs::WeekTime::*SUNDAY* 6)
(defclass bwi_msgs::WeekTime
  :super ros::object
  :slots (_time_seconds _day_of_week ))

(defmethod bwi_msgs::WeekTime
  (:init
   (&key
    ((:time_seconds __time_seconds) 0)
    ((:day_of_week __day_of_week) 0)
    )
   (send-super :init)
   (setq _time_seconds (round __time_seconds))
   (setq _day_of_week (round __day_of_week))
   self)
  (:time_seconds
   (&optional __time_seconds)
   (if __time_seconds (setq _time_seconds __time_seconds)) _time_seconds)
  (:day_of_week
   (&optional __day_of_week)
   (if __day_of_week (setq _day_of_week __day_of_week)) _day_of_week)
  (:serialization-length
   ()
   (+
    ;; int32 _time_seconds
    4
    ;; int32 _day_of_week
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _time_seconds
       (write-long _time_seconds s)
     ;; int32 _day_of_week
       (write-long _day_of_week s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _time_seconds
     (setq _time_seconds (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _day_of_week
     (setq _day_of_week (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get bwi_msgs::WeekTime :md5sum-) "128bbf0c1abd22da3f2eb8d4ab1ad941")
(setf (get bwi_msgs::WeekTime :datatype-) "bwi_msgs/WeekTime")
(setf (get bwi_msgs::WeekTime :definition-)
      "# Constants defining day of week
int32 MONDAY=0
int32 TUESDAY=1
int32 WEDNESDAY=2
int32 THURSDAY=3
int32 FRIDAY=4
int32 SATURDAY=5
int32 SUNDAY=6

int32 time_seconds
int32 day_of_week
")



(provide :bwi_msgs/WeekTime "128bbf0c1abd22da3f2eb8d4ab1ad941")


