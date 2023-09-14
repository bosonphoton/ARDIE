;; Auto-generated. Do not edit!


(when (boundp 'bwi_perception::GetPCD)
  (if (not (find-package "BWI_PERCEPTION"))
    (make-package "BWI_PERCEPTION"))
  (shadow 'GetPCD (find-package "BWI_PERCEPTION")))
(unless (find-package "BWI_PERCEPTION::GETPCD")
  (make-package "BWI_PERCEPTION::GETPCD"))
(unless (find-package "BWI_PERCEPTION::GETPCDREQUEST")
  (make-package "BWI_PERCEPTION::GETPCDREQUEST"))
(unless (find-package "BWI_PERCEPTION::GETPCDRESPONSE")
  (make-package "BWI_PERCEPTION::GETPCDRESPONSE"))

(in-package "ROS")





(defclass bwi_perception::GetPCDRequest
  :super ros::object
  :slots (_generalImageFilePath ))

(defmethod bwi_perception::GetPCDRequest
  (:init
   (&key
    ((:generalImageFilePath __generalImageFilePath) "")
    )
   (send-super :init)
   (setq _generalImageFilePath (string __generalImageFilePath))
   self)
  (:generalImageFilePath
   (&optional __generalImageFilePath)
   (if __generalImageFilePath (setq _generalImageFilePath __generalImageFilePath)) _generalImageFilePath)
  (:serialization-length
   ()
   (+
    ;; string _generalImageFilePath
    4 (length _generalImageFilePath)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _generalImageFilePath
       (write-long (length _generalImageFilePath) s) (princ _generalImageFilePath s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _generalImageFilePath
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _generalImageFilePath (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass bwi_perception::GetPCDResponse
  :super ros::object
  :slots (_success ))

(defmethod bwi_perception::GetPCDResponse
  (:init
   (&key
    ((:success __success) nil)
    )
   (send-super :init)
   (setq _success __success)
   self)
  (:success
   (&optional __success)
   (if __success (setq _success __success)) _success)
  (:serialization-length
   ()
   (+
    ;; bool _success
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _success
       (if _success (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _success
     (setq _success (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass bwi_perception::GetPCD
  :super ros::object
  :slots ())

(setf (get bwi_perception::GetPCD :md5sum-) "3de2b02c910383f9f40b30a875b5c5f2")
(setf (get bwi_perception::GetPCD :datatype-) "bwi_perception/GetPCD")
(setf (get bwi_perception::GetPCD :request) bwi_perception::GetPCDRequest)
(setf (get bwi_perception::GetPCD :response) bwi_perception::GetPCDResponse)

(defmethod bwi_perception::GetPCDRequest
  (:response () (instance bwi_perception::GetPCDResponse :init)))

(setf (get bwi_perception::GetPCDRequest :md5sum-) "3de2b02c910383f9f40b30a875b5c5f2")
(setf (get bwi_perception::GetPCDRequest :datatype-) "bwi_perception/GetPCDRequest")
(setf (get bwi_perception::GetPCDRequest :definition-)
      "string generalImageFilePath
---
bool success

")

(setf (get bwi_perception::GetPCDResponse :md5sum-) "3de2b02c910383f9f40b30a875b5c5f2")
(setf (get bwi_perception::GetPCDResponse :datatype-) "bwi_perception/GetPCDResponse")
(setf (get bwi_perception::GetPCDResponse :definition-)
      "string generalImageFilePath
---
bool success

")



(provide :bwi_perception/GetPCD "3de2b02c910383f9f40b30a875b5c5f2")


