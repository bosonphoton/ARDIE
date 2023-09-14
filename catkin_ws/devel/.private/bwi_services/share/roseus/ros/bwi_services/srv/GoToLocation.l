;; Auto-generated. Do not edit!


(when (boundp 'bwi_services::GoToLocation)
  (if (not (find-package "BWI_SERVICES"))
    (make-package "BWI_SERVICES"))
  (shadow 'GoToLocation (find-package "BWI_SERVICES")))
(unless (find-package "BWI_SERVICES::GOTOLOCATION")
  (make-package "BWI_SERVICES::GOTOLOCATION"))
(unless (find-package "BWI_SERVICES::GOTOLOCATIONREQUEST")
  (make-package "BWI_SERVICES::GOTOLOCATIONREQUEST"))
(unless (find-package "BWI_SERVICES::GOTOLOCATIONRESPONSE")
  (make-package "BWI_SERVICES::GOTOLOCATIONRESPONSE"))

(in-package "ROS")





(defclass bwi_services::GoToLocationRequest
  :super ros::object
  :slots (_location ))

(defmethod bwi_services::GoToLocationRequest
  (:init
   (&key
    ((:location __location) "")
    )
   (send-super :init)
   (setq _location (string __location))
   self)
  (:location
   (&optional __location)
   (if __location (setq _location __location)) _location)
  (:serialization-length
   ()
   (+
    ;; string _location
    4 (length _location)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _location
       (write-long (length _location) s) (princ _location s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _location
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _location (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass bwi_services::GoToLocationResponse
  :super ros::object
  :slots (_result ))

(defmethod bwi_services::GoToLocationResponse
  (:init
   (&key
    ((:result __result) 0)
    )
   (send-super :init)
   (setq _result (round __result))
   self)
  (:result
   (&optional __result)
   (if __result (setq _result __result)) _result)
  (:serialization-length
   ()
   (+
    ;; int32 _result
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _result
       (write-long _result s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _result
     (setq _result (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(defclass bwi_services::GoToLocation
  :super ros::object
  :slots ())

(setf (get bwi_services::GoToLocation :md5sum-) "f55b49724daccc8a2ebf15d7c70c61e8")
(setf (get bwi_services::GoToLocation :datatype-) "bwi_services/GoToLocation")
(setf (get bwi_services::GoToLocation :request) bwi_services::GoToLocationRequest)
(setf (get bwi_services::GoToLocation :response) bwi_services::GoToLocationResponse)

(defmethod bwi_services::GoToLocationRequest
  (:response () (instance bwi_services::GoToLocationResponse :init)))

(setf (get bwi_services::GoToLocationRequest :md5sum-) "f55b49724daccc8a2ebf15d7c70c61e8")
(setf (get bwi_services::GoToLocationRequest :datatype-) "bwi_services/GoToLocationRequest")
(setf (get bwi_services::GoToLocationRequest :definition-)
      "string location
---
int32 result

")

(setf (get bwi_services::GoToLocationResponse :md5sum-) "f55b49724daccc8a2ebf15d7c70c61e8")
(setf (get bwi_services::GoToLocationResponse :datatype-) "bwi_services/GoToLocationResponse")
(setf (get bwi_services::GoToLocationResponse :definition-)
      "string location
---
int32 result

")



(provide :bwi_services/GoToLocation "f55b49724daccc8a2ebf15d7c70c61e8")


