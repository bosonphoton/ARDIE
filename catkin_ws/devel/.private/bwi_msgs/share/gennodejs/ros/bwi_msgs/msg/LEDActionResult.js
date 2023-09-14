// Auto-generated. Do not edit!

// (in-package bwi_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class LEDActionResult {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.result_type = null;
    }
    else {
      if (initObj.hasOwnProperty('result_type')) {
        this.result_type = initObj.result_type
      }
      else {
        this.result_type = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type LEDActionResult
    // Serialize message field [result_type]
    bufferOffset = _serializer.uint8(obj.result_type, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type LEDActionResult
    let len;
    let data = new LEDActionResult(null);
    // Deserialize message field [result_type]
    data.result_type = _deserializer.uint8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a message object
    return 'bwi_msgs/LEDActionResult';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'f94ab4126b134ed382c1614cabfab694';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # LED Action Result Type
    
    # Action Variables
    uint8 SUCCESS = 1
    uint8 SHUTDOWN = 2
    uint8 PREEMPTED = 3
    uint8 FAILURE = 4
    
    # Result type returned from LED Control action
    
    uint8 result_type
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new LEDActionResult(null);
    if (msg.result_type !== undefined) {
      resolved.result_type = msg.result_type;
    }
    else {
      resolved.result_type = 0
    }

    return resolved;
    }
};

// Constants for message
LEDActionResult.Constants = {
  SUCCESS: 1,
  SHUTDOWN: 2,
  PREEMPTED: 3,
  FAILURE: 4,
}

module.exports = LEDActionResult;
