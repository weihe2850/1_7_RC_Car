# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from in2ulv_msgs/Trajectory.msg. Do not edit."""
import codecs
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct

import in2ulv_msgs.msg
import std_msgs.msg

class Trajectory(genpy.Message):
  _md5sum = "0c5b86aedbc11da21d3e6c277583d882"
  _type = "in2ulv_msgs/Trajectory"
  _has_header = True  # flag to mark the presence of a Header object
  _full_text = """std_msgs/Header header

# 轨迹点序列，暂定长度为 301
TrajectoryPoint[] trajectory_points

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
MSG: in2ulv_msgs/TrajectoryPoint
# 转向灯, 0不闪，1右转向灯闪，2左转向灯闪, 3双闪
uint8 indicator_status

# 档位，0空挡，1为D档，2为R档，3为P档
uint8 gear

# 车体坐标系导航位姿
float64 x
float64 y
float64 theta
float64 v
float64 a
"""
  __slots__ = ['header','trajectory_points']
  _slot_types = ['std_msgs/Header','in2ulv_msgs/TrajectoryPoint[]']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       header,trajectory_points

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(Trajectory, self).__init__(*args, **kwds)
      # message fields cannot be None, assign default values for those that are
      if self.header is None:
        self.header = std_msgs.msg.Header()
      if self.trajectory_points is None:
        self.trajectory_points = []
    else:
      self.header = std_msgs.msg.Header()
      self.trajectory_points = []

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
      length = len(self.trajectory_points)
      buff.write(_struct_I.pack(length))
      for val1 in self.trajectory_points:
        _x = val1
        buff.write(_get_struct_2B5d().pack(_x.indicator_status, _x.gear, _x.x, _x.y, _x.theta, _x.v, _x.a))
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
      if self.trajectory_points is None:
        self.trajectory_points = None
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
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      self.trajectory_points = []
      for i in range(0, length):
        val1 = in2ulv_msgs.msg.TrajectoryPoint()
        _x = val1
        start = end
        end += 42
        (_x.indicator_status, _x.gear, _x.x, _x.y, _x.theta, _x.v, _x.a,) = _get_struct_2B5d().unpack(str[start:end])
        self.trajectory_points.append(val1)
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
      length = len(self.trajectory_points)
      buff.write(_struct_I.pack(length))
      for val1 in self.trajectory_points:
        _x = val1
        buff.write(_get_struct_2B5d().pack(_x.indicator_status, _x.gear, _x.x, _x.y, _x.theta, _x.v, _x.a))
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
      if self.trajectory_points is None:
        self.trajectory_points = None
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
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      self.trajectory_points = []
      for i in range(0, length):
        val1 = in2ulv_msgs.msg.TrajectoryPoint()
        _x = val1
        start = end
        end += 42
        (_x.indicator_status, _x.gear, _x.x, _x.y, _x.theta, _x.v, _x.a,) = _get_struct_2B5d().unpack(str[start:end])
        self.trajectory_points.append(val1)
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e)  # most likely buffer underfill

_struct_I = genpy.struct_I
def _get_struct_I():
    global _struct_I
    return _struct_I
_struct_2B5d = None
def _get_struct_2B5d():
    global _struct_2B5d
    if _struct_2B5d is None:
        _struct_2B5d = struct.Struct("<2B5d")
    return _struct_2B5d
_struct_3I = None
def _get_struct_3I():
    global _struct_3I
    if _struct_3I is None:
        _struct_3I = struct.Struct("<3I")
    return _struct_3I