// Auto-generated. Do not edit!

// (in-package bwi_msgs.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------


//-----------------------------------------------------------

class NextLocationRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
    }
    else {
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type NextLocationRequest
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type NextLocationRequest
    let len;
    let data = new NextLocationRequest(null);
    return data;
  }

  static getMessageSize(object) {
    return 0;
  }

  static datatype() {
    // Returns string type for a service object
    return 'bwi_msgs/NextLocationRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'd41d8cd98f00b204e9800998ecf8427e';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new NextLocationRequest(null);
    return resolved;
    }
};

class NextLocationResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.success = null;
      this.locationName = null;
    }
    else {
      if (initObj.hasOwnProperty('success')) {
        this.success = initObj.success
      }
      else {
        this.success = false;
      }
      if (initObj.hasOwnProperty('locationName')) {
        this.locationName = initObj.locationName
      }
      else {
        this.locationName = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type NextLocationResponse
    // Serialize message field [success]
    bufferOffset = _serializer.bool(obj.success, buffer, bufferOffset);
    // Serialize message field [locationName]
    bufferOffset = _serializer.string(obj.locationName, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type NextLocationResponse
    let len;
    let data = new NextLocationResponse(null);
    // Deserialize message field [success]
    data.success = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [locationName]
    data.locationName = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.locationName.length;
    return length + 5;
  }

  static datatype() {
    // Returns string type for a service object
    return 'bwi_msgs/NextLocationResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '7f666469cc7c83a848e9c8c747e8937f';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    bool success
    string locationName
    
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new NextLocationResponse(null);
    if (msg.success !== undefined) {
      resolved.success = msg.success;
    }
    else {
      resolved.success = false
    }

    if (msg.locationName !== undefined) {
      resolved.locationName = msg.locationName;
    }
    else {
      resolved.locationName = ''
    }

    return resolved;
    }
};

module.exports = {
  Request: NextLocationRequest,
  Response: NextLocationResponse,
  md5sum() { return '7f666469cc7c83a848e9c8c747e8937f'; },
  datatype() { return 'bwi_msgs/NextLocation'; }
};
