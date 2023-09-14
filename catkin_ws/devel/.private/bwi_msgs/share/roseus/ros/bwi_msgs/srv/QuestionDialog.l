;; Auto-generated. Do not edit!


(when (boundp 'bwi_msgs::QuestionDialog)
  (if (not (find-package "BWI_MSGS"))
    (make-package "BWI_MSGS"))
  (shadow 'QuestionDialog (find-package "BWI_MSGS")))
(unless (find-package "BWI_MSGS::QUESTIONDIALOG")
  (make-package "BWI_MSGS::QUESTIONDIALOG"))
(unless (find-package "BWI_MSGS::QUESTIONDIALOGREQUEST")
  (make-package "BWI_MSGS::QUESTIONDIALOGREQUEST"))
(unless (find-package "BWI_MSGS::QUESTIONDIALOGRESPONSE")
  (make-package "BWI_MSGS::QUESTIONDIALOGRESPONSE"))

(in-package "ROS")





(intern "*DISPLAY*" (find-package "BWI_MSGS::QUESTIONDIALOGREQUEST"))
(shadow '*DISPLAY* (find-package "BWI_MSGS::QUESTIONDIALOGREQUEST"))
(defconstant bwi_msgs::QuestionDialogRequest::*DISPLAY* 0)
(intern "*CHOICE_QUESTION*" (find-package "BWI_MSGS::QUESTIONDIALOGREQUEST"))
(shadow '*CHOICE_QUESTION* (find-package "BWI_MSGS::QUESTIONDIALOGREQUEST"))
(defconstant bwi_msgs::QuestionDialogRequest::*CHOICE_QUESTION* 1)
(intern "*TEXT_QUESTION*" (find-package "BWI_MSGS::QUESTIONDIALOGREQUEST"))
(shadow '*TEXT_QUESTION* (find-package "BWI_MSGS::QUESTIONDIALOGREQUEST"))
(defconstant bwi_msgs::QuestionDialogRequest::*TEXT_QUESTION* 2)
(intern "*NO_TIMEOUT*" (find-package "BWI_MSGS::QUESTIONDIALOGREQUEST"))
(shadow '*NO_TIMEOUT* (find-package "BWI_MSGS::QUESTIONDIALOGREQUEST"))
(defconstant bwi_msgs::QuestionDialogRequest::*NO_TIMEOUT* 0.0)
(intern "*NO_RESPONSE*" (find-package "BWI_MSGS::QUESTIONDIALOGREQUEST"))
(shadow '*NO_RESPONSE* (find-package "BWI_MSGS::QUESTIONDIALOGREQUEST"))
(defconstant bwi_msgs::QuestionDialogRequest::*NO_RESPONSE* -1)
(intern "*TIMED_OUT*" (find-package "BWI_MSGS::QUESTIONDIALOGREQUEST"))
(shadow '*TIMED_OUT* (find-package "BWI_MSGS::QUESTIONDIALOGREQUEST"))
(defconstant bwi_msgs::QuestionDialogRequest::*TIMED_OUT* -2)
(intern "*TEXT_RESPONSE*" (find-package "BWI_MSGS::QUESTIONDIALOGREQUEST"))
(shadow '*TEXT_RESPONSE* (find-package "BWI_MSGS::QUESTIONDIALOGREQUEST"))
(defconstant bwi_msgs::QuestionDialogRequest::*TEXT_RESPONSE* -3)
(intern "*PREEMPTED*" (find-package "BWI_MSGS::QUESTIONDIALOGREQUEST"))
(shadow '*PREEMPTED* (find-package "BWI_MSGS::QUESTIONDIALOGREQUEST"))
(defconstant bwi_msgs::QuestionDialogRequest::*PREEMPTED* -4)
(defclass bwi_msgs::QuestionDialogRequest
  :super ros::object
  :slots (_type _message _options _timeout ))

(defmethod bwi_msgs::QuestionDialogRequest
  (:init
   (&key
    ((:type __type) 0)
    ((:message __message) "")
    ((:options __options) (let (r) (dotimes (i 0) (push "" r)) r))
    ((:timeout __timeout) 0.0)
    )
   (send-super :init)
   (setq _type (round __type))
   (setq _message (string __message))
   (setq _options __options)
   (setq _timeout (float __timeout))
   self)
  (:type
   (&optional __type)
   (if __type (setq _type __type)) _type)
  (:message
   (&optional __message)
   (if __message (setq _message __message)) _message)
  (:options
   (&optional __options)
   (if __options (setq _options __options)) _options)
  (:timeout
   (&optional __timeout)
   (if __timeout (setq _timeout __timeout)) _timeout)
  (:serialization-length
   ()
   (+
    ;; int32 _type
    4
    ;; string _message
    4 (length _message)
    ;; string[] _options
    (apply #'+ (mapcar #'(lambda (x) (+ 4 (length x))) _options)) 4
    ;; float32 _timeout
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _type
       (write-long _type s)
     ;; string _message
       (write-long (length _message) s) (princ _message s)
     ;; string[] _options
     (write-long (length _options) s)
     (dolist (elem _options)
       (write-long (length elem) s) (princ elem s)
       )
     ;; float32 _timeout
       (sys::poke _timeout (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _type
     (setq _type (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; string _message
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _message (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string[] _options
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _options (make-list n))
     (dotimes (i n)
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setf (elt _options i) (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
     ))
   ;; float32 _timeout
     (setq _timeout (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(defclass bwi_msgs::QuestionDialogResponse
  :super ros::object
  :slots (_index _text ))

(defmethod bwi_msgs::QuestionDialogResponse
  (:init
   (&key
    ((:index __index) 0)
    ((:text __text) "")
    )
   (send-super :init)
   (setq _index (round __index))
   (setq _text (string __text))
   self)
  (:index
   (&optional __index)
   (if __index (setq _index __index)) _index)
  (:text
   (&optional __text)
   (if __text (setq _text __text)) _text)
  (:serialization-length
   ()
   (+
    ;; int32 _index
    4
    ;; string _text
    4 (length _text)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _index
       (write-long _index s)
     ;; string _text
       (write-long (length _text) s) (princ _text s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _index
     (setq _index (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; string _text
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _text (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass bwi_msgs::QuestionDialog
  :super ros::object
  :slots ())

(setf (get bwi_msgs::QuestionDialog :md5sum-) "da20546e76b989e7fb856c33a31cdf5d")
(setf (get bwi_msgs::QuestionDialog :datatype-) "bwi_msgs/QuestionDialog")
(setf (get bwi_msgs::QuestionDialog :request) bwi_msgs::QuestionDialogRequest)
(setf (get bwi_msgs::QuestionDialog :response) bwi_msgs::QuestionDialogResponse)

(defmethod bwi_msgs::QuestionDialogRequest
  (:response () (instance bwi_msgs::QuestionDialogResponse :init)))

(setf (get bwi_msgs::QuestionDialogRequest :md5sum-) "da20546e76b989e7fb856c33a31cdf5d")
(setf (get bwi_msgs::QuestionDialogRequest :datatype-) "bwi_msgs/QuestionDialogRequest")
(setf (get bwi_msgs::QuestionDialogRequest :definition-)
      "# Constants defining question type
int32 DISPLAY = 0
int32 CHOICE_QUESTION = 1
int32 TEXT_QUESTION = 2

# Constants regarding timeout
float32 NO_TIMEOUT=0.0

# Constants for response index
int32 NO_RESPONSE=-1
int32 TIMED_OUT=-2
int32 TEXT_RESPONSE=-3
int32 PREEMPTED=-4

int32 type
string message
string[] options # used in choice questions
float32 timeout

---
int32 index
string text

")

(setf (get bwi_msgs::QuestionDialogResponse :md5sum-) "da20546e76b989e7fb856c33a31cdf5d")
(setf (get bwi_msgs::QuestionDialogResponse :datatype-) "bwi_msgs/QuestionDialogResponse")
(setf (get bwi_msgs::QuestionDialogResponse :definition-)
      "# Constants defining question type
int32 DISPLAY = 0
int32 CHOICE_QUESTION = 1
int32 TEXT_QUESTION = 2

# Constants regarding timeout
float32 NO_TIMEOUT=0.0

# Constants for response index
int32 NO_RESPONSE=-1
int32 TIMED_OUT=-2
int32 TEXT_RESPONSE=-3
int32 PREEMPTED=-4

int32 type
string message
string[] options # used in choice questions
float32 timeout

---
int32 index
string text

")



(provide :bwi_msgs/QuestionDialog "da20546e76b989e7fb856c33a31cdf5d")


