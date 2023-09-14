;; Auto-generated. Do not edit!


(when (boundp 'plan_execution::UpdateFluents)
  (if (not (find-package "PLAN_EXECUTION"))
    (make-package "PLAN_EXECUTION"))
  (shadow 'UpdateFluents (find-package "PLAN_EXECUTION")))
(unless (find-package "PLAN_EXECUTION::UPDATEFLUENTS")
  (make-package "PLAN_EXECUTION::UPDATEFLUENTS"))
(unless (find-package "PLAN_EXECUTION::UPDATEFLUENTSREQUEST")
  (make-package "PLAN_EXECUTION::UPDATEFLUENTSREQUEST"))
(unless (find-package "PLAN_EXECUTION::UPDATEFLUENTSRESPONSE")
  (make-package "PLAN_EXECUTION::UPDATEFLUENTSRESPONSE"))

(in-package "ROS")





(defclass plan_execution::UpdateFluentsRequest
  :super ros::object
  :slots (_fluents ))

(defmethod plan_execution::UpdateFluentsRequest
  (:init
   (&key
    ((:fluents __fluents) (let (r) (dotimes (i 0) (push (instance plan_execution::AspFluent :init) r)) r))
    )
   (send-super :init)
   (setq _fluents __fluents)
   self)
  (:fluents
   (&rest __fluents)
   (if (keywordp (car __fluents))
       (send* _fluents __fluents)
     (progn
       (if __fluents (setq _fluents (car __fluents)))
       _fluents)))
  (:serialization-length
   ()
   (+
    ;; plan_execution/AspFluent[] _fluents
    (apply #'+ (send-all _fluents :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; plan_execution/AspFluent[] _fluents
     (write-long (length _fluents) s)
     (dolist (elem _fluents)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; plan_execution/AspFluent[] _fluents
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _fluents (let (r) (dotimes (i n) (push (instance plan_execution::AspFluent :init) r)) r))
     (dolist (elem- _fluents)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(defclass plan_execution::UpdateFluentsResponse
  :super ros::object
  :slots (_consistent ))

(defmethod plan_execution::UpdateFluentsResponse
  (:init
   (&key
    ((:consistent __consistent) nil)
    )
   (send-super :init)
   (setq _consistent __consistent)
   self)
  (:consistent
   (&optional __consistent)
   (if __consistent (setq _consistent __consistent)) _consistent)
  (:serialization-length
   ()
   (+
    ;; bool _consistent
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _consistent
       (if _consistent (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _consistent
     (setq _consistent (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass plan_execution::UpdateFluents
  :super ros::object
  :slots ())

(setf (get plan_execution::UpdateFluents :md5sum-) "227bd43e3dadc0cc21a93d12243f42ad")
(setf (get plan_execution::UpdateFluents :datatype-) "plan_execution/UpdateFluents")
(setf (get plan_execution::UpdateFluents :request) plan_execution::UpdateFluentsRequest)
(setf (get plan_execution::UpdateFluents :response) plan_execution::UpdateFluentsResponse)

(defmethod plan_execution::UpdateFluentsRequest
  (:response () (instance plan_execution::UpdateFluentsResponse :init)))

(setf (get plan_execution::UpdateFluentsRequest :md5sum-) "227bd43e3dadc0cc21a93d12243f42ad")
(setf (get plan_execution::UpdateFluentsRequest :datatype-) "plan_execution/UpdateFluentsRequest")
(setf (get plan_execution::UpdateFluentsRequest :definition-)
      "AspFluent[] fluents

================================================================================
MSG: plan_execution/AspFluent
string name
string[] variables
uint32 timeStep
---
bool consistent

")

(setf (get plan_execution::UpdateFluentsResponse :md5sum-) "227bd43e3dadc0cc21a93d12243f42ad")
(setf (get plan_execution::UpdateFluentsResponse :datatype-) "plan_execution/UpdateFluentsResponse")
(setf (get plan_execution::UpdateFluentsResponse :definition-)
      "AspFluent[] fluents

================================================================================
MSG: plan_execution/AspFluent
string name
string[] variables
uint32 timeStep
---
bool consistent

")



(provide :plan_execution/UpdateFluents "227bd43e3dadc0cc21a93d12243f42ad")


