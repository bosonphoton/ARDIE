;; Auto-generated. Do not edit!


(when (boundp 'bwi_msgs::SaveImageResponse)
  (if (not (find-package "BWI_MSGS"))
    (make-package "BWI_MSGS"))
  (shadow 'SaveImageResponse (find-package "BWI_MSGS")))
(unless (find-package "BWI_MSGS::SAVEIMAGERESPONSE")
  (make-package "BWI_MSGS::SAVEIMAGERESPONSE"))
(unless (find-package "BWI_MSGS::SAVEIMAGERESPONSEREQUEST")
  (make-package "BWI_MSGS::SAVEIMAGERESPONSEREQUEST"))
(unless (find-package "BWI_MSGS::SAVEIMAGERESPONSERESPONSE")
  (make-package "BWI_MSGS::SAVEIMAGERESPONSERESPONSE"))

(in-package "ROS")





(defclass bwi_msgs::SaveImageResponseRequest
  :super ros::object
  :slots (_response _base_name _location _timestamp _question_id ))

(defmethod bwi_msgs::SaveImageResponseRequest
  (:init
   (&key
    ((:response __response) "")
    ((:base_name __base_name) "")
    ((:location __location) "")
    ((:timestamp __timestamp) (instance ros::time :init))
    ((:question_id __question_id) 0)
    )
   (send-super :init)
   (setq _response (string __response))
   (setq _base_name (string __base_name))
   (setq _location (string __location))
   (setq _timestamp __timestamp)
   (setq _question_id (round __question_id))
   self)
  (:response
   (&optional __response)
   (if __response (setq _response __response)) _response)
  (:base_name
   (&optional __base_name)
   (if __base_name (setq _base_name __base_name)) _base_name)
  (:location
   (&optional __location)
   (if __location (setq _location __location)) _location)
  (:timestamp
   (&optional __timestamp)
   (if __timestamp (setq _timestamp __timestamp)) _timestamp)
  (:question_id
   (&optional __question_id)
   (if __question_id (setq _question_id __question_id)) _question_id)
  (:serialization-length
   ()
   (+
    ;; string _response
    4 (length _response)
    ;; string _base_name
    4 (length _base_name)
    ;; string _location
    4 (length _location)
    ;; time _timestamp
    8
    ;; int32 _question_id
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _response
       (write-long (length _response) s) (princ _response s)
     ;; string _base_name
       (write-long (length _base_name) s) (princ _base_name s)
     ;; string _location
       (write-long (length _location) s) (princ _location s)
     ;; time _timestamp
       (write-long (send _timestamp :sec) s) (write-long (send _timestamp :nsec) s)
     ;; int32 _question_id
       (write-long _question_id s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _response
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _response (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _base_name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _base_name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _location
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _location (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; time _timestamp
     (send _timestamp :sec (sys::peek buf ptr- :integer)) (incf ptr- 4)  (send _timestamp :nsec (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _question_id
     (setq _question_id (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(defclass bwi_msgs::SaveImageResponseResponse
  :super ros::object
  :slots (_success ))

(defmethod bwi_msgs::SaveImageResponseResponse
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

(defclass bwi_msgs::SaveImageResponse
  :super ros::object
  :slots ())

(setf (get bwi_msgs::SaveImageResponse :md5sum-) "a365655a2050358a4bc3505ffc1c4db3")
(setf (get bwi_msgs::SaveImageResponse :datatype-) "bwi_msgs/SaveImageResponse")
(setf (get bwi_msgs::SaveImageResponse :request) bwi_msgs::SaveImageResponseRequest)
(setf (get bwi_msgs::SaveImageResponse :response) bwi_msgs::SaveImageResponseResponse)

(defmethod bwi_msgs::SaveImageResponseRequest
  (:response () (instance bwi_msgs::SaveImageResponseResponse :init)))

(setf (get bwi_msgs::SaveImageResponseRequest :md5sum-) "a365655a2050358a4bc3505ffc1c4db3")
(setf (get bwi_msgs::SaveImageResponseRequest :datatype-) "bwi_msgs/SaveImageResponseRequest")
(setf (get bwi_msgs::SaveImageResponseRequest :definition-)
      "string response
string base_name
string location
time timestamp
int32 question_id
---
bool success

")

(setf (get bwi_msgs::SaveImageResponseResponse :md5sum-) "a365655a2050358a4bc3505ffc1c4db3")
(setf (get bwi_msgs::SaveImageResponseResponse :datatype-) "bwi_msgs/SaveImageResponseResponse")
(setf (get bwi_msgs::SaveImageResponseResponse :definition-)
      "string response
string base_name
string location
time timestamp
int32 question_id
---
bool success

")



(provide :bwi_msgs/SaveImageResponse "a365655a2050358a4bc3505ffc1c4db3")


