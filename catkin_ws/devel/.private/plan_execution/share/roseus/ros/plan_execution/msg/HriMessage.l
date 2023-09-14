;; Auto-generated. Do not edit!


(when (boundp 'plan_execution::HriMessage)
  (if (not (find-package "PLAN_EXECUTION"))
    (make-package "PLAN_EXECUTION"))
  (shadow 'HriMessage (find-package "PLAN_EXECUTION")))
(unless (find-package "PLAN_EXECUTION::HRIMESSAGE")
  (make-package "PLAN_EXECUTION::HRIMESSAGE"))

(in-package "ROS")
;;//! \htmlinclude HriMessage.msg.html


(defclass plan_execution::HriMessage
  :super ros::object
  :slots (_id _content _from _to ))

(defmethod plan_execution::HriMessage
  (:init
   (&key
    ((:id __id) "")
    ((:content __content) "")
    ((:from __from) "")
    ((:to __to) "")
    )
   (send-super :init)
   (setq _id (string __id))
   (setq _content (string __content))
   (setq _from (string __from))
   (setq _to (string __to))
   self)
  (:id
   (&optional __id)
   (if __id (setq _id __id)) _id)
  (:content
   (&optional __content)
   (if __content (setq _content __content)) _content)
  (:from
   (&optional __from)
   (if __from (setq _from __from)) _from)
  (:to
   (&optional __to)
   (if __to (setq _to __to)) _to)
  (:serialization-length
   ()
   (+
    ;; string _id
    4 (length _id)
    ;; string _content
    4 (length _content)
    ;; string _from
    4 (length _from)
    ;; string _to
    4 (length _to)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _id
       (write-long (length _id) s) (princ _id s)
     ;; string _content
       (write-long (length _content) s) (princ _content s)
     ;; string _from
       (write-long (length _from) s) (princ _from s)
     ;; string _to
       (write-long (length _to) s) (princ _to s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _id
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _id (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _content
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _content (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _from
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _from (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _to
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _to (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(setf (get plan_execution::HriMessage :md5sum-) "4708b0c47a957a02c20845120a2f4b1c")
(setf (get plan_execution::HriMessage :datatype-) "plan_execution/HriMessage")
(setf (get plan_execution::HriMessage :definition-)
      "string id
string content
string from
string to

")



(provide :plan_execution/HriMessage "4708b0c47a957a02c20845120a2f4b1c")


