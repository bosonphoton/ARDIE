// Auto-generated. Do not edit!

// (in-package plan_execution.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let AspFluent = require('./AspFluent.js');

//-----------------------------------------------------------

class AspRule {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.head = null;
      this.body = null;
    }
    else {
      if (initObj.hasOwnProperty('head')) {
        this.head = initObj.head
      }
      else {
        this.head = [];
      }
      if (initObj.hasOwnProperty('body')) {
        this.body = initObj.body
      }
      else {
        this.body = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type AspRule
    // Serialize message field [head]
    // Serialize the length for message field [head]
    bufferOffset = _serializer.uint32(obj.head.length, buffer, bufferOffset);
    obj.head.forEach((val) => {
      bufferOffset = AspFluent.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [body]
    // Serialize the length for message field [body]
    bufferOffset = _serializer.uint32(obj.body.length, buffer, bufferOffset);
    obj.body.forEach((val) => {
      bufferOffset = AspFluent.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type AspRule
    let len;
    let data = new AspRule(null);
    // Deserialize message field [head]
    // Deserialize array length for message field [head]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.head = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.head[i] = AspFluent.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [body]
    // Deserialize array length for message field [body]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.body = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.body[i] = AspFluent.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    object.head.forEach((val) => {
      length += AspFluent.getMessageSize(val);
    });
    object.body.forEach((val) => {
      length += AspFluent.getMessageSize(val);
    });
    return length + 8;
  }

  static datatype() {
    // Returns string type for a message object
    return 'plan_execution/AspRule';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '58135dc904c6164beb7b31dfd47be280';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    AspFluent[] head
    AspFluent[] body
    
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
    const resolved = new AspRule(null);
    if (msg.head !== undefined) {
      resolved.head = new Array(msg.head.length);
      for (let i = 0; i < resolved.head.length; ++i) {
        resolved.head[i] = AspFluent.Resolve(msg.head[i]);
      }
    }
    else {
      resolved.head = []
    }

    if (msg.body !== undefined) {
      resolved.body = new Array(msg.body.length);
      for (let i = 0; i < resolved.body.length; ++i) {
        resolved.body[i] = AspFluent.Resolve(msg.body[i]);
      }
    }
    else {
      resolved.body = []
    }

    return resolved;
    }
};

module.exports = AspRule;
