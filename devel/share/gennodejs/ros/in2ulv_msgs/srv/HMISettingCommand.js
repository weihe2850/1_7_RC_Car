// Auto-generated. Do not edit!

// (in-package in2ulv_msgs.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let geometry_msgs = _finder('geometry_msgs');
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------


//-----------------------------------------------------------

class HMISettingCommandRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.hmi_command_list = null;
      this.target_point_list = null;
      this.station_id_list = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('hmi_command_list')) {
        this.hmi_command_list = initObj.hmi_command_list
      }
      else {
        this.hmi_command_list = [];
      }
      if (initObj.hasOwnProperty('target_point_list')) {
        this.target_point_list = initObj.target_point_list
      }
      else {
        this.target_point_list = [];
      }
      if (initObj.hasOwnProperty('station_id_list')) {
        this.station_id_list = initObj.station_id_list
      }
      else {
        this.station_id_list = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type HMISettingCommandRequest
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [hmi_command_list]
    bufferOffset = _arraySerializer.uint8(obj.hmi_command_list, buffer, bufferOffset, null);
    // Serialize message field [target_point_list]
    // Serialize the length for message field [target_point_list]
    bufferOffset = _serializer.uint32(obj.target_point_list.length, buffer, bufferOffset);
    obj.target_point_list.forEach((val) => {
      bufferOffset = geometry_msgs.msg.Point.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [station_id_list]
    bufferOffset = _arraySerializer.uint32(obj.station_id_list, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type HMISettingCommandRequest
    let len;
    let data = new HMISettingCommandRequest(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [hmi_command_list]
    data.hmi_command_list = _arrayDeserializer.uint8(buffer, bufferOffset, null)
    // Deserialize message field [target_point_list]
    // Deserialize array length for message field [target_point_list]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.target_point_list = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.target_point_list[i] = geometry_msgs.msg.Point.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [station_id_list]
    data.station_id_list = _arrayDeserializer.uint32(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    length += object.hmi_command_list.length;
    length += 24 * object.target_point_list.length;
    length += 4 * object.station_id_list.length;
    return length + 12;
  }

  static datatype() {
    // Returns string type for a service object
    return 'in2ulv_msgs/HMISettingCommandRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '1573f09dde17ea7bab5599fb972f8cda';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # 帧头，包含时间戳信息
    std_msgs/Header header
    
    # 指令类型序列
    uint8[] hmi_command_list
    
    # 目标点序列
    # 注意长度和 hmi_command_list 中的 HEAD_FOR_GOAL 任务数量匹配
    geometry_msgs/Point[] target_point_list
    
    # station id
    # 注意和 target_point_list 长度一致
    uint32[] station_id_list
    
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
    MSG: geometry_msgs/Point
    # This contains the position of a point in free space
    float64 x
    float64 y
    float64 z
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new HMISettingCommandRequest(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.hmi_command_list !== undefined) {
      resolved.hmi_command_list = msg.hmi_command_list;
    }
    else {
      resolved.hmi_command_list = []
    }

    if (msg.target_point_list !== undefined) {
      resolved.target_point_list = new Array(msg.target_point_list.length);
      for (let i = 0; i < resolved.target_point_list.length; ++i) {
        resolved.target_point_list[i] = geometry_msgs.msg.Point.Resolve(msg.target_point_list[i]);
      }
    }
    else {
      resolved.target_point_list = []
    }

    if (msg.station_id_list !== undefined) {
      resolved.station_id_list = msg.station_id_list;
    }
    else {
      resolved.station_id_list = []
    }

    return resolved;
    }
};

class HMISettingCommandResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.receive_status = null;
      this.receive_info = null;
    }
    else {
      if (initObj.hasOwnProperty('receive_status')) {
        this.receive_status = initObj.receive_status
      }
      else {
        this.receive_status = false;
      }
      if (initObj.hasOwnProperty('receive_info')) {
        this.receive_info = initObj.receive_info
      }
      else {
        this.receive_info = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type HMISettingCommandResponse
    // Serialize message field [receive_status]
    bufferOffset = _serializer.bool(obj.receive_status, buffer, bufferOffset);
    // Serialize message field [receive_info]
    bufferOffset = _serializer.string(obj.receive_info, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type HMISettingCommandResponse
    let len;
    let data = new HMISettingCommandResponse(null);
    // Deserialize message field [receive_status]
    data.receive_status = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [receive_info]
    data.receive_info = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.receive_info);
    return length + 5;
  }

  static datatype() {
    // Returns string type for a service object
    return 'in2ulv_msgs/HMISettingCommandResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'ad03ff939334133dc0310985baf892b0';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # 指令接收状态
    bool receive_status
    
    # 指令接收信息
    string receive_info
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new HMISettingCommandResponse(null);
    if (msg.receive_status !== undefined) {
      resolved.receive_status = msg.receive_status;
    }
    else {
      resolved.receive_status = false
    }

    if (msg.receive_info !== undefined) {
      resolved.receive_info = msg.receive_info;
    }
    else {
      resolved.receive_info = ''
    }

    return resolved;
    }
};

module.exports = {
  Request: HMISettingCommandRequest,
  Response: HMISettingCommandResponse,
  md5sum() { return '77df7fba1f2ff481f39b2e6000b80ae0'; },
  datatype() { return 'in2ulv_msgs/HMISettingCommand'; }
};
