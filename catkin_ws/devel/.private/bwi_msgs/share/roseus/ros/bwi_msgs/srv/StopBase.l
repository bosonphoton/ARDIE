;; Auto-generated. Do not edit!


(when (boundp 'bwi_msgs::StopBase)
  (if (not (find-package "BWI_MSGS"))
    (make-package "BWI_MSGS"))
  (shadow 'StopBase (find-package "BWI_MSGS")))
(unless (find-package "BWI_MSGS::STOPBASE")
  (make-package "BWI_MSGS::STOPBASE"))
(unless (find-package "BWI_MSGS::STOPBASEREQUEST")
  (make-package "BWI_MSGS::STOPBASEREQUEST"))
(unless (find-package "BWI_MSGS::STOPBASERESPONSE")
  (make-package "BWI_MSGS::STOPBASERESPONSE"))

(in-package "ROS")





(defclass bwi_msgs::StopBaseRequest
  :super ros::object
  :slots (_status _requester ))

(defmethod bwi_msgs::StopBaseRequest
  (:init
   (&key
    ((:status __status) (instance bwi_msgs::StopBaseStatus :init))
    ((:requester __requester) "")
    )
   (send-super :init)
   (setq _status __status)
   (setq _requester (string __requester))
   self)
  (:status
   (&rest __status)
   (if (keywordp (car __status))
       (send* _status __status)
     (progn
       (if __status (setq _status (car __status)))
       _status)))
  (:requester
   (&optional __requester)
   (if __requester (setq _requester __requester)) _requester)
  (:serialization-length
   ()
   (+
    ;; bwi_msgs/StopBaseStatus _status
    (send _status :serialization-length)
    ;; string _requester
    4 (length _requester)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bwi_msgs/StopBaseStatus _status
       (send _status :serialize s)
     ;; string _requester
       (write-long (length _requester) s) (princ _requester s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bwi_msgs/StopBaseStatus _status
     (send _status :deserialize buf ptr-) (incf ptr- (send _status :serialization-length))
   ;; string _requester
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _requester (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass bwi_msgs::StopBaseResponse
  :super ros::object
  :slots (_status ))

(defmethod bwi_msgs::StopBaseResponse
  (:init
   (&key
    ((:status __status) (instance bwi_msgs::StopBaseStatus :init))
    )
   (send-super :init)
   (setq _status __status)
   self)
  (:status
   (&rest __status)
   (if (keywordp (car __status))
       (send* _status __status)
     (progn
       (if __status (setq _status (car __status)))
       _status)))
  (:serialization-length
   ()
   (+
    ;; bwi_msgs/StopBaseStatus _status
    (send _status :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bwi_msgs/StopBaseStatus _status
       (send _status :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bwi_msgs/StopBaseStatus _status
     (send _status :deserialize buf ptr-) (incf ptr- (send _status :serialization-length))
   ;;
   self)
  )

(defclass bwi_msgs::StopBase
  :super ros::object
  :slots ())

(setf (get bwi_msgs::StopBase :md5sum-) "3957fc0f7e0d8a16ac168544ae4512dc")
(setf (get bwi_msgs::StopBase :datatype-) "bwi_msgs/StopBase")
(setf (get bwi_msgs::StopBase :request) bwi_msgs::StopBaseRequest)
(setf (get bwi_msgs::StopBase :response) bwi_msgs::StopBaseResponse)

(defmethod bwi_msgs::StopBaseRequest
  (:response () (instance bwi_msgs::StopBaseResponse :init)))

(setf (get bwi_msgs::StopBaseRequest :md5sum-) "3957fc0f7e0d8a16ac168544ae4512dc")
(setf (get bwi_msgs::StopBaseRequest :datatype-) "bwi_msgs/StopBaseRequest")
(setf (get bwi_msgs::StopBaseRequest :definition-)
      "### Stop base controller service call
#
#   Since there can be multiple requesters, the current status
#   returned in the response message may not immediately match the
#   original request.
#
#   If more than one requester sets a PAUSED status, the robot base
#   will remain motionless until they all request RUNNING again.  If
#   any requester sets STOPPED, no further requests will be met, the
#   status remaining permantently STOPPED.
#
#   The requester name should be sufficiently unique to avoid multiple
#   requesters picking the same string.  A reasonable choice is the
#   ROS node name.

StopBaseStatus status   # new status requested
string requester        # self-assigned requester name

================================================================================
MSG: bwi_msgs/StopBaseStatus
### Stop base controller status.

uint8 status

# Constants defining the possible states:
uint8 RUNNING = 0       # robot base running normally
uint8 PAUSED =  1       # robot base motion paused
uint8 STOPPED = 2       # terminal state: no more movement allowed
---
StopBaseStatus status   # current status after request handled


================================================================================
MSG: bwi_msgs/StopBaseStatus
### Stop base controller status.

uint8 status

# Constants defining the possible states:
uint8 RUNNING = 0       # robot base running normally
uint8 PAUSED =  1       # robot base motion paused
uint8 STOPPED = 2       # terminal state: no more movement allowed
")

(setf (get bwi_msgs::StopBaseResponse :md5sum-) "3957fc0f7e0d8a16ac168544ae4512dc")
(setf (get bwi_msgs::StopBaseResponse :datatype-) "bwi_msgs/StopBaseResponse")
(setf (get bwi_msgs::StopBaseResponse :definition-)
      "### Stop base controller service call
#
#   Since there can be multiple requesters, the current status
#   returned in the response message may not immediately match the
#   original request.
#
#   If more than one requester sets a PAUSED status, the robot base
#   will remain motionless until they all request RUNNING again.  If
#   any requester sets STOPPED, no further requests will be met, the
#   status remaining permantently STOPPED.
#
#   The requester name should be sufficiently unique to avoid multiple
#   requesters picking the same string.  A reasonable choice is the
#   ROS node name.

StopBaseStatus status   # new status requested
string requester        # self-assigned requester name

================================================================================
MSG: bwi_msgs/StopBaseStatus
### Stop base controller status.

uint8 status

# Constants defining the possible states:
uint8 RUNNING = 0       # robot base running normally
uint8 PAUSED =  1       # robot base motion paused
uint8 STOPPED = 2       # terminal state: no more movement allowed
---
StopBaseStatus status   # current status after request handled


================================================================================
MSG: bwi_msgs/StopBaseStatus
### Stop base controller status.

uint8 status

# Constants defining the possible states:
uint8 RUNNING = 0       # robot base running normally
uint8 PAUSED =  1       # robot base motion paused
uint8 STOPPED = 2       # terminal state: no more movement allowed
")



(provide :bwi_msgs/StopBase "3957fc0f7e0d8a16ac168544ae4512dc")


