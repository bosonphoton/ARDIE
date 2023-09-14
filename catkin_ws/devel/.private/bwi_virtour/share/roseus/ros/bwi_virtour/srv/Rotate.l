;; Auto-generated. Do not edit!


(when (boundp 'bwi_virtour::Rotate)
  (if (not (find-package "BWI_VIRTOUR"))
    (make-package "BWI_VIRTOUR"))
  (shadow 'Rotate (find-package "BWI_VIRTOUR")))
(unless (find-package "BWI_VIRTOUR::ROTATE")
  (make-package "BWI_VIRTOUR::ROTATE"))
(unless (find-package "BWI_VIRTOUR::ROTATEREQUEST")
  (make-package "BWI_VIRTOUR::ROTATEREQUEST"))
(unless (find-package "BWI_VIRTOUR::ROTATERESPONSE")
  (make-package "BWI_VIRTOUR::ROTATERESPONSE"))

(in-package "ROS")





(defclass bwi_virtour::RotateRequest
  :super ros::object
  :slots (_rotateDelta _user ))

(defmethod bwi_virtour::RotateRequest
  (:init
   (&key
    ((:rotateDelta __rotateDelta) 0.0)
    ((:user __user) "")
    )
   (send-super :init)
   (setq _rotateDelta (float __rotateDelta))
   (setq _user (string __user))
   self)
  (:rotateDelta
   (&optional __rotateDelta)
   (if __rotateDelta (setq _rotateDelta __rotateDelta)) _rotateDelta)
  (:user
   (&optional __user)
   (if __user (setq _user __user)) _user)
  (:serialization-length
   ()
   (+
    ;; float32 _rotateDelta
    4
    ;; string _user
    4 (length _user)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32 _rotateDelta
       (sys::poke _rotateDelta (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; string _user
       (write-long (length _user) s) (princ _user s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32 _rotateDelta
     (setq _rotateDelta (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; string _user
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _user (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass bwi_virtour::RotateResponse
  :super ros::object
  :slots (_result ))

(defmethod bwi_virtour::RotateResponse
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

(defclass bwi_virtour::Rotate
  :super ros::object
  :slots ())

(setf (get bwi_virtour::Rotate :md5sum-) "1e87bb51aabe7eaee29da2957962f8ac")
(setf (get bwi_virtour::Rotate :datatype-) "bwi_virtour/Rotate")
(setf (get bwi_virtour::Rotate :request) bwi_virtour::RotateRequest)
(setf (get bwi_virtour::Rotate :response) bwi_virtour::RotateResponse)

(defmethod bwi_virtour::RotateRequest
  (:response () (instance bwi_virtour::RotateResponse :init)))

(setf (get bwi_virtour::RotateRequest :md5sum-) "1e87bb51aabe7eaee29da2957962f8ac")
(setf (get bwi_virtour::RotateRequest :datatype-) "bwi_virtour/RotateRequest")
(setf (get bwi_virtour::RotateRequest :definition-)
      "float32 rotateDelta
string user
---
int32 result

")

(setf (get bwi_virtour::RotateResponse :md5sum-) "1e87bb51aabe7eaee29da2957962f8ac")
(setf (get bwi_virtour::RotateResponse :datatype-) "bwi_virtour/RotateResponse")
(setf (get bwi_virtour::RotateResponse :definition-)
      "float32 rotateDelta
string user
---
int32 result

")



(provide :bwi_virtour/Rotate "1e87bb51aabe7eaee29da2957962f8ac")


