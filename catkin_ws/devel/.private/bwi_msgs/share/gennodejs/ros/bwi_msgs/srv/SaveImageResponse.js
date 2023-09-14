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

class SaveImageResponseRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.response = null;
      this.base_name = null;
      this.location = null;
      this.timestamp = null;
      this.question_id = null;
    }
    else {
      if (initObj.hasOwnProperty('response')) {
        this.response = initObj.response
      }
      else {
        this.response = '';
      }
      if (initObj.hasOwnProperty('base_name')) {
        this.base_name = initObj.base_name
      }
      else {
        this.base_name = '';
      }
      if (initObj.hasOwnProperty('location')) {
        this.location = initObj.location
      }
      else {
        this.location = '';
      }
      if (initObj.hasOwnProperty('timestamp')) {
        this.timestamp = initObj.timestamp
      }
      else {
        this.timestamp = {secs: 0, nsecs: 0};
      }
      if (initObj.hasOwnProperty('question_id')) {
        this.question_id = initObj.question_id
      }
      else {
        this.question_id = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type SaveImageResponseRequest
    // Serialize message field [response]
    bufferOffset = _serializer.string(obj.response, buffer, bufferOffset);
    // Serialize message field [base_name]
    bufferOffset = _serializer.string(obj.base_name, buffer, bufferOffset);
    // Serialize message field [location]
    bufferOffset = _serializer.string(obj.location, buffer, bufferOffset);
    // Serialize message field [timestamp]
    bufferOffset = _serializer.time(obj.timestamp, buffer, bufferOffset);
    // Serialize message field [question_id]
    bufferOffset = _serializer.int32(obj.question_id, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SaveImageResponseRequest
    let len;
    let data = new SaveImageResponseRequest(null);
    // Deserialize message field [response]
    data.response = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [base_name]
    data.base_name = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [location]
    data.location = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [timestamp]
    data.timestamp = _deserializer.time(buffer, bufferOffset);
    // Deserialize message field [question_id]
    data.question_id = _deserializer.int32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.response.length;
    length += object.base_name.length;
    length += object.location.length;
    return length + 24;
  }

  static datatype() {
    // Returns string type for a service object
    return 'bwi_msgs/SaveImageResponseRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '9145da340d77039f6153047bf077ca35';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string response
    string base_name
    string location
    time timestamp
    int32 question_id
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new SaveImageResponseRequest(null);
    if (msg.response !== undefined) {
      resolved.response = msg.response;
    }
    else {
      resolved.response = ''
    }

    if (msg.base_name !== undefined) {
      resolved.base_name = msg.base_name;
    }
    else {
      resolved.base_name = ''
    }

    if (msg.location !== undefined) {
      resolved.location = msg.location;
    }
    else {
      resolved.location = ''
    }

    if (msg.timestamp !== undefined) {
      resolved.timestamp = msg.timestamp;
    }
    else {
      resolved.timestamp = {secs: 0, nsecs: 0}
    }

    if (msg.question_id !== undefined) {
      resolved.question_id = msg.question_id;
    }
    else {
      resolved.question_id = 0
    }

    return resolved;
    }
};

class SaveImageResponseResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.success = null;
    }
    else {
      if (initObj.hasOwnProperty('success')) {
        this.success = initObj.success
      }
      else {
        this.success = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type SaveImageResponseResponse
    // Serialize message field [success]
    bufferOffset = _serializer.bool(obj.success, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SaveImageResponseResponse
    let len;
    let data = new SaveImageResponseResponse(null);
    // Deserialize message field [success]
    data.success = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a service object
    return 'bwi_msgs/SaveImageResponseResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '358e233cde0c8a8bcfea4ce193f8fc15';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    bool success
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new SaveImageResponseResponse(null);
    if (msg.success !== undefined) {
      resolved.success = msg.success;
    }
    else {
      resolved.success = false
    }

    return resolved;
    }
};

module.exports = {
  Request: SaveImageResponseRequest,
  Response: SaveImageResponseResponse,
  md5sum() { return 'a365655a2050358a4bc3505ffc1c4db3'; },
  datatype() { return 'bwi_msgs/SaveImageResponse'; }
};
