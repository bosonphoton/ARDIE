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

class SpeakMessageRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.message = null;
    }
    else {
      if (initObj.hasOwnProperty('message')) {
        this.message = initObj.message
      }
      else {
        this.message = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type SpeakMessageRequest
    // Serialize message field [message]
    bufferOffset = _serializer.string(obj.message, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SpeakMessageRequest
    let len;
    let data = new SpeakMessageRequest(null);
    // Deserialize message field [message]
    data.message = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.message.length;
    return length + 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'bwi_services/SpeakMessageRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '5f003d6bcc824cbd51361d66d8e4f76c';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string message
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new SpeakMessageRequest(null);
    if (msg.message !== undefined) {
      resolved.message = msg.message;
    }
    else {
      resolved.message = ''
    }

    return resolved;
    }
};

class SpeakMessageResponse {
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
    // Serializes a message object of type SpeakMessageResponse
    // Serialize message field [result]
    bufferOffset = _serializer.int32(obj.result, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SpeakMessageResponse
    let len;
    let data = new SpeakMessageResponse(null);
    // Deserialize message field [result]
    data.result = _deserializer.int32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'bwi_services/SpeakMessageResponse';
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
    const resolved = new SpeakMessageResponse(null);
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
  Request: SpeakMessageRequest,
  Response: SpeakMessageResponse,
  md5sum() { return 'e9096ed5f063e7da83fbcb7332c6a56b'; },
  datatype() { return 'bwi_services/SpeakMessage'; }
};
