// Auto-generated. Do not edit!

// (in-package plan_execution.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class HriMessage {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.id = null;
      this.content = null;
      this.from = null;
      this.to = null;
    }
    else {
      if (initObj.hasOwnProperty('id')) {
        this.id = initObj.id
      }
      else {
        this.id = '';
      }
      if (initObj.hasOwnProperty('content')) {
        this.content = initObj.content
      }
      else {
        this.content = '';
      }
      if (initObj.hasOwnProperty('from')) {
        this.from = initObj.from
      }
      else {
        this.from = '';
      }
      if (initObj.hasOwnProperty('to')) {
        this.to = initObj.to
      }
      else {
        this.to = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type HriMessage
    // Serialize message field [id]
    bufferOffset = _serializer.string(obj.id, buffer, bufferOffset);
    // Serialize message field [content]
    bufferOffset = _serializer.string(obj.content, buffer, bufferOffset);
    // Serialize message field [from]
    bufferOffset = _serializer.string(obj.from, buffer, bufferOffset);
    // Serialize message field [to]
    bufferOffset = _serializer.string(obj.to, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type HriMessage
    let len;
    let data = new HriMessage(null);
    // Deserialize message field [id]
    data.id = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [content]
    data.content = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [from]
    data.from = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [to]
    data.to = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.id.length;
    length += object.content.length;
    length += object.from.length;
    length += object.to.length;
    return length + 16;
  }

  static datatype() {
    // Returns string type for a message object
    return 'plan_execution/HriMessage';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '4708b0c47a957a02c20845120a2f4b1c';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
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
    const resolved = new HriMessage(null);
    if (msg.id !== undefined) {
      resolved.id = msg.id;
    }
    else {
      resolved.id = ''
    }

    if (msg.content !== undefined) {
      resolved.content = msg.content;
    }
    else {
      resolved.content = ''
    }

    if (msg.from !== undefined) {
      resolved.from = msg.from;
    }
    else {
      resolved.from = ''
    }

    if (msg.to !== undefined) {
      resolved.to = msg.to;
    }
    else {
      resolved.to = ''
    }

    return resolved;
    }
};

module.exports = HriMessage;
