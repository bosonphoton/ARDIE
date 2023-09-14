// Auto-generated. Do not edit!

// (in-package bwi_perception.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------


//-----------------------------------------------------------

class GetPCDRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.generalImageFilePath = null;
    }
    else {
      if (initObj.hasOwnProperty('generalImageFilePath')) {
        this.generalImageFilePath = initObj.generalImageFilePath
      }
      else {
        this.generalImageFilePath = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type GetPCDRequest
    // Serialize message field [generalImageFilePath]
    bufferOffset = _serializer.string(obj.generalImageFilePath, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type GetPCDRequest
    let len;
    let data = new GetPCDRequest(null);
    // Deserialize message field [generalImageFilePath]
    data.generalImageFilePath = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.generalImageFilePath.length;
    return length + 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'bwi_perception/GetPCDRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'cdca2b60c53a4d63fd5769c161d1c480';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string generalImageFilePath
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new GetPCDRequest(null);
    if (msg.generalImageFilePath !== undefined) {
      resolved.generalImageFilePath = msg.generalImageFilePath;
    }
    else {
      resolved.generalImageFilePath = ''
    }

    return resolved;
    }
};

class GetPCDResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.success = null;
    }
    else {
      if (initObj.hasOwnProperty('success')) {
        this.success = initObj.success
      }
      else {
        this.success = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type GetPCDResponse
    // Serialize message field [success]
    bufferOffset = _serializer.bool(obj.success, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type GetPCDResponse
    let len;
    let data = new GetPCDResponse(null);
    // Deserialize message field [success]
    data.success = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a service object
    return 'bwi_perception/GetPCDResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '358e233cde0c8a8bcfea4ce193f8fc15';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    bool success
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new GetPCDResponse(null);
    if (msg.success !== undefined) {
      resolved.success = msg.success;
    }
    else {
      resolved.success = false
    }

    return resolved;
    }
};

module.exports = {
  Request: GetPCDRequest,
  Response: GetPCDResponse,
  md5sum() { return '3de2b02c910383f9f40b30a875b5c5f2'; },
  datatype() { return 'bwi_perception/GetPCD'; }
};
