// Auto-generated. Do not edit!

// (in-package plan_execution.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let AspFluent = require('../msg/AspFluent.js');

//-----------------------------------------------------------


//-----------------------------------------------------------

class UpdateFluentsRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.fluents = null;
    }
    else {
      if (initObj.hasOwnProperty('fluents')) {
        this.fluents = initObj.fluents
      }
      else {
        this.fluents = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type UpdateFluentsRequest
    // Serialize message field [fluents]
    // Serialize the length for message field [fluents]
    bufferOffset = _serializer.uint32(obj.fluents.length, buffer, bufferOffset);
    obj.fluents.forEach((val) => {
      bufferOffset = AspFluent.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type UpdateFluentsRequest
    let len;
    let data = new UpdateFluentsRequest(null);
    // Deserialize message field [fluents]
    // Deserialize array length for message field [fluents]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.fluents = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.fluents[i] = AspFluent.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    object.fluents.forEach((val) => {
      length += AspFluent.getMessageSize(val);
    });
    return length + 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'plan_execution/UpdateFluentsRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '1f4c26fc97494fb1cf77da318e7c1d52';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    AspFluent[] fluents
    
    ================================================================================
    MSG: plan_execution/AspFluent
    string name
    string[] variables
    uint32 timeStep
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new UpdateFluentsRequest(null);
    if (msg.fluents !== undefined) {
      resolved.fluents = new Array(msg.fluents.length);
      for (let i = 0; i < resolved.fluents.length; ++i) {
        resolved.fluents[i] = AspFluent.Resolve(msg.fluents[i]);
      }
    }
    else {
      resolved.fluents = []
    }

    return resolved;
    }
};

class UpdateFluentsResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.consistent = null;
    }
    else {
      if (initObj.hasOwnProperty('consistent')) {
        this.consistent = initObj.consistent
      }
      else {
        this.consistent = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type UpdateFluentsResponse
    // Serialize message field [consistent]
    bufferOffset = _serializer.bool(obj.consistent, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type UpdateFluentsResponse
    let len;
    let data = new UpdateFluentsResponse(null);
    // Deserialize message field [consistent]
    data.consistent = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a service object
    return 'plan_execution/UpdateFluentsResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'be6162d8a10e4281ea405616a9216683';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    bool consistent
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new UpdateFluentsResponse(null);
    if (msg.consistent !== undefined) {
      resolved.consistent = msg.consistent;
    }
    else {
      resolved.consistent = false
    }

    return resolved;
    }
};

module.exports = {
  Request: UpdateFluentsRequest,
  Response: UpdateFluentsResponse,
  md5sum() { return '227bd43e3dadc0cc21a93d12243f42ad'; },
  datatype() { return 'plan_execution/UpdateFluents'; }
};
