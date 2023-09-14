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

class LocationActionRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.time = null;
      this.current_location = null;
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
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type LocationActionRequest
    // Serialize message field [time]
    bufferOffset = WeekTime.serialize(obj.time, buffer, bufferOffset);
    // Serialize message field [current_location]
    bufferOffset = _serializer.string(obj.current_location, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type LocationActionRequest
    let len;
    let data = new LocationActionRequest(null);
    // Deserialize message field [time]
    data.time = WeekTime.deserialize(buffer, bufferOffset);
    // Deserialize message field [current_location]
    data.current_location = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.current_location.length;
    return length + 12;
  }

  static datatype() {
    // Returns string type for a service object
    return 'bwi_msgs/LocationActionRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'fd81ec9218c952a0d599ebee244c83e8';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    bwi_msgs/WeekTime time
    string current_location
    
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
    const resolved = new LocationActionRequest(null);
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

    return resolved;
    }
};

class LocationActionResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.ask_question = null;
      this.location = null;
    }
    else {
      if (initObj.hasOwnProperty('ask_question')) {
        this.ask_question = initObj.ask_question
      }
      else {
        this.ask_question = false;
      }
      if (initObj.hasOwnProperty('location')) {
        this.location = initObj.location
      }
      else {
        this.location = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type LocationActionResponse
    // Serialize message field [ask_question]
    bufferOffset = _serializer.bool(obj.ask_question, buffer, bufferOffset);
    // Serialize message field [location]
    bufferOffset = _serializer.string(obj.location, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type LocationActionResponse
    let len;
    let data = new LocationActionResponse(null);
    // Deserialize message field [ask_question]
    data.ask_question = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [location]
    data.location = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.location.length;
    return length + 5;
  }

  static datatype() {
    // Returns string type for a service object
    return 'bwi_msgs/LocationActionResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '5b5bda663c321f211fbf03b3fda40267';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    bool ask_question
    string location
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new LocationActionResponse(null);
    if (msg.ask_question !== undefined) {
      resolved.ask_question = msg.ask_question;
    }
    else {
      resolved.ask_question = false
    }

    if (msg.location !== undefined) {
      resolved.location = msg.location;
    }
    else {
      resolved.location = ''
    }

    return resolved;
    }
};

module.exports = {
  Request: LocationActionRequest,
  Response: LocationActionResponse,
  md5sum() { return '0dde773e38870fb29fdf55706196344e'; },
  datatype() { return 'bwi_msgs/LocationAction'; }
};
