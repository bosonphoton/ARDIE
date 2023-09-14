;; Auto-generated. Do not edit!


(when (boundp 'plan_execution::ComputeAllPlans)
  (if (not (find-package "PLAN_EXECUTION"))
    (make-package "PLAN_EXECUTION"))
  (shadow 'ComputeAllPlans (find-package "PLAN_EXECUTION")))
(unless (find-package "PLAN_EXECUTION::COMPUTEALLPLANS")
  (make-package "PLAN_EXECUTION::COMPUTEALLPLANS"))
(unless (find-package "PLAN_EXECUTION::COMPUTEALLPLANSREQUEST")
  (make-package "PLAN_EXECUTION::COMPUTEALLPLANSREQUEST"))
(unless (find-package "PLAN_EXECUTION::COMPUTEALLPLANSRESPONSE")
  (make-package "PLAN_EXECUTION::COMPUTEALLPLANSRESPONSE"))

(in-package "ROS")





(defclass plan_execution::ComputeAllPlansRequest
  :super ros::object
  :slots (_goal _suboptimality ))

(defmethod plan_execution::ComputeAllPlansRequest
  (:init
   (&key
    ((:goal __goal) (let (r) (dotimes (i 0) (push (instance plan_execution::AspRule :init) r)) r))
    ((:suboptimality __suboptimality) 0.0)
    )
   (send-super :init)
   (setq _goal __goal)
   (setq _suboptimality (float __suboptimality))
   self)
  (:goal
   (&rest __goal)
   (if (keywordp (car __goal))
       (send* _goal __goal)
     (progn
       (if __goal (setq _goal (car __goal)))
       _goal)))
  (:suboptimality
   (&optional __suboptimality)
   (if __suboptimality (setq _suboptimality __suboptimality)) _suboptimality)
  (:serialization-length
   ()
   (+
    ;; plan_execution/AspRule[] _goal
    (apply #'+ (send-all _goal :serialization-length)) 4
    ;; float64 _suboptimality
    8
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
     ;; float64 _suboptimality
       (sys::poke _suboptimality (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
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
   ;; float64 _suboptimality
     (setq _suboptimality (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(defclass plan_execution::ComputeAllPlansResponse
  :super ros::object
  :slots (_plans ))

(defmethod plan_execution::ComputeAllPlansResponse
  (:init
   (&key
    ((:plans __plans) (let (r) (dotimes (i 0) (push (instance plan_execution::AnswerSet :init) r)) r))
    )
   (send-super :init)
   (setq _plans __plans)
   self)
  (:plans
   (&rest __plans)
   (if (keywordp (car __plans))
       (send* _plans __plans)
     (progn
       (if __plans (setq _plans (car __plans)))
       _plans)))
  (:serialization-length
   ()
   (+
    ;; plan_execution/AnswerSet[] _plans
    (apply #'+ (send-all _plans :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; plan_execution/AnswerSet[] _plans
     (write-long (length _plans) s)
     (dolist (elem _plans)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; plan_execution/AnswerSet[] _plans
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _plans (let (r) (dotimes (i n) (push (instance plan_execution::AnswerSet :init) r)) r))
     (dolist (elem- _plans)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(defclass plan_execution::ComputeAllPlans
  :super ros::object
  :slots ())

(setf (get plan_execution::ComputeAllPlans :md5sum-) "5055d2fd937455d30a412653ffa463c6")
(setf (get plan_execution::ComputeAllPlans :datatype-) "plan_execution/ComputeAllPlans")
(setf (get plan_execution::ComputeAllPlans :request) plan_execution::ComputeAllPlansRequest)
(setf (get plan_execution::ComputeAllPlans :response) plan_execution::ComputeAllPlansResponse)

(defmethod plan_execution::ComputeAllPlansRequest
  (:response () (instance plan_execution::ComputeAllPlansResponse :init)))

(setf (get plan_execution::ComputeAllPlansRequest :md5sum-) "5055d2fd937455d30a412653ffa463c6")
(setf (get plan_execution::ComputeAllPlansRequest :datatype-) "plan_execution/ComputeAllPlansRequest")
(setf (get plan_execution::ComputeAllPlansRequest :definition-)
      "AspRule[] goal
float64 suboptimality

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
AnswerSet[] plans

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

(setf (get plan_execution::ComputeAllPlansResponse :md5sum-) "5055d2fd937455d30a412653ffa463c6")
(setf (get plan_execution::ComputeAllPlansResponse :datatype-) "plan_execution/ComputeAllPlansResponse")
(setf (get plan_execution::ComputeAllPlansResponse :definition-)
      "AspRule[] goal
float64 suboptimality

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
AnswerSet[] plans

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



(provide :plan_execution/ComputeAllPlans "5055d2fd937455d30a412653ffa463c6")


