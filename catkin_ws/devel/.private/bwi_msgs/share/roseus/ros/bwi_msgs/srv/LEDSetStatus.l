;; Auto-generated. Do not edit!


(when (boundp 'bwi_msgs::LEDSetStatus)
  (if (not (find-package "BWI_MSGS"))
    (make-package "BWI_MSGS"))
  (shadow 'LEDSetStatus (find-package "BWI_MSGS")))
(unless (find-package "BWI_MSGS::LEDSETSTATUS")
  (make-package "BWI_MSGS::LEDSETSTATUS"))
(unless (find-package "BWI_MSGS::LEDSETSTATUSREQUEST")
  (make-package "BWI_MSGS::LEDSETSTATUSREQUEST"))
(unless (find-package "BWI_MSGS::LEDSETSTATUSRESPONSE")
  (make-package "BWI_MSGS::LEDSETSTATUSRESPONSE"))

(in-package "ROS")





(defclass bwi_msgs::LEDSetStatusRequest
  :super ros::object
  :slots (_type ))

(defmethod bwi_msgs::LEDSetStatusRequest
  (:init
   (&key
    ((:type __type) (instance bwi_msgs::LEDStatus :init))
    )
   (send-super :init)
   (setq _type __type)
   self)
  (:type
   (&rest __type)
   (if (keywordp (car __type))
       (send* _type __type)
     (progn
       (if __type (setq _type (car __type)))
       _type)))
  (:serialization-length
   ()
   (+
    ;; bwi_msgs/LEDStatus _type
    (send _type :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bwi_msgs/LEDStatus _type
       (send _type :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bwi_msgs/LEDStatus _type
     (send _type :deserialize buf ptr-) (incf ptr- (send _type :serialization-length))
   ;;
   self)
  )

(defclass bwi_msgs::LEDSetStatusResponse
  :super ros::object
  :slots (_success _status ))

(defmethod bwi_msgs::LEDSetStatusResponse
  (:init
   (&key
    ((:success __success) nil)
    ((:status __status) "")
    )
   (send-super :init)
   (setq _success __success)
   (setq _status (string __status))
   self)
  (:success
   (&optional __success)
   (if __success (setq _success __success)) _success)
  (:status
   (&optional __status)
   (if __status (setq _status __status)) _status)
  (:serialization-length
   ()
   (+
    ;; bool _success
    1
    ;; string _status
    4 (length _status)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _success
       (if _success (write-byte -1 s) (write-byte 0 s))
     ;; string _status
       (write-long (length _status) s) (princ _status s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _success
     (setq _success (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; string _status
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _status (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass bwi_msgs::LEDSetStatus
  :super ros::object
  :slots ())

(setf (get bwi_msgs::LEDSetStatus :md5sum-) "d7fccd8c755ec75bb63839fded669f45")
(setf (get bwi_msgs::LEDSetStatus :datatype-) "bwi_msgs/LEDSetStatus")
(setf (get bwi_msgs::LEDSetStatus :request) bwi_msgs::LEDSetStatusRequest)
(setf (get bwi_msgs::LEDSetStatus :response) bwi_msgs::LEDSetStatusResponse)

(defmethod bwi_msgs::LEDSetStatusRequest
  (:response () (instance bwi_msgs::LEDSetStatusResponse :init)))

(setf (get bwi_msgs::LEDSetStatusRequest :md5sum-) "d7fccd8c755ec75bb63839fded669f45")
(setf (get bwi_msgs::LEDSetStatusRequest :datatype-) "bwi_msgs/LEDSetStatusRequest")
(setf (get bwi_msgs::LEDSetStatusRequest :definition-)
      "bwi_msgs/LEDStatus type

================================================================================
MSG: bwi_msgs/LEDStatus
# LED Status

# Service Variables
uint8 RUN_ON = 1
uint8 RUN_OFF = 0
uint8 CAMERA_ON = 3
uint8 CAMERA_OFF = 2

# Selects which animation to execute

uint8 status
---
bool success
string status
")

(setf (get bwi_msgs::LEDSetStatusResponse :md5sum-) "d7fccd8c755ec75bb63839fded669f45")
(setf (get bwi_msgs::LEDSetStatusResponse :datatype-) "bwi_msgs/LEDSetStatusResponse")
(setf (get bwi_msgs::LEDSetStatusResponse :definition-)
      "bwi_msgs/LEDStatus type

================================================================================
MSG: bwi_msgs/LEDStatus
# LED Status

# Service Variables
uint8 RUN_ON = 1
uint8 RUN_OFF = 0
uint8 CAMERA_ON = 3
uint8 CAMERA_OFF = 2

# Selects which animation to execute

uint8 status
---
bool success
string status
")



(provide :bwi_msgs/LEDSetStatus "d7fccd8c755ec75bb63839fded669f45")


