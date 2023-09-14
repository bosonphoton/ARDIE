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

class SuperAux {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.battery_state_of_charge_percent = null;
      this.battery_current_A0pk = null;
      this.battery_voltage_V = null;
      this.max_cell_temp_degc = null;
      this.max_pcba_temp_degc = null;
      this.max_cell_voltage_V = null;
      this.min_cell_voltage_V = null;
      this.battery_interface_status_bits = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('battery_state_of_charge_percent')) {
        this.battery_state_of_charge_percent = initObj.battery_state_of_charge_percent
      }
      else {
        this.battery_state_of_charge_percent = 0.0;
      }
      if (initObj.hasOwnProperty('battery_current_A0pk')) {
        this.battery_current_A0pk = initObj.battery_current_A0pk
      }
      else {
        this.battery_current_A0pk = 0.0;
      }
      if (initObj.hasOwnProperty('battery_voltage_V')) {
        this.battery_voltage_V = initObj.battery_voltage_V
      }
      else {
        this.battery_voltage_V = 0.0;
      }
      if (initObj.hasOwnProperty('max_cell_temp_degc')) {
        this.max_cell_temp_degc = initObj.max_cell_temp_degc
      }
      else {
        this.max_cell_temp_degc = 0.0;
      }
      if (initObj.hasOwnProperty('max_pcba_temp_degc')) {
        this.max_pcba_temp_degc = initObj.max_pcba_temp_degc
      }
      else {
        this.max_pcba_temp_degc = 0.0;
      }
      if (initObj.hasOwnProperty('max_cell_voltage_V')) {
        this.max_cell_voltage_V = initObj.max_cell_voltage_V
      }
      else {
        this.max_cell_voltage_V = 0.0;
      }
      if (initObj.hasOwnProperty('min_cell_voltage_V')) {
        this.min_cell_voltage_V = initObj.min_cell_voltage_V
      }
      else {
        this.min_cell_voltage_V = 0.0;
      }
      if (initObj.hasOwnProperty('battery_interface_status_bits')) {
        this.battery_interface_status_bits = initObj.battery_interface_status_bits
      }
      else {
        this.battery_interface_status_bits = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type SuperAux
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [battery_state_of_charge_percent]
    bufferOffset = _serializer.float32(obj.battery_state_of_charge_percent, buffer, bufferOffset);
    // Serialize message field [battery_current_A0pk]
    bufferOffset = _serializer.float32(obj.battery_current_A0pk, buffer, bufferOffset);
    // Serialize message field [battery_voltage_V]
    bufferOffset = _serializer.float32(obj.battery_voltage_V, buffer, bufferOffset);
    // Serialize message field [max_cell_temp_degc]
    bufferOffset = _serializer.float32(obj.max_cell_temp_degc, buffer, bufferOffset);
    // Serialize message field [max_pcba_temp_degc]
    bufferOffset = _serializer.float32(obj.max_pcba_temp_degc, buffer, bufferOffset);
    // Serialize message field [max_cell_voltage_V]
    bufferOffset = _serializer.float32(obj.max_cell_voltage_V, buffer, bufferOffset);
    // Serialize message field [min_cell_voltage_V]
    bufferOffset = _serializer.float32(obj.min_cell_voltage_V, buffer, bufferOffset);
    // Serialize message field [battery_interface_status_bits]
    bufferOffset = _serializer.uint32(obj.battery_interface_status_bits, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SuperAux
    let len;
    let data = new SuperAux(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [battery_state_of_charge_percent]
    data.battery_state_of_charge_percent = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [battery_current_A0pk]
    data.battery_current_A0pk = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [battery_voltage_V]
    data.battery_voltage_V = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [max_cell_temp_degc]
    data.max_cell_temp_degc = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [max_pcba_temp_degc]
    data.max_pcba_temp_degc = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [max_cell_voltage_V]
    data.max_cell_voltage_V = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [min_cell_voltage_V]
    data.min_cell_voltage_V = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [battery_interface_status_bits]
    data.battery_interface_status_bits = _deserializer.uint32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    return length + 32;
  }

  static datatype() {
    // Returns string type for a message object
    return 'segway_msgs/SuperAux';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '34aa6b9336bda114f082ad32bd812cf5';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    Header header
    float32 battery_state_of_charge_percent
    float32 battery_current_A0pk
    float32 battery_voltage_V
    float32 max_cell_temp_degc
    float32 max_pcba_temp_degc
    float32 max_cell_voltage_V
    float32 min_cell_voltage_V
    uint32  battery_interface_status_bits
    
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
    const resolved = new SuperAux(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.battery_state_of_charge_percent !== undefined) {
      resolved.battery_state_of_charge_percent = msg.battery_state_of_charge_percent;
    }
    else {
      resolved.battery_state_of_charge_percent = 0.0
    }

    if (msg.battery_current_A0pk !== undefined) {
      resolved.battery_current_A0pk = msg.battery_current_A0pk;
    }
    else {
      resolved.battery_current_A0pk = 0.0
    }

    if (msg.battery_voltage_V !== undefined) {
      resolved.battery_voltage_V = msg.battery_voltage_V;
    }
    else {
      resolved.battery_voltage_V = 0.0
    }

    if (msg.max_cell_temp_degc !== undefined) {
      resolved.max_cell_temp_degc = msg.max_cell_temp_degc;
    }
    else {
      resolved.max_cell_temp_degc = 0.0
    }

    if (msg.max_pcba_temp_degc !== undefined) {
      resolved.max_pcba_temp_degc = msg.max_pcba_temp_degc;
    }
    else {
      resolved.max_pcba_temp_degc = 0.0
    }

    if (msg.max_cell_voltage_V !== undefined) {
      resolved.max_cell_voltage_V = msg.max_cell_voltage_V;
    }
    else {
      resolved.max_cell_voltage_V = 0.0
    }

    if (msg.min_cell_voltage_V !== undefined) {
      resolved.min_cell_voltage_V = msg.min_cell_voltage_V;
    }
    else {
      resolved.min_cell_voltage_V = 0.0
    }

    if (msg.battery_interface_status_bits !== undefined) {
      resolved.battery_interface_status_bits = msg.battery_interface_status_bits;
    }
    else {
      resolved.battery_interface_status_bits = 0
    }

    return resolved;
    }
};

module.exports = SuperAux;
