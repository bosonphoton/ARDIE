;; Auto-generated. Do not edit!


(when (boundp 'plan_execution::ExecutePlanResult)
  (if (not (find-package "PLAN_EXECUTION"))
    (make-package "PLAN_EXECUTION"))
  (shadow 'ExecutePlanResult (find-package "PLAN_EXECUTION")))
(unless (find-package "PLAN_EXECUTION::EXECUTEPLANRESULT")
  (make-package "PLAN_EXECUTION::EXECUTEPLANRESULT"))

(in-package "ROS")
;;//! \htmlinclude ExecutePlanResult.msg.html


(intern "*SUCCEEDED*" (find-package "PLAN_EXECUTION::EXECUTEPLANRESULT"))
(shadow '*SUCCEEDED* (find-package "PLAN_EXECUTION::EXECUTEPLANRESULT"))
(defconstant plan_execution::ExecutePlanResult::*SUCCEEDED* 1)
(intern "*FAILED_TO_PLAN*" (find-package "PLAN_EXECUTION::EXECUTEPLANRESULT"))
(shadow '*FAILED_TO_PLAN* (find-package "PLAN_EXECUTION::EXECUTEPLANRESULT"))
(defconstant plan_execution::ExecutePlanResult::*FAILED_TO_PLAN* 2)
(intern "*TOO_MANY_ACTION_FAILURES*" (find-package "PLAN_EXECUTION::EXECUTEPLANRESULT"))
(shadow '*TOO_MANY_ACTION_FAILURES* (find-package "PLAN_EXECUTION::EXECUTEPLANRESULT"))
(defconstant plan_execution::ExecutePlanResult::*TOO_MANY_ACTION_FAILURES* 3)
(defclass plan_execution::ExecutePlanResult
  :super ros::object
  :slots (_status _final_action _plan_remainder _inconsistent_rules _message ))

(defmethod plan_execution::ExecutePlanResult
  (:init
   (&key
    ((:status __status) 0)
    ((:final_action __final_action) (instance plan_execution::AspFluent :init))
    ((:plan_remainder __plan_remainder) (let (r) (dotimes (i 0) (push (instance plan_execution::AspFluent :init) r)) r))
    ((:inconsistent_rules __inconsistent_rules) (let (r) (dotimes (i 0) (push (instance plan_execution::AspRule :init) r)) r))
    ((:message __message) "")
    )
   (send-super :init)
   (setq _status (round __status))
   (setq _final_action __final_action)
   (setq _plan_remainder __plan_remainder)
   (setq _inconsistent_rules __inconsistent_rules)
   (setq _message (string __message))
   self)
  (:status
   (&optional __status)
   (if __status (setq _status __status)) _status)
  (:final_action
   (&rest __final_action)
   (if (keywordp (car __final_action))
       (send* _final_action __final_action)
     (progn
       (if __final_action (setq _final_action (car __final_action)))
       _final_action)))
  (:plan_remainder
   (&rest __plan_remainder)
   (if (keywordp (car __plan_remainder))
       (send* _plan_remainder __plan_remainder)
     (progn
       (if __plan_remainder (setq _plan_remainder (car __plan_remainder)))
       _plan_remainder)))
  (:inconsistent_rules
   (&rest __inconsistent_rules)
   (if (keywordp (car __inconsistent_rules))
       (send* _inconsistent_rules __inconsistent_rules)
     (progn
       (if __inconsistent_rules (setq _inconsistent_rules (car __inconsistent_rules)))
       _inconsistent_rules)))
  (:message
   (&optional __message)
   (if __message (setq _message __message)) _message)
  (:serialization-length
   ()
   (+
    ;; int32 _status
    4
    ;; plan_execution/AspFluent _final_action
    (send _final_action :serialization-length)
    ;; plan_execution/AspFluent[] _plan_remainder
    (apply #'+ (send-all _plan_remainder :serialization-length)) 4
    ;; plan_execution/AspRule[] _inconsistent_rules
    (apply #'+ (send-all _inconsistent_rules :serialization-length)) 4
    ;; string _message
    4 (length _message)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _status
       (write-long _status s)
     ;; plan_execution/AspFluent _final_action
       (send _final_action :serialize s)
     ;; plan_execution/AspFluent[] _plan_remainder
     (write-long (length _plan_remainder) s)
     (dolist (elem _plan_remainder)
       (send elem :serialize s)
       )
     ;; plan_execution/AspRule[] _inconsistent_rules
     (write-long (length _inconsistent_rules) s)
     (dolist (elem _inconsistent_rules)
       (send elem :serialize s)
       )
     ;; string _message
       (write-long (length _message) s) (princ _message s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _status
     (setq _status (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; plan_execution/AspFluent _final_action
     (send _final_action :deserialize buf ptr-) (incf ptr- (send _final_action :serialization-length))
   ;; plan_execution/AspFluent[] _plan_remainder
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _plan_remainder (let (r) (dotimes (i n) (push (instance plan_execution::AspFluent :init) r)) r))
     (dolist (elem- _plan_remainder)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; plan_execution/AspRule[] _inconsistent_rules
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _inconsistent_rules (let (r) (dotimes (i n) (push (instance plan_execution::AspRule :init) r)) r))
     (dolist (elem- _inconsistent_rules)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; string _message
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _message (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(setf (get plan_execution::ExecutePlanResult :md5sum-) "80745bbaf00d0889663923066dad51c0")
(setf (get plan_execution::ExecutePlanResult :datatype-) "plan_execution/ExecutePlanResult")
(setf (get plan_execution::ExecutePlanResult :definition-)
      "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======
int32 SUCCEEDED = 1
int32 FAILED_TO_PLAN = 2
int32 TOO_MANY_ACTION_FAILURES = 3
int32 status
AspFluent final_action
AspFluent[] plan_remainder
AspRule[] inconsistent_rules
string message

================================================================================
MSG: plan_execution/AspFluent
string name
string[] variables
uint32 timeStep

================================================================================
MSG: plan_execution/AspRule
AspFluent[] head
AspFluent[] body

")



(provide :plan_execution/ExecutePlanResult "80745bbaf00d0889663923066dad51c0")


