;; Auto-generated. Do not edit!


(when (boundp 'bwi_perception::PerceiveTabletopScene)
  (if (not (find-package "BWI_PERCEPTION"))
    (make-package "BWI_PERCEPTION"))
  (shadow 'PerceiveTabletopScene (find-package "BWI_PERCEPTION")))
(unless (find-package "BWI_PERCEPTION::PERCEIVETABLETOPSCENE")
  (make-package "BWI_PERCEPTION::PERCEIVETABLETOPSCENE"))
(unless (find-package "BWI_PERCEPTION::PERCEIVETABLETOPSCENEREQUEST")
  (make-package "BWI_PERCEPTION::PERCEIVETABLETOPSCENEREQUEST"))
(unless (find-package "BWI_PERCEPTION::PERCEIVETABLETOPSCENERESPONSE")
  (make-package "BWI_PERCEPTION::PERCEIVETABLETOPSCENERESPONSE"))

(in-package "ROS")



(if (not (find-package "SENSOR_MSGS"))
  (ros::roseus-add-msgs "sensor_msgs"))
(if (not (find-package "VISUALIZATION_MSGS"))
  (ros::roseus-add-msgs "visualization_msgs"))


(defclass bwi_perception::PerceiveTabletopSceneRequest
  :super ros::object
  :slots (_override_filter_z _min_z_value _max_z_value _apply_x_box_filter _x_min _x_max ))

(defmethod bwi_perception::PerceiveTabletopSceneRequest
  (:init
   (&key
    ((:override_filter_z __override_filter_z) nil)
    ((:min_z_value __min_z_value) 0.0)
    ((:max_z_value __max_z_value) 0.0)
    ((:apply_x_box_filter __apply_x_box_filter) nil)
    ((:x_min __x_min) 0.0)
    ((:x_max __x_max) 0.0)
    )
   (send-super :init)
   (setq _override_filter_z __override_filter_z)
   (setq _min_z_value (float __min_z_value))
   (setq _max_z_value (float __max_z_value))
   (setq _apply_x_box_filter __apply_x_box_filter)
   (setq _x_min (float __x_min))
   (setq _x_max (float __x_max))
   self)
  (:override_filter_z
   (&optional __override_filter_z)
   (if __override_filter_z (setq _override_filter_z __override_filter_z)) _override_filter_z)
  (:min_z_value
   (&optional __min_z_value)
   (if __min_z_value (setq _min_z_value __min_z_value)) _min_z_value)
  (:max_z_value
   (&optional __max_z_value)
   (if __max_z_value (setq _max_z_value __max_z_value)) _max_z_value)
  (:apply_x_box_filter
   (&optional __apply_x_box_filter)
   (if __apply_x_box_filter (setq _apply_x_box_filter __apply_x_box_filter)) _apply_x_box_filter)
  (:x_min
   (&optional __x_min)
   (if __x_min (setq _x_min __x_min)) _x_min)
  (:x_max
   (&optional __x_max)
   (if __x_max (setq _x_max __x_max)) _x_max)
  (:serialization-length
   ()
   (+
    ;; bool _override_filter_z
    1
    ;; float32 _min_z_value
    4
    ;; float32 _max_z_value
    4
    ;; bool _apply_x_box_filter
    1
    ;; float32 _x_min
    4
    ;; float32 _x_max
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _override_filter_z
       (if _override_filter_z (write-byte -1 s) (write-byte 0 s))
     ;; float32 _min_z_value
       (sys::poke _min_z_value (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _max_z_value
       (sys::poke _max_z_value (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; bool _apply_x_box_filter
       (if _apply_x_box_filter (write-byte -1 s) (write-byte 0 s))
     ;; float32 _x_min
       (sys::poke _x_min (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _x_max
       (sys::poke _x_max (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _override_filter_z
     (setq _override_filter_z (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; float32 _min_z_value
     (setq _min_z_value (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _max_z_value
     (setq _max_z_value (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; bool _apply_x_box_filter
     (setq _apply_x_box_filter (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; float32 _x_min
     (setq _x_min (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _x_max
     (setq _x_max (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(defclass bwi_perception::PerceiveTabletopSceneResponse
  :super ros::object
  :slots (_is_plane_found _cloud_plane _cloud_plane_coef _cloud_clusters _bounding_boxes _table_height ))

(defmethod bwi_perception::PerceiveTabletopSceneResponse
  (:init
   (&key
    ((:is_plane_found __is_plane_found) nil)
    ((:cloud_plane __cloud_plane) (instance sensor_msgs::PointCloud2 :init))
    ((:cloud_plane_coef __cloud_plane_coef) (make-array 4 :initial-element 0.0 :element-type :float))
    ((:cloud_clusters __cloud_clusters) (let (r) (dotimes (i 0) (push (instance sensor_msgs::PointCloud2 :init) r)) r))
    ((:bounding_boxes __bounding_boxes) (instance visualization_msgs::MarkerArray :init))
    ((:table_height __table_height) 0.0)
    )
   (send-super :init)
   (setq _is_plane_found __is_plane_found)
   (setq _cloud_plane __cloud_plane)
   (setq _cloud_plane_coef __cloud_plane_coef)
   (setq _cloud_clusters __cloud_clusters)
   (setq _bounding_boxes __bounding_boxes)
   (setq _table_height (float __table_height))
   self)
  (:is_plane_found
   (&optional __is_plane_found)
   (if __is_plane_found (setq _is_plane_found __is_plane_found)) _is_plane_found)
  (:cloud_plane
   (&rest __cloud_plane)
   (if (keywordp (car __cloud_plane))
       (send* _cloud_plane __cloud_plane)
     (progn
       (if __cloud_plane (setq _cloud_plane (car __cloud_plane)))
       _cloud_plane)))
  (:cloud_plane_coef
   (&optional __cloud_plane_coef)
   (if __cloud_plane_coef (setq _cloud_plane_coef __cloud_plane_coef)) _cloud_plane_coef)
  (:cloud_clusters
   (&rest __cloud_clusters)
   (if (keywordp (car __cloud_clusters))
       (send* _cloud_clusters __cloud_clusters)
     (progn
       (if __cloud_clusters (setq _cloud_clusters (car __cloud_clusters)))
       _cloud_clusters)))
  (:bounding_boxes
   (&rest __bounding_boxes)
   (if (keywordp (car __bounding_boxes))
       (send* _bounding_boxes __bounding_boxes)
     (progn
       (if __bounding_boxes (setq _bounding_boxes (car __bounding_boxes)))
       _bounding_boxes)))
  (:table_height
   (&optional __table_height)
   (if __table_height (setq _table_height __table_height)) _table_height)
  (:serialization-length
   ()
   (+
    ;; bool _is_plane_found
    1
    ;; sensor_msgs/PointCloud2 _cloud_plane
    (send _cloud_plane :serialization-length)
    ;; float32[4] _cloud_plane_coef
    (* 4    4)
    ;; sensor_msgs/PointCloud2[] _cloud_clusters
    (apply #'+ (send-all _cloud_clusters :serialization-length)) 4
    ;; visualization_msgs/MarkerArray _bounding_boxes
    (send _bounding_boxes :serialization-length)
    ;; float32 _table_height
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _is_plane_found
       (if _is_plane_found (write-byte -1 s) (write-byte 0 s))
     ;; sensor_msgs/PointCloud2 _cloud_plane
       (send _cloud_plane :serialize s)
     ;; float32[4] _cloud_plane_coef
     (dotimes (i 4)
       (sys::poke (elt _cloud_plane_coef i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;; sensor_msgs/PointCloud2[] _cloud_clusters
     (write-long (length _cloud_clusters) s)
     (dolist (elem _cloud_clusters)
       (send elem :serialize s)
       )
     ;; visualization_msgs/MarkerArray _bounding_boxes
       (send _bounding_boxes :serialize s)
     ;; float32 _table_height
       (sys::poke _table_height (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _is_plane_found
     (setq _is_plane_found (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; sensor_msgs/PointCloud2 _cloud_plane
     (send _cloud_plane :deserialize buf ptr-) (incf ptr- (send _cloud_plane :serialization-length))
   ;; float32[4] _cloud_plane_coef
   (dotimes (i (length _cloud_plane_coef))
     (setf (elt _cloud_plane_coef i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     )
   ;; sensor_msgs/PointCloud2[] _cloud_clusters
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _cloud_clusters (let (r) (dotimes (i n) (push (instance sensor_msgs::PointCloud2 :init) r)) r))
     (dolist (elem- _cloud_clusters)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; visualization_msgs/MarkerArray _bounding_boxes
     (send _bounding_boxes :deserialize buf ptr-) (incf ptr- (send _bounding_boxes :serialization-length))
   ;; float32 _table_height
     (setq _table_height (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(defclass bwi_perception::PerceiveTabletopScene
  :super ros::object
  :slots ())

(setf (get bwi_perception::PerceiveTabletopScene :md5sum-) "162567af3b2a6902ed12ffdefcc8587f")
(setf (get bwi_perception::PerceiveTabletopScene :datatype-) "bwi_perception/PerceiveTabletopScene")
(setf (get bwi_perception::PerceiveTabletopScene :request) bwi_perception::PerceiveTabletopSceneRequest)
(setf (get bwi_perception::PerceiveTabletopScene :response) bwi_perception::PerceiveTabletopSceneResponse)

(defmethod bwi_perception::PerceiveTabletopSceneRequest
  (:response () (instance bwi_perception::PerceiveTabletopSceneResponse :init)))

(setf (get bwi_perception::PerceiveTabletopSceneRequest :md5sum-) "162567af3b2a6902ed12ffdefcc8587f")
(setf (get bwi_perception::PerceiveTabletopSceneRequest :datatype-) "bwi_perception/PerceiveTabletopSceneRequest")
(setf (get bwi_perception::PerceiveTabletopSceneRequest :definition-)
      "# if you want to override the default z filter
bool override_filter_z
float32 min_z_value
float32 max_z_value

# if you want to apply an x filter (i.e., side to side)
bool apply_x_box_filter
float32 x_min
float32 x_max
---
bool is_plane_found
sensor_msgs/PointCloud2 cloud_plane
float32[4] cloud_plane_coef
sensor_msgs/PointCloud2[] cloud_clusters
visualization_msgs/MarkerArray bounding_boxes
float32 table_height


================================================================================
MSG: sensor_msgs/PointCloud2
# This message holds a collection of N-dimensional points, which may
# contain additional information such as normals, intensity, etc. The
# point data is stored as a binary blob, its layout described by the
# contents of the \"fields\" array.

# The point cloud data may be organized 2d (image-like) or 1d
# (unordered). Point clouds organized as 2d images may be produced by
# camera depth sensors such as stereo or time-of-flight.

# Time of sensor data acquisition, and the coordinate frame ID (for 3d
# points).
Header header

# 2D structure of the point cloud. If the cloud is unordered, height is
# 1 and width is the length of the point cloud.
uint32 height
uint32 width

# Describes the channels and their layout in the binary data blob.
PointField[] fields

bool    is_bigendian # Is this data bigendian?
uint32  point_step   # Length of a point in bytes
uint32  row_step     # Length of a row in bytes
uint8[] data         # Actual point data, size is (row_step*height)

bool is_dense        # True if there are no invalid points

================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
string frame_id

================================================================================
MSG: sensor_msgs/PointField
# This message holds the description of one point entry in the
# PointCloud2 message format.
uint8 INT8    = 1
uint8 UINT8   = 2
uint8 INT16   = 3
uint8 UINT16  = 4
uint8 INT32   = 5
uint8 UINT32  = 6
uint8 FLOAT32 = 7
uint8 FLOAT64 = 8

string name      # Name of field
uint32 offset    # Offset from start of point struct
uint8  datatype  # Datatype enumeration, see above
uint32 count     # How many elements in the field

================================================================================
MSG: visualization_msgs/MarkerArray
Marker[] markers

================================================================================
MSG: visualization_msgs/Marker
# See http://www.ros.org/wiki/rviz/DisplayTypes/Marker and http://www.ros.org/wiki/rviz/Tutorials/Markers%3A%20Basic%20Shapes for more information on using this message with rviz

uint8 ARROW=0
uint8 CUBE=1
uint8 SPHERE=2
uint8 CYLINDER=3
uint8 LINE_STRIP=4
uint8 LINE_LIST=5
uint8 CUBE_LIST=6
uint8 SPHERE_LIST=7
uint8 POINTS=8
uint8 TEXT_VIEW_FACING=9
uint8 MESH_RESOURCE=10
uint8 TRIANGLE_LIST=11

uint8 ADD=0
uint8 MODIFY=0
uint8 DELETE=2
uint8 DELETEALL=3

Header header                        # header for time/frame information
string ns                            # Namespace to place this object in... used in conjunction with id to create a unique name for the object
int32 id 		                         # object ID useful in conjunction with the namespace for manipulating and deleting the object later
int32 type 		                       # Type of object
int32 action 	                       # 0 add/modify an object, 1 (deprecated), 2 deletes an object, 3 deletes all objects
geometry_msgs/Pose pose                 # Pose of the object
geometry_msgs/Vector3 scale             # Scale of the object 1,1,1 means default (usually 1 meter square)
std_msgs/ColorRGBA color             # Color [0.0-1.0]
duration lifetime                    # How long the object should last before being automatically deleted.  0 means forever
bool frame_locked                    # If this marker should be frame-locked, i.e. retransformed into its frame every timestep

#Only used if the type specified has some use for them (eg. POINTS, LINE_STRIP, ...)
geometry_msgs/Point[] points
#Only used if the type specified has some use for them (eg. POINTS, LINE_STRIP, ...)
#number of colors must either be 0 or equal to the number of points
#NOTE: alpha is not yet used
std_msgs/ColorRGBA[] colors

# NOTE: only used for text markers
string text

# NOTE: only used for MESH_RESOURCE markers
string mesh_resource
bool mesh_use_embedded_materials

================================================================================
MSG: geometry_msgs/Pose
# A representation of pose in free space, composed of position and orientation. 
Point position
Quaternion orientation

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

================================================================================
MSG: geometry_msgs/Quaternion
# This represents an orientation in free space in quaternion form.

float64 x
float64 y
float64 z
float64 w

================================================================================
MSG: geometry_msgs/Vector3
# This represents a vector in free space. 
# It is only meant to represent a direction. Therefore, it does not
# make sense to apply a translation to it (e.g., when applying a 
# generic rigid transformation to a Vector3, tf2 will only apply the
# rotation). If you want your data to be translatable too, use the
# geometry_msgs/Point message instead.

float64 x
float64 y
float64 z
================================================================================
MSG: std_msgs/ColorRGBA
float32 r
float32 g
float32 b
float32 a
")

(setf (get bwi_perception::PerceiveTabletopSceneResponse :md5sum-) "162567af3b2a6902ed12ffdefcc8587f")
(setf (get bwi_perception::PerceiveTabletopSceneResponse :datatype-) "bwi_perception/PerceiveTabletopSceneResponse")
(setf (get bwi_perception::PerceiveTabletopSceneResponse :definition-)
      "# if you want to override the default z filter
bool override_filter_z
float32 min_z_value
float32 max_z_value

# if you want to apply an x filter (i.e., side to side)
bool apply_x_box_filter
float32 x_min
float32 x_max
---
bool is_plane_found
sensor_msgs/PointCloud2 cloud_plane
float32[4] cloud_plane_coef
sensor_msgs/PointCloud2[] cloud_clusters
visualization_msgs/MarkerArray bounding_boxes
float32 table_height


================================================================================
MSG: sensor_msgs/PointCloud2
# This message holds a collection of N-dimensional points, which may
# contain additional information such as normals, intensity, etc. The
# point data is stored as a binary blob, its layout described by the
# contents of the \"fields\" array.

# The point cloud data may be organized 2d (image-like) or 1d
# (unordered). Point clouds organized as 2d images may be produced by
# camera depth sensors such as stereo or time-of-flight.

# Time of sensor data acquisition, and the coordinate frame ID (for 3d
# points).
Header header

# 2D structure of the point cloud. If the cloud is unordered, height is
# 1 and width is the length of the point cloud.
uint32 height
uint32 width

# Describes the channels and their layout in the binary data blob.
PointField[] fields

bool    is_bigendian # Is this data bigendian?
uint32  point_step   # Length of a point in bytes
uint32  row_step     # Length of a row in bytes
uint8[] data         # Actual point data, size is (row_step*height)

bool is_dense        # True if there are no invalid points

================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
string frame_id

================================================================================
MSG: sensor_msgs/PointField
# This message holds the description of one point entry in the
# PointCloud2 message format.
uint8 INT8    = 1
uint8 UINT8   = 2
uint8 INT16   = 3
uint8 UINT16  = 4
uint8 INT32   = 5
uint8 UINT32  = 6
uint8 FLOAT32 = 7
uint8 FLOAT64 = 8

string name      # Name of field
uint32 offset    # Offset from start of point struct
uint8  datatype  # Datatype enumeration, see above
uint32 count     # How many elements in the field

================================================================================
MSG: visualization_msgs/MarkerArray
Marker[] markers

================================================================================
MSG: visualization_msgs/Marker
# See http://www.ros.org/wiki/rviz/DisplayTypes/Marker and http://www.ros.org/wiki/rviz/Tutorials/Markers%3A%20Basic%20Shapes for more information on using this message with rviz

uint8 ARROW=0
uint8 CUBE=1
uint8 SPHERE=2
uint8 CYLINDER=3
uint8 LINE_STRIP=4
uint8 LINE_LIST=5
uint8 CUBE_LIST=6
uint8 SPHERE_LIST=7
uint8 POINTS=8
uint8 TEXT_VIEW_FACING=9
uint8 MESH_RESOURCE=10
uint8 TRIANGLE_LIST=11

uint8 ADD=0
uint8 MODIFY=0
uint8 DELETE=2
uint8 DELETEALL=3

Header header                        # header for time/frame information
string ns                            # Namespace to place this object in... used in conjunction with id to create a unique name for the object
int32 id 		                         # object ID useful in conjunction with the namespace for manipulating and deleting the object later
int32 type 		                       # Type of object
int32 action 	                       # 0 add/modify an object, 1 (deprecated), 2 deletes an object, 3 deletes all objects
geometry_msgs/Pose pose                 # Pose of the object
geometry_msgs/Vector3 scale             # Scale of the object 1,1,1 means default (usually 1 meter square)
std_msgs/ColorRGBA color             # Color [0.0-1.0]
duration lifetime                    # How long the object should last before being automatically deleted.  0 means forever
bool frame_locked                    # If this marker should be frame-locked, i.e. retransformed into its frame every timestep

#Only used if the type specified has some use for them (eg. POINTS, LINE_STRIP, ...)
geometry_msgs/Point[] points
#Only used if the type specified has some use for them (eg. POINTS, LINE_STRIP, ...)
#number of colors must either be 0 or equal to the number of points
#NOTE: alpha is not yet used
std_msgs/ColorRGBA[] colors

# NOTE: only used for text markers
string text

# NOTE: only used for MESH_RESOURCE markers
string mesh_resource
bool mesh_use_embedded_materials

================================================================================
MSG: geometry_msgs/Pose
# A representation of pose in free space, composed of position and orientation. 
Point position
Quaternion orientation

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

================================================================================
MSG: geometry_msgs/Quaternion
# This represents an orientation in free space in quaternion form.

float64 x
float64 y
float64 z
float64 w

================================================================================
MSG: geometry_msgs/Vector3
# This represents a vector in free space. 
# It is only meant to represent a direction. Therefore, it does not
# make sense to apply a translation to it (e.g., when applying a 
# generic rigid transformation to a Vector3, tf2 will only apply the
# rotation). If you want your data to be translatable too, use the
# geometry_msgs/Point message instead.

float64 x
float64 y
float64 z
================================================================================
MSG: std_msgs/ColorRGBA
float32 r
float32 g
float32 b
float32 a
")



(provide :bwi_perception/PerceiveTabletopScene "162567af3b2a6902ed12ffdefcc8587f")


