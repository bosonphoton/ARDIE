// Auto-generated. Do not edit!

// (in-package bwi_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let LEDControlActionGoal = require('./LEDControlActionGoal.js');
let LEDControlActionResult = require('./LEDControlActionResult.js');
let LEDControlActionFeedback = require('./LEDControlActionFeedback.js');

//-----------------------------------------------------------

class LEDControlAction {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.action_goal = null;
      this.action_result = null;
      this.action_feedback = null;
    }
    else {
      if (initObj.hasOwnProperty('action_goal')) {
        this.action_goal = initObj.action_goal
      }
      else {
        this.action_goal = new LEDControlActionGoal();
      }
      if (initObj.hasOwnProperty('action_result')) {
        this.action_result = initObj.action_result
      }
      else {
        this.action_result = new LEDControlActionResult();
      }
      if (initObj.hasOwnProperty('action_feedback')) {
        this.action_feedback = initObj.action_feedback
      }
      else {
        this.action_feedback = new LEDControlActionFeedback();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type LEDControlAction
    // Serialize message field [action_goal]
    bufferOffset = LEDControlActionGoal.serialize(obj.action_goal, buffer, bufferOffset);
    // Serialize message field [action_result]
    bufferOffset = LEDControlActionResult.serialize(obj.action_result, buffer, bufferOffset);
    // Serialize message field [action_feedback]
    bufferOffset = LEDControlActionFeedback.serialize(obj.action_feedback, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type LEDControlAction
    let len;
    let data = new LEDControlAction(null);
    // Deserialize message field [action_goal]
    data.action_goal = LEDControlActionGoal.deserialize(buffer, bufferOffset);
    // Deserialize message field [action_result]
    data.action_result = LEDControlActionResult.deserialize(buffer, bufferOffset);
    // Deserialize message field [action_feedback]
    data.action_feedback = LEDControlActionFeedback.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += LEDControlActionGoal.getMessageSize(object.action_goal);
    length += LEDControlActionResult.getMessageSize(object.action_result);
    length += LEDControlActionFeedback.getMessageSize(object.action_feedback);
    return length;
  }

  static datatype() {
    // Returns string type for a message object
    return 'bwi_msgs/LEDControlAction';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'b2b1d1d58861a5d87a8a18f32f52c8e7';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======
    
    LEDControlActionGoal action_goal
    LEDControlActionResult action_result
    LEDControlActionFeedback action_feedback
    
    ================================================================================
    MSG: bwi_msgs/LEDControlActionGoal
    # ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======
    
    Header header
    actionlib_msgs/GoalID goal_id
    LEDControlGoal goal
    
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
    
    ================================================================================
    MSG: actionlib_msgs/GoalID
    # The stamp should store the time at which this goal was requested.
    # It is used by an action server when it tries to preempt all
    # goals that were requested before a certain time
    time stamp
    
    # The id provides a way to associate feedback and
    # result message with specific goal requests. The id
    # specified must be unique.
    string id
    
    
    ================================================================================
    MSG: bwi_msgs/LEDControlGoal
    # ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======
    #goal definition
    bwi_msgs/LEDAnimations type
    duration timeout
    
    ================================================================================
    MSG: bwi_msgs/LEDAnimations
    # LED Animations
    
    # Action Variables
    uint8 LEFT_TURN = 1
    uint8 RIGHT_TURN = 2
    uint8 REVERSE = 3
    uint8 BLOCKED = 4
    uint8 UP = 5
    uint8 DOWN = 6
    uint8 NEED_ASSIST = 7
    
    # Selects which animation to execute
    
    uint8 led_animations
    ================================================================================
    MSG: bwi_msgs/LEDControlActionResult
    # ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======
    
    Header header
    actionlib_msgs/GoalStatus status
    LEDControlResult result
    
    ================================================================================
    MSG: actionlib_msgs/GoalStatus
    GoalID goal_id
    uint8 status
    uint8 PENDING         = 0   # The goal has yet to be processed by the action server
    uint8 ACTIVE          = 1   # The goal is currently being processed by the action server
    uint8 PREEMPTED       = 2   # The goal received a cancel request after it started executing
                                #   and has since completed its execution (Terminal State)
    uint8 SUCCEEDED       = 3   # The goal was achieved successfully by the action server (Terminal State)
    uint8 ABORTED         = 4   # The goal was aborted during execution by the action server due
                                #    to some failure (Terminal State)
    uint8 REJECTED        = 5   # The goal was rejected by the action server without being processed,
                                #    because the goal was unattainable or invalid (Terminal State)
    uint8 PREEMPTING      = 6   # The goal received a cancel request after it started executing
                                #    and has not yet completed execution
    uint8 RECALLING       = 7   # The goal received a cancel request before it started executing,
                                #    but the action server has not yet confirmed that the goal is canceled
    uint8 RECALLED        = 8   # The goal received a cancel request before it started executing
                                #    and was successfully cancelled (Terminal State)
    uint8 LOST            = 9   # An action client can determine that a goal is LOST. This should not be
                                #    sent over the wire by an action server
    
    #Allow for the user to associate a string with GoalStatus for debugging
    string text
    
    
    ================================================================================
    MSG: bwi_msgs/LEDControlResult
    # ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======
    #result definition
    uint8 result
    string status
    
    ================================================================================
    MSG: bwi_msgs/LEDControlActionFeedback
    # ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======
    
    Header header
    actionlib_msgs/GoalStatus status
    LEDControlFeedback feedback
    
    ================================================================================
    MSG: bwi_msgs/LEDControlFeedback
    # ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======
    #feedback
    duration time_running
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new LEDControlAction(null);
    if (msg.action_goal !== undefined) {
      resolved.action_goal = LEDControlActionGoal.Resolve(msg.action_goal)
    }
    else {
      resolved.action_goal = new LEDControlActionGoal()
    }

    if (msg.action_result !== undefined) {
      resolved.action_result = LEDControlActionResult.Resolve(msg.action_result)
    }
    else {
      resolved.action_result = new LEDControlActionResult()
    }

    if (msg.action_feedback !== undefined) {
      resolved.action_feedback = LEDControlActionFeedback.Resolve(msg.action_feedback)
    }
    else {
      resolved.action_feedback = new LEDControlActionFeedback()
    }

    return resolved;
    }
};

module.exports = LEDControlAction;
