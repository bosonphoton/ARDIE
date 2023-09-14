;; Auto-generated. Do not edit!


(when (boundp 'bwi_msgs::LogicalNavigationState)
  (if (not (find-package "BWI_MSGS"))
    (make-package "BWI_MSGS"))
  (shadow 'LogicalNavigationState (find-package "BWI_MSGS")))
(unless (find-package "BWI_MSGS::LOGICALNAVIGATIONSTATE")
  (make-package "BWI_MSGS::LOGICALNAVIGATIONSTATE"))

(in-package "ROS")
;;//! \htmlinclude LogicalNavigationState.msg.html


(defclass bwi_msgs::LogicalNavigationState
  :super ros::object
  :slots (_room _nearby_locations _facing ))

(defmethod bwi_msgs::LogicalNavigationState
  (:init
   (&key
    ((:room __room) "")
    ((:nearby_locations __nearby_locations) (let (r) (dotimes (i 0) (push "" r)) r))
    ((:facing __facing) (let (r) (dotimes (i 0) (push nil r)) r))
    )
   (send-super :init)
   (setq _room (string __room))
   (setq _nearby_locations __nearby_locations)
   (setq _facing __facing)
   self)
  (:room
   (&optional __room)
   (if __room (setq _room __room)) _room)
  (:nearby_locations
   (&optional __nearby_locations)
   (if __nearby_locations (setq _nearby_locations __nearby_locations)) _nearby_locations)
  (:facing
   (&optional __facing)
   (if __facing (setq _facing __facing)) _facing)
  (:serialization-length
   ()
   (+
    ;; string _room
    4 (length _room)
    ;; string[] _nearby_locations
    (apply #'+ (mapcar #'(lambda (x) (+ 4 (length x))) _nearby_locations)) 4
    ;; bool[] _facing
    (* 1    (length _facing)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _room
       (write-long (length _room) s) (princ _room s)
     ;; string[] _nearby_locations
     (write-long (length _nearby_locations) s)
     (dolist (elem _nearby_locations)
       (write-long (length elem) s) (princ elem s)
       )
     ;; bool[] _facing
     (write-long (length _facing) s)
     (dotimes (i (length _facing))
       (if (elt _facing i) (write-byte -1 s) (write-byte 0 s))
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _room
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _room (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string[] _nearby_locations
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _nearby_locations (make-list n))
     (dotimes (i n)
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setf (elt _nearby_locations i) (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
     ))
   ;; bool[] _facing
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _facing (make-list n))
     (dotimes (i n)
     (setf (elt _facing i) (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
     ))
   ;;
   self)
  )

(setf (get bwi_msgs::LogicalNavigationState :md5sum-) "61b5fec880100a091a9019844c6c5b20")
(setf (get bwi_msgs::LogicalNavigationState :datatype-) "bwi_msgs/LogicalNavigationState")
(setf (get bwi_msgs::LogicalNavigationState :definition-)
      "string room
string[] nearby_locations
bool[] facing

")



(provide :bwi_msgs/LogicalNavigationState "61b5fec880100a091a9019844c6c5b20")


