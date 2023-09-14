// Auto-generated. Do not edit!

// (in-package bwi_msgs.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let LEDStatus = require('../msg/LEDStatus.js');

//-----------------------------------------------------------


//-----------------------------------------------------------

class LEDSetStatusRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.type = null;
    }
    else {
      if (initObj.hasOwnProperty('type')) {
        this.type = initObj.type
      }
      else {
        this.type = new LEDStatus();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type LEDSetStatusRequest
    // Serialize message field [type]
    bufferOffset = LEDStatus.serialize(obj.type, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type LEDSetStatusRequest
    let len;
    let data = new LEDSetStatusRequest(null);
    // Deserialize message field [type]
    data.type = LEDStatus.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a service object
    return 'bwi_msgs/LEDSetStatusRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '251b499dfe6a8804c65e16280eab264c';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    bwi_msgs/LEDStatus type
    
    ================================================================================
    MSG: bwi_msgs/LEDStatus
    # LED Status
    
    # Service Variables
    uint8 RUN_ON = 1
    uint8 RUN_OFF = 0
    uint8 CAMERA_ON = 3
    uint8 CAMERA_OFF = 2
    
    # Selects which animation to execute
    
    uint8 status
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new LEDSetStatusRequest(null);
    if (msg.type !== undefined) {
      resolved.type = LEDStatus.Resolve(msg.type)
    }
    else {
      resolved.type = new LEDStatus()
    }

    return resolved;
    }
};

class LEDSetStatusResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.success = null;
      this.status = null;
    }
    else {
      if (initObj.hasOwnProperty('success')) {
        this.success = initObj.success
      }
      else {
        this.success = false;
      }
      if (initObj.hasOwnProperty('status')) {
        this.status = initObj.status
      }
      else {
        this.status = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type LEDSetStatusResponse
    // Serialize message field [success]
    bufferOffset = _serializer.bool(obj.success, buffer, bufferOffset);
    // Serialize message field [status]
    bufferOffset = _serializer.string(obj.status, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type LEDSetStatusResponse
    let len;
    let data = new LEDSetStatusResponse(null);
    // Deserialize message field [success]
    data.success = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [status]
    data.status = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.status.length;
    return length + 5;
  }

  static datatype() {
    // Returns string type for a service object
    return 'bwi_msgs/LEDSetStatusResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '38b8954d32a849f31d78416b12bff5d1';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    bool success
    string status
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new LEDSetStatusResponse(null);
    if (msg.success !== undefined) {
      resolved.success = msg.success;
    }
    else {
      resolved.success = false
    }

    if (msg.status !== undefined) {
      resolved.status = msg.status;
    }
    else {
      resolved.status = ''
    }

    return resolved;
    }
};

module.exports = {
  Request: LEDSetStatusRequest,
  Response: LEDSetStatusResponse,
  md5sum() { return 'd7fccd8c755ec75bb63839fded669f45'; },
  datatype() { return 'bwi_msgs/LEDSetStatus'; }
};
