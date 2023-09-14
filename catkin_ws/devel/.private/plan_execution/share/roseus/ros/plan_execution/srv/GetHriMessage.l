;; Auto-generated. Do not edit!


(when (boundp 'plan_execution::GetHriMessage)
  (if (not (find-package "PLAN_EXECUTION"))
    (make-package "PLAN_EXECUTION"))
  (shadow 'GetHriMessage (find-package "PLAN_EXECUTION")))
(unless (find-package "PLAN_EXECUTION::GETHRIMESSAGE")
  (make-package "PLAN_EXECUTION::GETHRIMESSAGE"))
(unless (find-package "PLAN_EXECUTION::GETHRIMESSAGEREQUEST")
  (make-package "PLAN_EXECUTION::GETHRIMESSAGEREQUEST"))
(unless (find-package "PLAN_EXECUTION::GETHRIMESSAGERESPONSE")
  (make-package "PLAN_EXECUTION::GETHRIMESSAGERESPONSE"))

(in-package "ROS")





(defclass plan_execution::GetHriMessageRequest
  :super ros::object
  :slots (_message_id ))

(defmethod plan_execution::GetHriMessageRequest
  (:init
   (&key
    ((:message_id __message_id) "")
    )
   (send-super :init)
   (setq _message_id (string __message_id))
   self)
  (:message_id
   (&optional __message_id)
   (if __message_id (setq _message_id __message_id)) _message_id)
  (:serialization-length
   ()
   (+
    ;; string _message_id
    4 (length _message_id)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _message_id
       (write-long (length _message_id) s) (princ _message_id s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _message_id
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _message_id (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass plan_execution::GetHriMessageResponse
  :super ros::object
  :slots (_message ))

(defmethod plan_execution::GetHriMessageResponse
  (:init
   (&key
    ((:message __message) (instance plan_execution::HriMessage :init))
    )
   (send-super :init)
   (setq _message __message)
   self)
  (:message
   (&rest __message)
   (if (keywordp (car __message))
       (send* _message __message)
     (progn
       (if __message (setq _message (car __message)))
       _message)))
  (:serialization-length
   ()
   (+
    ;; plan_execution/HriMessage _message
    (send _message :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; plan_execution/HriMessage _message
       (send _message :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; plan_execution/HriMessage _message
     (send _message :deserialize buf ptr-) (incf ptr- (send _message :serialization-length))
   ;;
   self)
  )

(defclass plan_execution::GetHriMessage
  :super ros::object
  :slots ())

(setf (get plan_execution::GetHriMessage :md5sum-) "09269fe575715249f3753f62218a600a")
(setf (get plan_execution::GetHriMessage :datatype-) "plan_execution/GetHriMessage")
(setf (get plan_execution::GetHriMessage :request) plan_execution::GetHriMessageRequest)
(setf (get plan_execution::GetHriMessage :response) plan_execution::GetHriMessageResponse)

(defmethod plan_execution::GetHriMessageRequest
  (:response () (instance plan_execution::GetHriMessageResponse :init)))

(setf (get plan_execution::GetHriMessageRequest :md5sum-) "09269fe575715249f3753f62218a600a")
(setf (get plan_execution::GetHriMessageRequest :datatype-) "plan_execution/GetHriMessageRequest")
(setf (get plan_execution::GetHriMessageRequest :definition-)
      "string message_id
---
HriMessage message

================================================================================
MSG: plan_execution/HriMessage
string id
string content
string from
string to
")

(setf (get plan_execution::GetHriMessageResponse :md5sum-) "09269fe575715249f3753f62218a600a")
(setf (get plan_execution::GetHriMessageResponse :datatype-) "plan_execution/GetHriMessageResponse")
(setf (get plan_execution::GetHriMessageResponse :definition-)
      "string message_id
---
HriMessage message

================================================================================
MSG: plan_execution/HriMessage
string id
string content
string from
string to
")



(provide :plan_execution/GetHriMessage "09269fe575715249f3753f62218a600a")


