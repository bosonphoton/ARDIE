;; Auto-generated. Do not edit!


(when (boundp 'bwi_planning_common::PlannerAtom)
  (if (not (find-package "BWI_PLANNING_COMMON"))
    (make-package "BWI_PLANNING_COMMON"))
  (shadow 'PlannerAtom (find-package "BWI_PLANNING_COMMON")))
(unless (find-package "BWI_PLANNING_COMMON::PLANNERATOM")
  (make-package "BWI_PLANNING_COMMON::PLANNERATOM"))

(in-package "ROS")
;;//! \htmlinclude PlannerAtom.msg.html


(defclass bwi_planning_common::PlannerAtom
  :super ros::object
  :slots (_name _value ))

(defmethod bwi_planning_common::PlannerAtom
  (:init
   (&key
    ((:name __name) "")
    ((:value __value) (let (r) (dotimes (i 0) (push "" r)) r))
    )
   (send-super :init)
   (setq _name (string __name))
   (setq _value __value)
   self)
  (:name
   (&optional __name)
   (if __name (setq _name __name)) _name)
  (:value
   (&optional __value)
   (if __value (setq _value __value)) _value)
  (:serialization-length
   ()
   (+
    ;; string _name
    4 (length _name)
    ;; string[] _value
    (apply #'+ (mapcar #'(lambda (x) (+ 4 (length x))) _value)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _name
       (write-long (length _name) s) (princ _name s)
     ;; string[] _value
     (write-long (length _value) s)
     (dolist (elem _value)
       (write-long (length elem) s) (princ elem s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string[] _value
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _value (make-list n))
     (dotimes (i n)
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setf (elt _value i) (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
     ))
   ;;
   self)
  )

(setf (get bwi_planning_common::PlannerAtom :md5sum-) "a20c942da620dbf29654f430aa251492")
(setf (get bwi_planning_common::PlannerAtom :datatype-) "bwi_planning_common/PlannerAtom")
(setf (get bwi_planning_common::PlannerAtom :definition-)
      "string name
string[] value

")



(provide :bwi_planning_common/PlannerAtom "a20c942da620dbf29654f430aa251492")


