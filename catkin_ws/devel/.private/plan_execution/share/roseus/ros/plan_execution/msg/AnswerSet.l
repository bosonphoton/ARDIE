;; Auto-generated. Do not edit!


(when (boundp 'plan_execution::AnswerSet)
  (if (not (find-package "PLAN_EXECUTION"))
    (make-package "PLAN_EXECUTION"))
  (shadow 'AnswerSet (find-package "PLAN_EXECUTION")))
(unless (find-package "PLAN_EXECUTION::ANSWERSET")
  (make-package "PLAN_EXECUTION::ANSWERSET"))

(in-package "ROS")
;;//! \htmlinclude AnswerSet.msg.html


(defclass plan_execution::AnswerSet
  :super ros::object
  :slots (_fluents _satisfied ))

(defmethod plan_execution::AnswerSet
  (:init
   (&key
    ((:fluents __fluents) (let (r) (dotimes (i 0) (push (instance plan_execution::AspFluent :init) r)) r))
    ((:satisfied __satisfied) nil)
    )
   (send-super :init)
   (setq _fluents __fluents)
   (setq _satisfied __satisfied)
   self)
  (:fluents
   (&rest __fluents)
   (if (keywordp (car __fluents))
       (send* _fluents __fluents)
     (progn
       (if __fluents (setq _fluents (car __fluents)))
       _fluents)))
  (:satisfied
   (&optional __satisfied)
   (if __satisfied (setq _satisfied __satisfied)) _satisfied)
  (:serialization-length
   ()
   (+
    ;; plan_execution/AspFluent[] _fluents
    (apply #'+ (send-all _fluents :serialization-length)) 4
    ;; bool _satisfied
    1
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
     ;; bool _satisfied
       (if _satisfied (write-byte -1 s) (write-byte 0 s))
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
   ;; bool _satisfied
     (setq _satisfied (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(setf (get plan_execution::AnswerSet :md5sum-) "9b4c2ce462411c0af968d1312672b24e")
(setf (get plan_execution::AnswerSet :datatype-) "plan_execution/AnswerSet")
(setf (get plan_execution::AnswerSet :definition-)
      "AspFluent[] fluents
bool satisfied

================================================================================
MSG: plan_execution/AspFluent
string name
string[] variables
uint32 timeStep

")



(provide :plan_execution/AnswerSet "9b4c2ce462411c0af968d1312672b24e")


