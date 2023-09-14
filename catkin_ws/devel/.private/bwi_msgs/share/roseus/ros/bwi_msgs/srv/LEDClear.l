;; Auto-generated. Do not edit!


(when (boundp 'bwi_msgs::LEDClear)
  (if (not (find-package "BWI_MSGS"))
    (make-package "BWI_MSGS"))
  (shadow 'LEDClear (find-package "BWI_MSGS")))
(unless (find-package "BWI_MSGS::LEDCLEAR")
  (make-package "BWI_MSGS::LEDCLEAR"))
(unless (find-package "BWI_MSGS::LEDCLEARREQUEST")
  (make-package "BWI_MSGS::LEDCLEARREQUEST"))
(unless (find-package "BWI_MSGS::LEDCLEARRESPONSE")
  (make-package "BWI_MSGS::LEDCLEARRESPONSE"))

(in-package "ROS")





(defclass bwi_msgs::LEDClearRequest
  :super ros::object
  :slots ())

(defmethod bwi_msgs::LEDClearRequest
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

(defclass bwi_msgs::LEDClearResponse
  :super ros::object
  :slots (_success _status ))

(defmethod bwi_msgs::LEDClearResponse
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

(defclass bwi_msgs::LEDClear
  :super ros::object
  :slots ())

(setf (get bwi_msgs::LEDClear :md5sum-) "38b8954d32a849f31d78416b12bff5d1")
(setf (get bwi_msgs::LEDClear :datatype-) "bwi_msgs/LEDClear")
(setf (get bwi_msgs::LEDClear :request) bwi_msgs::LEDClearRequest)
(setf (get bwi_msgs::LEDClear :response) bwi_msgs::LEDClearResponse)

(defmethod bwi_msgs::LEDClearRequest
  (:response () (instance bwi_msgs::LEDClearResponse :init)))

(setf (get bwi_msgs::LEDClearRequest :md5sum-) "38b8954d32a849f31d78416b12bff5d1")
(setf (get bwi_msgs::LEDClearRequest :datatype-) "bwi_msgs/LEDClearRequest")
(setf (get bwi_msgs::LEDClearRequest :definition-)
      "
---
bool success
string status
")

(setf (get bwi_msgs::LEDClearResponse :md5sum-) "38b8954d32a849f31d78416b12bff5d1")
(setf (get bwi_msgs::LEDClearResponse :datatype-) "bwi_msgs/LEDClearResponse")
(setf (get bwi_msgs::LEDClearResponse :definition-)
      "
---
bool success
string status
")



(provide :bwi_msgs/LEDClear "38b8954d32a849f31d78416b12bff5d1")


