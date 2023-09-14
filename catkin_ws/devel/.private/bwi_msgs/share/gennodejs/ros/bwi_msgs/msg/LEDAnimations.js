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

class LEDAnimations {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.led_animations = null;
    }
    else {
      if (initObj.hasOwnProperty('led_animations')) {
        this.led_animations = initObj.led_animations
      }
      else {
        this.led_animations = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type LEDAnimations
    // Serialize message field [led_animations]
    bufferOffset = _serializer.uint8(obj.led_animations, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type LEDAnimations
    let len;
    let data = new LEDAnimations(null);
    // Deserialize message field [led_animations]
    data.led_animations = _deserializer.uint8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a message object
    return 'bwi_msgs/LEDAnimations';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'd7b2a068392ac708121e3251cf2dde04';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # LED Animations
    
    # Action Variables
    uint8 LEFT_TURN = 1
    uint8 RIGHT_TURN = 2
    uint8 REVERSE = 3
    uint8 BLOCKED = 4
    uint8 UP = 5
    uint8 DOWN = 6
    uint8 NEED_ASSIST = 7
    
    # Selects which animation to execute
    
    uint8 led_animations
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new LEDAnimations(null);
    if (msg.led_animations !== undefined) {
      resolved.led_animations = msg.led_animations;
    }
    else {
      resolved.led_animations = 0
    }

    return resolved;
    }
};

// Constants for message
LEDAnimations.Constants = {
  LEFT_TURN: 1,
  RIGHT_TURN: 2,
  REVERSE: 3,
  BLOCKED: 4,
  UP: 5,
  DOWN: 6,
  NEED_ASSIST: 7,
}

module.exports = LEDAnimations;
