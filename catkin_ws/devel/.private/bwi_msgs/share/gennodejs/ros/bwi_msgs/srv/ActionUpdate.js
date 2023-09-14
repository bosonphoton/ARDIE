// Auto-generated. Do not edit!

// (in-package bwi_msgs.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let WeekTime = require('../msg/WeekTime.js');

//-----------------------------------------------------------


//-----------------------------------------------------------

class ActionUpdateRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.time = null;
      this.current_location = null;
      this.result = null;
    }
    else {
      if (initObj.hasOwnProperty('time')) {
        this.time = initObj.time
      }
      else {
        this.time = new WeekTime();
      }
      if (initObj.hasOwnProperty('current_location')) {
        this.current_location = initObj.current_location
      }
      else {
        this.current_location = '';
      }
      if (initObj.hasOwnProperty('result')) {
        this.result = initObj.result
      }
      else {
        this.result = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ActionUpdateRequest
    // Serialize message field [time]
    bufferOffset = WeekTime.serialize(obj.time, buffer, bufferOffset);
    // Serialize message field [current_location]
    bufferOffset = _serializer.string(obj.current_location, buffer, bufferOffset);
    // Serialize message field [result]
    bufferOffset = _serializer.int32(obj.result, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ActionUpdateRequest
    let len;
    let data = new ActionUpdateRequest(null);
    // Deserialize message field [time]
    data.time = WeekTime.deserialize(buffer, bufferOffset);
    // Deserialize message field [current_location]
    data.current_location = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [result]
    data.result = _deserializer.int32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.current_location.length;
    return length + 16;
  }

  static datatype() {
    // Returns string type for a service object
    return 'bwi_msgs/ActionUpdateRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '9fe05e403268444079042cdaaf56e486';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int32 QUESTION_ANSWERED = 0
    int32 QUESTION_DENIED = 1
    int32 QUESTION_TIMEOUT = 2
    int32 ARRIVED = 3
    int32 ARRIVAL_FAILURE = 4
    
    bwi_msgs/WeekTime time
    string current_location
    int32 result
    
    ================================================================================
    MSG: bwi_msgs/WeekTime
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
    const resolved = new ActionUpdateRequest(null);
    if (msg.time !== undefined) {
      resolved.time = WeekTime.Resolve(msg.time)
    }
    else {
      resolved.time = new WeekTime()
    }

    if (msg.current_location !== undefined) {
      resolved.current_location = msg.current_location;
    }
    else {
      resolved.current_location = ''
    }

    if (msg.result !== undefined) {
      resolved.result = msg.result;
    }
    else {
      resolved.result = 0
    }

    return resolved;
    }
};

// Constants for message
ActionUpdateRequest.Constants = {
  QUESTION_ANSWERED: 0,
  QUESTION_DENIED: 1,
  QUESTION_TIMEOUT: 2,
  ARRIVED: 3,
  ARRIVAL_FAILURE: 4,
}

class ActionUpdateResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
    }
    else {
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ActionUpdateResponse
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ActionUpdateResponse
    let len;
    let data = new ActionUpdateResponse(null);
    return data;
  }

  static getMessageSize(object) {
    return 0;
  }

  static datatype() {
    // Returns string type for a service object
    return 'bwi_msgs/ActionUpdateResponse';
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
    const resolved = new ActionUpdateResponse(null);
    return resolved;
    }
};

module.exports = {
  Request: ActionUpdateRequest,
  Response: ActionUpdateResponse,
  md5sum() { return '9fe05e403268444079042cdaaf56e486'; },
  datatype() { return 'bwi_msgs/ActionUpdate'; }
};
