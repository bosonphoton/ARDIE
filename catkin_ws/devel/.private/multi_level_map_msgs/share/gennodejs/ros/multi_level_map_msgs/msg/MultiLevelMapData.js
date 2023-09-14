// Auto-generated. Do not edit!

// (in-package multi_level_map_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let LevelMetaData = require('./LevelMetaData.js');
let MultiLevelMapLink = require('./MultiLevelMapLink.js');
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class MultiLevelMapData {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.levels = null;
      this.links = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('levels')) {
        this.levels = initObj.levels
      }
      else {
        this.levels = [];
      }
      if (initObj.hasOwnProperty('links')) {
        this.links = initObj.links
      }
      else {
        this.links = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type MultiLevelMapData
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [levels]
    // Serialize the length for message field [levels]
    bufferOffset = _serializer.uint32(obj.levels.length, buffer, bufferOffset);
    obj.levels.forEach((val) => {
      bufferOffset = LevelMetaData.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [links]
    // Serialize the length for message field [links]
    bufferOffset = _serializer.uint32(obj.links.length, buffer, bufferOffset);
    obj.links.forEach((val) => {
      bufferOffset = MultiLevelMapLink.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type MultiLevelMapData
    let len;
    let data = new MultiLevelMapData(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [levels]
    // Deserialize array length for message field [levels]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.levels = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.levels[i] = LevelMetaData.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [links]
    // Deserialize array length for message field [links]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.links = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.links[i] = MultiLevelMapLink.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    object.levels.forEach((val) => {
      length += LevelMetaData.getMessageSize(val);
    });
    object.links.forEach((val) => {
      length += MultiLevelMapLink.getMessageSize(val);
    });
    return length + 8;
  }

  static datatype() {
    // Returns string type for a message object
    return 'multi_level_map_msgs/MultiLevelMapData';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '39402ce2a58e2634a68644e43995cbff';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    Header header
    LevelMetaData[] levels
    MultiLevelMapLink[] links
    
    
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
    MSG: multi_level_map_msgs/LevelMetaData
    string level_id
    string data_directory
    string map_file
    nav_msgs/MapMetaData info
    
    ================================================================================
    MSG: nav_msgs/MapMetaData
    # This hold basic information about the characterists of the OccupancyGrid
    
    # The time at which the map was loaded
    time map_load_time
    # The map resolution [m/cell]
    float32 resolution
    # Map width [cells]
    uint32 width
    # Map height [cells]
    uint32 height
    # The origin of the map [m, m, rad].  This is the real-world pose of the
    # cell (0,0) in the map.
    geometry_msgs/Pose origin
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
    MSG: multi_level_map_msgs/MultiLevelMapLink
    MultiLevelMapPoint from_point
    MultiLevelMapPoint to_point
    float64 traversal_cost
    string forward_message
    string reverse_message
    
    ================================================================================
    MSG: multi_level_map_msgs/MultiLevelMapPoint
    string level_id
    geometry_msgs/Point point
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new MultiLevelMapData(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.levels !== undefined) {
      resolved.levels = new Array(msg.levels.length);
      for (let i = 0; i < resolved.levels.length; ++i) {
        resolved.levels[i] = LevelMetaData.Resolve(msg.levels[i]);
      }
    }
    else {
      resolved.levels = []
    }

    if (msg.links !== undefined) {
      resolved.links = new Array(msg.links.length);
      for (let i = 0; i < resolved.links.length; ++i) {
        resolved.links[i] = MultiLevelMapLink.Resolve(msg.links[i]);
      }
    }
    else {
      resolved.links = []
    }

    return resolved;
    }
};

module.exports = MultiLevelMapData;
