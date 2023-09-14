;; Auto-generated. Do not edit!


(when (boundp 'bwi_msgs::DoorHandlerInterface)
  (if (not (find-package "BWI_MSGS"))
    (make-package "BWI_MSGS"))
  (shadow 'DoorHandlerInterface (find-package "BWI_MSGS")))
(unless (find-package "BWI_MSGS::DOORHANDLERINTERFACE")
  (make-package "BWI_MSGS::DOORHANDLERINTERFACE"))
(unless (find-package "BWI_MSGS::DOORHANDLERINTERFACEREQUEST")
  (make-package "BWI_MSGS::DOORHANDLERINTERFACEREQUEST"))
(unless (find-package "BWI_MSGS::DOORHANDLERINTERFACERESPONSE")
  (make-package "BWI_MSGS::DOORHANDLERINTERFACERESPONSE"))

(in-package "ROS")





(defclass bwi_msgs::DoorHandlerInterfaceRequest
  :super ros::object
  :slots (_door _open _all_doors _open_timeout ))

(defmethod bwi_msgs::DoorHandlerInterfaceRequest
  (:init
   (&key
    ((:door __door) "")
    ((:open __open) nil)
    ((:all_doors __all_doors) nil)
    ((:open_timeout __open_timeout) 0.0)
    )
   (send-super :init)
   (setq _door (string __door))
   (setq _open __open)
   (setq _all_doors __all_doors)
   (setq _open_timeout (float __open_timeout))
   self)
  (:door
   (&optional __door)
   (if __door (setq _door __door)) _door)
  (:open
   (&optional __open)
   (if __open (setq _open __open)) _open)
  (:all_doors
   (&optional __all_doors)
   (if __all_doors (setq _all_doors __all_doors)) _all_doors)
  (:open_timeout
   (&optional __open_timeout)
   (if __open_timeout (setq _open_timeout __open_timeout)) _open_timeout)
  (:serialization-length
   ()
   (+
    ;; string _door
    4 (length _door)
    ;; bool _open
    1
    ;; bool _all_doors
    1
    ;; float32 _open_timeout
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _door
       (write-long (length _door) s) (princ _door s)
     ;; bool _open
       (if _open (write-byte -1 s) (write-byte 0 s))
     ;; bool _all_doors
       (if _all_doors (write-byte -1 s) (write-byte 0 s))
     ;; float32 _open_timeout
       (sys::poke _open_timeout (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _door
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _door (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; bool _open
     (setq _open (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _all_doors
     (setq _all_doors (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; float32 _open_timeout
     (setq _open_timeout (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(defclass bwi_msgs::DoorHandlerInterfaceResponse
  :super ros::object
  :slots (_success _status ))

(defmethod bwi_msgs::DoorHandlerInterfaceResponse
  (:init
   (&key
    ((:success __success) nil)
    ((:status __status) "")
    )
   (send-super :init)
   (setq _success __success)
   (setq _status (string __status))
   self)
  (:success
   (&optional __success)
   (if __success (setq _success __success)) _success)
  (:status
   (&optional __status)
   (if __status (setq _status __status)) _status)
  (:serialization-length
   ()
   (+
    ;; bool _success
    1
    ;; string _status
    4 (length _status)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _success
       (if _success (write-byte -1 s) (write-byte 0 s))
     ;; string _status
       (write-long (length _status) s) (princ _status s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _success
     (setq _success (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; string _status
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _status (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass bwi_msgs::DoorHandlerInterface
  :super ros::object
  :slots ())

(setf (get bwi_msgs::DoorHandlerInterface :md5sum-) "23814681e0b187a587931a833fabf925")
(setf (get bwi_msgs::DoorHandlerInterface :datatype-) "bwi_msgs/DoorHandlerInterface")
(setf (get bwi_msgs::DoorHandlerInterface :request) bwi_msgs::DoorHandlerInterfaceRequest)
(setf (get bwi_msgs::DoorHandlerInterface :response) bwi_msgs::DoorHandlerInterfaceResponse)

(defmethod bwi_msgs::DoorHandlerInterfaceRequest
  (:response () (instance bwi_msgs::DoorHandlerInterfaceResponse :init)))

(setf (get bwi_msgs::DoorHandlerInterfaceRequest :md5sum-) "23814681e0b187a587931a833fabf925")
(setf (get bwi_msgs::DoorHandlerInterfaceRequest :datatype-) "bwi_msgs/DoorHandlerInterfaceRequest")
(setf (get bwi_msgs::DoorHandlerInterfaceRequest :definition-)
      "string door
bool open
bool all_doors
float32 open_timeout
---
bool success
string status

")

(setf (get bwi_msgs::DoorHandlerInterfaceResponse :md5sum-) "23814681e0b187a587931a833fabf925")
(setf (get bwi_msgs::DoorHandlerInterfaceResponse :datatype-) "bwi_msgs/DoorHandlerInterfaceResponse")
(setf (get bwi_msgs::DoorHandlerInterfaceResponse :definition-)
      "string door
bool open
bool all_doors
float32 open_timeout
---
bool success
string status

")



(provide :bwi_msgs/DoorHandlerInterface "23814681e0b187a587931a833fabf925")


