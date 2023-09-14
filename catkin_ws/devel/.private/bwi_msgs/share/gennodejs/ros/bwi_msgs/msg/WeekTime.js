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

class WeekTime {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.time_seconds = null;
      this.day_of_week = null;
    }
    else {
      if (initObj.hasOwnProperty('time_seconds')) {
        this.time_seconds = initObj.time_seconds
      }
      else {
        this.time_seconds = 0;
      }
      if (initObj.hasOwnProperty('day_of_week')) {
        this.day_of_week = initObj.day_of_week
      }
      else {
        this.day_of_week = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type WeekTime
    // Serialize message field [time_seconds]
    bufferOffset = _serializer.int32(obj.time_seconds, buffer, bufferOffset);
    // Serialize message field [day_of_week]
    bufferOffset = _serializer.int32(obj.day_of_week, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type WeekTime
    let len;
    let data = new WeekTime(null);
    // Deserialize message field [time_seconds]
    data.time_seconds = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [day_of_week]
    data.day_of_week = _deserializer.int32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 8;
  }

  static datatype() {
    // Returns string type for a message object
    return 'bwi_msgs/WeekTime';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '128bbf0c1abd22da3f2eb8d4ab1ad941';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # Constants defining day of week
    int32 MONDAY=0
    int32 TUESDAY=1
    int32 WEDNESDAY=2
    int32 THURSDAY=3
    int32 FRIDAY=4
    int32 SATURDAY=5
    int32 SUNDAY=6
    
    int32 time_seconds
    int32 day_of_week
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new WeekTime(null);
    if (msg.time_seconds !== undefined) {
      resolved.time_seconds = msg.time_seconds;
    }
    else {
      resolved.time_seconds = 0
    }

    if (msg.day_of_week !== undefined) {
      resolved.day_of_week = msg.day_of_week;
    }
    else {
      resolved.day_of_week = 0
    }

    return resolved;
    }
};

// Constants for message
WeekTime.Constants = {
  MONDAY: 0,
  TUESDAY: 1,
  WEDNESDAY: 2,
  THURSDAY: 3,
  FRIDAY: 4,
  SATURDAY: 5,
  SUNDAY: 6,
}

module.exports = WeekTime;
