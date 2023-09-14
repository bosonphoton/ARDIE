;; Auto-generated. Do not edit!


(when (boundp 'plan_execution::AspFluent)
  (if (not (find-package "PLAN_EXECUTION"))
    (make-package "PLAN_EXECUTION"))
  (shadow 'AspFluent (find-package "PLAN_EXECUTION")))
(unless (find-package "PLAN_EXECUTION::ASPFLUENT")
  (make-package "PLAN_EXECUTION::ASPFLUENT"))

(in-package "ROS")
;;//! \htmlinclude AspFluent.msg.html


(defclass plan_execution::AspFluent
  :super ros::object
  :slots (_name _variables _timeStep ))

(defmethod plan_execution::AspFluent
  (:init
   (&key
    ((:name __name) "")
    ((:variables __variables) (let (r) (dotimes (i 0) (push "" r)) r))
    ((:timeStep __timeStep) 0)
    )
   (send-super :init)
   (setq _name (string __name))
   (setq _variables __variables)
   (setq _timeStep (round __timeStep))
   self)
  (:name
   (&optional __name)
   (if __name (setq _name __name)) _name)
  (:variables
   (&optional __variables)
   (if __variables (setq _variables __variables)) _variables)
  (:timeStep
   (&optional __timeStep)
   (if __timeStep (setq _timeStep __timeStep)) _timeStep)
  (:serialization-length
   ()
   (+
    ;; string _name
    4 (length _name)
    ;; string[] _variables
    (apply #'+ (mapcar #'(lambda (x) (+ 4 (length x))) _variables)) 4
    ;; uint32 _timeStep
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _name
       (write-long (length _name) s) (princ _name s)
     ;; string[] _variables
     (write-long (length _variables) s)
     (dolist (elem _variables)
       (write-long (length elem) s) (princ elem s)
       )
     ;; uint32 _timeStep
       (write-long _timeStep s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string[] _variables
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _variables (make-list n))
     (dotimes (i n)
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setf (elt _variables i) (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
     ))
   ;; uint32 _timeStep
     (setq _timeStep (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get plan_execution::AspFluent :md5sum-) "8582b3c5ad01957af2b2eb3b38a251b2")
(setf (get plan_execution::AspFluent :datatype-) "plan_execution/AspFluent")
(setf (get plan_execution::AspFluent :definition-)
      "string name
string[] variables
uint32 timeStep

")



(provide :plan_execution/AspFluent "8582b3c5ad01957af2b2eb3b38a251b2")


