# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from segway_msgs/Configuration.msg. Do not edit."""
import codecs
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct

import std_msgs.msg

class Configuration(genpy.Message):
  _md5sum = "03157f9e1c3a782af2e296a4e475e4af"
  _type = "segway_msgs/Configuration"
  _has_header = True  # flag to mark the presence of a Header object
  _full_text = """Header header
float32 teleop_vel_limit_mps
float32 teleop_accel_limit_mps2
float32 teleop_yaw_rate_limit_rps
float32 teleop_yaw_accel_limit_rps2
float32 vel_limit_mps
float32 accel_limit_mps2
float32 decel_limit_mps2
float32 dtz_decel_limit_mps2
float32 lateral_accel_limit_mps2
float32 yaw_rate_limit_rps
float32 yaw_accel_limit_rps2
float32 tire_diameter_m
float32 wheelbase_length_m
float32 omni_yaw_correction_factor
float32 omni_straffe_correction_factor
float32 wheel_track_width_m
float32 gear_ratio
uint32 config_bitmap
string eth_ip_address
uint32 eth_port_number
string eth_subnet_mask
string eth_gateway


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
"""
  __slots__ = ['header','teleop_vel_limit_mps','teleop_accel_limit_mps2','teleop_yaw_rate_limit_rps','teleop_yaw_accel_limit_rps2','vel_limit_mps','accel_limit_mps2','decel_limit_mps2','dtz_decel_limit_mps2','lateral_accel_limit_mps2','yaw_rate_limit_rps','yaw_accel_limit_rps2','tire_diameter_m','wheelbase_length_m','omni_yaw_correction_factor','omni_straffe_correction_factor','wheel_track_width_m','gear_ratio','config_bitmap','eth_ip_address','eth_port_number','eth_subnet_mask','eth_gateway']
  _slot_types = ['std_msgs/Header','float32','float32','float32','float32','float32','float32','float32','float32','float32','float32','float32','float32','float32','float32','float32','float32','float32','uint32','string','uint32','string','string']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       header,teleop_vel_limit_mps,teleop_accel_limit_mps2,teleop_yaw_rate_limit_rps,teleop_yaw_accel_limit_rps2,vel_limit_mps,accel_limit_mps2,decel_limit_mps2,dtz_decel_limit_mps2,lateral_accel_limit_mps2,yaw_rate_limit_rps,yaw_accel_limit_rps2,tire_diameter_m,wheelbase_length_m,omni_yaw_correction_factor,omni_straffe_correction_factor,wheel_track_width_m,gear_ratio,config_bitmap,eth_ip_address,eth_port_number,eth_subnet_mask,eth_gateway

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(Configuration, self).__init__(*args, **kwds)
      # message fields cannot be None, assign default values for those that are
      if self.header is None:
        self.header = std_msgs.msg.Header()
      if self.teleop_vel_limit_mps is None:
        self.teleop_vel_limit_mps = 0.
      if self.teleop_accel_limit_mps2 is None:
        self.teleop_accel_limit_mps2 = 0.
      if self.teleop_yaw_rate_limit_rps is None:
        self.teleop_yaw_rate_limit_rps = 0.
      if self.teleop_yaw_accel_limit_rps2 is None:
        self.teleop_yaw_accel_limit_rps2 = 0.
      if self.vel_limit_mps is None:
        self.vel_limit_mps = 0.
      if self.accel_limit_mps2 is None:
        self.accel_limit_mps2 = 0.
      if self.decel_limit_mps2 is None:
        self.decel_limit_mps2 = 0.
      if self.dtz_decel_limit_mps2 is None:
        self.dtz_decel_limit_mps2 = 0.
      if self.lateral_accel_limit_mps2 is None:
        self.lateral_accel_limit_mps2 = 0.
      if self.yaw_rate_limit_rps is None:
        self.yaw_rate_limit_rps = 0.
      if self.yaw_accel_limit_rps2 is None:
        self.yaw_accel_limit_rps2 = 0.
      if self.tire_diameter_m is None:
        self.tire_diameter_m = 0.
      if self.wheelbase_length_m is None:
        self.wheelbase_length_m = 0.
      if self.omni_yaw_correction_factor is None:
        self.omni_yaw_correction_factor = 0.
      if self.omni_straffe_correction_factor is None:
        self.omni_straffe_correction_factor = 0.
      if self.wheel_track_width_m is None:
        self.wheel_track_width_m = 0.
      if self.gear_ratio is None:
        self.gear_ratio = 0.
      if self.config_bitmap is None:
        self.config_bitmap = 0
      if self.eth_ip_address is None:
        self.eth_ip_address = ''
      if self.eth_port_number is None:
        self.eth_port_number = 0
      if self.eth_subnet_mask is None:
        self.eth_subnet_mask = ''
      if self.eth_gateway is None:
        self.eth_gateway = ''
    else:
      self.header = std_msgs.msg.Header()
      self.teleop_vel_limit_mps = 0.
      self.teleop_accel_limit_mps2 = 0.
      self.teleop_yaw_rate_limit_rps = 0.
      self.teleop_yaw_accel_limit_rps2 = 0.
      self.vel_limit_mps = 0.
      self.accel_limit_mps2 = 0.
      self.decel_limit_mps2 = 0.
      self.dtz_decel_limit_mps2 = 0.
      self.lateral_accel_limit_mps2 = 0.
      self.yaw_rate_limit_rps = 0.
      self.yaw_accel_limit_rps2 = 0.
      self.tire_diameter_m = 0.
      self.wheelbase_length_m = 0.
      self.omni_yaw_correction_factor = 0.
      self.omni_straffe_correction_factor = 0.
      self.wheel_track_width_m = 0.
      self.gear_ratio = 0.
      self.config_bitmap = 0
      self.eth_ip_address = ''
      self.eth_port_number = 0
      self.eth_subnet_mask = ''
      self.eth_gateway = ''

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
      buff.write(_get_struct_17fI().pack(_x.teleop_vel_limit_mps, _x.teleop_accel_limit_mps2, _x.teleop_yaw_rate_limit_rps, _x.teleop_yaw_accel_limit_rps2, _x.vel_limit_mps, _x.accel_limit_mps2, _x.decel_limit_mps2, _x.dtz_decel_limit_mps2, _x.lateral_accel_limit_mps2, _x.yaw_rate_limit_rps, _x.yaw_accel_limit_rps2, _x.tire_diameter_m, _x.wheelbase_length_m, _x.omni_yaw_correction_factor, _x.omni_straffe_correction_factor, _x.wheel_track_width_m, _x.gear_ratio, _x.config_bitmap))
      _x = self.eth_ip_address
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
      _x = self.eth_port_number
      buff.write(_get_struct_I().pack(_x))
      _x = self.eth_subnet_mask
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
      _x = self.eth_gateway
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
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
      end += 72
      (_x.teleop_vel_limit_mps, _x.teleop_accel_limit_mps2, _x.teleop_yaw_rate_limit_rps, _x.teleop_yaw_accel_limit_rps2, _x.vel_limit_mps, _x.accel_limit_mps2, _x.decel_limit_mps2, _x.dtz_decel_limit_mps2, _x.lateral_accel_limit_mps2, _x.yaw_rate_limit_rps, _x.yaw_accel_limit_rps2, _x.tire_diameter_m, _x.wheelbase_length_m, _x.omni_yaw_correction_factor, _x.omni_straffe_correction_factor, _x.wheel_track_width_m, _x.gear_ratio, _x.config_bitmap,) = _get_struct_17fI().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.eth_ip_address = str[start:end].decode('utf-8', 'rosmsg')
      else:
        self.eth_ip_address = str[start:end]
      start = end
      end += 4
      (self.eth_port_number,) = _get_struct_I().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.eth_subnet_mask = str[start:end].decode('utf-8', 'rosmsg')
      else:
        self.eth_subnet_mask = str[start:end]
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.eth_gateway = str[start:end].decode('utf-8', 'rosmsg')
      else:
        self.eth_gateway = str[start:end]
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
      buff.write(_get_struct_17fI().pack(_x.teleop_vel_limit_mps, _x.teleop_accel_limit_mps2, _x.teleop_yaw_rate_limit_rps, _x.teleop_yaw_accel_limit_rps2, _x.vel_limit_mps, _x.accel_limit_mps2, _x.decel_limit_mps2, _x.dtz_decel_limit_mps2, _x.lateral_accel_limit_mps2, _x.yaw_rate_limit_rps, _x.yaw_accel_limit_rps2, _x.tire_diameter_m, _x.wheelbase_length_m, _x.omni_yaw_correction_factor, _x.omni_straffe_correction_factor, _x.wheel_track_width_m, _x.gear_ratio, _x.config_bitmap))
      _x = self.eth_ip_address
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
      _x = self.eth_port_number
      buff.write(_get_struct_I().pack(_x))
      _x = self.eth_subnet_mask
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
      _x = self.eth_gateway
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
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
      end += 72
      (_x.teleop_vel_limit_mps, _x.teleop_accel_limit_mps2, _x.teleop_yaw_rate_limit_rps, _x.teleop_yaw_accel_limit_rps2, _x.vel_limit_mps, _x.accel_limit_mps2, _x.decel_limit_mps2, _x.dtz_decel_limit_mps2, _x.lateral_accel_limit_mps2, _x.yaw_rate_limit_rps, _x.yaw_accel_limit_rps2, _x.tire_diameter_m, _x.wheelbase_length_m, _x.omni_yaw_correction_factor, _x.omni_straffe_correction_factor, _x.wheel_track_width_m, _x.gear_ratio, _x.config_bitmap,) = _get_struct_17fI().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.eth_ip_address = str[start:end].decode('utf-8', 'rosmsg')
      else:
        self.eth_ip_address = str[start:end]
      start = end
      end += 4
      (self.eth_port_number,) = _get_struct_I().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.eth_subnet_mask = str[start:end].decode('utf-8', 'rosmsg')
      else:
        self.eth_subnet_mask = str[start:end]
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.eth_gateway = str[start:end].decode('utf-8', 'rosmsg')
      else:
        self.eth_gateway = str[start:end]
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e)  # most likely buffer underfill

_struct_I = genpy.struct_I
def _get_struct_I():
    global _struct_I
    return _struct_I
_struct_17fI = None
def _get_struct_17fI():
    global _struct_17fI
    if _struct_17fI is None:
        _struct_17fI = struct.Struct("<17fI")
    return _struct_17fI
_struct_3I = None
def _get_struct_3I():
    global _struct_3I
    if _struct_3I is None:
        _struct_3I = struct.Struct("<3I")
    return _struct_3I
