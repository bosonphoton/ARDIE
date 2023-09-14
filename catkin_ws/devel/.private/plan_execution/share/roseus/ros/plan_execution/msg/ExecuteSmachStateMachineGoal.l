;; Auto-generated. Do not edit!


(when (boundp 'plan_execution::ExecuteSmachStateMachineGoal)
  (if (not (find-package "PLAN_EXECUTION"))
    (make-package "PLAN_EXECUTION"))
  (shadow 'ExecuteSmachStateMachineGoal (find-package "PLAN_EXECUTION")))
(unless (find-package "PLAN_EXECUTION::EXECUTESMACHSTATEMACHINEGOAL")
  (make-package "PLAN_EXECUTION::EXECUTESMACHSTATEMACHINEGOAL"))

(in-package "ROS")
;;//! \htmlinclude ExecuteSmachStateMachineGoal.msg.html


(defclass plan_execution::ExecuteSmachStateMachineGoal
  :super ros::object
  :slots (_parameters ))

(defmethod plan_execution::ExecuteSmachStateMachineGoal
  (:init
   (&key
    ((:parameters __parameters) (let (r) (dotimes (i 0) (push "" r)) r))
    )
   (send-super :init)
   (setq _parameters __parameters)
   self)
  (:parameters
   (&optional __parameters)
   (if __parameters (setq _parameters __parameters)) _parameters)
  (:serialization-length
   ()
   (+
    ;; string[] _parameters
    (apply #'+ (mapcar #'(lambda (x) (+ 4 (length x))) _parameters)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string[] _parameters
     (write-long (length _parameters) s)
     (dolist (elem _parameters)
       (write-long (length elem) s) (princ elem s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string[] _parameters
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _parameters (make-list n))
     (dotimes (i n)
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setf (elt _parameters i) (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
     ))
   ;;
   self)
  )

(setf (get plan_execution::ExecuteSmachStateMachineGoal :md5sum-) "2c50df2951af5e4b68e504b450b867f2")
(setf (get plan_execution::ExecuteSmachStateMachineGoal :datatype-) "plan_execution/ExecuteSmachStateMachineGoal")
(setf (get plan_execution::ExecuteSmachStateMachineGoal :definition-)
      "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======
string[] parameters

")



(provide :plan_execution/ExecuteSmachStateMachineGoal "2c50df2951af5e4b68e504b450b867f2")

