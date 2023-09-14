;; Auto-generated. Do not edit!


(when (boundp 'bwi_msgs::SemanticParser)
  (if (not (find-package "BWI_MSGS"))
    (make-package "BWI_MSGS"))
  (shadow 'SemanticParser (find-package "BWI_MSGS")))
(unless (find-package "BWI_MSGS::SEMANTICPARSER")
  (make-package "BWI_MSGS::SEMANTICPARSER"))
(unless (find-package "BWI_MSGS::SEMANTICPARSERREQUEST")
  (make-package "BWI_MSGS::SEMANTICPARSERREQUEST"))
(unless (find-package "BWI_MSGS::SEMANTICPARSERRESPONSE")
  (make-package "BWI_MSGS::SEMANTICPARSERRESPONSE"))

(in-package "ROS")





(intern "*QUESTION_ASKING*" (find-package "BWI_MSGS::SEMANTICPARSERREQUEST"))
(shadow '*QUESTION_ASKING* (find-package "BWI_MSGS::SEMANTICPARSERREQUEST"))
(defconstant bwi_msgs::SemanticParserRequest::*QUESTION_ASKING* 0)
(intern "*TRAINING*" (find-package "BWI_MSGS::SEMANTICPARSERREQUEST"))
(shadow '*TRAINING* (find-package "BWI_MSGS::SEMANTICPARSERREQUEST"))
(defconstant bwi_msgs::SemanticParserRequest::*TRAINING* 1)
(intern "*STARTOVER*" (find-package "BWI_MSGS::SEMANTICPARSERREQUEST"))
(shadow '*STARTOVER* (find-package "BWI_MSGS::SEMANTICPARSERREQUEST"))
(defconstant bwi_msgs::SemanticParserRequest::*STARTOVER* 2)
(intern "*GETID*" (find-package "BWI_MSGS::SEMANTICPARSERREQUEST"))
(shadow '*GETID* (find-package "BWI_MSGS::SEMANTICPARSERREQUEST"))
(defconstant bwi_msgs::SemanticParserRequest::*GETID* 3)
(defclass bwi_msgs::SemanticParserRequest
  :super ros::object
  :slots (_type _input_text ))

(defmethod bwi_msgs::SemanticParserRequest
  (:init
   (&key
    ((:type __type) 0)
    ((:input_text __input_text) "")
    )
   (send-super :init)
   (setq _type (round __type))
   (setq _input_text (string __input_text))
   self)
  (:type
   (&optional __type)
   (if __type (setq _type __type)) _type)
  (:input_text
   (&optional __input_text)
   (if __input_text (setq _input_text __input_text)) _input_text)
  (:serialization-length
   ()
   (+
    ;; int32 _type
    4
    ;; string _input_text
    4 (length _input_text)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _type
       (write-long _type s)
     ;; string _input_text
       (write-long (length _input_text) s) (princ _input_text s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _type
     (setq _type (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; string _input_text
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _input_text (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass bwi_msgs::SemanticParserResponse
  :super ros::object
  :slots (_output_text _query ))

(defmethod bwi_msgs::SemanticParserResponse
  (:init
   (&key
    ((:output_text __output_text) "")
    ((:query __query) "")
    )
   (send-super :init)
   (setq _output_text (string __output_text))
   (setq _query (string __query))
   self)
  (:output_text
   (&optional __output_text)
   (if __output_text (setq _output_text __output_text)) _output_text)
  (:query
   (&optional __query)
   (if __query (setq _query __query)) _query)
  (:serialization-length
   ()
   (+
    ;; string _output_text
    4 (length _output_text)
    ;; string _query
    4 (length _query)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _output_text
       (write-long (length _output_text) s) (princ _output_text s)
     ;; string _query
       (write-long (length _query) s) (princ _query s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _output_text
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _output_text (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _query
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _query (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass bwi_msgs::SemanticParser
  :super ros::object
  :slots ())

(setf (get bwi_msgs::SemanticParser :md5sum-) "12b95219baec3a9aff9fedb292061f4e")
(setf (get bwi_msgs::SemanticParser :datatype-) "bwi_msgs/SemanticParser")
(setf (get bwi_msgs::SemanticParser :request) bwi_msgs::SemanticParserRequest)
(setf (get bwi_msgs::SemanticParser :response) bwi_msgs::SemanticParserResponse)

(defmethod bwi_msgs::SemanticParserRequest
  (:response () (instance bwi_msgs::SemanticParserResponse :init)))

(setf (get bwi_msgs::SemanticParserRequest :md5sum-) "12b95219baec3a9aff9fedb292061f4e")
(setf (get bwi_msgs::SemanticParserRequest :datatype-) "bwi_msgs/SemanticParserRequest")
(setf (get bwi_msgs::SemanticParserRequest :definition-)
      "# Constants defining type
int32 QUESTION_ASKING = 0
int32 TRAINING = 1
int32 STARTOVER = 2
int32 GETID = 3

int32 type
string input_text
---
string output_text
string query

")

(setf (get bwi_msgs::SemanticParserResponse :md5sum-) "12b95219baec3a9aff9fedb292061f4e")
(setf (get bwi_msgs::SemanticParserResponse :datatype-) "bwi_msgs/SemanticParserResponse")
(setf (get bwi_msgs::SemanticParserResponse :definition-)
      "# Constants defining type
int32 QUESTION_ASKING = 0
int32 TRAINING = 1
int32 STARTOVER = 2
int32 GETID = 3

int32 type
string input_text
---
string output_text
string query

")



(provide :bwi_msgs/SemanticParser "12b95219baec3a9aff9fedb292061f4e")


