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

class LEDTestType {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.test_type = null;
    }
    else {
      if (initObj.hasOwnProperty('test_type')) {
        this.test_type = initObj.test_type
      }
      else {
        this.test_type = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type LEDTestType
    // Serialize message field [test_type]
    bufferOffset = _serializer.uint8(obj.test_type, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type LEDTestType
    let len;
    let data = new LEDTestType(null);
    // Deserialize message field [test_type]
    data.test_type = _deserializer.uint8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a message object
    return 'bwi_msgs/LEDTestType';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '7319100562ff4b6eeae3f766074dac4b';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # LED Test Type
    
    # Service Variables
    uint8 SET_EVERY_FIFTH = 1
    uint8 SET_FIRST_FIVE = 2
    uint8 TEST_STRIP = 3
    
    # Selects which animation to execute
    
    uint8 test_type
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new LEDTestType(null);
    if (msg.test_type !== undefined) {
      resolved.test_type = msg.test_type;
    }
    else {
      resolved.test_type = 0
    }

    return resolved;
    }
};

// Constants for message
LEDTestType.Constants = {
  SET_EVERY_FIFTH: 1,
  SET_FIRST_FIVE: 2,
  TEST_STRIP: 3,
}

module.exports = LEDTestType;
