;; Auto-generated. Do not edit!


(when (boundp 'bwi_virtour::PingTour)
  (if (not (find-package "BWI_VIRTOUR"))
    (make-package "BWI_VIRTOUR"))
  (shadow 'PingTour (find-package "BWI_VIRTOUR")))
(unless (find-package "BWI_VIRTOUR::PINGTOUR")
  (make-package "BWI_VIRTOUR::PINGTOUR"))
(unless (find-package "BWI_VIRTOUR::PINGTOURREQUEST")
  (make-package "BWI_VIRTOUR::PINGTOURREQUEST"))
(unless (find-package "BWI_VIRTOUR::PINGTOURRESPONSE")
  (make-package "BWI_VIRTOUR::PINGTOURRESPONSE"))

(in-package "ROS")





(defclass bwi_virtour::PingTourRequest
  :super ros::object
  :slots (_user ))

(defmethod bwi_virtour::PingTourRequest
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

(defclass bwi_virtour::PingTourResponse
  :super ros::object
  :slots (_result ))

(defmethod bwi_virtour::PingTourResponse
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

(defclass bwi_virtour::PingTour
  :super ros::object
  :slots ())

(setf (get bwi_virtour::PingTour :md5sum-) "bc80c1496c95e8ce6d65f53d86635b16")
(setf (get bwi_virtour::PingTour :datatype-) "bwi_virtour/PingTour")
(setf (get bwi_virtour::PingTour :request) bwi_virtour::PingTourRequest)
(setf (get bwi_virtour::PingTour :response) bwi_virtour::PingTourResponse)

(defmethod bwi_virtour::PingTourRequest
  (:response () (instance bwi_virtour::PingTourResponse :init)))

(setf (get bwi_virtour::PingTourRequest :md5sum-) "bc80c1496c95e8ce6d65f53d86635b16")
(setf (get bwi_virtour::PingTourRequest :datatype-) "bwi_virtour/PingTourRequest")
(setf (get bwi_virtour::PingTourRequest :definition-)
      "string user
---
int32 result

")

(setf (get bwi_virtour::PingTourResponse :md5sum-) "bc80c1496c95e8ce6d65f53d86635b16")
(setf (get bwi_virtour::PingTourResponse :datatype-) "bwi_virtour/PingTourResponse")
(setf (get bwi_virtour::PingTourResponse :definition-)
      "string user
---
int32 result

")



(provide :bwi_virtour/PingTour "bc80c1496c95e8ce6d65f53d86635b16")


