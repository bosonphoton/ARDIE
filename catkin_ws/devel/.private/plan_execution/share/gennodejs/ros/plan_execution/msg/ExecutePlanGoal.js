// Auto-generated. Do not edit!

// (in-package plan_execution.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let AspRule = require('./AspRule.js');

//-----------------------------------------------------------

class ExecutePlanGoal {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.aspGoal = null;
    }
    else {
      if (initObj.hasOwnProperty('aspGoal')) {
        this.aspGoal = initObj.aspGoal
      }
      else {
        this.aspGoal = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ExecutePlanGoal
    // Serialize message field [aspGoal]
    // Serialize the length for message field [aspGoal]
    bufferOffset = _serializer.uint32(obj.aspGoal.length, buffer, bufferOffset);
    obj.aspGoal.forEach((val) => {
      bufferOffset = AspRule.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ExecutePlanGoal
    let len;
    let data = new ExecutePlanGoal(null);
    // Deserialize message field [aspGoal]
    // Deserialize array length for message field [aspGoal]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.aspGoal = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.aspGoal[i] = AspRule.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    object.aspGoal.forEach((val) => {
      length += AspRule.getMessageSize(val);
    });
    return length + 4;
  }

  static datatype() {
    // Returns string type for a message object
    return 'plan_execution/ExecutePlanGoal';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '2c9cb40febc2ce81b7684fa64b2f8111';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======
    AspRule[] aspGoal
    
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
    const resolved = new ExecutePlanGoal(null);
    if (msg.aspGoal !== undefined) {
      resolved.aspGoal = new Array(msg.aspGoal.length);
      for (let i = 0; i < resolved.aspGoal.length; ++i) {
        resolved.aspGoal[i] = AspRule.Resolve(msg.aspGoal[i]);
      }
    }
    else {
      resolved.aspGoal = []
    }

    return resolved;
    }
};

module.exports = ExecutePlanGoal;