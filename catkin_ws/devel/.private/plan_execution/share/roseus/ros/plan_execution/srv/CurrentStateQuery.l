;; Auto-generated. Do not edit!


(when (boundp 'plan_execution::CurrentStateQuery)
  (if (not (find-package "PLAN_EXECUTION"))
    (make-package "PLAN_EXECUTION"))
  (shadow 'CurrentStateQuery (find-package "PLAN_EXECUTION")))
(unless (find-package "PLAN_EXECUTION::CURRENTSTATEQUERY")
  (make-package "PLAN_EXECUTION::CURRENTSTATEQUERY"))
(unless (find-package "PLAN_EXECUTION::CURRENTSTATEQUERYREQUEST")
  (make-package "PLAN_EXECUTION::CURRENTSTATEQUERYREQUEST"))
(unless (find-package "PLAN_EXECUTION::CURRENTSTATEQUERYRESPONSE")
  (make-package "PLAN_EXECUTION::CURRENTSTATEQUERYRESPONSE"))

(in-package "ROS")





(defclass plan_execution::CurrentStateQueryRequest
  :super ros::object
  :slots (_query ))

(defmethod plan_execution::CurrentStateQueryRequest
  (:init
   (&key
    ((:query __query) (let (r) (dotimes (i 0) (push (instance plan_execution::AspRule :init) r)) r))
    )
   (send-super :init)
   (setq _query __query)
   self)
  (:query
   (&rest __query)
   (if (keywordp (car __query))
       (send* _query __query)
     (progn
       (if __query (setq _query (car __query)))
       _query)))
  (:serialization-length
   ()
   (+
    ;; plan_execution/AspRule[] _query
    (apply #'+ (send-all _query :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; plan_execution/AspRule[] _query
     (write-long (length _query) s)
     (dolist (elem _query)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; plan_execution/AspRule[] _query
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _query (let (r) (dotimes (i n) (push (instance plan_execution::AspRule :init) r)) r))
     (dolist (elem- _query)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(defclass plan_execution::CurrentStateQueryResponse
  :super ros::object
  :slots (_answer ))

(defmethod plan_execution::CurrentStateQueryResponse
  (:init
   (&key
    ((:answer __answer) (instance plan_execution::AnswerSet :init))
    )
   (send-super :init)
   (setq _answer __answer)
   self)
  (:answer
   (&rest __answer)
   (if (keywordp (car __answer))
       (send* _answer __answer)
     (progn
       (if __answer (setq _answer (car __answer)))
       _answer)))
  (:serialization-length
   ()
   (+
    ;; plan_execution/AnswerSet _answer
    (send _answer :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; plan_execution/AnswerSet _answer
       (send _answer :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; plan_execution/AnswerSet _answer
     (send _answer :deserialize buf ptr-) (incf ptr- (send _answer :serialization-length))
   ;;
   self)
  )

(defclass plan_execution::CurrentStateQuery
  :super ros::object
  :slots ())

(setf (get plan_execution::CurrentStateQuery :md5sum-) "2cbc1d643059afa4b61504739724cdfc")
(setf (get plan_execution::CurrentStateQuery :datatype-) "plan_execution/CurrentStateQuery")
(setf (get plan_execution::CurrentStateQuery :request) plan_execution::CurrentStateQueryRequest)
(setf (get plan_execution::CurrentStateQuery :response) plan_execution::CurrentStateQueryResponse)

(defmethod plan_execution::CurrentStateQueryRequest
  (:response () (instance plan_execution::CurrentStateQueryResponse :init)))

(setf (get plan_execution::CurrentStateQueryRequest :md5sum-) "2cbc1d643059afa4b61504739724cdfc")
(setf (get plan_execution::CurrentStateQueryRequest :datatype-) "plan_execution/CurrentStateQueryRequest")
(setf (get plan_execution::CurrentStateQueryRequest :definition-)
      "AspRule[] query

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
AnswerSet answer

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

(setf (get plan_execution::CurrentStateQueryResponse :md5sum-) "2cbc1d643059afa4b61504739724cdfc")
(setf (get plan_execution::CurrentStateQueryResponse :datatype-) "plan_execution/CurrentStateQueryResponse")
(setf (get plan_execution::CurrentStateQueryResponse :definition-)
      "AspRule[] query

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
AnswerSet answer

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



(provide :plan_execution/CurrentStateQuery "2cbc1d643059afa4b61504739724cdfc")


