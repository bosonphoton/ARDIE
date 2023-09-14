// Auto-generated. Do not edit!

// (in-package plan_execution.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let AspRule = require('../msg/AspRule.js');

//-----------------------------------------------------------

let AnswerSet = require('../msg/AnswerSet.js');

//-----------------------------------------------------------

class ComputePlanRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.goal = null;
    }
    else {
      if (initObj.hasOwnProperty('goal')) {
        this.goal = initObj.goal
      }
      else {
        this.goal = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ComputePlanRequest
    // Serialize message field [goal]
    // Serialize the length for message field [goal]
    bufferOffset = _serializer.uint32(obj.goal.length, buffer, bufferOffset);
    obj.goal.forEach((val) => {
      bufferOffset = AspRule.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ComputePlanRequest
    let len;
    let data = new ComputePlanRequest(null);
    // Deserialize message field [goal]
    // Deserialize array length for message field [goal]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.goal = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.goal[i] = AspRule.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    object.goal.forEach((val) => {
      length += AspRule.getMessageSize(val);
    });
    return length + 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'plan_execution/ComputePlanRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '9b55d8ef52d6fee225414e9d23b3ecc6';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    AspRule[] goal
    
    ================================================================================
    MSG: plan_execution/AspRule
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
    const resolved = new ComputePlanRequest(null);
    if (msg.goal !== undefined) {
      resolved.goal = new Array(msg.goal.length);
      for (let i = 0; i < resolved.goal.length; ++i) {
        resolved.goal[i] = AspRule.Resolve(msg.goal[i]);
      }
    }
    else {
      resolved.goal = []
    }

    return resolved;
    }
};

class ComputePlanResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.plan = null;
    }
    else {
      if (initObj.hasOwnProperty('plan')) {
        this.plan = initObj.plan
      }
      else {
        this.plan = new AnswerSet();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ComputePlanResponse
    // Serialize message field [plan]
    bufferOffset = AnswerSet.serialize(obj.plan, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ComputePlanResponse
    let len;
    let data = new ComputePlanResponse(null);
    // Deserialize message field [plan]
    data.plan = AnswerSet.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += AnswerSet.getMessageSize(object.plan);
    return length;
  }

  static datatype() {
    // Returns string type for a service object
    return 'plan_execution/ComputePlanResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '8b9fcf0ed6bb243d982b30ef1810ab49';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    AnswerSet plan
    
    ================================================================================
    MSG: plan_execution/AnswerSet
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
    const resolved = new ComputePlanResponse(null);
    if (msg.plan !== undefined) {
      resolved.plan = AnswerSet.Resolve(msg.plan)
    }
    else {
      resolved.plan = new AnswerSet()
    }

    return resolved;
    }
};

module.exports = {
  Request: ComputePlanRequest,
  Response: ComputePlanResponse,
  md5sum() { return '48a67fad1628d583e4c1c2c356347c33'; },
  datatype() { return 'plan_execution/ComputePlan'; }
};
