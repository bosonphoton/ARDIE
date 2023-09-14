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

class ProcessVisionRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.start = null;
      this.generalImageFilePath = null;
      this.generalDepthImagePath = null;
    }
    else {
      if (initObj.hasOwnProperty('start')) {
        this.start = initObj.start
      }
      else {
        this.start = 0;
      }
      if (initObj.hasOwnProperty('generalImageFilePath')) {
        this.generalImageFilePath = initObj.generalImageFilePath
      }
      else {
        this.generalImageFilePath = '';
      }
      if (initObj.hasOwnProperty('generalDepthImagePath')) {
        this.generalDepthImagePath = initObj.generalDepthImagePath
      }
      else {
        this.generalDepthImagePath = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ProcessVisionRequest
    // Serialize message field [start]
    bufferOffset = _serializer.int64(obj.start, buffer, bufferOffset);
    // Serialize message field [generalImageFilePath]
    bufferOffset = _serializer.string(obj.generalImageFilePath, buffer, bufferOffset);
    // Serialize message field [generalDepthImagePath]
    bufferOffset = _serializer.string(obj.generalDepthImagePath, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ProcessVisionRequest
    let len;
    let data = new ProcessVisionRequest(null);
    // Deserialize message field [start]
    data.start = _deserializer.int64(buffer, bufferOffset);
    // Deserialize message field [generalImageFilePath]
    data.generalImageFilePath = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [generalDepthImagePath]
    data.generalDepthImagePath = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.generalImageFilePath.length;
    length += object.generalDepthImagePath.length;
    return length + 16;
  }

  static datatype() {
    // Returns string type for a service object
    return 'bwi_perception/ProcessVisionRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '65867062b0ed837813950bcb7007d189';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int64 start
    string generalImageFilePath
    string generalDepthImagePath
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new ProcessVisionRequest(null);
    if (msg.start !== undefined) {
      resolved.start = msg.start;
    }
    else {
      resolved.start = 0
    }

    if (msg.generalImageFilePath !== undefined) {
      resolved.generalImageFilePath = msg.generalImageFilePath;
    }
    else {
      resolved.generalImageFilePath = ''
    }

    if (msg.generalDepthImagePath !== undefined) {
      resolved.generalDepthImagePath = msg.generalDepthImagePath;
    }
    else {
      resolved.generalDepthImagePath = ''
    }

    return resolved;
    }
};

class ProcessVisionResponse {
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
    // Serializes a message object of type ProcessVisionResponse
    // Serialize message field [success]
    bufferOffset = _serializer.bool(obj.success, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ProcessVisionResponse
    let len;
    let data = new ProcessVisionResponse(null);
    // Deserialize message field [success]
    data.success = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a service object
    return 'bwi_perception/ProcessVisionResponse';
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
    const resolved = new ProcessVisionResponse(null);
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
  Request: ProcessVisionRequest,
  Response: ProcessVisionResponse,
  md5sum() { return '6e09057bca6c469f3261816784f3e445'; },
  datatype() { return 'bwi_perception/ProcessVision'; }
};
