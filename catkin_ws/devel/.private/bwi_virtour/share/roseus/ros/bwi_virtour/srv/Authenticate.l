;; Auto-generated. Do not edit!


(when (boundp 'bwi_virtour::Authenticate)
  (if (not (find-package "BWI_VIRTOUR"))
    (make-package "BWI_VIRTOUR"))
  (shadow 'Authenticate (find-package "BWI_VIRTOUR")))
(unless (find-package "BWI_VIRTOUR::AUTHENTICATE")
  (make-package "BWI_VIRTOUR::AUTHENTICATE"))
(unless (find-package "BWI_VIRTOUR::AUTHENTICATEREQUEST")
  (make-package "BWI_VIRTOUR::AUTHENTICATEREQUEST"))
(unless (find-package "BWI_VIRTOUR::AUTHENTICATERESPONSE")
  (make-package "BWI_VIRTOUR::AUTHENTICATERESPONSE"))

(in-package "ROS")





(defclass bwi_virtour::AuthenticateRequest
  :super ros::object
  :slots (_user ))

(defmethod bwi_virtour::AuthenticateRequest
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

(defclass bwi_virtour::AuthenticateResponse
  :super ros::object
  :slots (_result ))

(defmethod bwi_virtour::AuthenticateResponse
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

(defclass bwi_virtour::Authenticate
  :super ros::object
  :slots ())

(setf (get bwi_virtour::Authenticate :md5sum-) "bc80c1496c95e8ce6d65f53d86635b16")
(setf (get bwi_virtour::Authenticate :datatype-) "bwi_virtour/Authenticate")
(setf (get bwi_virtour::Authenticate :request) bwi_virtour::AuthenticateRequest)
(setf (get bwi_virtour::Authenticate :response) bwi_virtour::AuthenticateResponse)

(defmethod bwi_virtour::AuthenticateRequest
  (:response () (instance bwi_virtour::AuthenticateResponse :init)))

(setf (get bwi_virtour::AuthenticateRequest :md5sum-) "bc80c1496c95e8ce6d65f53d86635b16")
(setf (get bwi_virtour::AuthenticateRequest :datatype-) "bwi_virtour/AuthenticateRequest")
(setf (get bwi_virtour::AuthenticateRequest :definition-)
      "string user
---
int32 result

")

(setf (get bwi_virtour::AuthenticateResponse :md5sum-) "bc80c1496c95e8ce6d65f53d86635b16")
(setf (get bwi_virtour::AuthenticateResponse :datatype-) "bwi_virtour/AuthenticateResponse")
(setf (get bwi_virtour::AuthenticateResponse :definition-)
      "string user
---
int32 result

")



(provide :bwi_virtour/Authenticate "bc80c1496c95e8ce6d65f53d86635b16")


