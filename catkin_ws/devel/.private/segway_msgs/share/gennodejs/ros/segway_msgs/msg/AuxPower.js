// Auto-generated. Do not edit!

// (in-package segway_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class AuxPower {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.aux_soc = null;
      this.aux_voltage_V = null;
      this.aux_current_A = null;
      this.aux_temp_degC = null;
      this.aux_sys_status = null;
      this.aux_bcu_status = null;
      this.aux_bcu_faults = null;
      this.startup_7p2v_batt_voltage_V = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('aux_soc')) {
        this.aux_soc = initObj.aux_soc
      }
      else {
        this.aux_soc = [];
      }
      if (initObj.hasOwnProperty('aux_voltage_V')) {
        this.aux_voltage_V = initObj.aux_voltage_V
      }
      else {
        this.aux_voltage_V = [];
      }
      if (initObj.hasOwnProperty('aux_current_A')) {
        this.aux_current_A = initObj.aux_current_A
      }
      else {
        this.aux_current_A = [];
      }
      if (initObj.hasOwnProperty('aux_temp_degC')) {
        this.aux_temp_degC = initObj.aux_temp_degC
      }
      else {
        this.aux_temp_degC = [];
      }
      if (initObj.hasOwnProperty('aux_sys_status')) {
        this.aux_sys_status = initObj.aux_sys_status
      }
      else {
        this.aux_sys_status = [];
      }
      if (initObj.hasOwnProperty('aux_bcu_status')) {
        this.aux_bcu_status = initObj.aux_bcu_status
      }
      else {
        this.aux_bcu_status = [];
      }
      if (initObj.hasOwnProperty('aux_bcu_faults')) {
        this.aux_bcu_faults = initObj.aux_bcu_faults
      }
      else {
        this.aux_bcu_faults = [];
      }
      if (initObj.hasOwnProperty('startup_7p2v_batt_voltage_V')) {
        this.startup_7p2v_batt_voltage_V = initObj.startup_7p2v_batt_voltage_V
      }
      else {
        this.startup_7p2v_batt_voltage_V = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type AuxPower
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [aux_soc]
    bufferOffset = _arraySerializer.float32(obj.aux_soc, buffer, bufferOffset, null);
    // Serialize message field [aux_voltage_V]
    bufferOffset = _arraySerializer.float32(obj.aux_voltage_V, buffer, bufferOffset, null);
    // Serialize message field [aux_current_A]
    bufferOffset = _arraySerializer.float32(obj.aux_current_A, buffer, bufferOffset, null);
    // Serialize message field [aux_temp_degC]
    bufferOffset = _arraySerializer.float32(obj.aux_temp_degC, buffer, bufferOffset, null);
    // Serialize message field [aux_sys_status]
    bufferOffset = _arraySerializer.uint32(obj.aux_sys_status, buffer, bufferOffset, null);
    // Serialize message field [aux_bcu_status]
    bufferOffset = _arraySerializer.uint32(obj.aux_bcu_status, buffer, bufferOffset, null);
    // Serialize message field [aux_bcu_faults]
    bufferOffset = _arraySerializer.uint32(obj.aux_bcu_faults, buffer, bufferOffset, null);
    // Serialize message field [startup_7p2v_batt_voltage_V]
    bufferOffset = _serializer.float32(obj.startup_7p2v_batt_voltage_V, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type AuxPower
    let len;
    let data = new AuxPower(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [aux_soc]
    data.aux_soc = _arrayDeserializer.float32(buffer, bufferOffset, null)
    // Deserialize message field [aux_voltage_V]
    data.aux_voltage_V = _arrayDeserializer.float32(buffer, bufferOffset, null)
    // Deserialize message field [aux_current_A]
    data.aux_current_A = _arrayDeserializer.float32(buffer, bufferOffset, null)
    // Deserialize message field [aux_temp_degC]
    data.aux_temp_degC = _arrayDeserializer.float32(buffer, bufferOffset, null)
    // Deserialize message field [aux_sys_status]
    data.aux_sys_status = _arrayDeserializer.uint32(buffer, bufferOffset, null)
    // Deserialize message field [aux_bcu_status]
    data.aux_bcu_status = _arrayDeserializer.uint32(buffer, bufferOffset, null)
    // Deserialize message field [aux_bcu_faults]
    data.aux_bcu_faults = _arrayDeserializer.uint32(buffer, bufferOffset, null)
    // Deserialize message field [startup_7p2v_batt_voltage_V]
    data.startup_7p2v_batt_voltage_V = _deserializer.float32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    length += 4 * object.aux_soc.length;
    length += 4 * object.aux_voltage_V.length;
    length += 4 * object.aux_current_A.length;
    length += 4 * object.aux_temp_degC.length;
    length += 4 * object.aux_sys_status.length;
    length += 4 * object.aux_bcu_status.length;
    length += 4 * object.aux_bcu_faults.length;
    return length + 32;
  }

  static datatype() {
    // Returns string type for a message object
    return 'segway_msgs/AuxPower';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '5c5c3951c2c3b3b11a7ee2c4d5792ef7';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    Header header
    float32[] aux_soc
    float32[] aux_voltage_V
    float32[] aux_current_A
    float32[] aux_temp_degC
    uint32[] aux_sys_status
    uint32[] aux_bcu_status
    uint32[] aux_bcu_faults
    float32 startup_7p2v_batt_voltage_V
    
    ================================================================================
    MSG: std_msgs/Header
    # Standard metadata for higher-level stamped data types.
    # This is generally used to communicate timestamped data 
    # in a particular coordinate frame.
    # 
    # sequence ID: consecutively increasing ID 
    uint32 seq
    #Two-integer timestamp that is expressed as:
    # * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
    # * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
    # time-handling sugar is provided by the client library
    time stamp
    #Frame this data is associated with
    string frame_id
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new AuxPower(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.aux_soc !== undefined) {
      resolved.aux_soc = msg.aux_soc;
    }
    else {
      resolved.aux_soc = []
    }

    if (msg.aux_voltage_V !== undefined) {
      resolved.aux_voltage_V = msg.aux_voltage_V;
    }
    else {
      resolved.aux_voltage_V = []
    }

    if (msg.aux_current_A !== undefined) {
      resolved.aux_current_A = msg.aux_current_A;
    }
    else {
      resolved.aux_current_A = []
    }

    if (msg.aux_temp_degC !== undefined) {
      resolved.aux_temp_degC = msg.aux_temp_degC;
    }
    else {
      resolved.aux_temp_degC = []
    }

    if (msg.aux_sys_status !== undefined) {
      resolved.aux_sys_status = msg.aux_sys_status;
    }
    else {
      resolved.aux_sys_status = []
    }

    if (msg.aux_bcu_status !== undefined) {
      resolved.aux_bcu_status = msg.aux_bcu_status;
    }
    else {
      resolved.aux_bcu_status = []
    }

    if (msg.aux_bcu_faults !== undefined) {
      resolved.aux_bcu_faults = msg.aux_bcu_faults;
    }
    else {
      resolved.aux_bcu_faults = []
    }

    if (msg.startup_7p2v_batt_voltage_V !== undefined) {
      resolved.startup_7p2v_batt_voltage_V = msg.startup_7p2v_batt_voltage_V;
    }
    else {
      resolved.startup_7p2v_batt_voltage_V = 0.0
    }

    return resolved;
    }
};

module.exports = AuxPower;
