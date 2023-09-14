// Auto-generated. Do not edit!

// (in-package plan_execution.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

let HriMessage = require('../msg/HriMessage.js');

//-----------------------------------------------------------

class GetHriMessageRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.message_id = null;
    }
    else {
      if (initObj.hasOwnProperty('message_id')) {
        this.message_id = initObj.message_id
      }
      else {
        this.message_id = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type GetHriMessageRequest
    // Serialize message field [message_id]
    bufferOffset = _serializer.string(obj.message_id, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type GetHriMessageRequest
    let len;
    let data = new GetHriMessageRequest(null);
    // Deserialize message field [message_id]
    data.message_id = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.message_id.length;
    return length + 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'plan_execution/GetHriMessageRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '2aed9f8b65b71345d61f344a1818944b';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string message_id
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new GetHriMessageRequest(null);
    if (msg.message_id !== undefined) {
      resolved.message_id = msg.message_id;
    }
    else {
      resolved.message_id = ''
    }

    return resolved;
    }
};

class GetHriMessageResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.message = null;
    }
    else {
      if (initObj.hasOwnProperty('message')) {
        this.message = initObj.message
      }
      else {
        this.message = new HriMessage();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type GetHriMessageResponse
    // Serialize message field [message]
    bufferOffset = HriMessage.serialize(obj.message, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type GetHriMessageResponse
    let len;
    let data = new GetHriMessageResponse(null);
    // Deserialize message field [message]
    data.message = HriMessage.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += HriMessage.getMessageSize(object.message);
    return length;
  }

  static datatype() {
    // Returns string type for a service object
    return 'plan_execution/GetHriMessageResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '79a5f3df63f78ac18c5bf2f132803ded';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    HriMessage message
    
    ================================================================================
    MSG: plan_execution/HriMessage
    string id
    string content
    string from
    string to
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new GetHriMessageResponse(null);
    if (msg.message !== undefined) {
      resolved.message = HriMessage.Resolve(msg.message)
    }
    else {
      resolved.message = new HriMessage()
    }

    return resolved;
    }
};

module.exports = {
  Request: GetHriMessageRequest,
  Response: GetHriMessageResponse,
  md5sum() { return '09269fe575715249f3753f62218a600a'; },
  datatype() { return 'plan_execution/GetHriMessage'; }
};
