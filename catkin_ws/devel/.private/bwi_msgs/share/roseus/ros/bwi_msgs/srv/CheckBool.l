;; Auto-generated. Do not edit!


(when (boundp 'bwi_msgs::CheckBool)
  (if (not (find-package "BWI_MSGS"))
    (make-package "BWI_MSGS"))
  (shadow 'CheckBool (find-package "BWI_MSGS")))
(unless (find-package "BWI_MSGS::CHECKBOOL")
  (make-package "BWI_MSGS::CHECKBOOL"))
(unless (find-package "BWI_MSGS::CHECKBOOLREQUEST")
  (make-package "BWI_MSGS::CHECKBOOLREQUEST"))
(unless (find-package "BWI_MSGS::CHECKBOOLRESPONSE")
  (make-package "BWI_MSGS::CHECKBOOLRESPONSE"))

(in-package "ROS")





(defclass bwi_msgs::CheckBoolRequest
  :super ros::object
  :slots ())

(defmethod bwi_msgs::CheckBoolRequest
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

(defclass bwi_msgs::CheckBoolResponse
  :super ros::object
  :slots (_value ))

(defmethod bwi_msgs::CheckBoolResponse
  (:init
   (&key
    ((:value __value) nil)
    )
   (send-super :init)
   (setq _value __value)
   self)
  (:value
   (&optional __value)
   (if __value (setq _value __value)) _value)
  (:serialization-length
   ()
   (+
    ;; bool _value
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _value
       (if _value (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _value
     (setq _value (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass bwi_msgs::CheckBool
  :super ros::object
  :slots ())

(setf (get bwi_msgs::CheckBool :md5sum-) "e431d687bf4b2c65fbd94b12ae0cb5d9")
(setf (get bwi_msgs::CheckBool :datatype-) "bwi_msgs/CheckBool")
(setf (get bwi_msgs::CheckBool :request) bwi_msgs::CheckBoolRequest)
(setf (get bwi_msgs::CheckBool :response) bwi_msgs::CheckBoolResponse)

(defmethod bwi_msgs::CheckBoolRequest
  (:response () (instance bwi_msgs::CheckBoolResponse :init)))

(setf (get bwi_msgs::CheckBoolRequest :md5sum-) "e431d687bf4b2c65fbd94b12ae0cb5d9")
(setf (get bwi_msgs::CheckBoolRequest :datatype-) "bwi_msgs/CheckBoolRequest")
(setf (get bwi_msgs::CheckBoolRequest :definition-)
      "---
bool value
")

(setf (get bwi_msgs::CheckBoolResponse :md5sum-) "e431d687bf4b2c65fbd94b12ae0cb5d9")
(setf (get bwi_msgs::CheckBoolResponse :datatype-) "bwi_msgs/CheckBoolResponse")
(setf (get bwi_msgs::CheckBoolResponse :definition-)
      "---
bool value
")



(provide :bwi_msgs/CheckBool "e431d687bf4b2c65fbd94b12ae0cb5d9")


