// Auto-generated. Do not edit!

// (in-package bwi_perception.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

let sensor_msgs = _finder('sensor_msgs');
let visualization_msgs = _finder('visualization_msgs');

//-----------------------------------------------------------

class PerceiveTabletopSceneRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.override_filter_z = null;
      this.min_z_value = null;
      this.max_z_value = null;
      this.apply_x_box_filter = null;
      this.x_min = null;
      this.x_max = null;
    }
    else {
      if (initObj.hasOwnProperty('override_filter_z')) {
        this.override_filter_z = initObj.override_filter_z
      }
      else {
        this.override_filter_z = false;
      }
      if (initObj.hasOwnProperty('min_z_value')) {
        this.min_z_value = initObj.min_z_value
      }
      else {
        this.min_z_value = 0.0;
      }
      if (initObj.hasOwnProperty('max_z_value')) {
        this.max_z_value = initObj.max_z_value
      }
      else {
        this.max_z_value = 0.0;
      }
      if (initObj.hasOwnProperty('apply_x_box_filter')) {
        this.apply_x_box_filter = initObj.apply_x_box_filter
      }
      else {
        this.apply_x_box_filter = false;
      }
      if (initObj.hasOwnProperty('x_min')) {
        this.x_min = initObj.x_min
      }
      else {
        this.x_min = 0.0;
      }
      if (initObj.hasOwnProperty('x_max')) {
        this.x_max = initObj.x_max
      }
      else {
        this.x_max = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type PerceiveTabletopSceneRequest
    // Serialize message field [override_filter_z]
    bufferOffset = _serializer.bool(obj.override_filter_z, buffer, bufferOffset);
    // Serialize message field [min_z_value]
    bufferOffset = _serializer.float32(obj.min_z_value, buffer, bufferOffset);
    // Serialize message field [max_z_value]
    bufferOffset = _serializer.float32(obj.max_z_value, buffer, bufferOffset);
    // Serialize message field [apply_x_box_filter]
    bufferOffset = _serializer.bool(obj.apply_x_box_filter, buffer, bufferOffset);
    // Serialize message field [x_min]
    bufferOffset = _serializer.float32(obj.x_min, buffer, bufferOffset);
    // Serialize message field [x_max]
    bufferOffset = _serializer.float32(obj.x_max, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type PerceiveTabletopSceneRequest
    let len;
    let data = new PerceiveTabletopSceneRequest(null);
    // Deserialize message field [override_filter_z]
    data.override_filter_z = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [min_z_value]
    data.min_z_value = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [max_z_value]
    data.max_z_value = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [apply_x_box_filter]
    data.apply_x_box_filter = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [x_min]
    data.x_min = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [x_max]
    data.x_max = _deserializer.float32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 18;
  }

  static datatype() {
    // Returns string type for a service object
    return 'bwi_perception/PerceiveTabletopSceneRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '4797499a3ce6a9cd6eae6e58945e1c3c';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # if you want to override the default z filter
    bool override_filter_z
    float32 min_z_value
    float32 max_z_value
    
    # if you want to apply an x filter (i.e., side to side)
    bool apply_x_box_filter
    float32 x_min
    float32 x_max
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new PerceiveTabletopSceneRequest(null);
    if (msg.override_filter_z !== undefined) {
      resolved.override_filter_z = msg.override_filter_z;
    }
    else {
      resolved.override_filter_z = false
    }

    if (msg.min_z_value !== undefined) {
      resolved.min_z_value = msg.min_z_value;
    }
    else {
      resolved.min_z_value = 0.0
    }

    if (msg.max_z_value !== undefined) {
      resolved.max_z_value = msg.max_z_value;
    }
    else {
      resolved.max_z_value = 0.0
    }

    if (msg.apply_x_box_filter !== undefined) {
      resolved.apply_x_box_filter = msg.apply_x_box_filter;
    }
    else {
      resolved.apply_x_box_filter = false
    }

    if (msg.x_min !== undefined) {
      resolved.x_min = msg.x_min;
    }
    else {
      resolved.x_min = 0.0
    }

    if (msg.x_max !== undefined) {
      resolved.x_max = msg.x_max;
    }
    else {
      resolved.x_max = 0.0
    }

    return resolved;
    }
};

class PerceiveTabletopSceneResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.is_plane_found = null;
      this.cloud_plane = null;
      this.cloud_plane_coef = null;
      this.cloud_clusters = null;
      this.bounding_boxes = null;
      this.table_height = null;
    }
    else {
      if (initObj.hasOwnProperty('is_plane_found')) {
        this.is_plane_found = initObj.is_plane_found
      }
      else {
        this.is_plane_found = false;
      }
      if (initObj.hasOwnProperty('cloud_plane')) {
        this.cloud_plane = initObj.cloud_plane
      }
      else {
        this.cloud_plane = new sensor_msgs.msg.PointCloud2();
      }
      if (initObj.hasOwnProperty('cloud_plane_coef')) {
        this.cloud_plane_coef = initObj.cloud_plane_coef
      }
      else {
        this.cloud_plane_coef = new Array(4).fill(0);
      }
      if (initObj.hasOwnProperty('cloud_clusters')) {
        this.cloud_clusters = initObj.cloud_clusters
      }
      else {
        this.cloud_clusters = [];
      }
      if (initObj.hasOwnProperty('bounding_boxes')) {
        this.bounding_boxes = initObj.bounding_boxes
      }
      else {
        this.bounding_boxes = new visualization_msgs.msg.MarkerArray();
      }
      if (initObj.hasOwnProperty('table_height')) {
        this.table_height = initObj.table_height
      }
      else {
        this.table_height = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type PerceiveTabletopSceneResponse
    // Serialize message field [is_plane_found]
    bufferOffset = _serializer.bool(obj.is_plane_found, buffer, bufferOffset);
    // Serialize message field [cloud_plane]
    bufferOffset = sensor_msgs.msg.PointCloud2.serialize(obj.cloud_plane, buffer, bufferOffset);
    // Check that the constant length array field [cloud_plane_coef] has the right length
    if (obj.cloud_plane_coef.length !== 4) {
      throw new Error('Unable to serialize array field cloud_plane_coef - length must be 4')
    }
    // Serialize message field [cloud_plane_coef]
    bufferOffset = _arraySerializer.float32(obj.cloud_plane_coef, buffer, bufferOffset, 4);
    // Serialize message field [cloud_clusters]
    // Serialize the length for message field [cloud_clusters]
    bufferOffset = _serializer.uint32(obj.cloud_clusters.length, buffer, bufferOffset);
    obj.cloud_clusters.forEach((val) => {
      bufferOffset = sensor_msgs.msg.PointCloud2.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [bounding_boxes]
    bufferOffset = visualization_msgs.msg.MarkerArray.serialize(obj.bounding_boxes, buffer, bufferOffset);
    // Serialize message field [table_height]
    bufferOffset = _serializer.float32(obj.table_height, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type PerceiveTabletopSceneResponse
    let len;
    let data = new PerceiveTabletopSceneResponse(null);
    // Deserialize message field [is_plane_found]
    data.is_plane_found = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [cloud_plane]
    data.cloud_plane = sensor_msgs.msg.PointCloud2.deserialize(buffer, bufferOffset);
    // Deserialize message field [cloud_plane_coef]
    data.cloud_plane_coef = _arrayDeserializer.float32(buffer, bufferOffset, 4)
    // Deserialize message field [cloud_clusters]
    // Deserialize array length for message field [cloud_clusters]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.cloud_clusters = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.cloud_clusters[i] = sensor_msgs.msg.PointCloud2.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [bounding_boxes]
    data.bounding_boxes = visualization_msgs.msg.MarkerArray.deserialize(buffer, bufferOffset);
    // Deserialize message field [table_height]
    data.table_height = _deserializer.float32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += sensor_msgs.msg.PointCloud2.getMessageSize(object.cloud_plane);
    object.cloud_clusters.forEach((val) => {
      length += sensor_msgs.msg.PointCloud2.getMessageSize(val);
    });
    length += visualization_msgs.msg.MarkerArray.getMessageSize(object.bounding_boxes);
    return length + 25;
  }

  static datatype() {
    // Returns string type for a service object
    return 'bwi_perception/PerceiveTabletopSceneResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '33616880e99902d9ddcb4732e1b72c38';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
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
    # contents of the "fields" array.
    
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
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new PerceiveTabletopSceneResponse(null);
    if (msg.is_plane_found !== undefined) {
      resolved.is_plane_found = msg.is_plane_found;
    }
    else {
      resolved.is_plane_found = false
    }

    if (msg.cloud_plane !== undefined) {
      resolved.cloud_plane = sensor_msgs.msg.PointCloud2.Resolve(msg.cloud_plane)
    }
    else {
      resolved.cloud_plane = new sensor_msgs.msg.PointCloud2()
    }

    if (msg.cloud_plane_coef !== undefined) {
      resolved.cloud_plane_coef = msg.cloud_plane_coef;
    }
    else {
      resolved.cloud_plane_coef = new Array(4).fill(0)
    }

    if (msg.cloud_clusters !== undefined) {
      resolved.cloud_clusters = new Array(msg.cloud_clusters.length);
      for (let i = 0; i < resolved.cloud_clusters.length; ++i) {
        resolved.cloud_clusters[i] = sensor_msgs.msg.PointCloud2.Resolve(msg.cloud_clusters[i]);
      }
    }
    else {
      resolved.cloud_clusters = []
    }

    if (msg.bounding_boxes !== undefined) {
      resolved.bounding_boxes = visualization_msgs.msg.MarkerArray.Resolve(msg.bounding_boxes)
    }
    else {
      resolved.bounding_boxes = new visualization_msgs.msg.MarkerArray()
    }

    if (msg.table_height !== undefined) {
      resolved.table_height = msg.table_height;
    }
    else {
      resolved.table_height = 0.0
    }

    return resolved;
    }
};

module.exports = {
  Request: PerceiveTabletopSceneRequest,
  Response: PerceiveTabletopSceneResponse,
  md5sum() { return '162567af3b2a6902ed12ffdefcc8587f'; },
  datatype() { return 'bwi_perception/PerceiveTabletopScene'; }
};
