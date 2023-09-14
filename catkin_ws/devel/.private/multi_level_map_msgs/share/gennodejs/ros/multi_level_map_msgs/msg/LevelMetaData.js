// Auto-generated. Do not edit!

// (in-package multi_level_map_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let nav_msgs = _finder('nav_msgs');

//-----------------------------------------------------------

class LevelMetaData {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.level_id = null;
      this.data_directory = null;
      this.map_file = null;
      this.info = null;
    }
    else {
      if (initObj.hasOwnProperty('level_id')) {
        this.level_id = initObj.level_id
      }
      else {
        this.level_id = '';
      }
      if (initObj.hasOwnProperty('data_directory')) {
        this.data_directory = initObj.data_directory
      }
      else {
        this.data_directory = '';
      }
      if (initObj.hasOwnProperty('map_file')) {
        this.map_file = initObj.map_file
      }
      else {
        this.map_file = '';
      }
      if (initObj.hasOwnProperty('info')) {
        this.info = initObj.info
      }
      else {
        this.info = new nav_msgs.msg.MapMetaData();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type LevelMetaData
    // Serialize message field [level_id]
    bufferOffset = _serializer.string(obj.level_id, buffer, bufferOffset);
    // Serialize message field [data_directory]
    bufferOffset = _serializer.string(obj.data_directory, buffer, bufferOffset);
    // Serialize message field [map_file]
    bufferOffset = _serializer.string(obj.map_file, buffer, bufferOffset);
    // Serialize message field [info]
    bufferOffset = nav_msgs.msg.MapMetaData.serialize(obj.info, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type LevelMetaData
    let len;
    let data = new LevelMetaData(null);
    // Deserialize message field [level_id]
    data.level_id = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [data_directory]
    data.data_directory = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [map_file]
    data.map_file = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [info]
    data.info = nav_msgs.msg.MapMetaData.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.level_id.length;
    length += object.data_directory.length;
    length += object.map_file.length;
    return length + 88;
  }

  static datatype() {
    // Returns string type for a message object
    return 'multi_level_map_msgs/LevelMetaData';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'a9b9f2aeb1f506197c493af4a2fe197c';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
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
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new LevelMetaData(null);
    if (msg.level_id !== undefined) {
      resolved.level_id = msg.level_id;
    }
    else {
      resolved.level_id = ''
    }

    if (msg.data_directory !== undefined) {
      resolved.data_directory = msg.data_directory;
    }
    else {
      resolved.data_directory = ''
    }

    if (msg.map_file !== undefined) {
      resolved.map_file = msg.map_file;
    }
    else {
      resolved.map_file = ''
    }

    if (msg.info !== undefined) {
      resolved.info = nav_msgs.msg.MapMetaData.Resolve(msg.info)
    }
    else {
      resolved.info = new nav_msgs.msg.MapMetaData()
    }

    return resolved;
    }
};

module.exports = LevelMetaData;
