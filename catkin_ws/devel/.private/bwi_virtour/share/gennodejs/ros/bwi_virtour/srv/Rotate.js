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

class RotateRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.rotateDelta = null;
      this.user = null;
    }
    else {
      if (initObj.hasOwnProperty('rotateDelta')) {
        this.rotateDelta = initObj.rotateDelta
      }
      else {
        this.rotateDelta = 0.0;
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
    // Serializes a message object of type RotateRequest
    // Serialize message field [rotateDelta]
    bufferOffset = _serializer.float32(obj.rotateDelta, buffer, bufferOffset);
    // Serialize message field [user]
    bufferOffset = _serializer.string(obj.user, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type RotateRequest
    let len;
    let data = new RotateRequest(null);
    // Deserialize message field [rotateDelta]
    data.rotateDelta = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [user]
    data.user = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.user.length;
    return length + 8;
  }

  static datatype() {
    // Returns string type for a service object
    return 'bwi_virtour/RotateRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '043408c7c260f015fb581e8c94b2dbfc';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float32 rotateDelta
    string user
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new RotateRequest(null);
    if (msg.rotateDelta !== undefined) {
      resolved.rotateDelta = msg.rotateDelta;
    }
    else {
      resolved.rotateDelta = 0.0
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

class RotateResponse {
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
    // Serializes a message object of type RotateResponse
    // Serialize message field [result]
    bufferOffset = _serializer.int32(obj.result, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type RotateResponse
    let len;
    let data = new RotateResponse(null);
    // Deserialize message field [result]
    data.result = _deserializer.int32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'bwi_virtour/RotateResponse';
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
    const resolved = new RotateResponse(null);
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
  Request: RotateRequest,
  Response: RotateResponse,
  md5sum() { return '1e87bb51aabe7eaee29da2957962f8ac'; },
  datatype() { return 'bwi_virtour/Rotate'; }
};
