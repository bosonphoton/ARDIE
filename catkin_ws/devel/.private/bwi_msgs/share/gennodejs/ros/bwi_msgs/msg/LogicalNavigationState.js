// Auto-generated. Do not edit!

// (in-package bwi_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class LogicalNavigationState {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.room = null;
      this.nearby_locations = null;
      this.facing = null;
    }
    else {
      if (initObj.hasOwnProperty('room')) {
        this.room = initObj.room
      }
      else {
        this.room = '';
      }
      if (initObj.hasOwnProperty('nearby_locations')) {
        this.nearby_locations = initObj.nearby_locations
      }
      else {
        this.nearby_locations = [];
      }
      if (initObj.hasOwnProperty('facing')) {
        this.facing = initObj.facing
      }
      else {
        this.facing = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type LogicalNavigationState
    // Serialize message field [room]
    bufferOffset = _serializer.string(obj.room, buffer, bufferOffset);
    // Serialize message field [nearby_locations]
    bufferOffset = _arraySerializer.string(obj.nearby_locations, buffer, bufferOffset, null);
    // Serialize message field [facing]
    bufferOffset = _arraySerializer.bool(obj.facing, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type LogicalNavigationState
    let len;
    let data = new LogicalNavigationState(null);
    // Deserialize message field [room]
    data.room = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [nearby_locations]
    data.nearby_locations = _arrayDeserializer.string(buffer, bufferOffset, null)
    // Deserialize message field [facing]
    data.facing = _arrayDeserializer.bool(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.room.length;
    object.nearby_locations.forEach((val) => {
      length += 4 + val.length;
    });
    length += object.facing.length;
    return length + 12;
  }

  static datatype() {
    // Returns string type for a message object
    return 'bwi_msgs/LogicalNavigationState';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '61b5fec880100a091a9019844c6c5b20';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string room
    string[] nearby_locations
    bool[] facing
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new LogicalNavigationState(null);
    if (msg.room !== undefined) {
      resolved.room = msg.room;
    }
    else {
      resolved.room = ''
    }

    if (msg.nearby_locations !== undefined) {
      resolved.nearby_locations = msg.nearby_locations;
    }
    else {
      resolved.nearby_locations = []
    }

    if (msg.facing !== undefined) {
      resolved.facing = msg.facing;
    }
    else {
      resolved.facing = []
    }

    return resolved;
    }
};

module.exports = LogicalNavigationState;
