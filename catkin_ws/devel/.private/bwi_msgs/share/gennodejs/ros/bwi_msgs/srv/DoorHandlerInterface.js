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

class DoorHandlerInterfaceRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.door = null;
      this.open = null;
      this.all_doors = null;
      this.open_timeout = null;
    }
    else {
      if (initObj.hasOwnProperty('door')) {
        this.door = initObj.door
      }
      else {
        this.door = '';
      }
      if (initObj.hasOwnProperty('open')) {
        this.open = initObj.open
      }
      else {
        this.open = false;
      }
      if (initObj.hasOwnProperty('all_doors')) {
        this.all_doors = initObj.all_doors
      }
      else {
        this.all_doors = false;
      }
      if (initObj.hasOwnProperty('open_timeout')) {
        this.open_timeout = initObj.open_timeout
      }
      else {
        this.open_timeout = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type DoorHandlerInterfaceRequest
    // Serialize message field [door]
    bufferOffset = _serializer.string(obj.door, buffer, bufferOffset);
    // Serialize message field [open]
    bufferOffset = _serializer.bool(obj.open, buffer, bufferOffset);
    // Serialize message field [all_doors]
    bufferOffset = _serializer.bool(obj.all_doors, buffer, bufferOffset);
    // Serialize message field [open_timeout]
    bufferOffset = _serializer.float32(obj.open_timeout, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type DoorHandlerInterfaceRequest
    let len;
    let data = new DoorHandlerInterfaceRequest(null);
    // Deserialize message field [door]
    data.door = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [open]
    data.open = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [all_doors]
    data.all_doors = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [open_timeout]
    data.open_timeout = _deserializer.float32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.door.length;
    return length + 10;
  }

  static datatype() {
    // Returns string type for a service object
    return 'bwi_msgs/DoorHandlerInterfaceRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'c8bfaa7e29605477bf4fe7ef4f304e74';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string door
    bool open
    bool all_doors
    float32 open_timeout
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new DoorHandlerInterfaceRequest(null);
    if (msg.door !== undefined) {
      resolved.door = msg.door;
    }
    else {
      resolved.door = ''
    }

    if (msg.open !== undefined) {
      resolved.open = msg.open;
    }
    else {
      resolved.open = false
    }

    if (msg.all_doors !== undefined) {
      resolved.all_doors = msg.all_doors;
    }
    else {
      resolved.all_doors = false
    }

    if (msg.open_timeout !== undefined) {
      resolved.open_timeout = msg.open_timeout;
    }
    else {
      resolved.open_timeout = 0.0
    }

    return resolved;
    }
};

class DoorHandlerInterfaceResponse {
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
    // Serializes a message object of type DoorHandlerInterfaceResponse
    // Serialize message field [success]
    bufferOffset = _serializer.bool(obj.success, buffer, bufferOffset);
    // Serialize message field [status]
    bufferOffset = _serializer.string(obj.status, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type DoorHandlerInterfaceResponse
    let len;
    let data = new DoorHandlerInterfaceResponse(null);
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
    return 'bwi_msgs/DoorHandlerInterfaceResponse';
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
    const resolved = new DoorHandlerInterfaceResponse(null);
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
  Request: DoorHandlerInterfaceRequest,
  Response: DoorHandlerInterfaceResponse,
  md5sum() { return '23814681e0b187a587931a833fabf925'; },
  datatype() { return 'bwi_msgs/DoorHandlerInterface'; }
};
