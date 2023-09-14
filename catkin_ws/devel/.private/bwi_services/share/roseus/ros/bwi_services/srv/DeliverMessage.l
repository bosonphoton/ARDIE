;; Auto-generated. Do not edit!


(when (boundp 'bwi_services::DeliverMessage)
  (if (not (find-package "BWI_SERVICES"))
    (make-package "BWI_SERVICES"))
  (shadow 'DeliverMessage (find-package "BWI_SERVICES")))
(unless (find-package "BWI_SERVICES::DELIVERMESSAGE")
  (make-package "BWI_SERVICES::DELIVERMESSAGE"))
(unless (find-package "BWI_SERVICES::DELIVERMESSAGEREQUEST")
  (make-package "BWI_SERVICES::DELIVERMESSAGEREQUEST"))
(unless (find-package "BWI_SERVICES::DELIVERMESSAGERESPONSE")
  (make-package "BWI_SERVICES::DELIVERMESSAGERESPONSE"))

(in-package "ROS")





(defclass bwi_services::DeliverMessageRequest
  :super ros::object
  :slots (_location _message ))

(defmethod bwi_services::DeliverMessageRequest
  (:init
   (&key
    ((:location __location) "")
    ((:message __message) "")
    )
   (send-super :init)
   (setq _location (string __location))
   (setq _message (string __message))
   self)
  (:location
   (&optional __location)
   (if __location (setq _location __location)) _location)
  (:message
   (&optional __message)
   (if __message (setq _message __message)) _message)
  (:serialization-length
   ()
   (+
    ;; string _location
    4 (length _location)
    ;; string _message
    4 (length _message)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _location
       (write-long (length _location) s) (princ _location s)
     ;; string _message
       (write-long (length _message) s) (princ _message s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _location
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _location (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _message
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _message (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass bwi_services::DeliverMessageResponse
  :super ros::object
  :slots (_go_to_result _speak_result ))

(defmethod bwi_services::DeliverMessageResponse
  (:init
   (&key
    ((:go_to_result __go_to_result) 0)
    ((:speak_result __speak_result) 0)
    )
   (send-super :init)
   (setq _go_to_result (round __go_to_result))
   (setq _speak_result (round __speak_result))
   self)
  (:go_to_result
   (&optional __go_to_result)
   (if __go_to_result (setq _go_to_result __go_to_result)) _go_to_result)
  (:speak_result
   (&optional __speak_result)
   (if __speak_result (setq _speak_result __speak_result)) _speak_result)
  (:serialization-length
   ()
   (+
    ;; int32 _go_to_result
    4
    ;; int32 _speak_result
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _go_to_result
       (write-long _go_to_result s)
     ;; int32 _speak_result
       (write-long _speak_result s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _go_to_result
     (setq _go_to_result (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _speak_result
     (setq _speak_result (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(defclass bwi_services::DeliverMessage
  :super ros::object
  :slots ())

(setf (get bwi_services::DeliverMessage :md5sum-) "e951bc044db93112f1ee530c255f7550")
(setf (get bwi_services::DeliverMessage :datatype-) "bwi_services/DeliverMessage")
(setf (get bwi_services::DeliverMessage :request) bwi_services::DeliverMessageRequest)
(setf (get bwi_services::DeliverMessage :response) bwi_services::DeliverMessageResponse)

(defmethod bwi_services::DeliverMessageRequest
  (:response () (instance bwi_services::DeliverMessageResponse :init)))

(setf (get bwi_services::DeliverMessageRequest :md5sum-) "e951bc044db93112f1ee530c255f7550")
(setf (get bwi_services::DeliverMessageRequest :datatype-) "bwi_services/DeliverMessageRequest")
(setf (get bwi_services::DeliverMessageRequest :definition-)
      "string location
string message
---
int32 go_to_result
int32 speak_result

")

(setf (get bwi_services::DeliverMessageResponse :md5sum-) "e951bc044db93112f1ee530c255f7550")
(setf (get bwi_services::DeliverMessageResponse :datatype-) "bwi_services/DeliverMessageResponse")
(setf (get bwi_services::DeliverMessageResponse :definition-)
      "string location
string message
---
int32 go_to_result
int32 speak_result

")



(provide :bwi_services/DeliverMessage "e951bc044db93112f1ee530c255f7550")


