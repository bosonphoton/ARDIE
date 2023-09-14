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

class AuthenticateRequest {
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
    // Serializes a message object of type AuthenticateRequest
    // Serialize message field [user]
    bufferOffset = _serializer.string(obj.user, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type AuthenticateRequest
    let len;
    let data = new AuthenticateRequest(null);
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
    return 'bwi_virtour/AuthenticateRequest';
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
    const resolved = new AuthenticateRequest(null);
    if (msg.user !== undefined) {
      resolved.user = msg.user;
    }
    else {
      resolved.user = ''
    }

    return resolved;
    }
};

class AuthenticateResponse {
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
    // Serializes a message object of type AuthenticateResponse
    // Serialize message field [result]
    bufferOffset = _serializer.int32(obj.result, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type AuthenticateResponse
    let len;
    let data = new AuthenticateResponse(null);
    // Deserialize message field [result]
    data.result = _deserializer.int32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'bwi_virtour/AuthenticateResponse';
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
    const resolved = new AuthenticateResponse(null);
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
  Request: AuthenticateRequest,
  Response: AuthenticateResponse,
  md5sum() { return 'bc80c1496c95e8ce6d65f53d86635b16'; },
  datatype() { return 'bwi_virtour/Authenticate'; }
};
