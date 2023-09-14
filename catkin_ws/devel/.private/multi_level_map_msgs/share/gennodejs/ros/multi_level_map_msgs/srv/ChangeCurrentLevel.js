// Auto-generated. Do not edit!

// (in-package multi_level_map_msgs.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let geometry_msgs = _finder('geometry_msgs');

//-----------------------------------------------------------


//-----------------------------------------------------------

class ChangeCurrentLevelRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.new_level_id = null;
      this.publish_initial_pose = null;
      this.initial_pose = null;
    }
    else {
      if (initObj.hasOwnProperty('new_level_id')) {
        this.new_level_id = initObj.new_level_id
      }
      else {
        this.new_level_id = '';
      }
      if (initObj.hasOwnProperty('publish_initial_pose')) {
        this.publish_initial_pose = initObj.publish_initial_pose
      }
      else {
        this.publish_initial_pose = false;
      }
      if (initObj.hasOwnProperty('initial_pose')) {
        this.initial_pose = initObj.initial_pose
      }
      else {
        this.initial_pose = new geometry_msgs.msg.PoseWithCovarianceStamped();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ChangeCurrentLevelRequest
    // Serialize message field [new_level_id]
    bufferOffset = _serializer.string(obj.new_level_id, buffer, bufferOffset);
    // Serialize message field [publish_initial_pose]
    bufferOffset = _serializer.bool(obj.publish_initial_pose, buffer, bufferOffset);
    // Serialize message field [initial_pose]
    bufferOffset = geometry_msgs.msg.PoseWithCovarianceStamped.serialize(obj.initial_pose, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ChangeCurrentLevelRequest
    let len;
    let data = new ChangeCurrentLevelRequest(null);
    // Deserialize message field [new_level_id]
    data.new_level_id = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [publish_initial_pose]
    data.publish_initial_pose = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [initial_pose]
    data.initial_pose = geometry_msgs.msg.PoseWithCovarianceStamped.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.new_level_id.length;
    length += geometry_msgs.msg.PoseWithCovarianceStamped.getMessageSize(object.initial_pose);
    return length + 5;
  }

  static datatype() {
    // Returns string type for a service object
    return 'multi_level_map_msgs/ChangeCurrentLevelRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'ce4152574d0751ba62d82ab6e034d739';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string new_level_id
    bool publish_initial_pose
    geometry_msgs/PoseWithCovarianceStamped initial_pose
    
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
    const resolved = new ChangeCurrentLevelRequest(null);
    if (msg.new_level_id !== undefined) {
      resolved.new_level_id = msg.new_level_id;
    }
    else {
      resolved.new_level_id = ''
    }

    if (msg.publish_initial_pose !== undefined) {
      resolved.publish_initial_pose = msg.publish_initial_pose;
    }
    else {
      resolved.publish_initial_pose = false
    }

    if (msg.initial_pose !== undefined) {
      resolved.initial_pose = geometry_msgs.msg.PoseWithCovarianceStamped.Resolve(msg.initial_pose)
    }
    else {
      resolved.initial_pose = new geometry_msgs.msg.PoseWithCovarianceStamped()
    }

    return resolved;
    }
};

class ChangeCurrentLevelResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.success = null;
      this.error_message = null;
    }
    else {
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
    // Serializes a message object of type ChangeCurrentLevelResponse
    // Serialize message field [success]
    bufferOffset = _serializer.bool(obj.success, buffer, bufferOffset);
    // Serialize message field [error_message]
    bufferOffset = _serializer.string(obj.error_message, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ChangeCurrentLevelResponse
    let len;
    let data = new ChangeCurrentLevelResponse(null);
    // Deserialize message field [success]
    data.success = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [error_message]
    data.error_message = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.error_message.length;
    return length + 5;
  }

  static datatype() {
    // Returns string type for a service object
    return 'multi_level_map_msgs/ChangeCurrentLevelResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '6fe914479ce03184a758c3f6990c928f';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    bool success
    string error_message
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new ChangeCurrentLevelResponse(null);
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
  Request: ChangeCurrentLevelRequest,
  Response: ChangeCurrentLevelResponse,
  md5sum() { return 'ea2e164e69b835c64629bde577a80f03'; },
  datatype() { return 'multi_level_map_msgs/ChangeCurrentLevel'; }
};
