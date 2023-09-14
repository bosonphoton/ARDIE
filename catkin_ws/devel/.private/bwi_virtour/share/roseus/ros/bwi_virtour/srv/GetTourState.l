;; Auto-generated. Do not edit!


(when (boundp 'bwi_virtour::GetTourState)
  (if (not (find-package "BWI_VIRTOUR"))
    (make-package "BWI_VIRTOUR"))
  (shadow 'GetTourState (find-package "BWI_VIRTOUR")))
(unless (find-package "BWI_VIRTOUR::GETTOURSTATE")
  (make-package "BWI_VIRTOUR::GETTOURSTATE"))
(unless (find-package "BWI_VIRTOUR::GETTOURSTATEREQUEST")
  (make-package "BWI_VIRTOUR::GETTOURSTATEREQUEST"))
(unless (find-package "BWI_VIRTOUR::GETTOURSTATERESPONSE")
  (make-package "BWI_VIRTOUR::GETTOURSTATERESPONSE"))

(in-package "ROS")





(defclass bwi_virtour::GetTourStateRequest
  :super ros::object
  :slots ())

(defmethod bwi_virtour::GetTourStateRequest
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

(defclass bwi_virtour::GetTourStateResponse
  :super ros::object
  :slots (_tourAllowed _tourInProgress _tourDuration _tourStartTime _lastPingTime _tourLeader ))

(defmethod bwi_virtour::GetTourStateResponse
  (:init
   (&key
    ((:tourAllowed __tourAllowed) nil)
    ((:tourInProgress __tourInProgress) nil)
    ((:tourDuration __tourDuration) 0)
    ((:tourStartTime __tourStartTime) 0)
    ((:lastPingTime __lastPingTime) 0)
    ((:tourLeader __tourLeader) "")
    )
   (send-super :init)
   (setq _tourAllowed __tourAllowed)
   (setq _tourInProgress __tourInProgress)
   (setq _tourDuration (round __tourDuration))
   (setq _tourStartTime (round __tourStartTime))
   (setq _lastPingTime (round __lastPingTime))
   (setq _tourLeader (string __tourLeader))
   self)
  (:tourAllowed
   (&optional __tourAllowed)
   (if __tourAllowed (setq _tourAllowed __tourAllowed)) _tourAllowed)
  (:tourInProgress
   (&optional __tourInProgress)
   (if __tourInProgress (setq _tourInProgress __tourInProgress)) _tourInProgress)
  (:tourDuration
   (&optional __tourDuration)
   (if __tourDuration (setq _tourDuration __tourDuration)) _tourDuration)
  (:tourStartTime
   (&optional __tourStartTime)
   (if __tourStartTime (setq _tourStartTime __tourStartTime)) _tourStartTime)
  (:lastPingTime
   (&optional __lastPingTime)
   (if __lastPingTime (setq _lastPingTime __lastPingTime)) _lastPingTime)
  (:tourLeader
   (&optional __tourLeader)
   (if __tourLeader (setq _tourLeader __tourLeader)) _tourLeader)
  (:serialization-length
   ()
   (+
    ;; bool _tourAllowed
    1
    ;; bool _tourInProgress
    1
    ;; uint64 _tourDuration
    8
    ;; uint64 _tourStartTime
    8
    ;; uint64 _lastPingTime
    8
    ;; string _tourLeader
    4 (length _tourLeader)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _tourAllowed
       (if _tourAllowed (write-byte -1 s) (write-byte 0 s))
     ;; bool _tourInProgress
       (if _tourInProgress (write-byte -1 s) (write-byte 0 s))
     ;; uint64 _tourDuration
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _tourDuration (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _tourDuration) (= (length (_tourDuration . bv)) 2)) ;; bignum
              (write-long (ash (elt (_tourDuration . bv) 0) 0) s)
              (write-long (ash (elt (_tourDuration . bv) 1) -1) s))
             ((and (class _tourDuration) (= (length (_tourDuration . bv)) 1)) ;; big1
              (write-long (elt (_tourDuration . bv) 0) s)
              (write-long (if (>= _tourDuration 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _tourDuration s)(write-long (if (>= _tourDuration 0) 0 #xffffffff) s)))
     ;; uint64 _tourStartTime
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _tourStartTime (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _tourStartTime) (= (length (_tourStartTime . bv)) 2)) ;; bignum
              (write-long (ash (elt (_tourStartTime . bv) 0) 0) s)
              (write-long (ash (elt (_tourStartTime . bv) 1) -1) s))
             ((and (class _tourStartTime) (= (length (_tourStartTime . bv)) 1)) ;; big1
              (write-long (elt (_tourStartTime . bv) 0) s)
              (write-long (if (>= _tourStartTime 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _tourStartTime s)(write-long (if (>= _tourStartTime 0) 0 #xffffffff) s)))
     ;; uint64 _lastPingTime
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _lastPingTime (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _lastPingTime) (= (length (_lastPingTime . bv)) 2)) ;; bignum
              (write-long (ash (elt (_lastPingTime . bv) 0) 0) s)
              (write-long (ash (elt (_lastPingTime . bv) 1) -1) s))
             ((and (class _lastPingTime) (= (length (_lastPingTime . bv)) 1)) ;; big1
              (write-long (elt (_lastPingTime . bv) 0) s)
              (write-long (if (>= _lastPingTime 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _lastPingTime s)(write-long (if (>= _lastPingTime 0) 0 #xffffffff) s)))
     ;; string _tourLeader
       (write-long (length _tourLeader) s) (princ _tourLeader s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _tourAllowed
     (setq _tourAllowed (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _tourInProgress
     (setq _tourInProgress (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; uint64 _tourDuration
     
#+(or :alpha :irix6 :x86_64)
      (setf _tourDuration (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _tourDuration (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
   ;; uint64 _tourStartTime
     
#+(or :alpha :irix6 :x86_64)
      (setf _tourStartTime (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _tourStartTime (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
   ;; uint64 _lastPingTime
     
#+(or :alpha :irix6 :x86_64)
      (setf _lastPingTime (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _lastPingTime (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
   ;; string _tourLeader
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _tourLeader (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass bwi_virtour::GetTourState
  :super ros::object
  :slots ())

(setf (get bwi_virtour::GetTourState :md5sum-) "948457c50757084326687f7ddb2305ee")
(setf (get bwi_virtour::GetTourState :datatype-) "bwi_virtour/GetTourState")
(setf (get bwi_virtour::GetTourState :request) bwi_virtour::GetTourStateRequest)
(setf (get bwi_virtour::GetTourState :response) bwi_virtour::GetTourStateResponse)

(defmethod bwi_virtour::GetTourStateRequest
  (:response () (instance bwi_virtour::GetTourStateResponse :init)))

(setf (get bwi_virtour::GetTourStateRequest :md5sum-) "948457c50757084326687f7ddb2305ee")
(setf (get bwi_virtour::GetTourStateRequest :datatype-) "bwi_virtour/GetTourStateRequest")
(setf (get bwi_virtour::GetTourStateRequest :definition-)
      "---
bool tourAllowed
bool tourInProgress
uint64 tourDuration
uint64 tourStartTime
uint64 lastPingTime
string tourLeader

")

(setf (get bwi_virtour::GetTourStateResponse :md5sum-) "948457c50757084326687f7ddb2305ee")
(setf (get bwi_virtour::GetTourStateResponse :datatype-) "bwi_virtour/GetTourStateResponse")
(setf (get bwi_virtour::GetTourStateResponse :definition-)
      "---
bool tourAllowed
bool tourInProgress
uint64 tourDuration
uint64 tourStartTime
uint64 lastPingTime
string tourLeader

")



(provide :bwi_virtour/GetTourState "948457c50757084326687f7ddb2305ee")


