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

class SetObstaclesRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.clouds = null;
    }
    else {
      if (initObj.hasOwnProperty('clouds')) {
        this.clouds = initObj.clouds
      }
      else {
        this.clouds = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type SetObstaclesRequest
    // Serialize message field [clouds]
    // Serialize the length for message field [clouds]
    bufferOffset = _serializer.uint32(obj.clouds.length, buffer, bufferOffset);
    obj.clouds.forEach((val) => {
      bufferOffset = sensor_msgs.msg.PointCloud2.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SetObstaclesRequest
    let len;
    let data = new SetObstaclesRequest(null);
    // Deserialize message field [clouds]
    // Deserialize array length for message field [clouds]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.clouds = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.clouds[i] = sensor_msgs.msg.PointCloud2.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    object.clouds.forEach((val) => {
      length += sensor_msgs.msg.PointCloud2.getMessageSize(val);
    });
    return length + 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'bwi_perception/SetObstaclesRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'a1ae9b373e3c6d99d77b25f8b07122a1';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    sensor_msgs/PointCloud2[] clouds
    
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
    const resolved = new SetObstaclesRequest(null);
    if (msg.clouds !== undefined) {
      resolved.clouds = new Array(msg.clouds.length);
      for (let i = 0; i < resolved.clouds.length; ++i) {
        resolved.clouds[i] = sensor_msgs.msg.PointCloud2.Resolve(msg.clouds[i]);
      }
    }
    else {
      resolved.clouds = []
    }

    return resolved;
    }
};

class SetObstaclesResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.response = null;
    }
    else {
      if (initObj.hasOwnProperty('response')) {
        this.response = initObj.response
      }
      else {
        this.response = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type SetObstaclesResponse
    // Serialize message field [response]
    bufferOffset = _serializer.bool(obj.response, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SetObstaclesResponse
    let len;
    let data = new SetObstaclesResponse(null);
    // Deserialize message field [response]
    data.response = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a service object
    return 'bwi_perception/SetObstaclesResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '003b81baa95ab323fc1ddf3c7d0bee81';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    bool response
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new SetObstaclesResponse(null);
    if (msg.response !== undefined) {
      resolved.response = msg.response;
    }
    else {
      resolved.response = false
    }

    return resolved;
    }
};

module.exports = {
  Request: SetObstaclesRequest,
  Response: SetObstaclesResponse,
  md5sum() { return 'b40bb4c28dbdff808de1bbeb0ba75c7d'; },
  datatype() { return 'bwi_perception/SetObstacles'; }
};
