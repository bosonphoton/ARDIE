// Auto-generated. Do not edit!

// (in-package bwi_msgs.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------


//-----------------------------------------------------------

class ScavHuntRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.type = null;
    }
    else {
      if (initObj.hasOwnProperty('type')) {
        this.type = initObj.type
      }
      else {
        this.type = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ScavHuntRequest
    // Serialize message field [type]
    bufferOffset = _serializer.int32(obj.type, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ScavHuntRequest
    let len;
    let data = new ScavHuntRequest(null);
    // Deserialize message field [type]
    data.type = _deserializer.int32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'bwi_msgs/ScavHuntRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'e5f140e985c7a1596daec58bee461f5a';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int32 SCAV_PAUSE = 0
    int32 SCAV_RESUME = 1
    
    int32 type
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new ScavHuntRequest(null);
    if (msg.type !== undefined) {
      resolved.type = msg.type;
    }
    else {
      resolved.type = 0
    }

    return resolved;
    }
};

// Constants for message
ScavHuntRequest.Constants = {
  SCAV_PAUSE: 0,
  SCAV_RESUME: 1,
}

class ScavHuntResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
    }
    else {
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ScavHuntResponse
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ScavHuntResponse
    let len;
    let data = new ScavHuntResponse(null);
    return data;
  }

  static getMessageSize(object) {
    return 0;
  }

  static datatype() {
    // Returns string type for a service object
    return 'bwi_msgs/ScavHuntResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'd41d8cd98f00b204e9800998ecf8427e';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new ScavHuntResponse(null);
    return resolved;
    }
};

module.exports = {
  Request: ScavHuntRequest,
  Response: ScavHuntResponse,
  md5sum() { return 'e5f140e985c7a1596daec58bee461f5a'; },
  datatype() { return 'bwi_msgs/ScavHunt'; }
};
