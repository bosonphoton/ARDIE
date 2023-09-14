;; Auto-generated. Do not edit!


(when (boundp 'bwi_msgs::ScavHunt)
  (if (not (find-package "BWI_MSGS"))
    (make-package "BWI_MSGS"))
  (shadow 'ScavHunt (find-package "BWI_MSGS")))
(unless (find-package "BWI_MSGS::SCAVHUNT")
  (make-package "BWI_MSGS::SCAVHUNT"))
(unless (find-package "BWI_MSGS::SCAVHUNTREQUEST")
  (make-package "BWI_MSGS::SCAVHUNTREQUEST"))
(unless (find-package "BWI_MSGS::SCAVHUNTRESPONSE")
  (make-package "BWI_MSGS::SCAVHUNTRESPONSE"))

(in-package "ROS")





(intern "*SCAV_PAUSE*" (find-package "BWI_MSGS::SCAVHUNTREQUEST"))
(shadow '*SCAV_PAUSE* (find-package "BWI_MSGS::SCAVHUNTREQUEST"))
(defconstant bwi_msgs::ScavHuntRequest::*SCAV_PAUSE* 0)
(intern "*SCAV_RESUME*" (find-package "BWI_MSGS::SCAVHUNTREQUEST"))
(shadow '*SCAV_RESUME* (find-package "BWI_MSGS::SCAVHUNTREQUEST"))
(defconstant bwi_msgs::ScavHuntRequest::*SCAV_RESUME* 1)
(defclass bwi_msgs::ScavHuntRequest
  :super ros::object
  :slots (_type ))

(defmethod bwi_msgs::ScavHuntRequest
  (:init
   (&key
    ((:type __type) 0)
    )
   (send-super :init)
   (setq _type (round __type))
   self)
  (:type
   (&optional __type)
   (if __type (setq _type __type)) _type)
  (:serialization-length
   ()
   (+
    ;; int32 _type
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _type
       (write-long _type s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _type
     (setq _type (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(defclass bwi_msgs::ScavHuntResponse
  :super ros::object
  :slots ())

(defmethod bwi_msgs::ScavHuntResponse
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

(defclass bwi_msgs::ScavHunt
  :super ros::object
  :slots ())

(setf (get bwi_msgs::ScavHunt :md5sum-) "e5f140e985c7a1596daec58bee461f5a")
(setf (get bwi_msgs::ScavHunt :datatype-) "bwi_msgs/ScavHunt")
(setf (get bwi_msgs::ScavHunt :request) bwi_msgs::ScavHuntRequest)
(setf (get bwi_msgs::ScavHunt :response) bwi_msgs::ScavHuntResponse)

(defmethod bwi_msgs::ScavHuntRequest
  (:response () (instance bwi_msgs::ScavHuntResponse :init)))

(setf (get bwi_msgs::ScavHuntRequest :md5sum-) "e5f140e985c7a1596daec58bee461f5a")
(setf (get bwi_msgs::ScavHuntRequest :datatype-) "bwi_msgs/ScavHuntRequest")
(setf (get bwi_msgs::ScavHuntRequest :definition-)
      "int32 SCAV_PAUSE = 0
int32 SCAV_RESUME = 1

int32 type
---

")

(setf (get bwi_msgs::ScavHuntResponse :md5sum-) "e5f140e985c7a1596daec58bee461f5a")
(setf (get bwi_msgs::ScavHuntResponse :datatype-) "bwi_msgs/ScavHuntResponse")
(setf (get bwi_msgs::ScavHuntResponse :definition-)
      "int32 SCAV_PAUSE = 0
int32 SCAV_RESUME = 1

int32 type
---

")



(provide :bwi_msgs/ScavHunt "e5f140e985c7a1596daec58bee461f5a")


