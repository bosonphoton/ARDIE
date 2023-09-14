;; Auto-generated. Do not edit!


(when (boundp 'bwi_virtour::LeaveTour)
  (if (not (find-package "BWI_VIRTOUR"))
    (make-package "BWI_VIRTOUR"))
  (shadow 'LeaveTour (find-package "BWI_VIRTOUR")))
(unless (find-package "BWI_VIRTOUR::LEAVETOUR")
  (make-package "BWI_VIRTOUR::LEAVETOUR"))
(unless (find-package "BWI_VIRTOUR::LEAVETOURREQUEST")
  (make-package "BWI_VIRTOUR::LEAVETOURREQUEST"))
(unless (find-package "BWI_VIRTOUR::LEAVETOURRESPONSE")
  (make-package "BWI_VIRTOUR::LEAVETOURRESPONSE"))

(in-package "ROS")





(defclass bwi_virtour::LeaveTourRequest
  :super ros::object
  :slots (_user ))

(defmethod bwi_virtour::LeaveTourRequest
  (:init
   (&key
    ((:user __user) "")
    )
   (send-super :init)
   (setq _user (string __user))
   self)
  (:user
   (&optional __user)
   (if __user (setq _user __user)) _user)
  (:serialization-length
   ()
   (+
    ;; string _user
    4 (length _user)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _user
       (write-long (length _user) s) (princ _user s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _user
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _user (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass bwi_virtour::LeaveTourResponse
  :super ros::object
  :slots (_result ))

(defmethod bwi_virtour::LeaveTourResponse
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

(defclass bwi_virtour::LeaveTour
  :super ros::object
  :slots ())

(setf (get bwi_virtour::LeaveTour :md5sum-) "bc80c1496c95e8ce6d65f53d86635b16")
(setf (get bwi_virtour::LeaveTour :datatype-) "bwi_virtour/LeaveTour")
(setf (get bwi_virtour::LeaveTour :request) bwi_virtour::LeaveTourRequest)
(setf (get bwi_virtour::LeaveTour :response) bwi_virtour::LeaveTourResponse)

(defmethod bwi_virtour::LeaveTourRequest
  (:response () (instance bwi_virtour::LeaveTourResponse :init)))

(setf (get bwi_virtour::LeaveTourRequest :md5sum-) "bc80c1496c95e8ce6d65f53d86635b16")
(setf (get bwi_virtour::LeaveTourRequest :datatype-) "bwi_virtour/LeaveTourRequest")
(setf (get bwi_virtour::LeaveTourRequest :definition-)
      "string user
---
int32 result

")

(setf (get bwi_virtour::LeaveTourResponse :md5sum-) "bc80c1496c95e8ce6d65f53d86635b16")
(setf (get bwi_virtour::LeaveTourResponse :datatype-) "bwi_virtour/LeaveTourResponse")
(setf (get bwi_virtour::LeaveTourResponse :definition-)
      "string user
---
int32 result

")



(provide :bwi_virtour/LeaveTour "bc80c1496c95e8ce6d65f53d86635b16")


