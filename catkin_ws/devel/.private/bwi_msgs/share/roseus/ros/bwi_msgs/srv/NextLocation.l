;; Auto-generated. Do not edit!


(when (boundp 'bwi_msgs::NextLocation)
  (if (not (find-package "BWI_MSGS"))
    (make-package "BWI_MSGS"))
  (shadow 'NextLocation (find-package "BWI_MSGS")))
(unless (find-package "BWI_MSGS::NEXTLOCATION")
  (make-package "BWI_MSGS::NEXTLOCATION"))
(unless (find-package "BWI_MSGS::NEXTLOCATIONREQUEST")
  (make-package "BWI_MSGS::NEXTLOCATIONREQUEST"))
(unless (find-package "BWI_MSGS::NEXTLOCATIONRESPONSE")
  (make-package "BWI_MSGS::NEXTLOCATIONRESPONSE"))

(in-package "ROS")





(defclass bwi_msgs::NextLocationRequest
  :super ros::object
  :slots ())

(defmethod bwi_msgs::NextLocationRequest
  (:init
   (&key
    )
   (send-super :init)
   self)
  (:serialization-length
   ()
   (+
    0
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;;
   self)
  )

(defclass bwi_msgs::NextLocationResponse
  :super ros::object
  :slots (_success _locationName ))

(defmethod bwi_msgs::NextLocationResponse
  (:init
   (&key
    ((:success __success) nil)
    ((:locationName __locationName) "")
    )
   (send-super :init)
   (setq _success __success)
   (setq _locationName (string __locationName))
   self)
  (:success
   (&optional __success)
   (if __success (setq _success __success)) _success)
  (:locationName
   (&optional __locationName)
   (if __locationName (setq _locationName __locationName)) _locationName)
  (:serialization-length
   ()
   (+
    ;; bool _success
    1
    ;; string _locationName
    4 (length _locationName)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _success
       (if _success (write-byte -1 s) (write-byte 0 s))
     ;; string _locationName
       (write-long (length _locationName) s) (princ _locationName s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _success
     (setq _success (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; string _locationName
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _locationName (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass bwi_msgs::NextLocation
  :super ros::object
  :slots ())

(setf (get bwi_msgs::NextLocation :md5sum-) "7f666469cc7c83a848e9c8c747e8937f")
(setf (get bwi_msgs::NextLocation :datatype-) "bwi_msgs/NextLocation")
(setf (get bwi_msgs::NextLocation :request) bwi_msgs::NextLocationRequest)
(setf (get bwi_msgs::NextLocation :response) bwi_msgs::NextLocationResponse)

(defmethod bwi_msgs::NextLocationRequest
  (:response () (instance bwi_msgs::NextLocationResponse :init)))

(setf (get bwi_msgs::NextLocationRequest :md5sum-) "7f666469cc7c83a848e9c8c747e8937f")
(setf (get bwi_msgs::NextLocationRequest :datatype-) "bwi_msgs/NextLocationRequest")
(setf (get bwi_msgs::NextLocationRequest :definition-)
      "---
bool success
string locationName


")

(setf (get bwi_msgs::NextLocationResponse :md5sum-) "7f666469cc7c83a848e9c8c747e8937f")
(setf (get bwi_msgs::NextLocationResponse :datatype-) "bwi_msgs/NextLocationResponse")
(setf (get bwi_msgs::NextLocationResponse :definition-)
      "---
bool success
string locationName


")



(provide :bwi_msgs/NextLocation "7f666469cc7c83a848e9c8c747e8937f")


