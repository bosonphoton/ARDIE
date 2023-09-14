;; Auto-generated. Do not edit!


(when (boundp 'plan_execution::AspRule)
  (if (not (find-package "PLAN_EXECUTION"))
    (make-package "PLAN_EXECUTION"))
  (shadow 'AspRule (find-package "PLAN_EXECUTION")))
(unless (find-package "PLAN_EXECUTION::ASPRULE")
  (make-package "PLAN_EXECUTION::ASPRULE"))

(in-package "ROS")
;;//! \htmlinclude AspRule.msg.html


(defclass plan_execution::AspRule
  :super ros::object
  :slots (_head _body ))

(defmethod plan_execution::AspRule
  (:init
   (&key
    ((:head __head) (let (r) (dotimes (i 0) (push (instance plan_execution::AspFluent :init) r)) r))
    ((:body __body) (let (r) (dotimes (i 0) (push (instance plan_execution::AspFluent :init) r)) r))
    )
   (send-super :init)
   (setq _head __head)
   (setq _body __body)
   self)
  (:head
   (&rest __head)
   (if (keywordp (car __head))
       (send* _head __head)
     (progn
       (if __head (setq _head (car __head)))
       _head)))
  (:body
   (&rest __body)
   (if (keywordp (car __body))
       (send* _body __body)
     (progn
       (if __body (setq _body (car __body)))
       _body)))
  (:serialization-length
   ()
   (+
    ;; plan_execution/AspFluent[] _head
    (apply #'+ (send-all _head :serialization-length)) 4
    ;; plan_execution/AspFluent[] _body
    (apply #'+ (send-all _body :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; plan_execution/AspFluent[] _head
     (write-long (length _head) s)
     (dolist (elem _head)
       (send elem :serialize s)
       )
     ;; plan_execution/AspFluent[] _body
     (write-long (length _body) s)
     (dolist (elem _body)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; plan_execution/AspFluent[] _head
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _head (let (r) (dotimes (i n) (push (instance plan_execution::AspFluent :init) r)) r))
     (dolist (elem- _head)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; plan_execution/AspFluent[] _body
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _body (let (r) (dotimes (i n) (push (instance plan_execution::AspFluent :init) r)) r))
     (dolist (elem- _body)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get plan_execution::AspRule :md5sum-) "58135dc904c6164beb7b31dfd47be280")
(setf (get plan_execution::AspRule :datatype-) "plan_execution/AspRule")
(setf (get plan_execution::AspRule :definition-)
      "AspFluent[] head
AspFluent[] body

================================================================================
MSG: plan_execution/AspFluent
string name
string[] variables
uint32 timeStep

")



(provide :plan_execution/AspRule "58135dc904c6164beb7b31dfd47be280")


