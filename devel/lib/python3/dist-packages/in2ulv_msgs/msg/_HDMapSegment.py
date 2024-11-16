# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from in2ulv_msgs/HDMapSegment.msg. Do not edit."""
import codecs
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct

import in2ulv_msgs.msg

class HDMapSegment(genpy.Message):
  _md5sum = "d2c0eed8a8c4b7028940231461cac864"
  _type = "in2ulv_msgs/HDMapSegment"
  _has_header = False  # flag to mark the presence of a Header object
  _full_text = """# A segment of an HDMap which contains one or more MapPrimitives.
in2ulv_msgs/HDMapPrimitive[] primitives

int64 preferred_primitive_id

================================================================================
MSG: in2ulv_msgs/HDMapPrimitive
# Map primitive information
int64 id

# Type of primitive, such as lane, polygon, line.
string primitive_type"""
  __slots__ = ['primitives','preferred_primitive_id']
  _slot_types = ['in2ulv_msgs/HDMapPrimitive[]','int64']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       primitives,preferred_primitive_id

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(HDMapSegment, self).__init__(*args, **kwds)
      # message fields cannot be None, assign default values for those that are
      if self.primitives is None:
        self.primitives = []
      if self.preferred_primitive_id is None:
        self.preferred_primitive_id = 0
    else:
      self.primitives = []
      self.preferred_primitive_id = 0

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
      length = len(self.primitives)
      buff.write(_struct_I.pack(length))
      for val1 in self.primitives:
        _x = val1.id
        buff.write(_get_struct_q().pack(_x))
        _x = val1.primitive_type
        length = len(_x)
        if python3 or type(_x) == unicode:
          _x = _x.encode('utf-8')
          length = len(_x)
        buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
      _x = self.preferred_primitive_id
      buff.write(_get_struct_q().pack(_x))
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
      if self.primitives is None:
        self.primitives = None
      end = 0
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      self.primitives = []
      for i in range(0, length):
        val1 = in2ulv_msgs.msg.HDMapPrimitive()
        start = end
        end += 8
        (val1.id,) = _get_struct_q().unpack(str[start:end])
        start = end
        end += 4
        (length,) = _struct_I.unpack(str[start:end])
        start = end
        end += length
        if python3:
          val1.primitive_type = str[start:end].decode('utf-8', 'rosmsg')
        else:
          val1.primitive_type = str[start:end]
        self.primitives.append(val1)
      start = end
      end += 8
      (self.preferred_primitive_id,) = _get_struct_q().unpack(str[start:end])
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
      length = len(self.primitives)
      buff.write(_struct_I.pack(length))
      for val1 in self.primitives:
        _x = val1.id
        buff.write(_get_struct_q().pack(_x))
        _x = val1.primitive_type
        length = len(_x)
        if python3 or type(_x) == unicode:
          _x = _x.encode('utf-8')
          length = len(_x)
        buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
      _x = self.preferred_primitive_id
      buff.write(_get_struct_q().pack(_x))
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
      if self.primitives is None:
        self.primitives = None
      end = 0
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      self.primitives = []
      for i in range(0, length):
        val1 = in2ulv_msgs.msg.HDMapPrimitive()
        start = end
        end += 8
        (val1.id,) = _get_struct_q().unpack(str[start:end])
        start = end
        end += 4
        (length,) = _struct_I.unpack(str[start:end])
        start = end
        end += length
        if python3:
          val1.primitive_type = str[start:end].decode('utf-8', 'rosmsg')
        else:
          val1.primitive_type = str[start:end]
        self.primitives.append(val1)
      start = end
      end += 8
      (self.preferred_primitive_id,) = _get_struct_q().unpack(str[start:end])
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e)  # most likely buffer underfill

_struct_I = genpy.struct_I
def _get_struct_I():
    global _struct_I
    return _struct_I
_struct_q = None
def _get_struct_q():
    global _struct_q
    if _struct_q is None:
        _struct_q = struct.Struct("<q")
    return _struct_q