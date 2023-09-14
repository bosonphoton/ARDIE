;; Auto-generated. Do not edit!


(when (boundp 'bwi_virtour::GoToLocation)
  (if (not (find-package "BWI_VIRTOUR"))
    (make-package "BWI_VIRTOUR"))
  (shadow 'GoToLocation (find-package "BWI_VIRTOUR")))
(unless (find-package "BWI_VIRTOUR::GOTOLOCATION")
  (make-package "BWI_VIRTOUR::GOTOLOCATION"))
(unless (find-package "BWI_VIRTOUR::GOTOLOCATIONREQUEST")
  (make-package "BWI_VIRTOUR::GOTOLOCATIONREQUEST"))
(unless (find-package "BWI_VIRTOUR::GOTOLOCATIONRESPONSE")
  (make-package "BWI_VIRTOUR::GOTOLOCATIONRESPONSE"))

(in-package "ROS")





(defclass bwi_virtour::GoToLocationRequest
  :super ros::object
  :slots (_location _user ))

(defmethod bwi_virtour::GoToLocationRequest
  (:init
   (&key
    ((:location __location) "")
    ((:user __user) "")
    )
   (send-super :init)
   (setq _location (string __location))
   (setq _user (string __user))
   self)
  (:location
   (&optional __location)
   (if __location (setq _location __location)) _location)
  (:user
   (&optional __user)
   (if __user (setq _user __user)) _user)
  (:serialization-length
   ()
   (+
    ;; string _location
    4 (length _location)
    ;; string _user
    4 (length _user)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _location
       (write-long (length _location) s) (princ _location s)
     ;; string _user
       (write-long (length _user) s) (princ _user s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _location
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _location (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _user
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _user (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass bwi_virtour::GoToLocationResponse
  :super ros::object
  :slots (_result ))

(defmethod bwi_virtour::GoToLocationResponse
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

(defclass bwi_virtour::GoToLocation
  :super ros::object
  :slots ())

(setf (get bwi_virtour::GoToLocation :md5sum-) "d57678ae7c2e3a4ad7890b2341b74c06")
(setf (get bwi_virtour::GoToLocation :datatype-) "bwi_virtour/GoToLocation")
(setf (get bwi_virtour::GoToLocation :request) bwi_virtour::GoToLocationRequest)
(setf (get bwi_virtour::GoToLocation :response) bwi_virtour::GoToLocationResponse)

(defmethod bwi_virtour::GoToLocationRequest
  (:response () (instance bwi_virtour::GoToLocationResponse :init)))

(setf (get bwi_virtour::GoToLocationRequest :md5sum-) "d57678ae7c2e3a4ad7890b2341b74c06")
(setf (get bwi_virtour::GoToLocationRequest :datatype-) "bwi_virtour/GoToLocationRequest")
(setf (get bwi_virtour::GoToLocationRequest :definition-)
      "string location
string user
---
int32 result

")

(setf (get bwi_virtour::GoToLocationResponse :md5sum-) "d57678ae7c2e3a4ad7890b2341b74c06")
(setf (get bwi_virtour::GoToLocationResponse :datatype-) "bwi_virtour/GoToLocationResponse")
(setf (get bwi_virtour::GoToLocationResponse :definition-)
      "string location
string user
---
int32 result

")



(provide :bwi_virtour/GoToLocation "d57678ae7c2e3a4ad7890b2341b74c06")


