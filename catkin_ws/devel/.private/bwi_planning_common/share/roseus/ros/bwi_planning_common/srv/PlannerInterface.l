;; Auto-generated. Do not edit!


(when (boundp 'bwi_planning_common::PlannerInterface)
  (if (not (find-package "BWI_PLANNING_COMMON"))
    (make-package "BWI_PLANNING_COMMON"))
  (shadow 'PlannerInterface (find-package "BWI_PLANNING_COMMON")))
(unless (find-package "BWI_PLANNING_COMMON::PLANNERINTERFACE")
  (make-package "BWI_PLANNING_COMMON::PLANNERINTERFACE"))
(unless (find-package "BWI_PLANNING_COMMON::PLANNERINTERFACEREQUEST")
  (make-package "BWI_PLANNING_COMMON::PLANNERINTERFACEREQUEST"))
(unless (find-package "BWI_PLANNING_COMMON::PLANNERINTERFACERESPONSE")
  (make-package "BWI_PLANNING_COMMON::PLANNERINTERFACERESPONSE"))

(in-package "ROS")





(defclass bwi_planning_common::PlannerInterfaceRequest
  :super ros::object
  :slots (_command ))

(defmethod bwi_planning_common::PlannerInterfaceRequest
  (:init
   (&key
    ((:command __command) (instance bwi_planning_common::PlannerAtom :init))
    )
   (send-super :init)
   (setq _command __command)
   self)
  (:command
   (&rest __command)
   (if (keywordp (car __command))
       (send* _command __command)
     (progn
       (if __command (setq _command (car __command)))
       _command)))
  (:serialization-length
   ()
   (+
    ;; bwi_planning_common/PlannerAtom _command
    (send _command :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bwi_planning_common/PlannerAtom _command
       (send _command :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bwi_planning_common/PlannerAtom _command
     (send _command :deserialize buf ptr-) (incf ptr- (send _command :serialization-length))
   ;;
   self)
  )

(defclass bwi_planning_common::PlannerInterfaceResponse
  :super ros::object
  :slots (_success _status _observations ))

(defmethod bwi_planning_common::PlannerInterfaceResponse
  (:init
   (&key
    ((:success __success) nil)
    ((:status __status) "")
    ((:observations __observations) (let (r) (dotimes (i 0) (push (instance bwi_planning_common::PlannerAtom :init) r)) r))
    )
   (send-super :init)
   (setq _success __success)
   (setq _status (string __status))
   (setq _observations __observations)
   self)
  (:success
   (&optional __success)
   (if __success (setq _success __success)) _success)
  (:status
   (&optional __status)
   (if __status (setq _status __status)) _status)
  (:observations
   (&rest __observations)
   (if (keywordp (car __observations))
       (send* _observations __observations)
     (progn
       (if __observations (setq _observations (car __observations)))
       _observations)))
  (:serialization-length
   ()
   (+
    ;; bool _success
    1
    ;; string _status
    4 (length _status)
    ;; bwi_planning_common/PlannerAtom[] _observations
    (apply #'+ (send-all _observations :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _success
       (if _success (write-byte -1 s) (write-byte 0 s))
     ;; string _status
       (write-long (length _status) s) (princ _status s)
     ;; bwi_planning_common/PlannerAtom[] _observations
     (write-long (length _observations) s)
     (dolist (elem _observations)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _success
     (setq _success (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; string _status
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _status (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; bwi_planning_common/PlannerAtom[] _observations
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _observations (let (r) (dotimes (i n) (push (instance bwi_planning_common::PlannerAtom :init) r)) r))
     (dolist (elem- _observations)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(defclass bwi_planning_common::PlannerInterface
  :super ros::object
  :slots ())

(setf (get bwi_planning_common::PlannerInterface :md5sum-) "229233a031a71ea0b14913f42ea18176")
(setf (get bwi_planning_common::PlannerInterface :datatype-) "bwi_planning_common/PlannerInterface")
(setf (get bwi_planning_common::PlannerInterface :request) bwi_planning_common::PlannerInterfaceRequest)
(setf (get bwi_planning_common::PlannerInterface :response) bwi_planning_common::PlannerInterfaceResponse)

(defmethod bwi_planning_common::PlannerInterfaceRequest
  (:response () (instance bwi_planning_common::PlannerInterfaceResponse :init)))

(setf (get bwi_planning_common::PlannerInterfaceRequest :md5sum-) "229233a031a71ea0b14913f42ea18176")
(setf (get bwi_planning_common::PlannerInterfaceRequest :datatype-) "bwi_planning_common/PlannerInterfaceRequest")
(setf (get bwi_planning_common::PlannerInterfaceRequest :definition-)
      "PlannerAtom command

================================================================================
MSG: bwi_planning_common/PlannerAtom
string name
string[] value
---
bool success
string status
PlannerAtom[] observations


================================================================================
MSG: bwi_planning_common/PlannerAtom
string name
string[] value
")

(setf (get bwi_planning_common::PlannerInterfaceResponse :md5sum-) "229233a031a71ea0b14913f42ea18176")
(setf (get bwi_planning_common::PlannerInterfaceResponse :datatype-) "bwi_planning_common/PlannerInterfaceResponse")
(setf (get bwi_planning_common::PlannerInterfaceResponse :definition-)
      "PlannerAtom command

================================================================================
MSG: bwi_planning_common/PlannerAtom
string name
string[] value
---
bool success
string status
PlannerAtom[] observations


================================================================================
MSG: bwi_planning_common/PlannerAtom
string name
string[] value
")



(provide :bwi_planning_common/PlannerInterface "229233a031a71ea0b14913f42ea18176")


