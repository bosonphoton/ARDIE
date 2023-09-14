// Auto-generated. Do not edit!

// (in-package bwi_moveit_utils.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let moveit_msgs = _finder('moveit_msgs');
let geometry_msgs = _finder('geometry_msgs');

//-----------------------------------------------------------


//-----------------------------------------------------------

class MoveitCartesianPoseRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.target = null;
      this.collision_objects = null;
      this.constraints = null;
    }
    else {
      if (initObj.hasOwnProperty('target')) {
        this.target = initObj.target
      }
      else {
        this.target = new geometry_msgs.msg.PoseStamped();
      }
      if (initObj.hasOwnProperty('collision_objects')) {
        this.collision_objects = initObj.collision_objects
      }
      else {
        this.collision_objects = [];
      }
      if (initObj.hasOwnProperty('constraints')) {
        this.constraints = initObj.constraints
      }
      else {
        this.constraints = new moveit_msgs.msg.Constraints();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type MoveitCartesianPoseRequest
    // Serialize message field [target]
    bufferOffset = geometry_msgs.msg.PoseStamped.serialize(obj.target, buffer, bufferOffset);
    // Serialize message field [collision_objects]
    // Serialize the length for message field [collision_objects]
    bufferOffset = _serializer.uint32(obj.collision_objects.length, buffer, bufferOffset);
    obj.collision_objects.forEach((val) => {
      bufferOffset = moveit_msgs.msg.CollisionObject.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [constraints]
    bufferOffset = moveit_msgs.msg.Constraints.serialize(obj.constraints, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type MoveitCartesianPoseRequest
    let len;
    let data = new MoveitCartesianPoseRequest(null);
    // Deserialize message field [target]
    data.target = geometry_msgs.msg.PoseStamped.deserialize(buffer, bufferOffset);
    // Deserialize message field [collision_objects]
    // Deserialize array length for message field [collision_objects]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.collision_objects = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.collision_objects[i] = moveit_msgs.msg.CollisionObject.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [constraints]
    data.constraints = moveit_msgs.msg.Constraints.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += geometry_msgs.msg.PoseStamped.getMessageSize(object.target);
    object.collision_objects.forEach((val) => {
      length += moveit_msgs.msg.CollisionObject.getMessageSize(val);
    });
    length += moveit_msgs.msg.Constraints.getMessageSize(object.constraints);
    return length + 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'bwi_moveit_utils/MoveitCartesianPoseRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '1cbbb41448cdd437ba0d9df8e0c7074a';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    geometry_msgs/PoseStamped target
    moveit_msgs/CollisionObject[] collision_objects
    moveit_msgs/Constraints constraints
    
    ================================================================================
    MSG: geometry_msgs/PoseStamped
    # A Pose with reference coordinate frame and timestamp
    Header header
    Pose pose
    
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
    
    ================================================================================
    MSG: moveit_msgs/CollisionObject
    # A header, used for interpreting the poses
    Header header
    
    # The id of the object (name used in MoveIt)
    string id
    
    # The object type in a database of known objects
    object_recognition_msgs/ObjectType type
    
    # The collision geometries associated with the object.
    # Their poses are with respect to the specified header
    
    # Solid geometric primitives
    shape_msgs/SolidPrimitive[] primitives
    geometry_msgs/Pose[] primitive_poses
    
    # Meshes
    shape_msgs/Mesh[] meshes
    geometry_msgs/Pose[] mesh_poses
    
    # Bounding planes (equation is specified, but the plane can be oriented using an additional pose)
    shape_msgs/Plane[] planes
    geometry_msgs/Pose[] plane_poses
    
    # Adds the object to the planning scene. If the object previously existed, it is replaced.
    byte ADD=0
    
    # Removes the object from the environment entirely (everything that matches the specified id)
    byte REMOVE=1
    
    # Append to an object that already exists in the planning scene. If the object does not exist, it is added.
    byte APPEND=2
    
    # If an object already exists in the scene, new poses can be sent (the geometry arrays must be left empty)
    # if solely moving the object is desired
    byte MOVE=3
    
    # Operation to be performed
    byte operation
    
    ================================================================================
    MSG: object_recognition_msgs/ObjectType
    ################################################## OBJECT ID #########################################################
    
    # Contains information about the type of a found object. Those two sets of parameters together uniquely define an
    # object
    
    # The key of the found object: the unique identifier in the given db
    string key
    
    # The db parameters stored as a JSON/compressed YAML string. An object id does not make sense without the corresponding
    # database. E.g., in object_recognition, it can look like: "{'type':'CouchDB', 'root':'http://localhost'}"
    # There is no conventional format for those parameters and it's nice to keep that flexibility.
    # The object_recognition_core as a generic DB type that can read those fields
    # Current examples:
    # For CouchDB:
    #   type: 'CouchDB'
    #   root: 'http://localhost:5984'
    #   collection: 'object_recognition'
    # For SQL household database:
    #   type: 'SqlHousehold'
    #   host: 'wgs36'
    #   port: 5432
    #   user: 'willow'
    #   password: 'willow'
    #   name: 'household_objects'
    #   module: 'tabletop'
    string db
    
    ================================================================================
    MSG: shape_msgs/SolidPrimitive
    # Define box, sphere, cylinder, cone 
    # All shapes are defined to have their bounding boxes centered around 0,0,0.
    
    uint8 BOX=1
    uint8 SPHERE=2
    uint8 CYLINDER=3
    uint8 CONE=4
    
    # The type of the shape
    uint8 type
    
    
    # The dimensions of the shape
    float64[] dimensions
    
    # The meaning of the shape dimensions: each constant defines the index in the 'dimensions' array
    
    # For the BOX type, the X, Y, and Z dimensions are the length of the corresponding
    # sides of the box.
    uint8 BOX_X=0
    uint8 BOX_Y=1
    uint8 BOX_Z=2
    
    
    # For the SPHERE type, only one component is used, and it gives the radius of
    # the sphere.
    uint8 SPHERE_RADIUS=0
    
    
    # For the CYLINDER and CONE types, the center line is oriented along
    # the Z axis.  Therefore the CYLINDER_HEIGHT (CONE_HEIGHT) component
    # of dimensions gives the height of the cylinder (cone).  The
    # CYLINDER_RADIUS (CONE_RADIUS) component of dimensions gives the
    # radius of the base of the cylinder (cone).  Cone and cylinder
    # primitives are defined to be circular. The tip of the cone is
    # pointing up, along +Z axis.
    
    uint8 CYLINDER_HEIGHT=0
    uint8 CYLINDER_RADIUS=1
    
    uint8 CONE_HEIGHT=0
    uint8 CONE_RADIUS=1
    
    ================================================================================
    MSG: shape_msgs/Mesh
    # Definition of a mesh
    
    # list of triangles; the index values refer to positions in vertices[]
    MeshTriangle[] triangles
    
    # the actual vertices that make up the mesh
    geometry_msgs/Point[] vertices
    
    ================================================================================
    MSG: shape_msgs/MeshTriangle
    # Definition of a triangle's vertices
    uint32[3] vertex_indices
    
    ================================================================================
    MSG: shape_msgs/Plane
    # Representation of a plane, using the plane equation ax + by + cz + d = 0
    
    # a := coef[0]
    # b := coef[1]
    # c := coef[2]
    # d := coef[3]
    
    float64[4] coef
    
    ================================================================================
    MSG: moveit_msgs/Constraints
    # This message contains a list of motion planning constraints.
    # All constraints must be satisfied for a goal to be considered valid
    
    string name
    
    JointConstraint[] joint_constraints
    
    PositionConstraint[] position_constraints
    
    OrientationConstraint[] orientation_constraints
    
    VisibilityConstraint[] visibility_constraints
    
    ================================================================================
    MSG: moveit_msgs/JointConstraint
    # Constrain the position of a joint to be within a certain bound
    string joint_name
    
    # the bound to be achieved is [position - tolerance_below, position + tolerance_above]
    float64 position
    float64 tolerance_above
    float64 tolerance_below
    
    # A weighting factor for this constraint (denotes relative importance to other constraints. Closer to zero means less important)
    float64 weight
    ================================================================================
    MSG: moveit_msgs/PositionConstraint
    # This message contains the definition of a position constraint.
    
    Header header
    
    # The robot link this constraint refers to
    string link_name
    
    # The offset (in the link frame) for the target point on the link we are planning for
    geometry_msgs/Vector3 target_point_offset
    
    # The volume this constraint refers to 
    BoundingVolume constraint_region
    
    # A weighting factor for this constraint (denotes relative importance to other constraints. Closer to zero means less important)
    float64 weight
    
    ================================================================================
    MSG: geometry_msgs/Vector3
    # This represents a vector in free space. 
    # It is only meant to represent a direction. Therefore, it does not
    # make sense to apply a translation to it (e.g., when applying a 
    # generic rigid transformation to a Vector3, tf2 will only apply the
    # rotation). If you want your data to be translatable too, use the
    # geometry_msgs/Point message instead.
    
    float64 x
    float64 y
    float64 z
    ================================================================================
    MSG: moveit_msgs/BoundingVolume
    # Define a volume in 3D
    
    # A set of solid geometric primitives that make up the volume to define (as a union)
    shape_msgs/SolidPrimitive[] primitives
    
    # The poses at which the primitives are located
    geometry_msgs/Pose[] primitive_poses
    
    # In addition to primitives, meshes can be specified to add to the bounding volume (again, as union)
    shape_msgs/Mesh[] meshes
    
    # The poses at which the meshes are located
    geometry_msgs/Pose[] mesh_poses
    
    ================================================================================
    MSG: moveit_msgs/OrientationConstraint
    # This message contains the definition of an orientation constraint.
    
    Header header
    
    # The desired orientation of the robot link specified as a quaternion
    geometry_msgs/Quaternion orientation
    
    # The robot link this constraint refers to
    string link_name
    
    # optional axis-angle error tolerances specified
    float64 absolute_x_axis_tolerance
    float64 absolute_y_axis_tolerance
    float64 absolute_z_axis_tolerance
    
    # A weighting factor for this constraint (denotes relative importance to other constraints. Closer to zero means less important)
    float64 weight
    
    ================================================================================
    MSG: moveit_msgs/VisibilityConstraint
    # The constraint is useful to maintain visibility to a disc (the target) in a particular frame.
    # This disc forms the base of a visibiliy cone whose tip is at the origin of the sensor.
    # Maintaining visibility is done by ensuring the robot does not obstruct the visibility cone.
    # Note:
    # This constraint does NOT enforce minimum or maximum distances between the sensor
    # and the target, nor does it enforce the target to be in the field of view of
    # the sensor. A PositionConstraint can (and probably should) be used for such purposes.
    
    # The radius of the disc that should be maintained visible 
    float64 target_radius
    
    # The pose of the disc; as the robot moves, the pose of the disc may change as well
    # This can be in the frame of a particular robot link, for example
    geometry_msgs/PoseStamped target_pose
    
    # From the sensor origin towards the target, the disc forms a visibility cone
    # This cone is approximated using many sides. For example, when using 4 sides, 
    # that in fact makes the visibility region be a pyramid.
    # This value should always be 3 or more.
    int32 cone_sides
    
    # The pose in which visibility is to be maintained.
    # The frame id should represent the robot link to which the sensor is attached.
    # It is assumed the sensor can look directly at the target, in any direction.
    # This assumption is usually not true, but additional PositionConstraints
    # can resolve this issue.
    geometry_msgs/PoseStamped sensor_pose
    
    # Even though the disc is maintained visible, the visibility cone can be very small
    # because of the orientation of the disc with respect to the sensor. It is possible
    # for example to view the disk almost from a side, in which case the visibility cone 
    # can end up having close to 0 volume. The view angle is defined to be the angle between
    # the normal to the visibility disc and the direction vector from the sensor origin.
    # The value below represents the minimum desired view angle. For a perfect view,
    # this value will be 0 (the two vectors are exact opposites). For a completely obstructed view
    # this value will be Pi/2 (the vectors are perpendicular). This value defined below 
    # is the maximum view angle to be maintained. This should be a value in the open interval
    # (0, Pi/2). If 0 is set, the view angle is NOT enforced.
    float64 max_view_angle
    
    # This angle is used similarly to max_view_angle but limits the maximum angle
    # between the sensor origin direction vector and the axis that connects the
    # sensor origin to the target frame origin. The value is again in the range (0, Pi/2)
    # and is NOT enforced if set to 0.
    float64 max_range_angle
    
    # The axis that is assumed to indicate the direction of view for the sensor
    # X = 2, Y = 1, Z = 0
    uint8 SENSOR_Z=0
    uint8 SENSOR_Y=1
    uint8 SENSOR_X=2
    uint8 sensor_view_direction
    
    # A weighting factor for this constraint (denotes relative importance to other constraints. Closer to zero means less important)
    float64 weight
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new MoveitCartesianPoseRequest(null);
    if (msg.target !== undefined) {
      resolved.target = geometry_msgs.msg.PoseStamped.Resolve(msg.target)
    }
    else {
      resolved.target = new geometry_msgs.msg.PoseStamped()
    }

    if (msg.collision_objects !== undefined) {
      resolved.collision_objects = new Array(msg.collision_objects.length);
      for (let i = 0; i < resolved.collision_objects.length; ++i) {
        resolved.collision_objects[i] = moveit_msgs.msg.CollisionObject.Resolve(msg.collision_objects[i]);
      }
    }
    else {
      resolved.collision_objects = []
    }

    if (msg.constraints !== undefined) {
      resolved.constraints = moveit_msgs.msg.Constraints.Resolve(msg.constraints)
    }
    else {
      resolved.constraints = new moveit_msgs.msg.Constraints()
    }

    return resolved;
    }
};

class MoveitCartesianPoseResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.completed = null;
    }
    else {
      if (initObj.hasOwnProperty('completed')) {
        this.completed = initObj.completed
      }
      else {
        this.completed = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type MoveitCartesianPoseResponse
    // Serialize message field [completed]
    bufferOffset = _serializer.bool(obj.completed, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type MoveitCartesianPoseResponse
    let len;
    let data = new MoveitCartesianPoseResponse(null);
    // Deserialize message field [completed]
    data.completed = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a service object
    return 'bwi_moveit_utils/MoveitCartesianPoseResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '9e58faa17a4877a1efc0e251b503c53b';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    bool completed
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new MoveitCartesianPoseResponse(null);
    if (msg.completed !== undefined) {
      resolved.completed = msg.completed;
    }
    else {
      resolved.completed = false
    }

    return resolved;
    }
};

module.exports = {
  Request: MoveitCartesianPoseRequest,
  Response: MoveitCartesianPoseResponse,
  md5sum() { return '48463013f77cb96c218a8c43048e406b'; },
  datatype() { return 'bwi_moveit_utils/MoveitCartesianPose'; }
};
