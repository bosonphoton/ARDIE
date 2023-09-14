// Auto-generated. Do not edit!

// (in-package bwi_msgs.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let geometry_msgs = _finder('geometry_msgs');
let sensor_msgs = _finder('sensor_msgs');

//-----------------------------------------------------------


//-----------------------------------------------------------

class ImageQuestionRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.image = null;
      this.point_cloud = null;
      this.pose = null;
      this.timeout = null;
      this.question = null;
    }
    else {
      if (initObj.hasOwnProperty('image')) {
        this.image = initObj.image
      }
      else {
        this.image = new sensor_msgs.msg.Image();
      }
      if (initObj.hasOwnProperty('point_cloud')) {
        this.point_cloud = initObj.point_cloud
      }
      else {
        this.point_cloud = new sensor_msgs.msg.PointCloud2();
      }
      if (initObj.hasOwnProperty('pose')) {
        this.pose = initObj.pose
      }
      else {
        this.pose = new geometry_msgs.msg.Pose();
      }
      if (initObj.hasOwnProperty('timeout')) {
        this.timeout = initObj.timeout
      }
      else {
        this.timeout = 0;
      }
      if (initObj.hasOwnProperty('question')) {
        this.question = initObj.question
      }
      else {
        this.question = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ImageQuestionRequest
    // Serialize message field [image]
    bufferOffset = sensor_msgs.msg.Image.serialize(obj.image, buffer, bufferOffset);
    // Serialize message field [point_cloud]
    bufferOffset = sensor_msgs.msg.PointCloud2.serialize(obj.point_cloud, buffer, bufferOffset);
    // Serialize message field [pose]
    bufferOffset = geometry_msgs.msg.Pose.serialize(obj.pose, buffer, bufferOffset);
    // Serialize message field [timeout]
    bufferOffset = _serializer.int64(obj.timeout, buffer, bufferOffset);
    // Serialize message field [question]
    bufferOffset = _serializer.string(obj.question, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ImageQuestionRequest
    let len;
    let data = new ImageQuestionRequest(null);
    // Deserialize message field [image]
    data.image = sensor_msgs.msg.Image.deserialize(buffer, bufferOffset);
    // Deserialize message field [point_cloud]
    data.point_cloud = sensor_msgs.msg.PointCloud2.deserialize(buffer, bufferOffset);
    // Deserialize message field [pose]
    data.pose = geometry_msgs.msg.Pose.deserialize(buffer, bufferOffset);
    // Deserialize message field [timeout]
    data.timeout = _deserializer.int64(buffer, bufferOffset);
    // Deserialize message field [question]
    data.question = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += sensor_msgs.msg.Image.getMessageSize(object.image);
    length += sensor_msgs.msg.PointCloud2.getMessageSize(object.point_cloud);
    length += object.question.length;
    return length + 68;
  }

  static datatype() {
    // Returns string type for a service object
    return 'bwi_msgs/ImageQuestionRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'befbb4e71533b512f57c0aecad466f7f';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    sensor_msgs/Image image
    sensor_msgs/PointCloud2 point_cloud
    geometry_msgs/Pose pose
    int64 timeout
    string question
    
    ================================================================================
    MSG: sensor_msgs/Image
    # This message contains an uncompressed image
    # (0, 0) is at top-left corner of image
    #
    
    Header header        # Header timestamp should be acquisition time of image
                         # Header frame_id should be optical frame of camera
                         # origin of frame should be optical center of camera
                         # +x should point to the right in the image
                         # +y should point down in the image
                         # +z should point into to plane of the image
                         # If the frame_id here and the frame_id of the CameraInfo
                         # message associated with the image conflict
                         # the behavior is undefined
    
    uint32 height         # image height, that is, number of rows
    uint32 width          # image width, that is, number of columns
    
    # The legal values for encoding are in file src/image_encodings.cpp
    # If you want to standardize a new string format, join
    # ros-users@lists.sourceforge.net and send an email proposing a new encoding.
    
    string encoding       # Encoding of pixels -- channel meaning, ordering, size
                          # taken from the list of strings in include/sensor_msgs/image_encodings.h
    
    uint8 is_bigendian    # is this data bigendian?
    uint32 step           # Full row length in bytes
    uint8[] data          # actual matrix data, size is (step * rows)
    
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
    MSG: sensor_msgs/PointCloud2
    # This message holds a collection of N-dimensional points, which may
    # contain additional information such as normals, intensity, etc. The
    # point data is stored as a binary blob, its layout described by the
    # contents of the "fields" array.
    
    # The point cloud data may be organized 2d (image-like) or 1d
    # (unordered). Point clouds organized as 2d images may be produced by
    # camera depth sensors such as stereo or time-of-flight.
    
    # Time of sensor data acquisition, and the coordinate frame ID (for 3d
    # points).
    Header header
    
    # 2D structure of the point cloud. If the cloud is unordered, height is
    # 1 and width is the length of the point cloud.
    uint32 height
    uint32 width
    
    # Describes the channels and their layout in the binary data blob.
    PointField[] fields
    
    bool    is_bigendian # Is this data bigendian?
    uint32  point_step   # Length of a point in bytes
    uint32  row_step     # Length of a row in bytes
    uint8[] data         # Actual point data, size is (row_step*height)
    
    bool is_dense        # True if there are no invalid points
    
    ================================================================================
    MSG: sensor_msgs/PointField
    # This message holds the description of one point entry in the
    # PointCloud2 message format.
    uint8 INT8    = 1
    uint8 UINT8   = 2
    uint8 INT16   = 3
    uint8 UINT16  = 4
    uint8 INT32   = 5
    uint8 UINT32  = 6
    uint8 FLOAT32 = 7
    uint8 FLOAT64 = 8
    
    string name      # Name of field
    uint32 offset    # Offset from start of point struct
    uint8  datatype  # Datatype enumeration, see above
    uint32 count     # How many elements in the field
    
    ================================================================================
    MSG: geometry_msgs/Pose
    # A representation of pose in free space, composed of position and orientation. 
    Point position
    Quaternion orientation
    
    ================================================================================
    MSG: geometry_msgs/Point
    # This contains the position of a point in free space
    float64 x
    float64 y
    float64 z
    
    ================================================================================
    MSG: geometry_msgs/Quaternion
    # This represents an orientation in free space in quaternion form.
    
    float64 x
    float64 y
    float64 z
    float64 w
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new ImageQuestionRequest(null);
    if (msg.image !== undefined) {
      resolved.image = sensor_msgs.msg.Image.Resolve(msg.image)
    }
    else {
      resolved.image = new sensor_msgs.msg.Image()
    }

    if (msg.point_cloud !== undefined) {
      resolved.point_cloud = sensor_msgs.msg.PointCloud2.Resolve(msg.point_cloud)
    }
    else {
      resolved.point_cloud = new sensor_msgs.msg.PointCloud2()
    }

    if (msg.pose !== undefined) {
      resolved.pose = geometry_msgs.msg.Pose.Resolve(msg.pose)
    }
    else {
      resolved.pose = new geometry_msgs.msg.Pose()
    }

    if (msg.timeout !== undefined) {
      resolved.timeout = msg.timeout;
    }
    else {
      resolved.timeout = 0
    }

    if (msg.question !== undefined) {
      resolved.question = msg.question;
    }
    else {
      resolved.question = ''
    }

    return resolved;
    }
};

class ImageQuestionResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.answers = null;
      this.end_reason = null;
    }
    else {
      if (initObj.hasOwnProperty('answers')) {
        this.answers = initObj.answers
      }
      else {
        this.answers = [];
      }
      if (initObj.hasOwnProperty('end_reason')) {
        this.end_reason = initObj.end_reason
      }
      else {
        this.end_reason = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ImageQuestionResponse
    // Serialize message field [answers]
    bufferOffset = _arraySerializer.string(obj.answers, buffer, bufferOffset, null);
    // Serialize message field [end_reason]
    bufferOffset = _serializer.int32(obj.end_reason, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ImageQuestionResponse
    let len;
    let data = new ImageQuestionResponse(null);
    // Deserialize message field [answers]
    data.answers = _arrayDeserializer.string(buffer, bufferOffset, null)
    // Deserialize message field [end_reason]
    data.end_reason = _deserializer.int32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    object.answers.forEach((val) => {
      length += 4 + val.length;
    });
    return length + 8;
  }

  static datatype() {
    // Returns string type for a service object
    return 'bwi_msgs/ImageQuestionResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '40010323bce4291465206eb424c88b57';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int32 SUCCESSFUL_ANSWER=0
    int32 TIMEOUT=1
    int32 CANCELLED=2
    
    string[] answers
    int32 end_reason
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new ImageQuestionResponse(null);
    if (msg.answers !== undefined) {
      resolved.answers = msg.answers;
    }
    else {
      resolved.answers = []
    }

    if (msg.end_reason !== undefined) {
      resolved.end_reason = msg.end_reason;
    }
    else {
      resolved.end_reason = 0
    }

    return resolved;
    }
};

// Constants for message
ImageQuestionResponse.Constants = {
  SUCCESSFUL_ANSWER: 0,
  TIMEOUT: 1,
  CANCELLED: 2,
}

module.exports = {
  Request: ImageQuestionRequest,
  Response: ImageQuestionResponse,
  md5sum() { return '57c2d8b25cad32762a1bf1f70c8a327b'; },
  datatype() { return 'bwi_msgs/ImageQuestion'; }
};
