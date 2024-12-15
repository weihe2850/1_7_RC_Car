# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from race_car_pkg/CarStates.msg. Do not edit."""
import codecs
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct


class CarStates(genpy.Message):
  _md5sum = "8e4453ced50b304c0ba0c546d7acd617"
  _type = "race_car_pkg/CarStates"
  _has_header = False  # flag to mark the presence of a Header object
  _full_text = """float64 Ux_mps
float64 Uy_mps
float64 r_radps
float64 ax_mps2
float64 ay_mps2
float64 speed_rpm
float64 delta_rad
float64 Single_Motor_TxR_Nm
float64 latitude
float64 longitude
float64 altitude
float64 roll_rad
float64 pitch_rad
float64 yaw_rad
int32 gps_state
float64 UWB_x_m
float64 UWB_y_m
float64 EKF_x_m
float64 EKF_y_m"""
  __slots__ = ['Ux_mps','Uy_mps','r_radps','ax_mps2','ay_mps2','speed_rpm','delta_rad','Single_Motor_TxR_Nm','latitude','longitude','altitude','roll_rad','pitch_rad','yaw_rad','gps_state','UWB_x_m','UWB_y_m','EKF_x_m','EKF_y_m']
  _slot_types = ['float64','float64','float64','float64','float64','float64','float64','float64','float64','float64','float64','float64','float64','float64','int32','float64','float64','float64','float64']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       Ux_mps,Uy_mps,r_radps,ax_mps2,ay_mps2,speed_rpm,delta_rad,Single_Motor_TxR_Nm,latitude,longitude,altitude,roll_rad,pitch_rad,yaw_rad,gps_state,UWB_x_m,UWB_y_m,EKF_x_m,EKF_y_m

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(CarStates, self).__init__(*args, **kwds)
      # message fields cannot be None, assign default values for those that are
      if self.Ux_mps is None:
        self.Ux_mps = 0.
      if self.Uy_mps is None:
        self.Uy_mps = 0.
      if self.r_radps is None:
        self.r_radps = 0.
      if self.ax_mps2 is None:
        self.ax_mps2 = 0.
      if self.ay_mps2 is None:
        self.ay_mps2 = 0.
      if self.speed_rpm is None:
        self.speed_rpm = 0.
      if self.delta_rad is None:
        self.delta_rad = 0.
      if self.Single_Motor_TxR_Nm is None:
        self.Single_Motor_TxR_Nm = 0.
      if self.latitude is None:
        self.latitude = 0.
      if self.longitude is None:
        self.longitude = 0.
      if self.altitude is None:
        self.altitude = 0.
      if self.roll_rad is None:
        self.roll_rad = 0.
      if self.pitch_rad is None:
        self.pitch_rad = 0.
      if self.yaw_rad is None:
        self.yaw_rad = 0.
      if self.gps_state is None:
        self.gps_state = 0
      if self.UWB_x_m is None:
        self.UWB_x_m = 0.
      if self.UWB_y_m is None:
        self.UWB_y_m = 0.
      if self.EKF_x_m is None:
        self.EKF_x_m = 0.
      if self.EKF_y_m is None:
        self.EKF_y_m = 0.
    else:
      self.Ux_mps = 0.
      self.Uy_mps = 0.
      self.r_radps = 0.
      self.ax_mps2 = 0.
      self.ay_mps2 = 0.
      self.speed_rpm = 0.
      self.delta_rad = 0.
      self.Single_Motor_TxR_Nm = 0.
      self.latitude = 0.
      self.longitude = 0.
      self.altitude = 0.
      self.roll_rad = 0.
      self.pitch_rad = 0.
      self.yaw_rad = 0.
      self.gps_state = 0
      self.UWB_x_m = 0.
      self.UWB_y_m = 0.
      self.EKF_x_m = 0.
      self.EKF_y_m = 0.

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
      buff.write(_get_struct_14di4d().pack(_x.Ux_mps, _x.Uy_mps, _x.r_radps, _x.ax_mps2, _x.ay_mps2, _x.speed_rpm, _x.delta_rad, _x.Single_Motor_TxR_Nm, _x.latitude, _x.longitude, _x.altitude, _x.roll_rad, _x.pitch_rad, _x.yaw_rad, _x.gps_state, _x.UWB_x_m, _x.UWB_y_m, _x.EKF_x_m, _x.EKF_y_m))
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
      end += 148
      (_x.Ux_mps, _x.Uy_mps, _x.r_radps, _x.ax_mps2, _x.ay_mps2, _x.speed_rpm, _x.delta_rad, _x.Single_Motor_TxR_Nm, _x.latitude, _x.longitude, _x.altitude, _x.roll_rad, _x.pitch_rad, _x.yaw_rad, _x.gps_state, _x.UWB_x_m, _x.UWB_y_m, _x.EKF_x_m, _x.EKF_y_m,) = _get_struct_14di4d().unpack(str[start:end])
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
      buff.write(_get_struct_14di4d().pack(_x.Ux_mps, _x.Uy_mps, _x.r_radps, _x.ax_mps2, _x.ay_mps2, _x.speed_rpm, _x.delta_rad, _x.Single_Motor_TxR_Nm, _x.latitude, _x.longitude, _x.altitude, _x.roll_rad, _x.pitch_rad, _x.yaw_rad, _x.gps_state, _x.UWB_x_m, _x.UWB_y_m, _x.EKF_x_m, _x.EKF_y_m))
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
      end += 148
      (_x.Ux_mps, _x.Uy_mps, _x.r_radps, _x.ax_mps2, _x.ay_mps2, _x.speed_rpm, _x.delta_rad, _x.Single_Motor_TxR_Nm, _x.latitude, _x.longitude, _x.altitude, _x.roll_rad, _x.pitch_rad, _x.yaw_rad, _x.gps_state, _x.UWB_x_m, _x.UWB_y_m, _x.EKF_x_m, _x.EKF_y_m,) = _get_struct_14di4d().unpack(str[start:end])
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e)  # most likely buffer underfill

_struct_I = genpy.struct_I
def _get_struct_I():
    global _struct_I
    return _struct_I
_struct_14di4d = None
def _get_struct_14di4d():
    global _struct_14di4d
    if _struct_14di4d is None:
        _struct_14di4d = struct.Struct("<14di4d")
    return _struct_14di4d