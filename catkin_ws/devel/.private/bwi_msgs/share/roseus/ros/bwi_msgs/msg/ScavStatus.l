;; Auto-generated. Do not edit!


(when (boundp 'bwi_msgs::ScavStatus)
  (if (not (find-package "BWI_MSGS"))
    (make-package "BWI_MSGS"))
  (shadow 'ScavStatus (find-package "BWI_MSGS")))
(unless (find-package "BWI_MSGS::SCAVSTATUS")
  (make-package "BWI_MSGS::SCAVSTATUS"))

(in-package "ROS")
;;//! \htmlinclude ScavStatus.msg.html


(intern "*ONGOING*" (find-package "BWI_MSGS::SCAVSTATUS"))
(shadow '*ONGOING* (find-package "BWI_MSGS::SCAVSTATUS"))
(defconstant bwi_msgs::ScavStatus::*ONGOING* 1)
(intern "*FINISHED*" (find-package "BWI_MSGS::SCAVSTATUS"))
(shadow '*FINISHED* (find-package "BWI_MSGS::SCAVSTATUS"))
(defconstant bwi_msgs::ScavStatus::*FINISHED* 2)
(intern "*TODO*" (find-package "BWI_MSGS::SCAVSTATUS"))
(shadow '*TODO* (find-package "BWI_MSGS::SCAVSTATUS"))
(defconstant bwi_msgs::ScavStatus::*TODO* 3)
(defclass bwi_msgs::ScavStatus
  :super ros::object
  :slots (_names _statuses _certificates ))

(defmethod bwi_msgs::ScavStatus
  (:init
   (&key
    ((:names __names) (let (r) (dotimes (i 0) (push "" r)) r))
    ((:statuses __statuses) (make-array 0 :initial-element 0 :element-type :integer))
    ((:certificates __certificates) (let (r) (dotimes (i 0) (push "" r)) r))
    )
   (send-super :init)
   (setq _names __names)
   (setq _statuses __statuses)
   (setq _certificates __certificates)
   self)
  (:names
   (&optional __names)
   (if __names (setq _names __names)) _names)
  (:statuses
   (&optional __statuses)
   (if __statuses (setq _statuses __statuses)) _statuses)
  (:certificates
   (&optional __certificates)
   (if __certificates (setq _certificates __certificates)) _certificates)
  (:serialization-length
   ()
   (+
    ;; string[] _names
    (apply #'+ (mapcar #'(lambda (x) (+ 4 (length x))) _names)) 4
    ;; int32[] _statuses
    (* 4    (length _statuses)) 4
    ;; string[] _certificates
    (apply #'+ (mapcar #'(lambda (x) (+ 4 (length x))) _certificates)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string[] _names
     (write-long (length _names) s)
     (dolist (elem _names)
       (write-long (length elem) s) (princ elem s)
       )
     ;; int32[] _statuses
     (write-long (length _statuses) s)
     (dotimes (i (length _statuses))
       (write-long (elt _statuses i) s)
       )
     ;; string[] _certificates
     (write-long (length _certificates) s)
     (dolist (elem _certificates)
       (write-long (length elem) s) (princ elem s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string[] _names
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _names (make-list n))
     (dotimes (i n)
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setf (elt _names i) (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
     ))
   ;; int32[] _statuses
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _statuses (instantiate integer-vector n))
     (dotimes (i n)
     (setf (elt _statuses i) (sys::peek buf ptr- :integer)) (incf ptr- 4)
     ))
   ;; string[] _certificates
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _certificates (make-list n))
     (dotimes (i n)
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setf (elt _certificates i) (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
     ))
   ;;
   self)
  )

(setf (get bwi_msgs::ScavStatus :md5sum-) "38e2b5af66f5d641973272e8eb0ef803")
(setf (get bwi_msgs::ScavStatus :datatype-) "bwi_msgs/ScavStatus")
(setf (get bwi_msgs::ScavStatus :definition-)
      "int32 ONGOING = 1
int32 FINISHED = 2
int32 TODO = 3

string[] names
int32[] statuses
string[] certificates

")



(provide :bwi_msgs/ScavStatus "38e2b5af66f5d641973272e8eb0ef803")


