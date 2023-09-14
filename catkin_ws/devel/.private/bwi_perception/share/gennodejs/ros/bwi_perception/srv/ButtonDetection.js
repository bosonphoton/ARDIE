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

//-----------------------------------------------------------

class ButtonDetectionRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
    }
    else {
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ButtonDetectionRequest
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ButtonDetectionRequest
    let len;
    let data = new ButtonDetectionRequest(null);
    return data;
  }

  static getMessageSize(object) {
    return 0;
  }

  static datatype() {
    // Returns string type for a service object
    return 'bwi_perception/ButtonDetectionRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'd41d8cd98f00b204e9800998ecf8427e';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new ButtonDetectionRequest(null);
    return resolved;
    }
};

class ButtonDetectionResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.button_found = null;
      this.cloud_button = null;
    }
    else {
      if (initObj.hasOwnProperty('button_found')) {
        this.button_found = initObj.button_found
      }
      else {
        this.button_found = false;
      }
      if (initObj.hasOwnProperty('cloud_button')) {
        this.cloud_button = initObj.cloud_button
      }
      else {
        this.cloud_button = new sensor_msgs.msg.PointCloud2();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ButtonDetectionResponse
    // Serialize message field [button_found]
    bufferOffset = _serializer.bool(obj.button_found, buffer, bufferOffset);
    // Serialize message field [cloud_button]
    bufferOffset = sensor_msgs.msg.PointCloud2.serialize(obj.cloud_button, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ButtonDetectionResponse
    let len;
    let data = new ButtonDetectionResponse(null);
    // Deserialize message field [button_found]
    data.button_found = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [cloud_button]
    data.cloud_button = sensor_msgs.msg.PointCloud2.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += sensor_msgs.msg.PointCloud2.getMessageSize(object.cloud_button);
    return length + 1;
  }

  static datatype() {
    // Returns string type for a service object
    return 'bwi_perception/ButtonDetectionResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'db92d35083261fda0bc93a2e246a3490';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    bool button_found
    sensor_msgs/PointCloud2 cloud_button
    
    
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
    const resolved = new ButtonDetectionResponse(null);
    if (msg.button_found !== undefined) {
      resolved.button_found = msg.button_found;
    }
    else {
      resolved.button_found = false
    }

    if (msg.cloud_button !== undefined) {
      resolved.cloud_button = sensor_msgs.msg.PointCloud2.Resolve(msg.cloud_button)
    }
    else {
      resolved.cloud_button = new sensor_msgs.msg.PointCloud2()
    }

    return resolved;
    }
};

module.exports = {
  Request: ButtonDetectionRequest,
  Response: ButtonDetectionResponse,
  md5sum() { return 'db92d35083261fda0bc93a2e246a3490'; },
  datatype() { return 'bwi_perception/ButtonDetection'; }
};
