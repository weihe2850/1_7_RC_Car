// Auto-generated. Do not edit!

// (in-package in2ulv_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class ChassisInfoToHMI {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.vin = null;
      this.current_stop = null;
      this.route_stop = null;
      this.route_line = null;
      this.control_mode = null;
      this.veh_status = null;
      this.gps_veh = null;
      this.gps_stop = null;
      this.trip_distance = null;
      this.trip_eta = null;
      this.trip_left_mileage = null;
      this.SysPowMode = null;
      this.HzrdLtIO = null;
      this.WindscenWipSt = null;
      this.Highbeem = null;
      this.Lowbeem = null;
      this.Windows = null;
      this.Doorlock = null;
      this.DoorSwitch = null;
      this.EmergencyButton = null;
      this.speed = null;
      this.angle = null;
      this.soc = null;
      this.event = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('vin')) {
        this.vin = initObj.vin
      }
      else {
        this.vin = '';
      }
      if (initObj.hasOwnProperty('current_stop')) {
        this.current_stop = initObj.current_stop
      }
      else {
        this.current_stop = '';
      }
      if (initObj.hasOwnProperty('route_stop')) {
        this.route_stop = initObj.route_stop
      }
      else {
        this.route_stop = '';
      }
      if (initObj.hasOwnProperty('route_line')) {
        this.route_line = initObj.route_line
      }
      else {
        this.route_line = 0;
      }
      if (initObj.hasOwnProperty('control_mode')) {
        this.control_mode = initObj.control_mode
      }
      else {
        this.control_mode = 0;
      }
      if (initObj.hasOwnProperty('veh_status')) {
        this.veh_status = initObj.veh_status
      }
      else {
        this.veh_status = 0;
      }
      if (initObj.hasOwnProperty('gps_veh')) {
        this.gps_veh = initObj.gps_veh
      }
      else {
        this.gps_veh = new Array(2).fill(0);
      }
      if (initObj.hasOwnProperty('gps_stop')) {
        this.gps_stop = initObj.gps_stop
      }
      else {
        this.gps_stop = new Array(2).fill(0);
      }
      if (initObj.hasOwnProperty('trip_distance')) {
        this.trip_distance = initObj.trip_distance
      }
      else {
        this.trip_distance = 0.0;
      }
      if (initObj.hasOwnProperty('trip_eta')) {
        this.trip_eta = initObj.trip_eta
      }
      else {
        this.trip_eta = 0.0;
      }
      if (initObj.hasOwnProperty('trip_left_mileage')) {
        this.trip_left_mileage = initObj.trip_left_mileage
      }
      else {
        this.trip_left_mileage = 0.0;
      }
      if (initObj.hasOwnProperty('SysPowMode')) {
        this.SysPowMode = initObj.SysPowMode
      }
      else {
        this.SysPowMode = 0;
      }
      if (initObj.hasOwnProperty('HzrdLtIO')) {
        this.HzrdLtIO = initObj.HzrdLtIO
      }
      else {
        this.HzrdLtIO = 0;
      }
      if (initObj.hasOwnProperty('WindscenWipSt')) {
        this.WindscenWipSt = initObj.WindscenWipSt
      }
      else {
        this.WindscenWipSt = 0;
      }
      if (initObj.hasOwnProperty('Highbeem')) {
        this.Highbeem = initObj.Highbeem
      }
      else {
        this.Highbeem = 0;
      }
      if (initObj.hasOwnProperty('Lowbeem')) {
        this.Lowbeem = initObj.Lowbeem
      }
      else {
        this.Lowbeem = 0;
      }
      if (initObj.hasOwnProperty('Windows')) {
        this.Windows = initObj.Windows
      }
      else {
        this.Windows = 0;
      }
      if (initObj.hasOwnProperty('Doorlock')) {
        this.Doorlock = initObj.Doorlock
      }
      else {
        this.Doorlock = 0;
      }
      if (initObj.hasOwnProperty('DoorSwitch')) {
        this.DoorSwitch = initObj.DoorSwitch
      }
      else {
        this.DoorSwitch = 0;
      }
      if (initObj.hasOwnProperty('EmergencyButton')) {
        this.EmergencyButton = initObj.EmergencyButton
      }
      else {
        this.EmergencyButton = 0;
      }
      if (initObj.hasOwnProperty('speed')) {
        this.speed = initObj.speed
      }
      else {
        this.speed = 0.0;
      }
      if (initObj.hasOwnProperty('angle')) {
        this.angle = initObj.angle
      }
      else {
        this.angle = 0.0;
      }
      if (initObj.hasOwnProperty('soc')) {
        this.soc = initObj.soc
      }
      else {
        this.soc = 0.0;
      }
      if (initObj.hasOwnProperty('event')) {
        this.event = initObj.event
      }
      else {
        this.event = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ChassisInfoToHMI
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [vin]
    bufferOffset = _serializer.string(obj.vin, buffer, bufferOffset);
    // Serialize message field [current_stop]
    bufferOffset = _serializer.string(obj.current_stop, buffer, bufferOffset);
    // Serialize message field [route_stop]
    bufferOffset = _serializer.string(obj.route_stop, buffer, bufferOffset);
    // Serialize message field [route_line]
    bufferOffset = _serializer.uint64(obj.route_line, buffer, bufferOffset);
    // Serialize message field [control_mode]
    bufferOffset = _serializer.uint8(obj.control_mode, buffer, bufferOffset);
    // Serialize message field [veh_status]
    bufferOffset = _serializer.uint16(obj.veh_status, buffer, bufferOffset);
    // Check that the constant length array field [gps_veh] has the right length
    if (obj.gps_veh.length !== 2) {
      throw new Error('Unable to serialize array field gps_veh - length must be 2')
    }
    // Serialize message field [gps_veh]
    bufferOffset = _arraySerializer.float64(obj.gps_veh, buffer, bufferOffset, 2);
    // Check that the constant length array field [gps_stop] has the right length
    if (obj.gps_stop.length !== 2) {
      throw new Error('Unable to serialize array field gps_stop - length must be 2')
    }
    // Serialize message field [gps_stop]
    bufferOffset = _arraySerializer.float64(obj.gps_stop, buffer, bufferOffset, 2);
    // Serialize message field [trip_distance]
    bufferOffset = _serializer.float64(obj.trip_distance, buffer, bufferOffset);
    // Serialize message field [trip_eta]
    bufferOffset = _serializer.float64(obj.trip_eta, buffer, bufferOffset);
    // Serialize message field [trip_left_mileage]
    bufferOffset = _serializer.float64(obj.trip_left_mileage, buffer, bufferOffset);
    // Serialize message field [SysPowMode]
    bufferOffset = _serializer.uint8(obj.SysPowMode, buffer, bufferOffset);
    // Serialize message field [HzrdLtIO]
    bufferOffset = _serializer.uint8(obj.HzrdLtIO, buffer, bufferOffset);
    // Serialize message field [WindscenWipSt]
    bufferOffset = _serializer.uint8(obj.WindscenWipSt, buffer, bufferOffset);
    // Serialize message field [Highbeem]
    bufferOffset = _serializer.uint8(obj.Highbeem, buffer, bufferOffset);
    // Serialize message field [Lowbeem]
    bufferOffset = _serializer.uint8(obj.Lowbeem, buffer, bufferOffset);
    // Serialize message field [Windows]
    bufferOffset = _serializer.uint8(obj.Windows, buffer, bufferOffset);
    // Serialize message field [Doorlock]
    bufferOffset = _serializer.uint8(obj.Doorlock, buffer, bufferOffset);
    // Serialize message field [DoorSwitch]
    bufferOffset = _serializer.uint8(obj.DoorSwitch, buffer, bufferOffset);
    // Serialize message field [EmergencyButton]
    bufferOffset = _serializer.uint8(obj.EmergencyButton, buffer, bufferOffset);
    // Serialize message field [speed]
    bufferOffset = _serializer.float64(obj.speed, buffer, bufferOffset);
    // Serialize message field [angle]
    bufferOffset = _serializer.float64(obj.angle, buffer, bufferOffset);
    // Serialize message field [soc]
    bufferOffset = _serializer.float64(obj.soc, buffer, bufferOffset);
    // Serialize message field [event]
    bufferOffset = _serializer.uint16(obj.event, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ChassisInfoToHMI
    let len;
    let data = new ChassisInfoToHMI(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [vin]
    data.vin = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [current_stop]
    data.current_stop = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [route_stop]
    data.route_stop = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [route_line]
    data.route_line = _deserializer.uint64(buffer, bufferOffset);
    // Deserialize message field [control_mode]
    data.control_mode = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [veh_status]
    data.veh_status = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [gps_veh]
    data.gps_veh = _arrayDeserializer.float64(buffer, bufferOffset, 2)
    // Deserialize message field [gps_stop]
    data.gps_stop = _arrayDeserializer.float64(buffer, bufferOffset, 2)
    // Deserialize message field [trip_distance]
    data.trip_distance = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [trip_eta]
    data.trip_eta = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [trip_left_mileage]
    data.trip_left_mileage = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [SysPowMode]
    data.SysPowMode = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [HzrdLtIO]
    data.HzrdLtIO = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [WindscenWipSt]
    data.WindscenWipSt = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [Highbeem]
    data.Highbeem = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [Lowbeem]
    data.Lowbeem = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [Windows]
    data.Windows = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [Doorlock]
    data.Doorlock = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [DoorSwitch]
    data.DoorSwitch = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [EmergencyButton]
    data.EmergencyButton = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [speed]
    data.speed = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [angle]
    data.angle = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [soc]
    data.soc = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [event]
    data.event = _deserializer.uint16(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    length += _getByteLength(object.vin);
    length += _getByteLength(object.current_stop);
    length += _getByteLength(object.route_stop);
    return length + 114;
  }

  static datatype() {
    // Returns string type for a message object
    return 'in2ulv_msgs/ChassisInfoToHMI';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'a60f94b6e0bf5a28659ca3510b2db089';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # 帧头，包含时间戳信息
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
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new ChassisInfoToHMI(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.vin !== undefined) {
      resolved.vin = msg.vin;
    }
    else {
      resolved.vin = ''
    }

    if (msg.current_stop !== undefined) {
      resolved.current_stop = msg.current_stop;
    }
    else {
      resolved.current_stop = ''
    }

    if (msg.route_stop !== undefined) {
      resolved.route_stop = msg.route_stop;
    }
    else {
      resolved.route_stop = ''
    }

    if (msg.route_line !== undefined) {
      resolved.route_line = msg.route_line;
    }
    else {
      resolved.route_line = 0
    }

    if (msg.control_mode !== undefined) {
      resolved.control_mode = msg.control_mode;
    }
    else {
      resolved.control_mode = 0
    }

    if (msg.veh_status !== undefined) {
      resolved.veh_status = msg.veh_status;
    }
    else {
      resolved.veh_status = 0
    }

    if (msg.gps_veh !== undefined) {
      resolved.gps_veh = msg.gps_veh;
    }
    else {
      resolved.gps_veh = new Array(2).fill(0)
    }

    if (msg.gps_stop !== undefined) {
      resolved.gps_stop = msg.gps_stop;
    }
    else {
      resolved.gps_stop = new Array(2).fill(0)
    }

    if (msg.trip_distance !== undefined) {
      resolved.trip_distance = msg.trip_distance;
    }
    else {
      resolved.trip_distance = 0.0
    }

    if (msg.trip_eta !== undefined) {
      resolved.trip_eta = msg.trip_eta;
    }
    else {
      resolved.trip_eta = 0.0
    }

    if (msg.trip_left_mileage !== undefined) {
      resolved.trip_left_mileage = msg.trip_left_mileage;
    }
    else {
      resolved.trip_left_mileage = 0.0
    }

    if (msg.SysPowMode !== undefined) {
      resolved.SysPowMode = msg.SysPowMode;
    }
    else {
      resolved.SysPowMode = 0
    }

    if (msg.HzrdLtIO !== undefined) {
      resolved.HzrdLtIO = msg.HzrdLtIO;
    }
    else {
      resolved.HzrdLtIO = 0
    }

    if (msg.WindscenWipSt !== undefined) {
      resolved.WindscenWipSt = msg.WindscenWipSt;
    }
    else {
      resolved.WindscenWipSt = 0
    }

    if (msg.Highbeem !== undefined) {
      resolved.Highbeem = msg.Highbeem;
    }
    else {
      resolved.Highbeem = 0
    }

    if (msg.Lowbeem !== undefined) {
      resolved.Lowbeem = msg.Lowbeem;
    }
    else {
      resolved.Lowbeem = 0
    }

    if (msg.Windows !== undefined) {
      resolved.Windows = msg.Windows;
    }
    else {
      resolved.Windows = 0
    }

    if (msg.Doorlock !== undefined) {
      resolved.Doorlock = msg.Doorlock;
    }
    else {
      resolved.Doorlock = 0
    }

    if (msg.DoorSwitch !== undefined) {
      resolved.DoorSwitch = msg.DoorSwitch;
    }
    else {
      resolved.DoorSwitch = 0
    }

    if (msg.EmergencyButton !== undefined) {
      resolved.EmergencyButton = msg.EmergencyButton;
    }
    else {
      resolved.EmergencyButton = 0
    }

    if (msg.speed !== undefined) {
      resolved.speed = msg.speed;
    }
    else {
      resolved.speed = 0.0
    }

    if (msg.angle !== undefined) {
      resolved.angle = msg.angle;
    }
    else {
      resolved.angle = 0.0
    }

    if (msg.soc !== undefined) {
      resolved.soc = msg.soc;
    }
    else {
      resolved.soc = 0.0
    }

    if (msg.event !== undefined) {
      resolved.event = msg.event;
    }
    else {
      resolved.event = 0
    }

    return resolved;
    }
};

module.exports = ChassisInfoToHMI;
