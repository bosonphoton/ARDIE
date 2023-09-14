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

class GoToLocationRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.location = null;
      this.user = null;
    }
    else {
      if (initObj.hasOwnProperty('location')) {
        this.location = initObj.location
      }
      else {
        this.location = '';
      }
      if (initObj.hasOwnProperty('user')) {
        this.user = initObj.user
      }
      else {
        this.user = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type GoToLocationRequest
    // Serialize message field [location]
    bufferOffset = _serializer.string(obj.location, buffer, bufferOffset);
    // Serialize message field [user]
    bufferOffset = _serializer.string(obj.user, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type GoToLocationRequest
    let len;
    let data = new GoToLocationRequest(null);
    // Deserialize message field [location]
    data.location = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [user]
    data.user = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.location.length;
    length += object.user.length;
    return length + 8;
  }

  static datatype() {
    // Returns string type for a service object
    return 'bwi_virtour/GoToLocationRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '9f873cf32cd70e1ab468885f2f3f519f';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string location
    string user
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new GoToLocationRequest(null);
    if (msg.location !== undefined) {
      resolved.location = msg.location;
    }
    else {
      resolved.location = ''
    }

    if (msg.user !== undefined) {
      resolved.user = msg.user;
    }
    else {
      resolved.user = ''
    }

    return resolved;
    }
};

class GoToLocationResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.result = null;
    }
    else {
      if (initObj.hasOwnProperty('result')) {
        this.result = initObj.result
      }
      else {
        this.result = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type GoToLocationResponse
    // Serialize message field [result]
    bufferOffset = _serializer.int32(obj.result, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type GoToLocationResponse
    let len;
    let data = new GoToLocationResponse(null);
    // Deserialize message field [result]
    data.result = _deserializer.int32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'bwi_virtour/GoToLocationResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '034a8e20d6a306665e3a5b340fab3f09';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int32 result
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new GoToLocationResponse(null);
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
  Request: GoToLocationRequest,
  Response: GoToLocationResponse,
  md5sum() { return 'd57678ae7c2e3a4ad7890b2341b74c06'; },
  datatype() { return 'bwi_virtour/GoToLocation'; }
};
