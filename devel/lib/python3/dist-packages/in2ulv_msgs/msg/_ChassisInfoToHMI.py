# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from in2ulv_msgs/ChassisInfoToHMI.msg. Do not edit."""
import codecs
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct

import std_msgs.msg

class ChassisInfoToHMI(genpy.Message):
  _md5sum = "a60f94b6e0bf5a28659ca3510b2db089"
  _type = "in2ulv_msgs/ChassisInfoToHMI"
  _has_header = True  # flag to mark the presence of a Header object
  _full_text = """# 帧头，包含时间戳信息
std_msgs/Header header

string vin # 字符串类型, 16 ~ 32个字符， 读取配置文件获取，列如: LK6ADAE21MB100250
string current_stop # 字符串类型, 16 ~ 32个字符, 列如: d0a0d333931203a,
string route_stop # 字符串类型,16 ~ 32个字符, 列如: d0a0d333931203a

uint64 route_line # 路线

uint8 control_mode # 车辆控制模式: 0为自动模式， 1为手动模式

uint16 veh_status  # 0: 无服务请求, 1: 未准备完毕, 2: 准备完毕, 3: 正常行驶, 4: 到达目的地, 5: 服务失败(未到达目的地), 6: 车辆已经暂停, 7: 避障停车

float64[2] gps_veh # 车辆位置经纬度，2个dobule类型的数组, 第一个是车辆位置的纬度， 第二个是车辆位置的经度
float64[2] gps_stop # 车辆目标站点经纬度，2个dobule类型的数组, 第一个是车辆位置的纬度， 第二个是车辆位置的经度

float64 trip_distance     # 行程总里程, 距离站点总里程, 单位: m
float64 trip_eta          # 行程剩余时间, 到达站点预计剩余时间, 单位: ms 
float64 trip_left_mileage # 行程剩余里程, 到达站点剩余里程, 单位: m

uint8 SysPowMode  # 整车电源模式, ACAN的0x565, 0x0: OFF, 0x1: ACC, 0x2: ON
uint8 HzrdLtIO    # 双闪状态, 0: 关闭, 1: 开启
uint8 WindscenWipSt  # 雨刮状态, 0: 关闭, 1: 开启 
uint8 Highbeem       # 远关灯状态, 0: 关闭, 1: 开启
uint8 Lowbeem        # 近光灯状态, 0: 关闭, 1: 开启
uint8 Windows        # 车窗状态, 0: 升起, 1: 落下
uint8 Doorlock       # 门锁状态, 0: 锁车, 1: 解锁
uint8 DoorSwitch     # 门锁开关, 0: 关闭, 1: 未关闭
uint8 EmergencyButton# 按钮状态: 按下为1， 不按下为0

float64 speed	      # 车辆当前速度, IDU从0x36A获取到的车速, 单位m/s
float64 angle          # 车辆转向角度, IDU从0x1E5获取到的转角值, 单位度
float64 soc            # IDU从0x36A获取到的SOC电池值, 单位%
uint16 event         # 故障事件上报, 具体故障事件定义和含义由算法给出


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
  __slots__ = ['header','vin','current_stop','route_stop','route_line','control_mode','veh_status','gps_veh','gps_stop','trip_distance','trip_eta','trip_left_mileage','SysPowMode','HzrdLtIO','WindscenWipSt','Highbeem','Lowbeem','Windows','Doorlock','DoorSwitch','EmergencyButton','speed','angle','soc','event']
  _slot_types = ['std_msgs/Header','string','string','string','uint64','uint8','uint16','float64[2]','float64[2]','float64','float64','float64','uint8','uint8','uint8','uint8','uint8','uint8','uint8','uint8','uint8','float64','float64','float64','uint16']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       header,vin,current_stop,route_stop,route_line,control_mode,veh_status,gps_veh,gps_stop,trip_distance,trip_eta,trip_left_mileage,SysPowMode,HzrdLtIO,WindscenWipSt,Highbeem,Lowbeem,Windows,Doorlock,DoorSwitch,EmergencyButton,speed,angle,soc,event

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(ChassisInfoToHMI, self).__init__(*args, **kwds)
      # message fields cannot be None, assign default values for those that are
      if self.header is None:
        self.header = std_msgs.msg.Header()
      if self.vin is None:
        self.vin = ''
      if self.current_stop is None:
        self.current_stop = ''
      if self.route_stop is None:
        self.route_stop = ''
      if self.route_line is None:
        self.route_line = 0
      if self.control_mode is None:
        self.control_mode = 0
      if self.veh_status is None:
        self.veh_status = 0
      if self.gps_veh is None:
        self.gps_veh = [0.] * 2
      if self.gps_stop is None:
        self.gps_stop = [0.] * 2
      if self.trip_distance is None:
        self.trip_distance = 0.
      if self.trip_eta is None:
        self.trip_eta = 0.
      if self.trip_left_mileage is None:
        self.trip_left_mileage = 0.
      if self.SysPowMode is None:
        self.SysPowMode = 0
      if self.HzrdLtIO is None:
        self.HzrdLtIO = 0
      if self.WindscenWipSt is None:
        self.WindscenWipSt = 0
      if self.Highbeem is None:
        self.Highbeem = 0
      if self.Lowbeem is None:
        self.Lowbeem = 0
      if self.Windows is None:
        self.Windows = 0
      if self.Doorlock is None:
        self.Doorlock = 0
      if self.DoorSwitch is None:
        self.DoorSwitch = 0
      if self.EmergencyButton is None:
        self.EmergencyButton = 0
      if self.speed is None:
        self.speed = 0.
      if self.angle is None:
        self.angle = 0.
      if self.soc is None:
        self.soc = 0.
      if self.event is None:
        self.event = 0
    else:
      self.header = std_msgs.msg.Header()
      self.vin = ''
      self.current_stop = ''
      self.route_stop = ''
      self.route_line = 0
      self.control_mode = 0
      self.veh_status = 0
      self.gps_veh = [0.] * 2
      self.gps_stop = [0.] * 2
      self.trip_distance = 0.
      self.trip_eta = 0.
      self.trip_left_mileage = 0.
      self.SysPowMode = 0
      self.HzrdLtIO = 0
      self.WindscenWipSt = 0
      self.Highbeem = 0
      self.Lowbeem = 0
      self.Windows = 0
      self.Doorlock = 0
      self.DoorSwitch = 0
      self.EmergencyButton = 0
      self.speed = 0.
      self.angle = 0.
      self.soc = 0.
      self.event = 0

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
      _x = self.vin
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
      _x = self.current_stop
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
      _x = self.route_stop
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
      _x = self
      buff.write(_get_struct_QBH().pack(_x.route_line, _x.control_mode, _x.veh_status))
      buff.write(_get_struct_2d().pack(*self.gps_veh))
      buff.write(_get_struct_2d().pack(*self.gps_stop))
      _x = self
      buff.write(_get_struct_3d9B3dH().pack(_x.trip_distance, _x.trip_eta, _x.trip_left_mileage, _x.SysPowMode, _x.HzrdLtIO, _x.WindscenWipSt, _x.Highbeem, _x.Lowbeem, _x.Windows, _x.Doorlock, _x.DoorSwitch, _x.EmergencyButton, _x.speed, _x.angle, _x.soc, _x.event))
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
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.vin = str[start:end].decode('utf-8', 'rosmsg')
      else:
        self.vin = str[start:end]
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.current_stop = str[start:end].decode('utf-8', 'rosmsg')
      else:
        self.current_stop = str[start:end]
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.route_stop = str[start:end].decode('utf-8', 'rosmsg')
      else:
        self.route_stop = str[start:end]
      _x = self
      start = end
      end += 11
      (_x.route_line, _x.control_mode, _x.veh_status,) = _get_struct_QBH().unpack(str[start:end])
      start = end
      end += 16
      self.gps_veh = _get_struct_2d().unpack(str[start:end])
      start = end
      end += 16
      self.gps_stop = _get_struct_2d().unpack(str[start:end])
      _x = self
      start = end
      end += 59
      (_x.trip_distance, _x.trip_eta, _x.trip_left_mileage, _x.SysPowMode, _x.HzrdLtIO, _x.WindscenWipSt, _x.Highbeem, _x.Lowbeem, _x.Windows, _x.Doorlock, _x.DoorSwitch, _x.EmergencyButton, _x.speed, _x.angle, _x.soc, _x.event,) = _get_struct_3d9B3dH().unpack(str[start:end])
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
      _x = self.vin
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
      _x = self.current_stop
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
      _x = self.route_stop
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
      _x = self
      buff.write(_get_struct_QBH().pack(_x.route_line, _x.control_mode, _x.veh_status))
      buff.write(self.gps_veh.tostring())
      buff.write(self.gps_stop.tostring())
      _x = self
      buff.write(_get_struct_3d9B3dH().pack(_x.trip_distance, _x.trip_eta, _x.trip_left_mileage, _x.SysPowMode, _x.HzrdLtIO, _x.WindscenWipSt, _x.Highbeem, _x.Lowbeem, _x.Windows, _x.Doorlock, _x.DoorSwitch, _x.EmergencyButton, _x.speed, _x.angle, _x.soc, _x.event))
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
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.vin = str[start:end].decode('utf-8', 'rosmsg')
      else:
        self.vin = str[start:end]
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.current_stop = str[start:end].decode('utf-8', 'rosmsg')
      else:
        self.current_stop = str[start:end]
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.route_stop = str[start:end].decode('utf-8', 'rosmsg')
      else:
        self.route_stop = str[start:end]
      _x = self
      start = end
      end += 11
      (_x.route_line, _x.control_mode, _x.veh_status,) = _get_struct_QBH().unpack(str[start:end])
      start = end
      end += 16
      self.gps_veh = numpy.frombuffer(str[start:end], dtype=numpy.float64, count=2)
      start = end
      end += 16
      self.gps_stop = numpy.frombuffer(str[start:end], dtype=numpy.float64, count=2)
      _x = self
      start = end
      end += 59
      (_x.trip_distance, _x.trip_eta, _x.trip_left_mileage, _x.SysPowMode, _x.HzrdLtIO, _x.WindscenWipSt, _x.Highbeem, _x.Lowbeem, _x.Windows, _x.Doorlock, _x.DoorSwitch, _x.EmergencyButton, _x.speed, _x.angle, _x.soc, _x.event,) = _get_struct_3d9B3dH().unpack(str[start:end])
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e)  # most likely buffer underfill

_struct_I = genpy.struct_I
def _get_struct_I():
    global _struct_I
    return _struct_I
_struct_2d = None
def _get_struct_2d():
    global _struct_2d
    if _struct_2d is None:
        _struct_2d = struct.Struct("<2d")
    return _struct_2d
_struct_3I = None
def _get_struct_3I():
    global _struct_3I
    if _struct_3I is None:
        _struct_3I = struct.Struct("<3I")
    return _struct_3I
_struct_3d9B3dH = None
def _get_struct_3d9B3dH():
    global _struct_3d9B3dH
    if _struct_3d9B3dH is None:
        _struct_3d9B3dH = struct.Struct("<3d9B3dH")
    return _struct_3d9B3dH
_struct_QBH = None
def _get_struct_QBH():
    global _struct_QBH
    if _struct_QBH is None:
        _struct_QBH = struct.Struct("<QBH")
    return _struct_QBH