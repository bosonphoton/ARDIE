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

class Propulsion {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.min_propulsion_battery_soc = null;
      this.mcu_battery_soc = null;
      this.mcu_battery_temp_degC = null;
      this.mcu_inst_power_W = null;
      this.mcu_total_energy_Wh = null;
      this.motor_current_A0pk = null;
      this.max_motor_current_A0pk = null;
      this.motor_current_limit_A0pk = null;
      this.min_motor_current_limit_A0pk = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('min_propulsion_battery_soc')) {
        this.min_propulsion_battery_soc = initObj.min_propulsion_battery_soc
      }
      else {
        this.min_propulsion_battery_soc = 0.0;
      }
      if (initObj.hasOwnProperty('mcu_battery_soc')) {
        this.mcu_battery_soc = initObj.mcu_battery_soc
      }
      else {
        this.mcu_battery_soc = [];
      }
      if (initObj.hasOwnProperty('mcu_battery_temp_degC')) {
        this.mcu_battery_temp_degC = initObj.mcu_battery_temp_degC
      }
      else {
        this.mcu_battery_temp_degC = [];
      }
      if (initObj.hasOwnProperty('mcu_inst_power_W')) {
        this.mcu_inst_power_W = initObj.mcu_inst_power_W
      }
      else {
        this.mcu_inst_power_W = [];
      }
      if (initObj.hasOwnProperty('mcu_total_energy_Wh')) {
        this.mcu_total_energy_Wh = initObj.mcu_total_energy_Wh
      }
      else {
        this.mcu_total_energy_Wh = [];
      }
      if (initObj.hasOwnProperty('motor_current_A0pk')) {
        this.motor_current_A0pk = initObj.motor_current_A0pk
      }
      else {
        this.motor_current_A0pk = [];
      }
      if (initObj.hasOwnProperty('max_motor_current_A0pk')) {
        this.max_motor_current_A0pk = initObj.max_motor_current_A0pk
      }
      else {
        this.max_motor_current_A0pk = 0.0;
      }
      if (initObj.hasOwnProperty('motor_current_limit_A0pk')) {
        this.motor_current_limit_A0pk = initObj.motor_current_limit_A0pk
      }
      else {
        this.motor_current_limit_A0pk = [];
      }
      if (initObj.hasOwnProperty('min_motor_current_limit_A0pk')) {
        this.min_motor_current_limit_A0pk = initObj.min_motor_current_limit_A0pk
      }
      else {
        this.min_motor_current_limit_A0pk = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Propulsion
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [min_propulsion_battery_soc]
    bufferOffset = _serializer.float32(obj.min_propulsion_battery_soc, buffer, bufferOffset);
    // Serialize message field [mcu_battery_soc]
    bufferOffset = _arraySerializer.float32(obj.mcu_battery_soc, buffer, bufferOffset, null);
    // Serialize message field [mcu_battery_temp_degC]
    bufferOffset = _arraySerializer.float32(obj.mcu_battery_temp_degC, buffer, bufferOffset, null);
    // Serialize message field [mcu_inst_power_W]
    bufferOffset = _arraySerializer.float32(obj.mcu_inst_power_W, buffer, bufferOffset, null);
    // Serialize message field [mcu_total_energy_Wh]
    bufferOffset = _arraySerializer.float32(obj.mcu_total_energy_Wh, buffer, bufferOffset, null);
    // Serialize message field [motor_current_A0pk]
    bufferOffset = _arraySerializer.float32(obj.motor_current_A0pk, buffer, bufferOffset, null);
    // Serialize message field [max_motor_current_A0pk]
    bufferOffset = _serializer.float32(obj.max_motor_current_A0pk, buffer, bufferOffset);
    // Serialize message field [motor_current_limit_A0pk]
    bufferOffset = _arraySerializer.float32(obj.motor_current_limit_A0pk, buffer, bufferOffset, null);
    // Serialize message field [min_motor_current_limit_A0pk]
    bufferOffset = _serializer.float32(obj.min_motor_current_limit_A0pk, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Propulsion
    let len;
    let data = new Propulsion(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [min_propulsion_battery_soc]
    data.min_propulsion_battery_soc = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [mcu_battery_soc]
    data.mcu_battery_soc = _arrayDeserializer.float32(buffer, bufferOffset, null)
    // Deserialize message field [mcu_battery_temp_degC]
    data.mcu_battery_temp_degC = _arrayDeserializer.float32(buffer, bufferOffset, null)
    // Deserialize message field [mcu_inst_power_W]
    data.mcu_inst_power_W = _arrayDeserializer.float32(buffer, bufferOffset, null)
    // Deserialize message field [mcu_total_energy_Wh]
    data.mcu_total_energy_Wh = _arrayDeserializer.float32(buffer, bufferOffset, null)
    // Deserialize message field [motor_current_A0pk]
    data.motor_current_A0pk = _arrayDeserializer.float32(buffer, bufferOffset, null)
    // Deserialize message field [max_motor_current_A0pk]
    data.max_motor_current_A0pk = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [motor_current_limit_A0pk]
    data.motor_current_limit_A0pk = _arrayDeserializer.float32(buffer, bufferOffset, null)
    // Deserialize message field [min_motor_current_limit_A0pk]
    data.min_motor_current_limit_A0pk = _deserializer.float32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    length += 4 * object.mcu_battery_soc.length;
    length += 4 * object.mcu_battery_temp_degC.length;
    length += 4 * object.mcu_inst_power_W.length;
    length += 4 * object.mcu_total_energy_Wh.length;
    length += 4 * object.motor_current_A0pk.length;
    length += 4 * object.motor_current_limit_A0pk.length;
    return length + 36;
  }

  static datatype() {
    // Returns string type for a message object
    return 'segway_msgs/Propulsion';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '8db8f550407de4bfaf53927720c28e50';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    Header header
    float32 min_propulsion_battery_soc
    float32[] mcu_battery_soc
    float32[] mcu_battery_temp_degC
    float32[] mcu_inst_power_W
    float32[] mcu_total_energy_Wh
    float32[] motor_current_A0pk
    float32 max_motor_current_A0pk
    float32[] motor_current_limit_A0pk
    float32 min_motor_current_limit_A0pk
    
    
    
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
    const resolved = new Propulsion(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.min_propulsion_battery_soc !== undefined) {
      resolved.min_propulsion_battery_soc = msg.min_propulsion_battery_soc;
    }
    else {
      resolved.min_propulsion_battery_soc = 0.0
    }

    if (msg.mcu_battery_soc !== undefined) {
      resolved.mcu_battery_soc = msg.mcu_battery_soc;
    }
    else {
      resolved.mcu_battery_soc = []
    }

    if (msg.mcu_battery_temp_degC !== undefined) {
      resolved.mcu_battery_temp_degC = msg.mcu_battery_temp_degC;
    }
    else {
      resolved.mcu_battery_temp_degC = []
    }

    if (msg.mcu_inst_power_W !== undefined) {
      resolved.mcu_inst_power_W = msg.mcu_inst_power_W;
    }
    else {
      resolved.mcu_inst_power_W = []
    }

    if (msg.mcu_total_energy_Wh !== undefined) {
      resolved.mcu_total_energy_Wh = msg.mcu_total_energy_Wh;
    }
    else {
      resolved.mcu_total_energy_Wh = []
    }

    if (msg.motor_current_A0pk !== undefined) {
      resolved.motor_current_A0pk = msg.motor_current_A0pk;
    }
    else {
      resolved.motor_current_A0pk = []
    }

    if (msg.max_motor_current_A0pk !== undefined) {
      resolved.max_motor_current_A0pk = msg.max_motor_current_A0pk;
    }
    else {
      resolved.max_motor_current_A0pk = 0.0
    }

    if (msg.motor_current_limit_A0pk !== undefined) {
      resolved.motor_current_limit_A0pk = msg.motor_current_limit_A0pk;
    }
    else {
      resolved.motor_current_limit_A0pk = []
    }

    if (msg.min_motor_current_limit_A0pk !== undefined) {
      resolved.min_motor_current_limit_A0pk = msg.min_motor_current_limit_A0pk;
    }
    else {
      resolved.min_motor_current_limit_A0pk = 0.0
    }

    return resolved;
    }
};

module.exports = Propulsion;
