// Auto-generated. Do not edit!

// (in-package bwi_services.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------


//-----------------------------------------------------------

class DeliverMessageRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.location = null;
      this.message = null;
    }
    else {
      if (initObj.hasOwnProperty('location')) {
        this.location = initObj.location
      }
      else {
        this.location = '';
      }
      if (initObj.hasOwnProperty('message')) {
        this.message = initObj.message
      }
      else {
        this.message = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type DeliverMessageRequest
    // Serialize message field [location]
    bufferOffset = _serializer.string(obj.location, buffer, bufferOffset);
    // Serialize message field [message]
    bufferOffset = _serializer.string(obj.message, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type DeliverMessageRequest
    let len;
    let data = new DeliverMessageRequest(null);
    // Deserialize message field [location]
    data.location = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [message]
    data.message = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.location.length;
    length += object.message.length;
    return length + 8;
  }

  static datatype() {
    // Returns string type for a service object
    return 'bwi_services/DeliverMessageRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '4bd2c196cf92560aaabfe6eb9e08dcb3';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string location
    string message
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new DeliverMessageRequest(null);
    if (msg.location !== undefined) {
      resolved.location = msg.location;
    }
    else {
      resolved.location = ''
    }

    if (msg.message !== undefined) {
      resolved.message = msg.message;
    }
    else {
      resolved.message = ''
    }

    return resolved;
    }
};

class DeliverMessageResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.go_to_result = null;
      this.speak_result = null;
    }
    else {
      if (initObj.hasOwnProperty('go_to_result')) {
        this.go_to_result = initObj.go_to_result
      }
      else {
        this.go_to_result = 0;
      }
      if (initObj.hasOwnProperty('speak_result')) {
        this.speak_result = initObj.speak_result
      }
      else {
        this.speak_result = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type DeliverMessageResponse
    // Serialize message field [go_to_result]
    bufferOffset = _serializer.int32(obj.go_to_result, buffer, bufferOffset);
    // Serialize message field [speak_result]
    bufferOffset = _serializer.int32(obj.speak_result, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type DeliverMessageResponse
    let len;
    let data = new DeliverMessageResponse(null);
    // Deserialize message field [go_to_result]
    data.go_to_result = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [speak_result]
    data.speak_result = _deserializer.int32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 8;
  }

  static datatype() {
    // Returns string type for a service object
    return 'bwi_services/DeliverMessageResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '534a0d7f199e6c88fd374d43944b6aad';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int32 go_to_result
    int32 speak_result
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new DeliverMessageResponse(null);
    if (msg.go_to_result !== undefined) {
      resolved.go_to_result = msg.go_to_result;
    }
    else {
      resolved.go_to_result = 0
    }

    if (msg.speak_result !== undefined) {
      resolved.speak_result = msg.speak_result;
    }
    else {
      resolved.speak_result = 0
    }

    return resolved;
    }
};

module.exports = {
  Request: DeliverMessageRequest,
  Response: DeliverMessageResponse,
  md5sum() { return 'e951bc044db93112f1ee530c255f7550'; },
  datatype() { return 'bwi_services/DeliverMessage'; }
};
