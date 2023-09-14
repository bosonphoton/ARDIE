// Auto-generated. Do not edit!

// (in-package bwi_virtour.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------


//-----------------------------------------------------------

class GetTourStateRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
    }
    else {
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type GetTourStateRequest
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type GetTourStateRequest
    let len;
    let data = new GetTourStateRequest(null);
    return data;
  }

  static getMessageSize(object) {
    return 0;
  }

  static datatype() {
    // Returns string type for a service object
    return 'bwi_virtour/GetTourStateRequest';
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
    const resolved = new GetTourStateRequest(null);
    return resolved;
    }
};

class GetTourStateResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.tourAllowed = null;
      this.tourInProgress = null;
      this.tourDuration = null;
      this.tourStartTime = null;
      this.lastPingTime = null;
      this.tourLeader = null;
    }
    else {
      if (initObj.hasOwnProperty('tourAllowed')) {
        this.tourAllowed = initObj.tourAllowed
      }
      else {
        this.tourAllowed = false;
      }
      if (initObj.hasOwnProperty('tourInProgress')) {
        this.tourInProgress = initObj.tourInProgress
      }
      else {
        this.tourInProgress = false;
      }
      if (initObj.hasOwnProperty('tourDuration')) {
        this.tourDuration = initObj.tourDuration
      }
      else {
        this.tourDuration = 0;
      }
      if (initObj.hasOwnProperty('tourStartTime')) {
        this.tourStartTime = initObj.tourStartTime
      }
      else {
        this.tourStartTime = 0;
      }
      if (initObj.hasOwnProperty('lastPingTime')) {
        this.lastPingTime = initObj.lastPingTime
      }
      else {
        this.lastPingTime = 0;
      }
      if (initObj.hasOwnProperty('tourLeader')) {
        this.tourLeader = initObj.tourLeader
      }
      else {
        this.tourLeader = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type GetTourStateResponse
    // Serialize message field [tourAllowed]
    bufferOffset = _serializer.bool(obj.tourAllowed, buffer, bufferOffset);
    // Serialize message field [tourInProgress]
    bufferOffset = _serializer.bool(obj.tourInProgress, buffer, bufferOffset);
    // Serialize message field [tourDuration]
    bufferOffset = _serializer.uint64(obj.tourDuration, buffer, bufferOffset);
    // Serialize message field [tourStartTime]
    bufferOffset = _serializer.uint64(obj.tourStartTime, buffer, bufferOffset);
    // Serialize message field [lastPingTime]
    bufferOffset = _serializer.uint64(obj.lastPingTime, buffer, bufferOffset);
    // Serialize message field [tourLeader]
    bufferOffset = _serializer.string(obj.tourLeader, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type GetTourStateResponse
    let len;
    let data = new GetTourStateResponse(null);
    // Deserialize message field [tourAllowed]
    data.tourAllowed = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [tourInProgress]
    data.tourInProgress = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [tourDuration]
    data.tourDuration = _deserializer.uint64(buffer, bufferOffset);
    // Deserialize message field [tourStartTime]
    data.tourStartTime = _deserializer.uint64(buffer, bufferOffset);
    // Deserialize message field [lastPingTime]
    data.lastPingTime = _deserializer.uint64(buffer, bufferOffset);
    // Deserialize message field [tourLeader]
    data.tourLeader = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.tourLeader.length;
    return length + 30;
  }

  static datatype() {
    // Returns string type for a service object
    return 'bwi_virtour/GetTourStateResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '948457c50757084326687f7ddb2305ee';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    bool tourAllowed
    bool tourInProgress
    uint64 tourDuration
    uint64 tourStartTime
    uint64 lastPingTime
    string tourLeader
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new GetTourStateResponse(null);
    if (msg.tourAllowed !== undefined) {
      resolved.tourAllowed = msg.tourAllowed;
    }
    else {
      resolved.tourAllowed = false
    }

    if (msg.tourInProgress !== undefined) {
      resolved.tourInProgress = msg.tourInProgress;
    }
    else {
      resolved.tourInProgress = false
    }

    if (msg.tourDuration !== undefined) {
      resolved.tourDuration = msg.tourDuration;
    }
    else {
      resolved.tourDuration = 0
    }

    if (msg.tourStartTime !== undefined) {
      resolved.tourStartTime = msg.tourStartTime;
    }
    else {
      resolved.tourStartTime = 0
    }

    if (msg.lastPingTime !== undefined) {
      resolved.lastPingTime = msg.lastPingTime;
    }
    else {
      resolved.lastPingTime = 0
    }

    if (msg.tourLeader !== undefined) {
      resolved.tourLeader = msg.tourLeader;
    }
    else {
      resolved.tourLeader = ''
    }

    return resolved;
    }
};

module.exports = {
  Request: GetTourStateRequest,
  Response: GetTourStateResponse,
  md5sum() { return '948457c50757084326687f7ddb2305ee'; },
  datatype() { return 'bwi_virtour/GetTourState'; }
};
