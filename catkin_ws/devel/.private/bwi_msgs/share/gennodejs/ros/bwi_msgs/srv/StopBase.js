// Auto-generated. Do not edit!

// (in-package bwi_msgs.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let StopBaseStatus = require('../msg/StopBaseStatus.js');

//-----------------------------------------------------------


//-----------------------------------------------------------

class StopBaseRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.status = null;
      this.requester = null;
    }
    else {
      if (initObj.hasOwnProperty('status')) {
        this.status = initObj.status
      }
      else {
        this.status = new StopBaseStatus();
      }
      if (initObj.hasOwnProperty('requester')) {
        this.requester = initObj.requester
      }
      else {
        this.requester = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type StopBaseRequest
    // Serialize message field [status]
    bufferOffset = StopBaseStatus.serialize(obj.status, buffer, bufferOffset);
    // Serialize message field [requester]
    bufferOffset = _serializer.string(obj.requester, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type StopBaseRequest
    let len;
    let data = new StopBaseRequest(null);
    // Deserialize message field [status]
    data.status = StopBaseStatus.deserialize(buffer, bufferOffset);
    // Deserialize message field [requester]
    data.requester = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.requester.length;
    return length + 5;
  }

  static datatype() {
    // Returns string type for a service object
    return 'bwi_msgs/StopBaseRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '176fd38d0b8455650188bf167ac42bdc';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    ### Stop base controller service call
    #
    #   Since there can be multiple requesters, the current status
    #   returned in the response message may not immediately match the
    #   original request.
    #
    #   If more than one requester sets a PAUSED status, the robot base
    #   will remain motionless until they all request RUNNING again.  If
    #   any requester sets STOPPED, no further requests will be met, the
    #   status remaining permantently STOPPED.
    #
    #   The requester name should be sufficiently unique to avoid multiple
    #   requesters picking the same string.  A reasonable choice is the
    #   ROS node name.
    
    StopBaseStatus status   # new status requested
    string requester        # self-assigned requester name
    
    ================================================================================
    MSG: bwi_msgs/StopBaseStatus
    ### Stop base controller status.
    
    uint8 status
    
    # Constants defining the possible states:
    uint8 RUNNING = 0       # robot base running normally
    uint8 PAUSED =  1       # robot base motion paused
    uint8 STOPPED = 2       # terminal state: no more movement allowed
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new StopBaseRequest(null);
    if (msg.status !== undefined) {
      resolved.status = StopBaseStatus.Resolve(msg.status)
    }
    else {
      resolved.status = new StopBaseStatus()
    }

    if (msg.requester !== undefined) {
      resolved.requester = msg.requester;
    }
    else {
      resolved.requester = ''
    }

    return resolved;
    }
};

class StopBaseResponse {
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
        this.status = new StopBaseStatus();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type StopBaseResponse
    // Serialize message field [status]
    bufferOffset = StopBaseStatus.serialize(obj.status, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type StopBaseResponse
    let len;
    let data = new StopBaseResponse(null);
    // Deserialize message field [status]
    data.status = StopBaseStatus.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a service object
    return 'bwi_msgs/StopBaseResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '8afc83880de0f7bab66eb1f655da7110';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    StopBaseStatus status   # current status after request handled
    
    
    ================================================================================
    MSG: bwi_msgs/StopBaseStatus
    ### Stop base controller status.
    
    uint8 status
    
    # Constants defining the possible states:
    uint8 RUNNING = 0       # robot base running normally
    uint8 PAUSED =  1       # robot base motion paused
    uint8 STOPPED = 2       # terminal state: no more movement allowed
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new StopBaseResponse(null);
    if (msg.status !== undefined) {
      resolved.status = StopBaseStatus.Resolve(msg.status)
    }
    else {
      resolved.status = new StopBaseStatus()
    }

    return resolved;
    }
};

module.exports = {
  Request: StopBaseRequest,
  Response: StopBaseResponse,
  md5sum() { return '3957fc0f7e0d8a16ac168544ae4512dc'; },
  datatype() { return 'bwi_msgs/StopBase'; }
};
