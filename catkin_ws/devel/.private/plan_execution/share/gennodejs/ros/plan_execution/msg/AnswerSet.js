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

class AnswerSet {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.fluents = null;
      this.satisfied = null;
    }
    else {
      if (initObj.hasOwnProperty('fluents')) {
        this.fluents = initObj.fluents
      }
      else {
        this.fluents = [];
      }
      if (initObj.hasOwnProperty('satisfied')) {
        this.satisfied = initObj.satisfied
      }
      else {
        this.satisfied = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type AnswerSet
    // Serialize message field [fluents]
    // Serialize the length for message field [fluents]
    bufferOffset = _serializer.uint32(obj.fluents.length, buffer, bufferOffset);
    obj.fluents.forEach((val) => {
      bufferOffset = AspFluent.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [satisfied]
    bufferOffset = _serializer.bool(obj.satisfied, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type AnswerSet
    let len;
    let data = new AnswerSet(null);
    // Deserialize message field [fluents]
    // Deserialize array length for message field [fluents]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.fluents = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.fluents[i] = AspFluent.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [satisfied]
    data.satisfied = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    object.fluents.forEach((val) => {
      length += AspFluent.getMessageSize(val);
    });
    return length + 5;
  }

  static datatype() {
    // Returns string type for a message object
    return 'plan_execution/AnswerSet';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '9b4c2ce462411c0af968d1312672b24e';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    AspFluent[] fluents
    bool satisfied
    
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
    const resolved = new AnswerSet(null);
    if (msg.fluents !== undefined) {
      resolved.fluents = new Array(msg.fluents.length);
      for (let i = 0; i < resolved.fluents.length; ++i) {
        resolved.fluents[i] = AspFluent.Resolve(msg.fluents[i]);
      }
    }
    else {
      resolved.fluents = []
    }

    if (msg.satisfied !== undefined) {
      resolved.satisfied = msg.satisfied;
    }
    else {
      resolved.satisfied = false
    }

    return resolved;
    }
};

module.exports = AnswerSet;
