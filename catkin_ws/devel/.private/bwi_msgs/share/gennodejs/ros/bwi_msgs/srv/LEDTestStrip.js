// Auto-generated. Do not edit!

// (in-package bwi_msgs.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let LEDTestType = require('../msg/LEDTestType.js');

//-----------------------------------------------------------


//-----------------------------------------------------------

class LEDTestStripRequest {
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
        this.type = new LEDTestType();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type LEDTestStripRequest
    // Serialize message field [type]
    bufferOffset = LEDTestType.serialize(obj.type, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type LEDTestStripRequest
    let len;
    let data = new LEDTestStripRequest(null);
    // Deserialize message field [type]
    data.type = LEDTestType.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a service object
    return 'bwi_msgs/LEDTestStripRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'b0db8d081854754807ff6dfbecf1150a';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    bwi_msgs/LEDTestType type
    
    ================================================================================
    MSG: bwi_msgs/LEDTestType
    # LED Test Type
    
    # Service Variables
    uint8 SET_EVERY_FIFTH = 1
    uint8 SET_FIRST_FIVE = 2
    uint8 TEST_STRIP = 3
    
    # Selects which animation to execute
    
    uint8 test_type
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new LEDTestStripRequest(null);
    if (msg.type !== undefined) {
      resolved.type = LEDTestType.Resolve(msg.type)
    }
    else {
      resolved.type = new LEDTestType()
    }

    return resolved;
    }
};

class LEDTestStripResponse {
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
    // Serializes a message object of type LEDTestStripResponse
    // Serialize message field [success]
    bufferOffset = _serializer.bool(obj.success, buffer, bufferOffset);
    // Serialize message field [status]
    bufferOffset = _serializer.string(obj.status, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type LEDTestStripResponse
    let len;
    let data = new LEDTestStripResponse(null);
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
    return 'bwi_msgs/LEDTestStripResponse';
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
    const resolved = new LEDTestStripResponse(null);
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
  Request: LEDTestStripRequest,
  Response: LEDTestStripResponse,
  md5sum() { return 'd871d678836b58f63622ed041e410e26'; },
  datatype() { return 'bwi_msgs/LEDTestStrip'; }
};
