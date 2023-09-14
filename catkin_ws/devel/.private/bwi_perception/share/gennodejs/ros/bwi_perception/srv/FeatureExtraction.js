// Auto-generated. Do not edit!

// (in-package bwi_perception.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let sensor_msgs = _finder('sensor_msgs');

//-----------------------------------------------------------


//-----------------------------------------------------------

class FeatureExtractionRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.cloud = null;
      this.params_int = null;
    }
    else {
      if (initObj.hasOwnProperty('cloud')) {
        this.cloud = initObj.cloud
      }
      else {
        this.cloud = new sensor_msgs.msg.PointCloud2();
      }
      if (initObj.hasOwnProperty('params_int')) {
        this.params_int = initObj.params_int
      }
      else {
        this.params_int = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type FeatureExtractionRequest
    // Serialize message field [cloud]
    bufferOffset = sensor_msgs.msg.PointCloud2.serialize(obj.cloud, buffer, bufferOffset);
    // Serialize message field [params_int]
    bufferOffset = _arraySerializer.int8(obj.params_int, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type FeatureExtractionRequest
    let len;
    let data = new FeatureExtractionRequest(null);
    // Deserialize message field [cloud]
    data.cloud = sensor_msgs.msg.PointCloud2.deserialize(buffer, bufferOffset);
    // Deserialize message field [params_int]
    data.params_int = _arrayDeserializer.int8(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += sensor_msgs.msg.PointCloud2.getMessageSize(object.cloud);
    length += object.params_int.length;
    return length + 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'bwi_perception/FeatureExtractionRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'c8417920731f00ba50951cdad4569f94';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    sensor_msgs/PointCloud2 cloud
    int8[] params_int
    
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
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new FeatureExtractionRequest(null);
    if (msg.cloud !== undefined) {
      resolved.cloud = sensor_msgs.msg.PointCloud2.Resolve(msg.cloud)
    }
    else {
      resolved.cloud = new sensor_msgs.msg.PointCloud2()
    }

    if (msg.params_int !== undefined) {
      resolved.params_int = msg.params_int;
    }
    else {
      resolved.params_int = []
    }

    return resolved;
    }
};

class FeatureExtractionResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.feature_vector = null;
    }
    else {
      if (initObj.hasOwnProperty('feature_vector')) {
        this.feature_vector = initObj.feature_vector
      }
      else {
        this.feature_vector = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type FeatureExtractionResponse
    // Serialize message field [feature_vector]
    bufferOffset = _arraySerializer.float64(obj.feature_vector, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type FeatureExtractionResponse
    let len;
    let data = new FeatureExtractionResponse(null);
    // Deserialize message field [feature_vector]
    data.feature_vector = _arrayDeserializer.float64(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 8 * object.feature_vector.length;
    return length + 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'bwi_perception/FeatureExtractionResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'ffcbdb0b665cfd4f4e709bdcb88bbcb9';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float64[] feature_vector
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new FeatureExtractionResponse(null);
    if (msg.feature_vector !== undefined) {
      resolved.feature_vector = msg.feature_vector;
    }
    else {
      resolved.feature_vector = []
    }

    return resolved;
    }
};

module.exports = {
  Request: FeatureExtractionRequest,
  Response: FeatureExtractionResponse,
  md5sum() { return 'd1e05f2e0627a4123131d2576998f66b'; },
  datatype() { return 'bwi_perception/FeatureExtraction'; }
};
