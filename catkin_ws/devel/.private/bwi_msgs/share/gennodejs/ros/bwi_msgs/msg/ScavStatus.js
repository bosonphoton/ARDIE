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

class ScavStatus {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.names = null;
      this.statuses = null;
      this.certificates = null;
    }
    else {
      if (initObj.hasOwnProperty('names')) {
        this.names = initObj.names
      }
      else {
        this.names = [];
      }
      if (initObj.hasOwnProperty('statuses')) {
        this.statuses = initObj.statuses
      }
      else {
        this.statuses = [];
      }
      if (initObj.hasOwnProperty('certificates')) {
        this.certificates = initObj.certificates
      }
      else {
        this.certificates = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ScavStatus
    // Serialize message field [names]
    bufferOffset = _arraySerializer.string(obj.names, buffer, bufferOffset, null);
    // Serialize message field [statuses]
    bufferOffset = _arraySerializer.int32(obj.statuses, buffer, bufferOffset, null);
    // Serialize message field [certificates]
    bufferOffset = _arraySerializer.string(obj.certificates, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ScavStatus
    let len;
    let data = new ScavStatus(null);
    // Deserialize message field [names]
    data.names = _arrayDeserializer.string(buffer, bufferOffset, null)
    // Deserialize message field [statuses]
    data.statuses = _arrayDeserializer.int32(buffer, bufferOffset, null)
    // Deserialize message field [certificates]
    data.certificates = _arrayDeserializer.string(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    object.names.forEach((val) => {
      length += 4 + val.length;
    });
    length += 4 * object.statuses.length;
    object.certificates.forEach((val) => {
      length += 4 + val.length;
    });
    return length + 12;
  }

  static datatype() {
    // Returns string type for a message object
    return 'bwi_msgs/ScavStatus';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '38e2b5af66f5d641973272e8eb0ef803';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int32 ONGOING = 1
    int32 FINISHED = 2
    int32 TODO = 3
    
    string[] names
    int32[] statuses
    string[] certificates
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new ScavStatus(null);
    if (msg.names !== undefined) {
      resolved.names = msg.names;
    }
    else {
      resolved.names = []
    }

    if (msg.statuses !== undefined) {
      resolved.statuses = msg.statuses;
    }
    else {
      resolved.statuses = []
    }

    if (msg.certificates !== undefined) {
      resolved.certificates = msg.certificates;
    }
    else {
      resolved.certificates = []
    }

    return resolved;
    }
};

// Constants for message
ScavStatus.Constants = {
  ONGOING: 1,
  FINISHED: 2,
  TODO: 3,
}

module.exports = ScavStatus;
