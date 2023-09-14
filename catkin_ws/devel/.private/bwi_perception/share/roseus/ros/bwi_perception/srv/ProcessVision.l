;; Auto-generated. Do not edit!


(when (boundp 'bwi_perception::ProcessVision)
  (if (not (find-package "BWI_PERCEPTION"))
    (make-package "BWI_PERCEPTION"))
  (shadow 'ProcessVision (find-package "BWI_PERCEPTION")))
(unless (find-package "BWI_PERCEPTION::PROCESSVISION")
  (make-package "BWI_PERCEPTION::PROCESSVISION"))
(unless (find-package "BWI_PERCEPTION::PROCESSVISIONREQUEST")
  (make-package "BWI_PERCEPTION::PROCESSVISIONREQUEST"))
(unless (find-package "BWI_PERCEPTION::PROCESSVISIONRESPONSE")
  (make-package "BWI_PERCEPTION::PROCESSVISIONRESPONSE"))

(in-package "ROS")





(defclass bwi_perception::ProcessVisionRequest
  :super ros::object
  :slots (_start _generalImageFilePath _generalDepthImagePath ))

(defmethod bwi_perception::ProcessVisionRequest
  (:init
   (&key
    ((:start __start) 0)
    ((:generalImageFilePath __generalImageFilePath) "")
    ((:generalDepthImagePath __generalDepthImagePath) "")
    )
   (send-super :init)
   (setq _start (round __start))
   (setq _generalImageFilePath (string __generalImageFilePath))
   (setq _generalDepthImagePath (string __generalDepthImagePath))
   self)
  (:start
   (&optional __start)
   (if __start (setq _start __start)) _start)
  (:generalImageFilePath
   (&optional __generalImageFilePath)
   (if __generalImageFilePath (setq _generalImageFilePath __generalImageFilePath)) _generalImageFilePath)
  (:generalDepthImagePath
   (&optional __generalDepthImagePath)
   (if __generalDepthImagePath (setq _generalDepthImagePath __generalDepthImagePath)) _generalDepthImagePath)
  (:serialization-length
   ()
   (+
    ;; int64 _start
    8
    ;; string _generalImageFilePath
    4 (length _generalImageFilePath)
    ;; string _generalDepthImagePath
    4 (length _generalDepthImagePath)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int64 _start
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _start (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _start) (= (length (_start . bv)) 2)) ;; bignum
              (write-long (ash (elt (_start . bv) 0) 0) s)
              (write-long (ash (elt (_start . bv) 1) -1) s))
             ((and (class _start) (= (length (_start . bv)) 1)) ;; big1
              (write-long (elt (_start . bv) 0) s)
              (write-long (if (>= _start 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _start s)(write-long (if (>= _start 0) 0 #xffffffff) s)))
     ;; string _generalImageFilePath
       (write-long (length _generalImageFilePath) s) (princ _generalImageFilePath s)
     ;; string _generalDepthImagePath
       (write-long (length _generalDepthImagePath) s) (princ _generalDepthImagePath s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int64 _start
#+(or :alpha :irix6 :x86_64)
      (setf _start (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _start (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
   ;; string _generalImageFilePath
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _generalImageFilePath (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _generalDepthImagePath
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _generalDepthImagePath (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass bwi_perception::ProcessVisionResponse
  :super ros::object
  :slots (_success ))

(defmethod bwi_perception::ProcessVisionResponse
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

(defclass bwi_perception::ProcessVision
  :super ros::object
  :slots ())

(setf (get bwi_perception::ProcessVision :md5sum-) "6e09057bca6c469f3261816784f3e445")
(setf (get bwi_perception::ProcessVision :datatype-) "bwi_perception/ProcessVision")
(setf (get bwi_perception::ProcessVision :request) bwi_perception::ProcessVisionRequest)
(setf (get bwi_perception::ProcessVision :response) bwi_perception::ProcessVisionResponse)

(defmethod bwi_perception::ProcessVisionRequest
  (:response () (instance bwi_perception::ProcessVisionResponse :init)))

(setf (get bwi_perception::ProcessVisionRequest :md5sum-) "6e09057bca6c469f3261816784f3e445")
(setf (get bwi_perception::ProcessVisionRequest :datatype-) "bwi_perception/ProcessVisionRequest")
(setf (get bwi_perception::ProcessVisionRequest :definition-)
      "int64 start
string generalImageFilePath
string generalDepthImagePath
---
bool success

")

(setf (get bwi_perception::ProcessVisionResponse :md5sum-) "6e09057bca6c469f3261816784f3e445")
(setf (get bwi_perception::ProcessVisionResponse :datatype-) "bwi_perception/ProcessVisionResponse")
(setf (get bwi_perception::ProcessVisionResponse :definition-)
      "int64 start
string generalImageFilePath
string generalDepthImagePath
---
bool success

")



(provide :bwi_perception/ProcessVision "6e09057bca6c469f3261816784f3e445")


