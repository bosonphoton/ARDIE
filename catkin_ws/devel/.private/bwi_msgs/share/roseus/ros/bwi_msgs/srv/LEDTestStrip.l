;; Auto-generated. Do not edit!


(when (boundp 'bwi_msgs::LEDTestStrip)
  (if (not (find-package "BWI_MSGS"))
    (make-package "BWI_MSGS"))
  (shadow 'LEDTestStrip (find-package "BWI_MSGS")))
(unless (find-package "BWI_MSGS::LEDTESTSTRIP")
  (make-package "BWI_MSGS::LEDTESTSTRIP"))
(unless (find-package "BWI_MSGS::LEDTESTSTRIPREQUEST")
  (make-package "BWI_MSGS::LEDTESTSTRIPREQUEST"))
(unless (find-package "BWI_MSGS::LEDTESTSTRIPRESPONSE")
  (make-package "BWI_MSGS::LEDTESTSTRIPRESPONSE"))

(in-package "ROS")





(defclass bwi_msgs::LEDTestStripRequest
  :super ros::object
  :slots (_type ))

(defmethod bwi_msgs::LEDTestStripRequest
  (:init
   (&key
    ((:type __type) (instance bwi_msgs::LEDTestType :init))
    )
   (send-super :init)
   (setq _type __type)
   self)
  (:type
   (&rest __type)
   (if (keywordp (car __type))
       (send* _type __type)
     (progn
       (if __type (setq _type (car __type)))
       _type)))
  (:serialization-length
   ()
   (+
    ;; bwi_msgs/LEDTestType _type
    (send _type :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bwi_msgs/LEDTestType _type
       (send _type :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bwi_msgs/LEDTestType _type
     (send _type :deserialize buf ptr-) (incf ptr- (send _type :serialization-length))
   ;;
   self)
  )

(defclass bwi_msgs::LEDTestStripResponse
  :super ros::object
  :slots (_success _status ))

(defmethod bwi_msgs::LEDTestStripResponse
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

(defclass bwi_msgs::LEDTestStrip
  :super ros::object
  :slots ())

(setf (get bwi_msgs::LEDTestStrip :md5sum-) "d871d678836b58f63622ed041e410e26")
(setf (get bwi_msgs::LEDTestStrip :datatype-) "bwi_msgs/LEDTestStrip")
(setf (get bwi_msgs::LEDTestStrip :request) bwi_msgs::LEDTestStripRequest)
(setf (get bwi_msgs::LEDTestStrip :response) bwi_msgs::LEDTestStripResponse)

(defmethod bwi_msgs::LEDTestStripRequest
  (:response () (instance bwi_msgs::LEDTestStripResponse :init)))

(setf (get bwi_msgs::LEDTestStripRequest :md5sum-) "d871d678836b58f63622ed041e410e26")
(setf (get bwi_msgs::LEDTestStripRequest :datatype-) "bwi_msgs/LEDTestStripRequest")
(setf (get bwi_msgs::LEDTestStripRequest :definition-)
      "bwi_msgs/LEDTestType type

================================================================================
MSG: bwi_msgs/LEDTestType
# LED Test Type

# Service Variables
uint8 SET_EVERY_FIFTH = 1
uint8 SET_FIRST_FIVE = 2
uint8 TEST_STRIP = 3

# Selects which animation to execute

---
bool success
string status
")

(setf (get bwi_msgs::LEDTestStripResponse :md5sum-) "d871d678836b58f63622ed041e410e26")
(setf (get bwi_msgs::LEDTestStripResponse :datatype-) "bwi_msgs/LEDTestStripResponse")
(setf (get bwi_msgs::LEDTestStripResponse :definition-)
      "bwi_msgs/LEDTestType type

================================================================================
MSG: bwi_msgs/LEDTestType
# LED Test Type

# Service Variables
uint8 SET_EVERY_FIFTH = 1
uint8 SET_FIRST_FIVE = 2
uint8 TEST_STRIP = 3

# Selects which animation to execute

---
bool success
string status
")



(provide :bwi_msgs/LEDTestStrip "d871d678836b58f63622ed041e410e26")


