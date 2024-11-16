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

class UCURequestMsg {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.module_type = null;
      this.error_code = null;
      this.ucu_validity = null;
      this.route_encoder = null;
      this.Version = null;
      this.Province = null;
      this.City = null;
      this.District = null;
      this.Street = null;
      this.Community = null;
      this.FeatureRequest = null;
      this.CarHeading = null;
      this.XXType = null;
      this.MapNumber = null;
      this.StationNumber = null;
      this.RemoteCtrlCommand = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('module_type')) {
        this.module_type = initObj.module_type
      }
      else {
        this.module_type = 0;
      }
      if (initObj.hasOwnProperty('error_code')) {
        this.error_code = initObj.error_code
      }
      else {
        this.error_code = 0;
      }
      if (initObj.hasOwnProperty('ucu_validity')) {
        this.ucu_validity = initObj.ucu_validity
      }
      else {
        this.ucu_validity = false;
      }
      if (initObj.hasOwnProperty('route_encoder')) {
        this.route_encoder = initObj.route_encoder
      }
      else {
        this.route_encoder = '';
      }
      if (initObj.hasOwnProperty('Version')) {
        this.Version = initObj.Version
      }
      else {
        this.Version = 0;
      }
      if (initObj.hasOwnProperty('Province')) {
        this.Province = initObj.Province
      }
      else {
        this.Province = 0;
      }
      if (initObj.hasOwnProperty('City')) {
        this.City = initObj.City
      }
      else {
        this.City = 0;
      }
      if (initObj.hasOwnProperty('District')) {
        this.District = initObj.District
      }
      else {
        this.District = 0;
      }
      if (initObj.hasOwnProperty('Street')) {
        this.Street = initObj.Street
      }
      else {
        this.Street = 0;
      }
      if (initObj.hasOwnProperty('Community')) {
        this.Community = initObj.Community
      }
      else {
        this.Community = 0;
      }
      if (initObj.hasOwnProperty('FeatureRequest')) {
        this.FeatureRequest = initObj.FeatureRequest
      }
      else {
        this.FeatureRequest = 0;
      }
      if (initObj.hasOwnProperty('CarHeading')) {
        this.CarHeading = initObj.CarHeading
      }
      else {
        this.CarHeading = 0;
      }
      if (initObj.hasOwnProperty('XXType')) {
        this.XXType = initObj.XXType
      }
      else {
        this.XXType = 0;
      }
      if (initObj.hasOwnProperty('MapNumber')) {
        this.MapNumber = initObj.MapNumber
      }
      else {
        this.MapNumber = 0;
      }
      if (initObj.hasOwnProperty('StationNumber')) {
        this.StationNumber = initObj.StationNumber
      }
      else {
        this.StationNumber = 0;
      }
      if (initObj.hasOwnProperty('RemoteCtrlCommand')) {
        this.RemoteCtrlCommand = initObj.RemoteCtrlCommand
      }
      else {
        this.RemoteCtrlCommand = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type UCURequestMsg
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [module_type]
    bufferOffset = _serializer.uint8(obj.module_type, buffer, bufferOffset);
    // Serialize message field [error_code]
    bufferOffset = _serializer.uint32(obj.error_code, buffer, bufferOffset);
    // Serialize message field [ucu_validity]
    bufferOffset = _serializer.bool(obj.ucu_validity, buffer, bufferOffset);
    // Serialize message field [route_encoder]
    bufferOffset = _serializer.string(obj.route_encoder, buffer, bufferOffset);
    // Serialize message field [Version]
    bufferOffset = _serializer.uint8(obj.Version, buffer, bufferOffset);
    // Serialize message field [Province]
    bufferOffset = _serializer.uint8(obj.Province, buffer, bufferOffset);
    // Serialize message field [City]
    bufferOffset = _serializer.uint8(obj.City, buffer, bufferOffset);
    // Serialize message field [District]
    bufferOffset = _serializer.uint8(obj.District, buffer, bufferOffset);
    // Serialize message field [Street]
    bufferOffset = _serializer.uint8(obj.Street, buffer, bufferOffset);
    // Serialize message field [Community]
    bufferOffset = _serializer.uint8(obj.Community, buffer, bufferOffset);
    // Serialize message field [FeatureRequest]
    bufferOffset = _serializer.uint8(obj.FeatureRequest, buffer, bufferOffset);
    // Serialize message field [CarHeading]
    bufferOffset = _serializer.uint8(obj.CarHeading, buffer, bufferOffset);
    // Serialize message field [XXType]
    bufferOffset = _serializer.uint8(obj.XXType, buffer, bufferOffset);
    // Serialize message field [MapNumber]
    bufferOffset = _serializer.uint16(obj.MapNumber, buffer, bufferOffset);
    // Serialize message field [StationNumber]
    bufferOffset = _serializer.uint8(obj.StationNumber, buffer, bufferOffset);
    // Serialize message field [RemoteCtrlCommand]
    bufferOffset = _serializer.uint8(obj.RemoteCtrlCommand, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type UCURequestMsg
    let len;
    let data = new UCURequestMsg(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [module_type]
    data.module_type = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [error_code]
    data.error_code = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [ucu_validity]
    data.ucu_validity = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [route_encoder]
    data.route_encoder = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [Version]
    data.Version = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [Province]
    data.Province = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [City]
    data.City = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [District]
    data.District = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [Street]
    data.Street = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [Community]
    data.Community = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [FeatureRequest]
    data.FeatureRequest = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [CarHeading]
    data.CarHeading = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [XXType]
    data.XXType = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [MapNumber]
    data.MapNumber = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [StationNumber]
    data.StationNumber = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [RemoteCtrlCommand]
    data.RemoteCtrlCommand = _deserializer.uint8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    length += _getByteLength(object.route_encoder);
    return length + 23;
  }

  static datatype() {
    // Returns string type for a message object
    return 'in2ulv_msgs/UCURequestMsg';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'd0e6d4647b85f9842b9c69090dff73da';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # UCU_Requestment_message_4 (0x53E)
    
    # 帧头，包含时间戳信息
    std_msgs/Header header
    # 模块类型
    uint8 module_type
    
    # error_code
    uint32 error_code
    
    # UCU数据有效性
    bool ucu_validity
    string route_encoder
    
    # 版本号
    uint8 Version
    # 地区信息：省份、城市、区县、街道、校区
    uint8 Province
    uint8 City
    uint8 District
    uint8 Street
    uint8 Community
    # 功能请求
    uint8 FeatureRequest
    # 车头朝向
    uint8 CarHeading
    # 类型
    uint8 XXType
    # 地图编号
    uint16 MapNumber
    # 站点编号
    uint8 StationNumber
    # 远程控制命令
    uint8 RemoteCtrlCommand
    
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
    const resolved = new UCURequestMsg(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.module_type !== undefined) {
      resolved.module_type = msg.module_type;
    }
    else {
      resolved.module_type = 0
    }

    if (msg.error_code !== undefined) {
      resolved.error_code = msg.error_code;
    }
    else {
      resolved.error_code = 0
    }

    if (msg.ucu_validity !== undefined) {
      resolved.ucu_validity = msg.ucu_validity;
    }
    else {
      resolved.ucu_validity = false
    }

    if (msg.route_encoder !== undefined) {
      resolved.route_encoder = msg.route_encoder;
    }
    else {
      resolved.route_encoder = ''
    }

    if (msg.Version !== undefined) {
      resolved.Version = msg.Version;
    }
    else {
      resolved.Version = 0
    }

    if (msg.Province !== undefined) {
      resolved.Province = msg.Province;
    }
    else {
      resolved.Province = 0
    }

    if (msg.City !== undefined) {
      resolved.City = msg.City;
    }
    else {
      resolved.City = 0
    }

    if (msg.District !== undefined) {
      resolved.District = msg.District;
    }
    else {
      resolved.District = 0
    }

    if (msg.Street !== undefined) {
      resolved.Street = msg.Street;
    }
    else {
      resolved.Street = 0
    }

    if (msg.Community !== undefined) {
      resolved.Community = msg.Community;
    }
    else {
      resolved.Community = 0
    }

    if (msg.FeatureRequest !== undefined) {
      resolved.FeatureRequest = msg.FeatureRequest;
    }
    else {
      resolved.FeatureRequest = 0
    }

    if (msg.CarHeading !== undefined) {
      resolved.CarHeading = msg.CarHeading;
    }
    else {
      resolved.CarHeading = 0
    }

    if (msg.XXType !== undefined) {
      resolved.XXType = msg.XXType;
    }
    else {
      resolved.XXType = 0
    }

    if (msg.MapNumber !== undefined) {
      resolved.MapNumber = msg.MapNumber;
    }
    else {
      resolved.MapNumber = 0
    }

    if (msg.StationNumber !== undefined) {
      resolved.StationNumber = msg.StationNumber;
    }
    else {
      resolved.StationNumber = 0
    }

    if (msg.RemoteCtrlCommand !== undefined) {
      resolved.RemoteCtrlCommand = msg.RemoteCtrlCommand;
    }
    else {
      resolved.RemoteCtrlCommand = 0
    }

    return resolved;
    }
};

module.exports = UCURequestMsg;
