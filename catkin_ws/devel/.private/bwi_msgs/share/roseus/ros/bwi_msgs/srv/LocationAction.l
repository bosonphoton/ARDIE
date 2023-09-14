;; Auto-generated. Do not edit!


(when (boundp 'bwi_msgs::LocationAction)
  (if (not (find-package "BWI_MSGS"))
    (make-package "BWI_MSGS"))
  (shadow 'LocationAction (find-package "BWI_MSGS")))
(unless (find-package "BWI_MSGS::LOCATIONACTION")
  (make-package "BWI_MSGS::LOCATIONACTION"))
(unless (find-package "BWI_MSGS::LOCATIONACTIONREQUEST")
  (make-package "BWI_MSGS::LOCATIONACTIONREQUEST"))
(unless (find-package "BWI_MSGS::LOCATIONACTIONRESPONSE")
  (make-package "BWI_MSGS::LOCATIONACTIONRESPONSE"))

(in-package "ROS")





(defclass bwi_msgs::LocationActionRequest
  :super ros::object
  :slots (_time _current_location ))

(defmethod bwi_msgs::LocationActionRequest
  (:init
   (&key
    ((:time __time) (instance bwi_msgs::WeekTime :init))
    ((:current_location __current_location) "")
    )
   (send-super :init)
   (setq _time __time)
   (setq _current_location (string __current_location))
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
  (:serialization-length
   ()
   (+
    ;; bwi_msgs/WeekTime _time
    (send _time :serialization-length)
    ;; string _current_location
    4 (length _current_location)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bwi_msgs/WeekTime _time
       (send _time :serialize s)
     ;; string _current_location
       (write-long (length _current_location) s) (princ _current_location s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bwi_msgs/WeekTime _time
     (send _time :deserialize buf ptr-) (incf ptr- (send _time :serialization-length))
   ;; string _current_location
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _current_location (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass bwi_msgs::LocationActionResponse
  :super ros::object
  :slots (_ask_question _location ))

(defmethod bwi_msgs::LocationActionResponse
  (:init
   (&key
    ((:ask_question __ask_question) nil)
    ((:location __location) "")
    )
   (send-super :init)
   (setq _ask_question __ask_question)
   (setq _location (string __location))
   self)
  (:ask_question
   (&optional __ask_question)
   (if __ask_question (setq _ask_question __ask_question)) _ask_question)
  (:location
   (&optional __location)
   (if __location (setq _location __location)) _location)
  (:serialization-length
   ()
   (+
    ;; bool _ask_question
    1
    ;; string _location
    4 (length _location)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _ask_question
       (if _ask_question (write-byte -1 s) (write-byte 0 s))
     ;; string _location
       (write-long (length _location) s) (princ _location s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _ask_question
     (setq _ask_question (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; string _location
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _location (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass bwi_msgs::LocationAction
  :super ros::object
  :slots ())

(setf (get bwi_msgs::LocationAction :md5sum-) "0dde773e38870fb29fdf55706196344e")
(setf (get bwi_msgs::LocationAction :datatype-) "bwi_msgs/LocationAction")
(setf (get bwi_msgs::LocationAction :request) bwi_msgs::LocationActionRequest)
(setf (get bwi_msgs::LocationAction :response) bwi_msgs::LocationActionResponse)

(defmethod bwi_msgs::LocationActionRequest
  (:response () (instance bwi_msgs::LocationActionResponse :init)))

(setf (get bwi_msgs::LocationActionRequest :md5sum-) "0dde773e38870fb29fdf55706196344e")
(setf (get bwi_msgs::LocationActionRequest :datatype-) "bwi_msgs/LocationActionRequest")
(setf (get bwi_msgs::LocationActionRequest :definition-)
      "bwi_msgs/WeekTime time
string current_location

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
bool ask_question
string location
")

(setf (get bwi_msgs::LocationActionResponse :md5sum-) "0dde773e38870fb29fdf55706196344e")
(setf (get bwi_msgs::LocationActionResponse :datatype-) "bwi_msgs/LocationActionResponse")
(setf (get bwi_msgs::LocationActionResponse :definition-)
      "bwi_msgs/WeekTime time
string current_location

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
bool ask_question
string location
")



(provide :bwi_msgs/LocationAction "0dde773e38870fb29fdf55706196344e")


