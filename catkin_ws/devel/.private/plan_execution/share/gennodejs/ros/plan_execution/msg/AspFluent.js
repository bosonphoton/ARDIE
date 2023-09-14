// Auto-generated. Do not edit!

// (in-package plan_execution.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class AspFluent {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.name = null;
      this.variables = null;
      this.timeStep = null;
    }
    else {
      if (initObj.hasOwnProperty('name')) {
        this.name = initObj.name
      }
      else {
        this.name = '';
      }
      if (initObj.hasOwnProperty('variables')) {
        this.variables = initObj.variables
      }
      else {
        this.variables = [];
      }
      if (initObj.hasOwnProperty('timeStep')) {
        this.timeStep = initObj.timeStep
      }
      else {
        this.timeStep = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type AspFluent
    // Serialize message field [name]
    bufferOffset = _serializer.string(obj.name, buffer, bufferOffset);
    // Serialize message field [variables]
    bufferOffset = _arraySerializer.string(obj.variables, buffer, bufferOffset, null);
    // Serialize message field [timeStep]
    bufferOffset = _serializer.uint32(obj.timeStep, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type AspFluent
    let len;
    let data = new AspFluent(null);
    // Deserialize message field [name]
    data.name = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [variables]
    data.variables = _arrayDeserializer.string(buffer, bufferOffset, null)
    // Deserialize message field [timeStep]
    data.timeStep = _deserializer.uint32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.name.length;
    object.variables.forEach((val) => {
      length += 4 + val.length;
    });
    return length + 12;
  }

  static datatype() {
    // Returns string type for a message object
    return 'plan_execution/AspFluent';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '8582b3c5ad01957af2b2eb3b38a251b2';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
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
    const resolved = new AspFluent(null);
    if (msg.name !== undefined) {
      resolved.name = msg.name;
    }
    else {
      resolved.name = ''
    }

    if (msg.variables !== undefined) {
      resolved.variables = msg.variables;
    }
    else {
      resolved.variables = []
    }

    if (msg.timeStep !== undefined) {
      resolved.timeStep = msg.timeStep;
    }
    else {
      resolved.timeStep = 0
    }

    return resolved;
    }
};

module.exports = AspFluent;
