// Auto-generated. Do not edit!

// (in-package bwi_msgs.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

let geometry_msgs = _finder('geometry_msgs');

//-----------------------------------------------------------

class ResolveChangeFloorRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.new_room = null;
      this.facing_door = null;
    }
    else {
      if (initObj.hasOwnProperty('new_room')) {
        this.new_room = initObj.new_room
      }
      else {
        this.new_room = '';
      }
      if (initObj.hasOwnProperty('facing_door')) {
        this.facing_door = initObj.facing_door
      }
      else {
        this.facing_door = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ResolveChangeFloorRequest
    // Serialize message field [new_room]
    bufferOffset = _serializer.string(obj.new_room, buffer, bufferOffset);
    // Serialize message field [facing_door]
    bufferOffset = _serializer.string(obj.facing_door, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ResolveChangeFloorRequest
    let len;
    let data = new ResolveChangeFloorRequest(null);
    // Deserialize message field [new_room]
    data.new_room = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [facing_door]
    data.facing_door = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.new_room.length;
    length += object.facing_door.length;
    return length + 8;
  }

  static datatype() {
    // Returns string type for a service object
    return 'bwi_msgs/ResolveChangeFloorRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '772ff4012bb9fe3f3b88e0eae51cb09a';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string new_room
    string facing_door
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new ResolveChangeFloorRequest(null);
    if (msg.new_room !== undefined) {
      resolved.new_room = msg.new_room;
    }
    else {
      resolved.new_room = ''
    }

    if (msg.facing_door !== undefined) {
      resolved.facing_door = msg.facing_door;
    }
    else {
      resolved.facing_door = ''
    }

    return resolved;
    }
};

class ResolveChangeFloorResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.floor_name = null;
      this.pose = null;
      this.success = null;
      this.error_message = null;
    }
    else {
      if (initObj.hasOwnProperty('floor_name')) {
        this.floor_name = initObj.floor_name
      }
      else {
        this.floor_name = '';
      }
      if (initObj.hasOwnProperty('pose')) {
        this.pose = initObj.pose
      }
      else {
        this.pose = new geometry_msgs.msg.PoseWithCovarianceStamped();
      }
      if (initObj.hasOwnProperty('success')) {
        this.success = initObj.success
      }
      else {
        this.success = false;
      }
      if (initObj.hasOwnProperty('error_message')) {
        this.error_message = initObj.error_message
      }
      else {
        this.error_message = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ResolveChangeFloorResponse
    // Serialize message field [floor_name]
    bufferOffset = _serializer.string(obj.floor_name, buffer, bufferOffset);
    // Serialize message field [pose]
    bufferOffset = geometry_msgs.msg.PoseWithCovarianceStamped.serialize(obj.pose, buffer, bufferOffset);
    // Serialize message field [success]
    bufferOffset = _serializer.bool(obj.success, buffer, bufferOffset);
    // Serialize message field [error_message]
    bufferOffset = _serializer.string(obj.error_message, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ResolveChangeFloorResponse
    let len;
    let data = new ResolveChangeFloorResponse(null);
    // Deserialize message field [floor_name]
    data.floor_name = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [pose]
    data.pose = geometry_msgs.msg.PoseWithCovarianceStamped.deserialize(buffer, bufferOffset);
    // Deserialize message field [success]
    data.success = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [error_message]
    data.error_message = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.floor_name.length;
    length += geometry_msgs.msg.PoseWithCovarianceStamped.getMessageSize(object.pose);
    length += object.error_message.length;
    return length + 9;
  }

  static datatype() {
    // Returns string type for a service object
    return 'bwi_msgs/ResolveChangeFloorResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'fd748bf9eec6b1b18bfa80fe9bc3674a';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string floor_name
    geometry_msgs/PoseWithCovarianceStamped pose
    bool success
    string error_message
    
    
    ================================================================================
    MSG: geometry_msgs/PoseWithCovarianceStamped
    # This expresses an estimated pose with a reference coordinate frame and timestamp
    
    Header header
    PoseWithCovariance pose
    
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
    MSG: geometry_msgs/PoseWithCovariance
    # This represents a pose in free space with uncertainty.
    
    Pose pose
    
    # Row-major representation of the 6x6 covariance matrix
    # The orientation parameters use a fixed-axis representation.
    # In order, the parameters are:
    # (x, y, z, rotation about X axis, rotation about Y axis, rotation about Z axis)
    float64[36] covariance
    
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
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new ResolveChangeFloorResponse(null);
    if (msg.floor_name !== undefined) {
      resolved.floor_name = msg.floor_name;
    }
    else {
      resolved.floor_name = ''
    }

    if (msg.pose !== undefined) {
      resolved.pose = geometry_msgs.msg.PoseWithCovarianceStamped.Resolve(msg.pose)
    }
    else {
      resolved.pose = new geometry_msgs.msg.PoseWithCovarianceStamped()
    }

    if (msg.success !== undefined) {
      resolved.success = msg.success;
    }
    else {
      resolved.success = false
    }

    if (msg.error_message !== undefined) {
      resolved.error_message = msg.error_message;
    }
    else {
      resolved.error_message = ''
    }

    return resolved;
    }
};

module.exports = {
  Request: ResolveChangeFloorRequest,
  Response: ResolveChangeFloorResponse,
  md5sum() { return 'd565d7d5ff83ae40abf53092bf5912c5'; },
  datatype() { return 'bwi_msgs/ResolveChangeFloor'; }
};
