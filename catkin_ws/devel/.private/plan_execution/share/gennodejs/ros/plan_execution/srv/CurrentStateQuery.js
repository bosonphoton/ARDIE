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

class CurrentStateQueryRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.query = null;
    }
    else {
      if (initObj.hasOwnProperty('query')) {
        this.query = initObj.query
      }
      else {
        this.query = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type CurrentStateQueryRequest
    // Serialize message field [query]
    // Serialize the length for message field [query]
    bufferOffset = _serializer.uint32(obj.query.length, buffer, bufferOffset);
    obj.query.forEach((val) => {
      bufferOffset = AspRule.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type CurrentStateQueryRequest
    let len;
    let data = new CurrentStateQueryRequest(null);
    // Deserialize message field [query]
    // Deserialize array length for message field [query]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.query = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.query[i] = AspRule.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    object.query.forEach((val) => {
      length += AspRule.getMessageSize(val);
    });
    return length + 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'plan_execution/CurrentStateQueryRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'a20201e158d8a211d764fdce4a0d1095';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    AspRule[] query
    
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
    const resolved = new CurrentStateQueryRequest(null);
    if (msg.query !== undefined) {
      resolved.query = new Array(msg.query.length);
      for (let i = 0; i < resolved.query.length; ++i) {
        resolved.query[i] = AspRule.Resolve(msg.query[i]);
      }
    }
    else {
      resolved.query = []
    }

    return resolved;
    }
};

class CurrentStateQueryResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.answer = null;
    }
    else {
      if (initObj.hasOwnProperty('answer')) {
        this.answer = initObj.answer
      }
      else {
        this.answer = new AnswerSet();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type CurrentStateQueryResponse
    // Serialize message field [answer]
    bufferOffset = AnswerSet.serialize(obj.answer, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type CurrentStateQueryResponse
    let len;
    let data = new CurrentStateQueryResponse(null);
    // Deserialize message field [answer]
    data.answer = AnswerSet.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += AnswerSet.getMessageSize(object.answer);
    return length;
  }

  static datatype() {
    // Returns string type for a service object
    return 'plan_execution/CurrentStateQueryResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'ede65e7da70fc603627007f333530693';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    AnswerSet answer
    
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
    const resolved = new CurrentStateQueryResponse(null);
    if (msg.answer !== undefined) {
      resolved.answer = AnswerSet.Resolve(msg.answer)
    }
    else {
      resolved.answer = new AnswerSet()
    }

    return resolved;
    }
};

module.exports = {
  Request: CurrentStateQueryRequest,
  Response: CurrentStateQueryResponse,
  md5sum() { return '2cbc1d643059afa4b61504739724cdfc'; },
  datatype() { return 'plan_execution/CurrentStateQuery'; }
};
