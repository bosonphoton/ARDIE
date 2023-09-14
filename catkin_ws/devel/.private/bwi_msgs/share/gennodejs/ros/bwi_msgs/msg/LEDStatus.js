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

class LEDStatus {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.status = null;
    }
    else {
      if (initObj.hasOwnProperty('status')) {
        this.status = initObj.status
      }
      else {
        this.status = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type LEDStatus
    // Serialize message field [status]
    bufferOffset = _serializer.uint8(obj.status, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type LEDStatus
    let len;
    let data = new LEDStatus(null);
    // Deserialize message field [status]
    data.status = _deserializer.uint8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a message object
    return 'bwi_msgs/LEDStatus';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'ca10aeadc7986827cb9450ebce4e4963';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # LED Status
    
    # Service Variables
    uint8 RUN_ON = 1
    uint8 RUN_OFF = 0
    uint8 CAMERA_ON = 3
    uint8 CAMERA_OFF = 2
    
    # Selects which animation to execute
    
    uint8 status
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new LEDStatus(null);
    if (msg.status !== undefined) {
      resolved.status = msg.status;
    }
    else {
      resolved.status = 0
    }

    return resolved;
    }
};

// Constants for message
LEDStatus.Constants = {
  RUN_ON: 1,
  RUN_OFF: 0,
  CAMERA_ON: 3,
  CAMERA_OFF: 2,
}

module.exports = LEDStatus;
