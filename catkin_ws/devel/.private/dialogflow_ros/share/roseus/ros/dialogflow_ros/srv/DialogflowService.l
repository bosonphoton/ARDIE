;; Auto-generated. Do not edit!


(when (boundp 'dialogflow_ros::DialogflowService)
  (if (not (find-package "DIALOGFLOW_ROS"))
    (make-package "DIALOGFLOW_ROS"))
  (shadow 'DialogflowService (find-package "DIALOGFLOW_ROS")))
(unless (find-package "DIALOGFLOW_ROS::DIALOGFLOWSERVICE")
  (make-package "DIALOGFLOW_ROS::DIALOGFLOWSERVICE"))
(unless (find-package "DIALOGFLOW_ROS::DIALOGFLOWSERVICEREQUEST")
  (make-package "DIALOGFLOW_ROS::DIALOGFLOWSERVICEREQUEST"))
(unless (find-package "DIALOGFLOW_ROS::DIALOGFLOWSERVICERESPONSE")
  (make-package "DIALOGFLOW_ROS::DIALOGFLOWSERVICERESPONSE"))

(in-package "ROS")





(defclass dialogflow_ros::DialogflowServiceRequest
  :super ros::object
  :slots (_voice _text ))

(defmethod dialogflow_ros::DialogflowServiceRequest
  (:init
   (&key
    ((:voice __voice) nil)
    ((:text __text) "")
    )
   (send-super :init)
   (setq _voice __voice)
   (setq _text (string __text))
   self)
  (:voice
   (&optional __voice)
   (if __voice (setq _voice __voice)) _voice)
  (:text
   (&optional __text)
   (if __text (setq _text __text)) _text)
  (:serialization-length
   ()
   (+
    ;; bool _voice
    1
    ;; string _text
    4 (length _text)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _voice
       (if _voice (write-byte -1 s) (write-byte 0 s))
     ;; string _text
       (write-long (length _text) s) (princ _text s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _voice
     (setq _voice (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; string _text
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _text (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass dialogflow_ros::DialogflowServiceResponse
  :super ros::object
  :slots (_success _result ))

(defmethod dialogflow_ros::DialogflowServiceResponse
  (:init
   (&key
    ((:success __success) nil)
    ((:result __result) (instance dialogflow_ros::DialogflowResult :init))
    )
   (send-super :init)
   (setq _success __success)
   (setq _result __result)
   self)
  (:success
   (&optional __success)
   (if __success (setq _success __success)) _success)
  (:result
   (&rest __result)
   (if (keywordp (car __result))
       (send* _result __result)
     (progn
       (if __result (setq _result (car __result)))
       _result)))
  (:serialization-length
   ()
   (+
    ;; bool _success
    1
    ;; dialogflow_ros/DialogflowResult _result
    (send _result :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _success
       (if _success (write-byte -1 s) (write-byte 0 s))
     ;; dialogflow_ros/DialogflowResult _result
       (send _result :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _success
     (setq _success (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; dialogflow_ros/DialogflowResult _result
     (send _result :deserialize buf ptr-) (incf ptr- (send _result :serialization-length))
   ;;
   self)
  )

(defclass dialogflow_ros::DialogflowService
  :super ros::object
  :slots ())

(setf (get dialogflow_ros::DialogflowService :md5sum-) "70029259094fc3123850886da266641c")
(setf (get dialogflow_ros::DialogflowService :datatype-) "dialogflow_ros/DialogflowService")
(setf (get dialogflow_ros::DialogflowService :request) dialogflow_ros::DialogflowServiceRequest)
(setf (get dialogflow_ros::DialogflowService :response) dialogflow_ros::DialogflowServiceResponse)

(defmethod dialogflow_ros::DialogflowServiceRequest
  (:response () (instance dialogflow_ros::DialogflowServiceResponse :init)))

(setf (get dialogflow_ros::DialogflowServiceRequest :md5sum-) "70029259094fc3123850886da266641c")
(setf (get dialogflow_ros::DialogflowServiceRequest :datatype-) "dialogflow_ros/DialogflowServiceRequest")
(setf (get dialogflow_ros::DialogflowServiceRequest :definition-)
      "bool voice
string text
---
bool success
DialogflowResult result

================================================================================
MSG: dialogflow_ros/DialogflowResult
string action
string query_text
string fulfillment_text
DialogflowParameter[] parameters
DialogflowContext[] contexts
string intent
================================================================================
MSG: dialogflow_ros/DialogflowParameter
string param_name
string[] value
================================================================================
MSG: dialogflow_ros/DialogflowContext
string name
int32 lifespan_count
")

(setf (get dialogflow_ros::DialogflowServiceResponse :md5sum-) "70029259094fc3123850886da266641c")
(setf (get dialogflow_ros::DialogflowServiceResponse :datatype-) "dialogflow_ros/DialogflowServiceResponse")
(setf (get dialogflow_ros::DialogflowServiceResponse :definition-)
      "bool voice
string text
---
bool success
DialogflowResult result

================================================================================
MSG: dialogflow_ros/DialogflowResult
string action
string query_text
string fulfillment_text
DialogflowParameter[] parameters
DialogflowContext[] contexts
string intent
================================================================================
MSG: dialogflow_ros/DialogflowParameter
string param_name
string[] value
================================================================================
MSG: dialogflow_ros/DialogflowContext
string name
int32 lifespan_count
")



(provide :dialogflow_ros/DialogflowService "70029259094fc3123850886da266641c")


