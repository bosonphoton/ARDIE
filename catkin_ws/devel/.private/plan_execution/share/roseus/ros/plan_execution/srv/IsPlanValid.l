;; Auto-generated. Do not edit!


(when (boundp 'plan_execution::IsPlanValid)
  (if (not (find-package "PLAN_EXECUTION"))
    (make-package "PLAN_EXECUTION"))
  (shadow 'IsPlanValid (find-package "PLAN_EXECUTION")))
(unless (find-package "PLAN_EXECUTION::ISPLANVALID")
  (make-package "PLAN_EXECUTION::ISPLANVALID"))
(unless (find-package "PLAN_EXECUTION::ISPLANVALIDREQUEST")
  (make-package "PLAN_EXECUTION::ISPLANVALIDREQUEST"))
(unless (find-package "PLAN_EXECUTION::ISPLANVALIDRESPONSE")
  (make-package "PLAN_EXECUTION::ISPLANVALIDRESPONSE"))

(in-package "ROS")





(defclass plan_execution::IsPlanValidRequest
  :super ros::object
  :slots (_plan _goal ))

(defmethod plan_execution::IsPlanValidRequest
  (:init
   (&key
    ((:plan __plan) (instance plan_execution::AnswerSet :init))
    ((:goal __goal) (let (r) (dotimes (i 0) (push (instance plan_execution::AspRule :init) r)) r))
    )
   (send-super :init)
   (setq _plan __plan)
   (setq _goal __goal)
   self)
  (:plan
   (&rest __plan)
   (if (keywordp (car __plan))
       (send* _plan __plan)
     (progn
       (if __plan (setq _plan (car __plan)))
       _plan)))
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
    ;; plan_execution/AnswerSet _plan
    (send _plan :serialization-length)
    ;; plan_execution/AspRule[] _goal
    (apply #'+ (send-all _goal :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; plan_execution/AnswerSet _plan
       (send _plan :serialize s)
     ;; plan_execution/AspRule[] _goal
     (write-long (length _goal) s)
     (dolist (elem _goal)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; plan_execution/AnswerSet _plan
     (send _plan :deserialize buf ptr-) (incf ptr- (send _plan :serialization-length))
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

(defclass plan_execution::IsPlanValidResponse
  :super ros::object
  :slots (_valid ))

(defmethod plan_execution::IsPlanValidResponse
  (:init
   (&key
    ((:valid __valid) nil)
    )
   (send-super :init)
   (setq _valid __valid)
   self)
  (:valid
   (&optional __valid)
   (if __valid (setq _valid __valid)) _valid)
  (:serialization-length
   ()
   (+
    ;; bool _valid
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _valid
       (if _valid (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _valid
     (setq _valid (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass plan_execution::IsPlanValid
  :super ros::object
  :slots ())

(setf (get plan_execution::IsPlanValid :md5sum-) "80564b2371ef8008ffd47822957ab439")
(setf (get plan_execution::IsPlanValid :datatype-) "plan_execution/IsPlanValid")
(setf (get plan_execution::IsPlanValid :request) plan_execution::IsPlanValidRequest)
(setf (get plan_execution::IsPlanValid :response) plan_execution::IsPlanValidResponse)

(defmethod plan_execution::IsPlanValidRequest
  (:response () (instance plan_execution::IsPlanValidResponse :init)))

(setf (get plan_execution::IsPlanValidRequest :md5sum-) "80564b2371ef8008ffd47822957ab439")
(setf (get plan_execution::IsPlanValidRequest :datatype-) "plan_execution/IsPlanValidRequest")
(setf (get plan_execution::IsPlanValidRequest :definition-)
      "AnswerSet plan
AspRule[] goal

================================================================================
MSG: plan_execution/AnswerSet
AspFluent[] fluents
bool satisfied

================================================================================
MSG: plan_execution/AspFluent
string name
string[] variables
uint32 timeStep

================================================================================
MSG: plan_execution/AspRule
AspFluent[] head
AspFluent[] body
---
bool valid

")

(setf (get plan_execution::IsPlanValidResponse :md5sum-) "80564b2371ef8008ffd47822957ab439")
(setf (get plan_execution::IsPlanValidResponse :datatype-) "plan_execution/IsPlanValidResponse")
(setf (get plan_execution::IsPlanValidResponse :definition-)
      "AnswerSet plan
AspRule[] goal

================================================================================
MSG: plan_execution/AnswerSet
AspFluent[] fluents
bool satisfied

================================================================================
MSG: plan_execution/AspFluent
string name
string[] variables
uint32 timeStep

================================================================================
MSG: plan_execution/AspRule
AspFluent[] head
AspFluent[] body
---
bool valid

")



(provide :plan_execution/IsPlanValid "80564b2371ef8008ffd47822957ab439")


