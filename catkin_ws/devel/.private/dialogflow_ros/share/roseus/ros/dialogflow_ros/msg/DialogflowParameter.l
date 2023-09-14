;; Auto-generated. Do not edit!


(when (boundp 'dialogflow_ros::DialogflowParameter)
  (if (not (find-package "DIALOGFLOW_ROS"))
    (make-package "DIALOGFLOW_ROS"))
  (shadow 'DialogflowParameter (find-package "DIALOGFLOW_ROS")))
(unless (find-package "DIALOGFLOW_ROS::DIALOGFLOWPARAMETER")
  (make-package "DIALOGFLOW_ROS::DIALOGFLOWPARAMETER"))

(in-package "ROS")
;;//! \htmlinclude DialogflowParameter.msg.html


(defclass dialogflow_ros::DialogflowParameter
  :super ros::object
  :slots (_param_name _value ))

(defmethod dialogflow_ros::DialogflowParameter
  (:init
   (&key
    ((:param_name __param_name) "")
    ((:value __value) (let (r) (dotimes (i 0) (push "" r)) r))
    )
   (send-super :init)
   (setq _param_name (string __param_name))
   (setq _value __value)
   self)
  (:param_name
   (&optional __param_name)
   (if __param_name (setq _param_name __param_name)) _param_name)
  (:value
   (&optional __value)
   (if __value (setq _value __value)) _value)
  (:serialization-length
   ()
   (+
    ;; string _param_name
    4 (length _param_name)
    ;; string[] _value
    (apply #'+ (mapcar #'(lambda (x) (+ 4 (length x))) _value)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _param_name
       (write-long (length _param_name) s) (princ _param_name s)
     ;; string[] _value
     (write-long (length _value) s)
     (dolist (elem _value)
       (write-long (length elem) s) (princ elem s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _param_name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _param_name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string[] _value
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _value (make-list n))
     (dotimes (i n)
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setf (elt _value i) (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
     ))
   ;;
   self)
  )

(setf (get dialogflow_ros::DialogflowParameter :md5sum-) "7c0d6bbe30a09bc819df8f08f331971d")
(setf (get dialogflow_ros::DialogflowParameter :datatype-) "dialogflow_ros/DialogflowParameter")
(setf (get dialogflow_ros::DialogflowParameter :definition-)
      "string param_name
string[] value
")



(provide :dialogflow_ros/DialogflowParameter "7c0d6bbe30a09bc819df8f08f331971d")


