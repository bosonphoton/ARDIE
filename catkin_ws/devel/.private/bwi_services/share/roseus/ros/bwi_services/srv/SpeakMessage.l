;; Auto-generated. Do not edit!


(when (boundp 'bwi_services::SpeakMessage)
  (if (not (find-package "BWI_SERVICES"))
    (make-package "BWI_SERVICES"))
  (shadow 'SpeakMessage (find-package "BWI_SERVICES")))
(unless (find-package "BWI_SERVICES::SPEAKMESSAGE")
  (make-package "BWI_SERVICES::SPEAKMESSAGE"))
(unless (find-package "BWI_SERVICES::SPEAKMESSAGEREQUEST")
  (make-package "BWI_SERVICES::SPEAKMESSAGEREQUEST"))
(unless (find-package "BWI_SERVICES::SPEAKMESSAGERESPONSE")
  (make-package "BWI_SERVICES::SPEAKMESSAGERESPONSE"))

(in-package "ROS")





(defclass bwi_services::SpeakMessageRequest
  :super ros::object
  :slots (_message ))

(defmethod bwi_services::SpeakMessageRequest
  (:init
   (&key
    ((:message __message) "")
    )
   (send-super :init)
   (setq _message (string __message))
   self)
  (:message
   (&optional __message)
   (if __message (setq _message __message)) _message)
  (:serialization-length
   ()
   (+
    ;; string _message
    4 (length _message)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _message
       (write-long (length _message) s) (princ _message s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _message
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _message (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass bwi_services::SpeakMessageResponse
  :super ros::object
  :slots (_result ))

(defmethod bwi_services::SpeakMessageResponse
  (:init
   (&key
    ((:result __result) 0)
    )
   (send-super :init)
   (setq _result (round __result))
   self)
  (:result
   (&optional __result)
   (if __result (setq _result __result)) _result)
  (:serialization-length
   ()
   (+
    ;; int32 _result
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _result
       (write-long _result s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _result
     (setq _result (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(defclass bwi_services::SpeakMessage
  :super ros::object
  :slots ())

(setf (get bwi_services::SpeakMessage :md5sum-) "e9096ed5f063e7da83fbcb7332c6a56b")
(setf (get bwi_services::SpeakMessage :datatype-) "bwi_services/SpeakMessage")
(setf (get bwi_services::SpeakMessage :request) bwi_services::SpeakMessageRequest)
(setf (get bwi_services::SpeakMessage :response) bwi_services::SpeakMessageResponse)

(defmethod bwi_services::SpeakMessageRequest
  (:response () (instance bwi_services::SpeakMessageResponse :init)))

(setf (get bwi_services::SpeakMessageRequest :md5sum-) "e9096ed5f063e7da83fbcb7332c6a56b")
(setf (get bwi_services::SpeakMessageRequest :datatype-) "bwi_services/SpeakMessageRequest")
(setf (get bwi_services::SpeakMessageRequest :definition-)
      "string message
---
int32 result

")

(setf (get bwi_services::SpeakMessageResponse :md5sum-) "e9096ed5f063e7da83fbcb7332c6a56b")
(setf (get bwi_services::SpeakMessageResponse :datatype-) "bwi_services/SpeakMessageResponse")
(setf (get bwi_services::SpeakMessageResponse :definition-)
      "string message
---
int32 result

")



(provide :bwi_services/SpeakMessage "e9096ed5f063e7da83fbcb7332c6a56b")


