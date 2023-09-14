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

class RequestTourRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.user = null;
    }
    else {
      if (initObj.hasOwnProperty('user')) {
        this.user = initObj.user
      }
      else {
        this.user = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type RequestTourRequest
    // Serialize message field [user]
    bufferOffset = _serializer.string(obj.user, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type RequestTourRequest
    let len;
    let data = new RequestTourRequest(null);
    // Deserialize message field [user]
    data.user = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.user.length;
    return length + 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'bwi_virtour/RequestTourRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '334ea0b9dd53b20b1554937c6dd08782';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string user
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new RequestTourRequest(null);
    if (msg.user !== undefined) {
      resolved.user = msg.user;
    }
    else {
      resolved.user = ''
    }

    return resolved;
    }
};

class RequestTourResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.startTime = null;
      this.result = null;
    }
    else {
      if (initObj.hasOwnProperty('startTime')) {
        this.startTime = initObj.startTime
      }
      else {
        this.startTime = 0;
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
    // Serializes a message object of type RequestTourResponse
    // Serialize message field [startTime]
    bufferOffset = _serializer.uint64(obj.startTime, buffer, bufferOffset);
    // Serialize message field [result]
    bufferOffset = _serializer.int32(obj.result, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type RequestTourResponse
    let len;
    let data = new RequestTourResponse(null);
    // Deserialize message field [startTime]
    data.startTime = _deserializer.uint64(buffer, bufferOffset);
    // Deserialize message field [result]
    data.result = _deserializer.int32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 12;
  }

  static datatype() {
    // Returns string type for a service object
    return 'bwi_virtour/RequestTourResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'caedefd7fa25aef12b36c8a22b21c499';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint64 startTime
    int32 result 
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new RequestTourResponse(null);
    if (msg.startTime !== undefined) {
      resolved.startTime = msg.startTime;
    }
    else {
      resolved.startTime = 0
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

module.exports = {
  Request: RequestTourRequest,
  Response: RequestTourResponse,
  md5sum() { return 'ecb5124ad29672c457aff7f5cfe2dea1'; },
  datatype() { return 'bwi_virtour/RequestTour'; }
};
