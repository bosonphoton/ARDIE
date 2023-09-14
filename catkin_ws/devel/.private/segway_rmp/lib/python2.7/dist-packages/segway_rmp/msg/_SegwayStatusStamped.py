# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from segway_rmp/SegwayStatusStamped.msg. Do not edit."""
import codecs
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct

import segway_rmp.msg
import std_msgs.msg

class SegwayStatusStamped(genpy.Message):
  _md5sum = "f11247ac7dcf2a8717603cc53878eec2"
  _type = "segway_rmp/SegwayStatusStamped"
  _has_header = True  # flag to mark the presence of a Header object
  _full_text = """Header       header                      # Timestamp, sequence number, and frame id

SegwayStatus segway                      # Segway Status information
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
MSG: segway_rmp/SegwayStatus
# This is the msg definition for the Segway Status struct.

# Gain Schedule Constants
int8    LIGHT=1
int8    TALL=2
int8    HEAVY=3

# Operation Mode Constants
int8    BALANCE=1
int8    TRACTOR=2
int8    POWER_DOWN=3

float32 pitch_angle                 # radians
float32 pitch_rate                  # radians/s
float32 roll_angle                  # radians
float32 roll_rate                   # radians/s
float32 left_wheel_velocity         # meters/s
float32 right_wheel_velocity        # meters/s
float32 yaw_rate                    # radians/s
float32 servo_frames                # frames/second
float32 left_wheel_displacement     # meters
float32 right_wheel_displacement    # meters
float32 forward_displacement        # meters
float32 yaw_displacement            # revolutions
float32 left_motor_torque           # Newton-meters
float32 right_motor_torque          # Newton-meters
int8    operation_mode              # Balance, Tractor, or Powered Down
int8    gain_schedule               # Light, Tall, or Heavy
float32 ui_battery                  # Volts
float32 powerbase_battery           # Volts

bool    motors_enabled              # Enabled (true) or E-Stopped (false)
"""
  __slots__ = ['header','segway']
  _slot_types = ['std_msgs/Header','segway_rmp/SegwayStatus']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       header,segway

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(SegwayStatusStamped, self).__init__(*args, **kwds)
      # message fields cannot be None, assign default values for those that are
      if self.header is None:
        self.header = std_msgs.msg.Header()
      if self.segway is None:
        self.segway = segway_rmp.msg.SegwayStatus()
    else:
      self.header = std_msgs.msg.Header()
      self.segway = segway_rmp.msg.SegwayStatus()

  def _get_types(self):
    """
    internal API method
    """
    return self._slot_types

  def serialize(self, buff):
    """
    serialize message into buffer
    :param buff: buffer, ``StringIO``
    """
    try:
      _x = self
      buff.write(_get_struct_3I().pack(_x.header.seq, _x.header.stamp.secs, _x.header.stamp.nsecs))
      _x = self.header.frame_id
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
      _x = self
      buff.write(_get_struct_14f2b2fB().pack(_x.segway.pitch_angle, _x.segway.pitch_rate, _x.segway.roll_angle, _x.segway.roll_rate, _x.segway.left_wheel_velocity, _x.segway.right_wheel_velocity, _x.segway.yaw_rate, _x.segway.servo_frames, _x.segway.left_wheel_displacement, _x.segway.right_wheel_displacement, _x.segway.forward_displacement, _x.segway.yaw_displacement, _x.segway.left_motor_torque, _x.segway.right_motor_torque, _x.segway.operation_mode, _x.segway.gain_schedule, _x.segway.ui_battery, _x.segway.powerbase_battery, _x.segway.motors_enabled))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize(self, str):
    """
    unpack serialized message in str into this message instance
    :param str: byte array of serialized message, ``str``
    """
    if python3:
      codecs.lookup_error("rosmsg").msg_type = self._type
    try:
      if self.header is None:
        self.header = std_msgs.msg.Header()
      if self.segway is None:
        self.segway = segway_rmp.msg.SegwayStatus()
      end = 0
      _x = self
      start = end
      end += 12
      (_x.header.seq, _x.header.stamp.secs, _x.header.stamp.nsecs,) = _get_struct_3I().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.header.frame_id = str[start:end].decode('utf-8', 'rosmsg')
      else:
        self.header.frame_id = str[start:end]
      _x = self
      start = end
      end += 67
      (_x.segway.pitch_angle, _x.segway.pitch_rate, _x.segway.roll_angle, _x.segway.roll_rate, _x.segway.left_wheel_velocity, _x.segway.right_wheel_velocity, _x.segway.yaw_rate, _x.segway.servo_frames, _x.segway.left_wheel_displacement, _x.segway.right_wheel_displacement, _x.segway.forward_displacement, _x.segway.yaw_displacement, _x.segway.left_motor_torque, _x.segway.right_motor_torque, _x.segway.operation_mode, _x.segway.gain_schedule, _x.segway.ui_battery, _x.segway.powerbase_battery, _x.segway.motors_enabled,) = _get_struct_14f2b2fB().unpack(str[start:end])
      self.segway.motors_enabled = bool(self.segway.motors_enabled)
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e)  # most likely buffer underfill


  def serialize_numpy(self, buff, numpy):
    """
    serialize message with numpy array types into buffer
    :param buff: buffer, ``StringIO``
    :param numpy: numpy python module
    """
    try:
      _x = self
      buff.write(_get_struct_3I().pack(_x.header.seq, _x.header.stamp.secs, _x.header.stamp.nsecs))
      _x = self.header.frame_id
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
      _x = self
      buff.write(_get_struct_14f2b2fB().pack(_x.segway.pitch_angle, _x.segway.pitch_rate, _x.segway.roll_angle, _x.segway.roll_rate, _x.segway.left_wheel_velocity, _x.segway.right_wheel_velocity, _x.segway.yaw_rate, _x.segway.servo_frames, _x.segway.left_wheel_displacement, _x.segway.right_wheel_displacement, _x.segway.forward_displacement, _x.segway.yaw_displacement, _x.segway.left_motor_torque, _x.segway.right_motor_torque, _x.segway.operation_mode, _x.segway.gain_schedule, _x.segway.ui_battery, _x.segway.powerbase_battery, _x.segway.motors_enabled))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize_numpy(self, str, numpy):
    """
    unpack serialized message in str into this message instance using numpy for array types
    :param str: byte array of serialized message, ``str``
    :param numpy: numpy python module
    """
    if python3:
      codecs.lookup_error("rosmsg").msg_type = self._type
    try:
      if self.header is None:
        self.header = std_msgs.msg.Header()
      if self.segway is None:
        self.segway = segway_rmp.msg.SegwayStatus()
      end = 0
      _x = self
      start = end
      end += 12
      (_x.header.seq, _x.header.stamp.secs, _x.header.stamp.nsecs,) = _get_struct_3I().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.header.frame_id = str[start:end].decode('utf-8', 'rosmsg')
      else:
        self.header.frame_id = str[start:end]
      _x = self
      start = end
      end += 67
      (_x.segway.pitch_angle, _x.segway.pitch_rate, _x.segway.roll_angle, _x.segway.roll_rate, _x.segway.left_wheel_velocity, _x.segway.right_wheel_velocity, _x.segway.yaw_rate, _x.segway.servo_frames, _x.segway.left_wheel_displacement, _x.segway.right_wheel_displacement, _x.segway.forward_displacement, _x.segway.yaw_displacement, _x.segway.left_motor_torque, _x.segway.right_motor_torque, _x.segway.operation_mode, _x.segway.gain_schedule, _x.segway.ui_battery, _x.segway.powerbase_battery, _x.segway.motors_enabled,) = _get_struct_14f2b2fB().unpack(str[start:end])
      self.segway.motors_enabled = bool(self.segway.motors_enabled)
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e)  # most likely buffer underfill

_struct_I = genpy.struct_I
def _get_struct_I():
    global _struct_I
    return _struct_I
_struct_14f2b2fB = None
def _get_struct_14f2b2fB():
    global _struct_14f2b2fB
    if _struct_14f2b2fB is None:
        _struct_14f2b2fB = struct.Struct("<14f2b2fB")
    return _struct_14f2b2fB
_struct_3I = None
def _get_struct_3I():
    global _struct_3I
    if _struct_3I is None:
        _struct_3I = struct.Struct("<3I")
    return _struct_3I
