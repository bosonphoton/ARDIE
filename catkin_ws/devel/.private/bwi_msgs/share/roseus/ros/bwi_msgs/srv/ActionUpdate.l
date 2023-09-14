;; Auto-generated. Do not edit!


(when (boundp 'bwi_msgs::ActionUpdate)
  (if (not (find-package "BWI_MSGS"))
    (make-package "BWI_MSGS"))
  (shadow 'ActionUpdate (find-package "BWI_MSGS")))
(unless (find-package "BWI_MSGS::ACTIONUPDATE")
  (make-package "BWI_MSGS::ACTIONUPDATE"))
(unless (find-package "BWI_MSGS::ACTIONUPDATEREQUEST")
  (make-package "BWI_MSGS::ACTIONUPDATEREQUEST"))
(unless (find-package "BWI_MSGS::ACTIONUPDATERESPONSE")
  (make-package "BWI_MSGS::ACTIONUPDATERESPONSE"))

(in-package "ROS")





(intern "*QUESTION_ANSWERED*" (find-package "BWI_MSGS::ACTIONUPDATEREQUEST"))
(shadow '*QUESTION_ANSWERED* (find-package "BWI_MSGS::ACTIONUPDATEREQUEST"))
(defconstant bwi_msgs::ActionUpdateRequest::*QUESTION_ANSWERED* 0)
(intern "*QUESTION_DENIED*" (find-package "BWI_MSGS::ACTIONUPDATEREQUEST"))
(shadow '*QUESTION_DENIED* (find-package "BWI_MSGS::ACTIONUPDATEREQUEST"))
(defconstant bwi_msgs::ActionUpdateRequest::*QUESTION_DENIED* 1)
(intern "*QUESTION_TIMEOUT*" (find-package "BWI_MSGS::ACTIONUPDATEREQUEST"))
(shadow '*QUESTION_TIMEOUT* (find-package "BWI_MSGS::ACTIONUPDATEREQUEST"))
(defconstant bwi_msgs::ActionUpdateRequest::*QUESTION_TIMEOUT* 2)
(intern "*ARRIVED*" (find-package "BWI_MSGS::ACTIONUPDATEREQUEST"))
(shadow '*ARRIVED* (find-package "BWI_MSGS::ACTIONUPDATEREQUEST"))
(defconstant bwi_msgs::ActionUpdateRequest::*ARRIVED* 3)
(intern "*ARRIVAL_FAILURE*" (find-package "BWI_MSGS::ACTIONUPDATEREQUEST"))
(shadow '*ARRIVAL_FAILURE* (find-package "BWI_MSGS::ACTIONUPDATEREQUEST"))
(defconstant bwi_msgs::ActionUpdateRequest::*ARRIVAL_FAILURE* 4)
(defclass bwi_msgs::ActionUpdateRequest
  :super ros::object
  :slots (_time _current_location _result ))

(defmethod bwi_msgs::ActionUpdateRequest
  (:init
   (&key
    ((:time __time) (instance bwi_msgs::WeekTime :init))
    ((:current_location __current_location) "")
    ((:result __result) 0)
    )
   (send-super :init)
   (setq _time __time)
   (setq _current_location (string __current_location))
   (setq _result (round __result))
   self)
  (:time
   (&rest __time)
   (if (keywordp (car __time))
       (send* _time __time)
     (progn
       (if __time (setq _time (car __time)))
       _time)))
  (:current_location
   (&optional __current_location)
   (if __current_location (setq _current_location __current_location)) _current_location)
  (:result
   (&optional __result)
   (if __result (setq _result __result)) _result)
  (:serialization-length
   ()
   (+
    ;; bwi_msgs/WeekTime _time
    (send _time :serialization-length)
    ;; string _current_location
    4 (length _current_location)
    ;; int32 _result
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bwi_msgs/WeekTime _time
       (send _time :serialize s)
     ;; string _current_location
       (write-long (length _current_location) s) (princ _current_location s)
     ;; int32 _result
       (write-long _result s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bwi_msgs/WeekTime _time
     (send _time :deserialize buf ptr-) (incf ptr- (send _time :serialization-length))
   ;; string _current_location
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _current_location (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; int32 _result
     (setq _result (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(defclass bwi_msgs::ActionUpdateResponse
  :super ros::object
  :slots ())

(defmethod bwi_msgs::ActionUpdateResponse
  (:init
   (&key
    )
   (send-super :init)
   self)
  (:serialization-length
   ()
   (+
    0
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;;
   self)
  )

(defclass bwi_msgs::ActionUpdate
  :super ros::object
  :slots ())

(setf (get bwi_msgs::ActionUpdate :md5sum-) "9fe05e403268444079042cdaaf56e486")
(setf (get bwi_msgs::ActionUpdate :datatype-) "bwi_msgs/ActionUpdate")
(setf (get bwi_msgs::ActionUpdate :request) bwi_msgs::ActionUpdateRequest)
(setf (get bwi_msgs::ActionUpdate :response) bwi_msgs::ActionUpdateResponse)

(defmethod bwi_msgs::ActionUpdateRequest
  (:response () (instance bwi_msgs::ActionUpdateResponse :init)))

(setf (get bwi_msgs::ActionUpdateRequest :md5sum-) "9fe05e403268444079042cdaaf56e486")
(setf (get bwi_msgs::ActionUpdateRequest :datatype-) "bwi_msgs/ActionUpdateRequest")
(setf (get bwi_msgs::ActionUpdateRequest :definition-)
      "int32 QUESTION_ANSWERED = 0
int32 QUESTION_DENIED = 1
int32 QUESTION_TIMEOUT = 2
int32 ARRIVED = 3
int32 ARRIVAL_FAILURE = 4

bwi_msgs/WeekTime time
string current_location
int32 result

================================================================================
MSG: bwi_msgs/WeekTime
# Constants defining day of week
int32 MONDAY=0
int32 TUESDAY=1
int32 WEDNESDAY=2
int32 THURSDAY=3
int32 FRIDAY=4
int32 SATURDAY=5
int32 SUNDAY=6

int32 time_seconds
---
")

(setf (get bwi_msgs::ActionUpdateResponse :md5sum-) "9fe05e403268444079042cdaaf56e486")
(setf (get bwi_msgs::ActionUpdateResponse :datatype-) "bwi_msgs/ActionUpdateResponse")
(setf (get bwi_msgs::ActionUpdateResponse :definition-)
      "int32 QUESTION_ANSWERED = 0
int32 QUESTION_DENIED = 1
int32 QUESTION_TIMEOUT = 2
int32 ARRIVED = 3
int32 ARRIVAL_FAILURE = 4

bwi_msgs/WeekTime time
string current_location
int32 result

================================================================================
MSG: bwi_msgs/WeekTime
# Constants defining day of week
int32 MONDAY=0
int32 TUESDAY=1
int32 WEDNESDAY=2
int32 THURSDAY=3
int32 FRIDAY=4
int32 SATURDAY=5
int32 SUNDAY=6

int32 time_seconds
---
")



(provide :bwi_msgs/ActionUpdate "9fe05e403268444079042cdaaf56e486")


