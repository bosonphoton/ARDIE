// Auto-generated. Do not edit!

// (in-package bwi_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let AvailableRobot = require('./AvailableRobot.js');

//-----------------------------------------------------------

class AvailableRobotArray {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.robots = null;
    }
    else {
      if (initObj.hasOwnProperty('robots')) {
        this.robots = initObj.robots
      }
      else {
        this.robots = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type AvailableRobotArray
    // Serialize message field [robots]
    // Serialize the length for message field [robots]
    bufferOffset = _serializer.uint32(obj.robots.length, buffer, bufferOffset);
    obj.robots.forEach((val) => {
      bufferOffset = AvailableRobot.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type AvailableRobotArray
    let len;
    let data = new AvailableRobotArray(null);
    // Deserialize message field [robots]
    // Deserialize array length for message field [robots]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.robots = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.robots[i] = AvailableRobot.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    object.robots.forEach((val) => {
      length += AvailableRobot.getMessageSize(val);
    });
    return length + 4;
  }

  static datatype() {
    // Returns string type for a message object
    return 'bwi_msgs/AvailableRobotArray';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'b0231c0f851faa92decfde91f5d24b51';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    AvailableRobot[] robots
    
    ================================================================================
    MSG: bwi_msgs/AvailableRobot
    # The current list of robots supported in the BWI Ecosystem. In an ideal world, this functionality would be replaced
    # by the capabilities framework.
    
    int32 SEGBOT = 1
    int32 SEGBOT_ARM = 2
    int32 TURTLEBOT = 3
    
    string name
    int32 type
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new AvailableRobotArray(null);
    if (msg.robots !== undefined) {
      resolved.robots = new Array(msg.robots.length);
      for (let i = 0; i < resolved.robots.length; ++i) {
        resolved.robots[i] = AvailableRobot.Resolve(msg.robots[i]);
      }
    }
    else {
      resolved.robots = []
    }

    return resolved;
    }
};

module.exports = AvailableRobotArray;
