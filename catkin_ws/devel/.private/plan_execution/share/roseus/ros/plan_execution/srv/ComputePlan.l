;; Auto-generated. Do not edit!


(when (boundp 'plan_execution::ComputePlan)
  (if (not (find-package "PLAN_EXECUTION"))
    (make-package "PLAN_EXECUTION"))
  (shadow 'ComputePlan (find-package "PLAN_EXECUTION")))
(unless (find-package "PLAN_EXECUTION::COMPUTEPLAN")
  (make-package "PLAN_EXECUTION::COMPUTEPLAN"))
(unless (find-package "PLAN_EXECUTION::COMPUTEPLANREQUEST")
  (make-package "PLAN_EXECUTION::COMPUTEPLANREQUEST"))
(unless (find-package "PLAN_EXECUTION::COMPUTEPLANRESPONSE")
  (make-package "PLAN_EXECUTION::COMPUTEPLANRESPONSE"))

(in-package "ROS")





(defclass plan_execution::ComputePlanRequest
  :super ros::object
  :slots (_goal ))

(defmethod plan_execution::ComputePlanRequest
  (:init
   (&key
    ((:goal __goal) (let (r) (dotimes (i 0) (push (instance plan_execution::AspRule :init) r)) r))
    )
   (send-super :init)
   (setq _goal __goal)
   self)
  (:goal
   (&rest __goal)
   (if (keywordp (car __goal))
       (send* _goal __goal)
     (progn
       (if __goal (setq _goal (car __goal)))
       _goal)))
  (:serialization-length
   ()
   (+
    ;; plan_execution/AspRule[] _goal
    (apply #'+ (send-all _goal :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; plan_execution/AspRule[] _goal
     (write-long (length _goal) s)
     (dolist (elem _goal)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; plan_execution/AspRule[] _goal
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _goal (let (r) (dotimes (i n) (push (instance plan_execution::AspRule :init) r)) r))
     (dolist (elem- _goal)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(defclass plan_execution::ComputePlanResponse
  :super ros::object
  :slots (_plan ))

(defmethod plan_execution::ComputePlanResponse
  (:init
   (&key
    ((:plan __plan) (instance plan_execution::AnswerSet :init))
    )
   (send-super :init)
   (setq _plan __plan)
   self)
  (:plan
   (&rest __plan)
   (if (keywordp (car __plan))
       (send* _plan __plan)
     (progn
       (if __plan (setq _plan (car __plan)))
       _plan)))
  (:serialization-length
   ()
   (+
    ;; plan_execution/AnswerSet _plan
    (send _plan :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; plan_execution/AnswerSet _plan
       (send _plan :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; plan_execution/AnswerSet _plan
     (send _plan :deserialize buf ptr-) (incf ptr- (send _plan :serialization-length))
   ;;
   self)
  )

(defclass plan_execution::ComputePlan
  :super ros::object
  :slots ())

(setf (get plan_execution::ComputePlan :md5sum-) "48a67fad1628d583e4c1c2c356347c33")
(setf (get plan_execution::ComputePlan :datatype-) "plan_execution/ComputePlan")
(setf (get plan_execution::ComputePlan :request) plan_execution::ComputePlanRequest)
(setf (get plan_execution::ComputePlan :response) plan_execution::ComputePlanResponse)

(defmethod plan_execution::ComputePlanRequest
  (:response () (instance plan_execution::ComputePlanResponse :init)))

(setf (get plan_execution::ComputePlanRequest :md5sum-) "48a67fad1628d583e4c1c2c356347c33")
(setf (get plan_execution::ComputePlanRequest :datatype-) "plan_execution/ComputePlanRequest")
(setf (get plan_execution::ComputePlanRequest :definition-)
      "AspRule[] goal

================================================================================
MSG: plan_execution/AspRule
AspFluent[] head
AspFluent[] body

================================================================================
MSG: plan_execution/AspFluent
string name
string[] variables
uint32 timeStep
---
AnswerSet plan

================================================================================
MSG: plan_execution/AnswerSet
AspFluent[] fluents
bool satisfied

================================================================================
MSG: plan_execution/AspFluent
string name
string[] variables
uint32 timeStep
")

(setf (get plan_execution::ComputePlanResponse :md5sum-) "48a67fad1628d583e4c1c2c356347c33")
(setf (get plan_execution::ComputePlanResponse :datatype-) "plan_execution/ComputePlanResponse")
(setf (get plan_execution::ComputePlanResponse :definition-)
      "AspRule[] goal

================================================================================
MSG: plan_execution/AspRule
AspFluent[] head
AspFluent[] body

================================================================================
MSG: plan_execution/AspFluent
string name
string[] variables
uint32 timeStep
---
AnswerSet plan

================================================================================
MSG: plan_execution/AnswerSet
AspFluent[] fluents
bool satisfied

================================================================================
MSG: plan_execution/AspFluent
string name
string[] variables
uint32 timeStep
")



(provide :plan_execution/ComputePlan "48a67fad1628d583e4c1c2c356347c33")


