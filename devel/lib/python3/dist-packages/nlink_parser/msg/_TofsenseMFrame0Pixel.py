# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from nlink_parser/TofsenseMFrame0Pixel.msg. Do not edit."""
import codecs
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct


class TofsenseMFrame0Pixel(genpy.Message):
  _md5sum = "d8d02fd7942fc6660671b1c9411abd9c"
  _type = "nlink_parser/TofsenseMFrame0Pixel"
  _has_header = False  # flag to mark the presence of a Header object
  _full_text = """float32 dis
uint8 dis_status
uint16 signal_strength
"""
  __slots__ = ['dis','dis_status','signal_strength']
  _slot_types = ['float32','uint8','uint16']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       dis,dis_status,signal_strength

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(TofsenseMFrame0Pixel, self).__init__(*args, **kwds)
      # message fields cannot be None, assign default values for those that are
      if self.dis is None:
        self.dis = 0.
      if self.dis_status is None:
        self.dis_status = 0
      if self.signal_strength is None:
        self.signal_strength = 0
    else:
      self.dis = 0.
      self.dis_status = 0
      self.signal_strength = 0

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
      buff.write(_get_struct_fBH().pack(_x.dis, _x.dis_status, _x.signal_strength))
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
      end = 0
      _x = self
      start = end
      end += 7
      (_x.dis, _x.dis_status, _x.signal_strength,) = _get_struct_fBH().unpack(str[start:end])
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
      buff.write(_get_struct_fBH().pack(_x.dis, _x.dis_status, _x.signal_strength))
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
      end = 0
      _x = self
      start = end
      end += 7
      (_x.dis, _x.dis_status, _x.signal_strength,) = _get_struct_fBH().unpack(str[start:end])
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e)  # most likely buffer underfill

_struct_I = genpy.struct_I
def _get_struct_I():
    global _struct_I
    return _struct_I
_struct_fBH = None
def _get_struct_fBH():
    global _struct_fBH
    if _struct_fBH is None:
        _struct_fBH = struct.Struct("<fBH")
    return _struct_fBH