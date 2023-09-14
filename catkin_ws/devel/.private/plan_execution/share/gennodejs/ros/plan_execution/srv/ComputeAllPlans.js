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

class ComputeAllPlansRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.goal = null;
      this.suboptimality = null;
    }
    else {
      if (initObj.hasOwnProperty('goal')) {
        this.goal = initObj.goal
      }
      else {
        this.goal = [];
      }
      if (initObj.hasOwnProperty('suboptimality')) {
        this.suboptimality = initObj.suboptimality
      }
      else {
        this.suboptimality = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ComputeAllPlansRequest
    // Serialize message field [goal]
    // Serialize the length for message field [goal]
    bufferOffset = _serializer.uint32(obj.goal.length, buffer, bufferOffset);
    obj.goal.forEach((val) => {
      bufferOffset = AspRule.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [suboptimality]
    bufferOffset = _serializer.float64(obj.suboptimality, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ComputeAllPlansRequest
    let len;
    let data = new ComputeAllPlansRequest(null);
    // Deserialize message field [goal]
    // Deserialize array length for message field [goal]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.goal = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.goal[i] = AspRule.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [suboptimality]
    data.suboptimality = _deserializer.float64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    object.goal.forEach((val) => {
      length += AspRule.getMessageSize(val);
    });
    return length + 12;
  }

  static datatype() {
    // Returns string type for a service object
    return 'plan_execution/ComputeAllPlansRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '68cf49ab7d4a0a20132dbf7035621ed6';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    AspRule[] goal
    float64 suboptimality
    
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
    const resolved = new ComputeAllPlansRequest(null);
    if (msg.goal !== undefined) {
      resolved.goal = new Array(msg.goal.length);
      for (let i = 0; i < resolved.goal.length; ++i) {
        resolved.goal[i] = AspRule.Resolve(msg.goal[i]);
      }
    }
    else {
      resolved.goal = []
    }

    if (msg.suboptimality !== undefined) {
      resolved.suboptimality = msg.suboptimality;
    }
    else {
      resolved.suboptimality = 0.0
    }

    return resolved;
    }
};

class ComputeAllPlansResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.plans = null;
    }
    else {
      if (initObj.hasOwnProperty('plans')) {
        this.plans = initObj.plans
      }
      else {
        this.plans = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ComputeAllPlansResponse
    // Serialize message field [plans]
    // Serialize the length for message field [plans]
    bufferOffset = _serializer.uint32(obj.plans.length, buffer, bufferOffset);
    obj.plans.forEach((val) => {
      bufferOffset = AnswerSet.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ComputeAllPlansResponse
    let len;
    let data = new ComputeAllPlansResponse(null);
    // Deserialize message field [plans]
    // Deserialize array length for message field [plans]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.plans = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.plans[i] = AnswerSet.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    object.plans.forEach((val) => {
      length += AnswerSet.getMessageSize(val);
    });
    return length + 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'plan_execution/ComputeAllPlansResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'e78a17dc1189d057625c2e5b0d31d49d';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    AnswerSet[] plans
    
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
    const resolved = new ComputeAllPlansResponse(null);
    if (msg.plans !== undefined) {
      resolved.plans = new Array(msg.plans.length);
      for (let i = 0; i < resolved.plans.length; ++i) {
        resolved.plans[i] = AnswerSet.Resolve(msg.plans[i]);
      }
    }
    else {
      resolved.plans = []
    }

    return resolved;
    }
};

module.exports = {
  Request: ComputeAllPlansRequest,
  Response: ComputeAllPlansResponse,
  md5sum() { return '5055d2fd937455d30a412653ffa463c6'; },
  datatype() { return 'plan_execution/ComputeAllPlans'; }
};
