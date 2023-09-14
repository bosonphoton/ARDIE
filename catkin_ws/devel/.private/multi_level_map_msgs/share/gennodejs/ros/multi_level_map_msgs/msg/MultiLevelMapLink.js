// Auto-generated. Do not edit!

// (in-package multi_level_map_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let MultiLevelMapPoint = require('./MultiLevelMapPoint.js');

//-----------------------------------------------------------

class MultiLevelMapLink {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.from_point = null;
      this.to_point = null;
      this.traversal_cost = null;
      this.forward_message = null;
      this.reverse_message = null;
    }
    else {
      if (initObj.hasOwnProperty('from_point')) {
        this.from_point = initObj.from_point
      }
      else {
        this.from_point = new MultiLevelMapPoint();
      }
      if (initObj.hasOwnProperty('to_point')) {
        this.to_point = initObj.to_point
      }
      else {
        this.to_point = new MultiLevelMapPoint();
      }
      if (initObj.hasOwnProperty('traversal_cost')) {
        this.traversal_cost = initObj.traversal_cost
      }
      else {
        this.traversal_cost = 0.0;
      }
      if (initObj.hasOwnProperty('forward_message')) {
        this.forward_message = initObj.forward_message
      }
      else {
        this.forward_message = '';
      }
      if (initObj.hasOwnProperty('reverse_message')) {
        this.reverse_message = initObj.reverse_message
      }
      else {
        this.reverse_message = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type MultiLevelMapLink
    // Serialize message field [from_point]
    bufferOffset = MultiLevelMapPoint.serialize(obj.from_point, buffer, bufferOffset);
    // Serialize message field [to_point]
    bufferOffset = MultiLevelMapPoint.serialize(obj.to_point, buffer, bufferOffset);
    // Serialize message field [traversal_cost]
    bufferOffset = _serializer.float64(obj.traversal_cost, buffer, bufferOffset);
    // Serialize message field [forward_message]
    bufferOffset = _serializer.string(obj.forward_message, buffer, bufferOffset);
    // Serialize message field [reverse_message]
    bufferOffset = _serializer.string(obj.reverse_message, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type MultiLevelMapLink
    let len;
    let data = new MultiLevelMapLink(null);
    // Deserialize message field [from_point]
    data.from_point = MultiLevelMapPoint.deserialize(buffer, bufferOffset);
    // Deserialize message field [to_point]
    data.to_point = MultiLevelMapPoint.deserialize(buffer, bufferOffset);
    // Deserialize message field [traversal_cost]
    data.traversal_cost = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [forward_message]
    data.forward_message = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [reverse_message]
    data.reverse_message = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += MultiLevelMapPoint.getMessageSize(object.from_point);
    length += MultiLevelMapPoint.getMessageSize(object.to_point);
    length += object.forward_message.length;
    length += object.reverse_message.length;
    return length + 16;
  }

  static datatype() {
    // Returns string type for a message object
    return 'multi_level_map_msgs/MultiLevelMapLink';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'b3b52a350b899d69322587cf7b3a1268';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    MultiLevelMapPoint from_point
    MultiLevelMapPoint to_point
    float64 traversal_cost
    string forward_message
    string reverse_message
    
    ================================================================================
    MSG: multi_level_map_msgs/MultiLevelMapPoint
    string level_id
    geometry_msgs/Point point
    
    ================================================================================
    MSG: geometry_msgs/Point
    # This contains the position of a point in free space
    float64 x
    float64 y
    float64 z
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new MultiLevelMapLink(null);
    if (msg.from_point !== undefined) {
      resolved.from_point = MultiLevelMapPoint.Resolve(msg.from_point)
    }
    else {
      resolved.from_point = new MultiLevelMapPoint()
    }

    if (msg.to_point !== undefined) {
      resolved.to_point = MultiLevelMapPoint.Resolve(msg.to_point)
    }
    else {
      resolved.to_point = new MultiLevelMapPoint()
    }

    if (msg.traversal_cost !== undefined) {
      resolved.traversal_cost = msg.traversal_cost;
    }
    else {
      resolved.traversal_cost = 0.0
    }

    if (msg.forward_message !== undefined) {
      resolved.forward_message = msg.forward_message;
    }
    else {
      resolved.forward_message = ''
    }

    if (msg.reverse_message !== undefined) {
      resolved.reverse_message = msg.reverse_message;
    }
    else {
      resolved.reverse_message = ''
    }

    return resolved;
    }
};

module.exports = MultiLevelMapLink;
