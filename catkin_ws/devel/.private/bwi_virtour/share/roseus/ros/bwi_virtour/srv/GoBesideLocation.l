;; Auto-generated. Do not edit!


(when (boundp 'bwi_virtour::GoBesideLocation)
  (if (not (find-package "BWI_VIRTOUR"))
    (make-package "BWI_VIRTOUR"))
  (shadow 'GoBesideLocation (find-package "BWI_VIRTOUR")))
(unless (find-package "BWI_VIRTOUR::GOBESIDELOCATION")
  (make-package "BWI_VIRTOUR::GOBESIDELOCATION"))
(unless (find-package "BWI_VIRTOUR::GOBESIDELOCATIONREQUEST")
  (make-package "BWI_VIRTOUR::GOBESIDELOCATIONREQUEST"))
(unless (find-package "BWI_VIRTOUR::GOBESIDELOCATIONRESPONSE")
  (make-package "BWI_VIRTOUR::GOBESIDELOCATIONRESPONSE"))

(in-package "ROS")





(defclass bwi_virtour::GoBesideLocationRequest
  :super ros::object
  :slots (_location _user ))

(defmethod bwi_virtour::GoBesideLocationRequest
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

(defclass bwi_virtour::GoBesideLocationResponse
  :super ros::object
  :slots (_result ))

(defmethod bwi_virtour::GoBesideLocationResponse
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

(defclass bwi_virtour::GoBesideLocation
  :super ros::object
  :slots ())

(setf (get bwi_virtour::GoBesideLocation :md5sum-) "d57678ae7c2e3a4ad7890b2341b74c06")
(setf (get bwi_virtour::GoBesideLocation :datatype-) "bwi_virtour/GoBesideLocation")
(setf (get bwi_virtour::GoBesideLocation :request) bwi_virtour::GoBesideLocationRequest)
(setf (get bwi_virtour::GoBesideLocation :response) bwi_virtour::GoBesideLocationResponse)

(defmethod bwi_virtour::GoBesideLocationRequest
  (:response () (instance bwi_virtour::GoBesideLocationResponse :init)))

(setf (get bwi_virtour::GoBesideLocationRequest :md5sum-) "d57678ae7c2e3a4ad7890b2341b74c06")
(setf (get bwi_virtour::GoBesideLocationRequest :datatype-) "bwi_virtour/GoBesideLocationRequest")
(setf (get bwi_virtour::GoBesideLocationRequest :definition-)
      "string location
string user
---
int32 result

")

(setf (get bwi_virtour::GoBesideLocationResponse :md5sum-) "d57678ae7c2e3a4ad7890b2341b74c06")
(setf (get bwi_virtour::GoBesideLocationResponse :datatype-) "bwi_virtour/GoBesideLocationResponse")
(setf (get bwi_virtour::GoBesideLocationResponse :definition-)
      "string location
string user
---
int32 result

")



(provide :bwi_virtour/GoBesideLocation "d57678ae7c2e3a4ad7890b2341b74c06")


