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

class SemanticParserRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.type = null;
      this.input_text = null;
    }
    else {
      if (initObj.hasOwnProperty('type')) {
        this.type = initObj.type
      }
      else {
        this.type = 0;
      }
      if (initObj.hasOwnProperty('input_text')) {
        this.input_text = initObj.input_text
      }
      else {
        this.input_text = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type SemanticParserRequest
    // Serialize message field [type]
    bufferOffset = _serializer.int32(obj.type, buffer, bufferOffset);
    // Serialize message field [input_text]
    bufferOffset = _serializer.string(obj.input_text, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SemanticParserRequest
    let len;
    let data = new SemanticParserRequest(null);
    // Deserialize message field [type]
    data.type = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [input_text]
    data.input_text = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.input_text.length;
    return length + 8;
  }

  static datatype() {
    // Returns string type for a service object
    return 'bwi_msgs/SemanticParserRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '1250825de9ebfa59119ec6348d0f8a79';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # Constants defining type
    int32 QUESTION_ASKING = 0
    int32 TRAINING = 1
    int32 STARTOVER = 2
    int32 GETID = 3
    
    int32 type
    string input_text
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new SemanticParserRequest(null);
    if (msg.type !== undefined) {
      resolved.type = msg.type;
    }
    else {
      resolved.type = 0
    }

    if (msg.input_text !== undefined) {
      resolved.input_text = msg.input_text;
    }
    else {
      resolved.input_text = ''
    }

    return resolved;
    }
};

// Constants for message
SemanticParserRequest.Constants = {
  QUESTION_ASKING: 0,
  TRAINING: 1,
  STARTOVER: 2,
  GETID: 3,
}

class SemanticParserResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.output_text = null;
      this.query = null;
    }
    else {
      if (initObj.hasOwnProperty('output_text')) {
        this.output_text = initObj.output_text
      }
      else {
        this.output_text = '';
      }
      if (initObj.hasOwnProperty('query')) {
        this.query = initObj.query
      }
      else {
        this.query = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type SemanticParserResponse
    // Serialize message field [output_text]
    bufferOffset = _serializer.string(obj.output_text, buffer, bufferOffset);
    // Serialize message field [query]
    bufferOffset = _serializer.string(obj.query, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SemanticParserResponse
    let len;
    let data = new SemanticParserResponse(null);
    // Deserialize message field [output_text]
    data.output_text = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [query]
    data.query = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.output_text.length;
    length += object.query.length;
    return length + 8;
  }

  static datatype() {
    // Returns string type for a service object
    return 'bwi_msgs/SemanticParserResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '4df998ea60985a7aee13f78acfd30180';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string output_text
    string query
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new SemanticParserResponse(null);
    if (msg.output_text !== undefined) {
      resolved.output_text = msg.output_text;
    }
    else {
      resolved.output_text = ''
    }

    if (msg.query !== undefined) {
      resolved.query = msg.query;
    }
    else {
      resolved.query = ''
    }

    return resolved;
    }
};

module.exports = {
  Request: SemanticParserRequest,
  Response: SemanticParserResponse,
  md5sum() { return '12b95219baec3a9aff9fedb292061f4e'; },
  datatype() { return 'bwi_msgs/SemanticParser'; }
};
