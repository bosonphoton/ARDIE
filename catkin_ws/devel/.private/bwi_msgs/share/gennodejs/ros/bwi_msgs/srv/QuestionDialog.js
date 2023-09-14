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

class QuestionDialogRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.type = null;
      this.message = null;
      this.options = null;
      this.timeout = null;
    }
    else {
      if (initObj.hasOwnProperty('type')) {
        this.type = initObj.type
      }
      else {
        this.type = 0;
      }
      if (initObj.hasOwnProperty('message')) {
        this.message = initObj.message
      }
      else {
        this.message = '';
      }
      if (initObj.hasOwnProperty('options')) {
        this.options = initObj.options
      }
      else {
        this.options = [];
      }
      if (initObj.hasOwnProperty('timeout')) {
        this.timeout = initObj.timeout
      }
      else {
        this.timeout = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type QuestionDialogRequest
    // Serialize message field [type]
    bufferOffset = _serializer.int32(obj.type, buffer, bufferOffset);
    // Serialize message field [message]
    bufferOffset = _serializer.string(obj.message, buffer, bufferOffset);
    // Serialize message field [options]
    bufferOffset = _arraySerializer.string(obj.options, buffer, bufferOffset, null);
    // Serialize message field [timeout]
    bufferOffset = _serializer.float32(obj.timeout, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type QuestionDialogRequest
    let len;
    let data = new QuestionDialogRequest(null);
    // Deserialize message field [type]
    data.type = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [message]
    data.message = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [options]
    data.options = _arrayDeserializer.string(buffer, bufferOffset, null)
    // Deserialize message field [timeout]
    data.timeout = _deserializer.float32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.message.length;
    object.options.forEach((val) => {
      length += 4 + val.length;
    });
    return length + 16;
  }

  static datatype() {
    // Returns string type for a service object
    return 'bwi_msgs/QuestionDialogRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '6ce87aad338e077acf0196b16cf4ea7a';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # Constants defining question type
    int32 DISPLAY = 0
    int32 CHOICE_QUESTION = 1
    int32 TEXT_QUESTION = 2
    
    # Constants regarding timeout
    float32 NO_TIMEOUT=0.0
    
    # Constants for response index
    int32 NO_RESPONSE=-1
    int32 TIMED_OUT=-2
    int32 TEXT_RESPONSE=-3
    int32 PREEMPTED=-4
    
    int32 type
    string message
    string[] options # used in choice questions
    float32 timeout
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new QuestionDialogRequest(null);
    if (msg.type !== undefined) {
      resolved.type = msg.type;
    }
    else {
      resolved.type = 0
    }

    if (msg.message !== undefined) {
      resolved.message = msg.message;
    }
    else {
      resolved.message = ''
    }

    if (msg.options !== undefined) {
      resolved.options = msg.options;
    }
    else {
      resolved.options = []
    }

    if (msg.timeout !== undefined) {
      resolved.timeout = msg.timeout;
    }
    else {
      resolved.timeout = 0.0
    }

    return resolved;
    }
};

// Constants for message
QuestionDialogRequest.Constants = {
  DISPLAY: 0,
  CHOICE_QUESTION: 1,
  TEXT_QUESTION: 2,
  NO_TIMEOUT: 0.0,
  NO_RESPONSE: -1,
  TIMED_OUT: -2,
  TEXT_RESPONSE: -3,
  PREEMPTED: -4,
}

class QuestionDialogResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.index = null;
      this.text = null;
    }
    else {
      if (initObj.hasOwnProperty('index')) {
        this.index = initObj.index
      }
      else {
        this.index = 0;
      }
      if (initObj.hasOwnProperty('text')) {
        this.text = initObj.text
      }
      else {
        this.text = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type QuestionDialogResponse
    // Serialize message field [index]
    bufferOffset = _serializer.int32(obj.index, buffer, bufferOffset);
    // Serialize message field [text]
    bufferOffset = _serializer.string(obj.text, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type QuestionDialogResponse
    let len;
    let data = new QuestionDialogResponse(null);
    // Deserialize message field [index]
    data.index = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [text]
    data.text = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.text.length;
    return length + 8;
  }

  static datatype() {
    // Returns string type for a service object
    return 'bwi_msgs/QuestionDialogResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '0943bcb850cf8c07c6414e5cf489a8f2';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int32 index
    string text
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new QuestionDialogResponse(null);
    if (msg.index !== undefined) {
      resolved.index = msg.index;
    }
    else {
      resolved.index = 0
    }

    if (msg.text !== undefined) {
      resolved.text = msg.text;
    }
    else {
      resolved.text = ''
    }

    return resolved;
    }
};

module.exports = {
  Request: QuestionDialogRequest,
  Response: QuestionDialogResponse,
  md5sum() { return 'da20546e76b989e7fb856c33a31cdf5d'; },
  datatype() { return 'bwi_msgs/QuestionDialog'; }
};
