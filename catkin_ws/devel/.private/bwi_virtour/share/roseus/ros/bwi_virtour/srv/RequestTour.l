;; Auto-generated. Do not edit!


(when (boundp 'bwi_virtour::RequestTour)
  (if (not (find-package "BWI_VIRTOUR"))
    (make-package "BWI_VIRTOUR"))
  (shadow 'RequestTour (find-package "BWI_VIRTOUR")))
(unless (find-package "BWI_VIRTOUR::REQUESTTOUR")
  (make-package "BWI_VIRTOUR::REQUESTTOUR"))
(unless (find-package "BWI_VIRTOUR::REQUESTTOURREQUEST")
  (make-package "BWI_VIRTOUR::REQUESTTOURREQUEST"))
(unless (find-package "BWI_VIRTOUR::REQUESTTOURRESPONSE")
  (make-package "BWI_VIRTOUR::REQUESTTOURRESPONSE"))

(in-package "ROS")





(defclass bwi_virtour::RequestTourRequest
  :super ros::object
  :slots (_user ))

(defmethod bwi_virtour::RequestTourRequest
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

(defclass bwi_virtour::RequestTourResponse
  :super ros::object
  :slots (_startTime _result ))

(defmethod bwi_virtour::RequestTourResponse
  (:init
   (&key
    ((:startTime __startTime) 0)
    ((:result __result) 0)
    )
   (send-super :init)
   (setq _startTime (round __startTime))
   (setq _result (round __result))
   self)
  (:startTime
   (&optional __startTime)
   (if __startTime (setq _startTime __startTime)) _startTime)
  (:result
   (&optional __result)
   (if __result (setq _result __result)) _result)
  (:serialization-length
   ()
   (+
    ;; uint64 _startTime
    8
    ;; int32 _result
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint64 _startTime
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _startTime (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _startTime) (= (length (_startTime . bv)) 2)) ;; bignum
              (write-long (ash (elt (_startTime . bv) 0) 0) s)
              (write-long (ash (elt (_startTime . bv) 1) -1) s))
             ((and (class _startTime) (= (length (_startTime . bv)) 1)) ;; big1
              (write-long (elt (_startTime . bv) 0) s)
              (write-long (if (>= _startTime 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _startTime s)(write-long (if (>= _startTime 0) 0 #xffffffff) s)))
     ;; int32 _result
       (write-long _result s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint64 _startTime
     
#+(or :alpha :irix6 :x86_64)
      (setf _startTime (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _startTime (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
   ;; int32 _result
     (setq _result (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(defclass bwi_virtour::RequestTour
  :super ros::object
  :slots ())

(setf (get bwi_virtour::RequestTour :md5sum-) "ecb5124ad29672c457aff7f5cfe2dea1")
(setf (get bwi_virtour::RequestTour :datatype-) "bwi_virtour/RequestTour")
(setf (get bwi_virtour::RequestTour :request) bwi_virtour::RequestTourRequest)
(setf (get bwi_virtour::RequestTour :response) bwi_virtour::RequestTourResponse)

(defmethod bwi_virtour::RequestTourRequest
  (:response () (instance bwi_virtour::RequestTourResponse :init)))

(setf (get bwi_virtour::RequestTourRequest :md5sum-) "ecb5124ad29672c457aff7f5cfe2dea1")
(setf (get bwi_virtour::RequestTourRequest :datatype-) "bwi_virtour/RequestTourRequest")
(setf (get bwi_virtour::RequestTourRequest :definition-)
      "string user
---
uint64 startTime
int32 result 

")

(setf (get bwi_virtour::RequestTourResponse :md5sum-) "ecb5124ad29672c457aff7f5cfe2dea1")
(setf (get bwi_virtour::RequestTourResponse :datatype-) "bwi_virtour/RequestTourResponse")
(setf (get bwi_virtour::RequestTourResponse :definition-)
      "string user
---
uint64 startTime
int32 result 

")



(provide :bwi_virtour/RequestTour "ecb5124ad29672c457aff7f5cfe2dea1")


