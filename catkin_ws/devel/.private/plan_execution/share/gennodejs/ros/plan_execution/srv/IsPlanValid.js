// Auto-generated. Do not edit!

// (in-package plan_execution.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let AnswerSet = require('../msg/AnswerSet.js');
let AspRule = require('../msg/AspRule.js');

//-----------------------------------------------------------


//-----------------------------------------------------------

class IsPlanValidRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.plan = null;
      this.goal = null;
    }
    else {
      if (initObj.hasOwnProperty('plan')) {
        this.plan = initObj.plan
      }
      else {
        this.plan = new AnswerSet();
      }
      if (initObj.hasOwnProperty('goal')) {
        this.goal = initObj.goal
      }
      else {
        this.goal = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type IsPlanValidRequest
    // Serialize message field [plan]
    bufferOffset = AnswerSet.serialize(obj.plan, buffer, bufferOffset);
    // Serialize message field [goal]
    // Serialize the length for message field [goal]
    bufferOffset = _serializer.uint32(obj.goal.length, buffer, bufferOffset);
    obj.goal.forEach((val) => {
      bufferOffset = AspRule.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type IsPlanValidRequest
    let len;
    let data = new IsPlanValidRequest(null);
    // Deserialize message field [plan]
    data.plan = AnswerSet.deserialize(buffer, bufferOffset);
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
    length += AnswerSet.getMessageSize(object.plan);
    object.goal.forEach((val) => {
      length += AspRule.getMessageSize(val);
    });
    return length + 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'plan_execution/IsPlanValidRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'df6bb06058bbc88de7aec8eef2490a9e';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    AnswerSet plan
    AspRule[] goal
    
    ================================================================================
    MSG: plan_execution/AnswerSet
    AspFluent[] fluents
    bool satisfied
    
    ================================================================================
    MSG: plan_execution/AspFluent
    string name
    string[] variables
    uint32 timeStep
    
    ================================================================================
    MSG: plan_execution/AspRule
    AspFluent[] head
    AspFluent[] body
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new IsPlanValidRequest(null);
    if (msg.plan !== undefined) {
      resolved.plan = AnswerSet.Resolve(msg.plan)
    }
    else {
      resolved.plan = new AnswerSet()
    }

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

class IsPlanValidResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.valid = null;
    }
    else {
      if (initObj.hasOwnProperty('valid')) {
        this.valid = initObj.valid
      }
      else {
        this.valid = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type IsPlanValidResponse
    // Serialize message field [valid]
    bufferOffset = _serializer.bool(obj.valid, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type IsPlanValidResponse
    let len;
    let data = new IsPlanValidResponse(null);
    // Deserialize message field [valid]
    data.valid = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a service object
    return 'plan_execution/IsPlanValidResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'a04c5033e7efda95fc3786e8d449c6e7';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    bool valid
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new IsPlanValidResponse(null);
    if (msg.valid !== undefined) {
      resolved.valid = msg.valid;
    }
    else {
      resolved.valid = false
    }

    return resolved;
    }
};

module.exports = {
  Request: IsPlanValidRequest,
  Response: IsPlanValidResponse,
  md5sum() { return '80564b2371ef8008ffd47822957ab439'; },
  datatype() { return 'plan_execution/IsPlanValid'; }
};
