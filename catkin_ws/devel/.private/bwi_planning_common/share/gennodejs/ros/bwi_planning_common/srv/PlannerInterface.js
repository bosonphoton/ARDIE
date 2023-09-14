// Auto-generated. Do not edit!

// (in-package bwi_planning_common.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let PlannerAtom = require('../msg/PlannerAtom.js');

//-----------------------------------------------------------


//-----------------------------------------------------------

class PlannerInterfaceRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.command = null;
    }
    else {
      if (initObj.hasOwnProperty('command')) {
        this.command = initObj.command
      }
      else {
        this.command = new PlannerAtom();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type PlannerInterfaceRequest
    // Serialize message field [command]
    bufferOffset = PlannerAtom.serialize(obj.command, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type PlannerInterfaceRequest
    let len;
    let data = new PlannerInterfaceRequest(null);
    // Deserialize message field [command]
    data.command = PlannerAtom.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += PlannerAtom.getMessageSize(object.command);
    return length;
  }

  static datatype() {
    // Returns string type for a service object
    return 'bwi_planning_common/PlannerInterfaceRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '3b44d18631c1272d8bcb3e1f37b50d61';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    PlannerAtom command
    
    ================================================================================
    MSG: bwi_planning_common/PlannerAtom
    string name
    string[] value
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new PlannerInterfaceRequest(null);
    if (msg.command !== undefined) {
      resolved.command = PlannerAtom.Resolve(msg.command)
    }
    else {
      resolved.command = new PlannerAtom()
    }

    return resolved;
    }
};

class PlannerInterfaceResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.success = null;
      this.status = null;
      this.observations = null;
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
      if (initObj.hasOwnProperty('observations')) {
        this.observations = initObj.observations
      }
      else {
        this.observations = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type PlannerInterfaceResponse
    // Serialize message field [success]
    bufferOffset = _serializer.bool(obj.success, buffer, bufferOffset);
    // Serialize message field [status]
    bufferOffset = _serializer.string(obj.status, buffer, bufferOffset);
    // Serialize message field [observations]
    // Serialize the length for message field [observations]
    bufferOffset = _serializer.uint32(obj.observations.length, buffer, bufferOffset);
    obj.observations.forEach((val) => {
      bufferOffset = PlannerAtom.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type PlannerInterfaceResponse
    let len;
    let data = new PlannerInterfaceResponse(null);
    // Deserialize message field [success]
    data.success = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [status]
    data.status = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [observations]
    // Deserialize array length for message field [observations]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.observations = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.observations[i] = PlannerAtom.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.status.length;
    object.observations.forEach((val) => {
      length += PlannerAtom.getMessageSize(val);
    });
    return length + 9;
  }

  static datatype() {
    // Returns string type for a service object
    return 'bwi_planning_common/PlannerInterfaceResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '4b369ca08113322eccf2b5371446d8fc';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    bool success
    string status
    PlannerAtom[] observations
    
    
    ================================================================================
    MSG: bwi_planning_common/PlannerAtom
    string name
    string[] value
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new PlannerInterfaceResponse(null);
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

    if (msg.observations !== undefined) {
      resolved.observations = new Array(msg.observations.length);
      for (let i = 0; i < resolved.observations.length; ++i) {
        resolved.observations[i] = PlannerAtom.Resolve(msg.observations[i]);
      }
    }
    else {
      resolved.observations = []
    }

    return resolved;
    }
};

module.exports = {
  Request: PlannerInterfaceRequest,
  Response: PlannerInterfaceResponse,
  md5sum() { return '229233a031a71ea0b14913f42ea18176'; },
  datatype() { return 'bwi_planning_common/PlannerInterface'; }
};
