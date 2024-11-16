// Auto-generated. Do not edit!

// (in-package in2ulv_msgs.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------


//-----------------------------------------------------------

class HMIModeCommandRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.mode_type = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('mode_type')) {
        this.mode_type = initObj.mode_type
      }
      else {
        this.mode_type = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type HMIModeCommandRequest
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [mode_type]
    bufferOffset = _serializer.uint8(obj.mode_type, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type HMIModeCommandRequest
    let len;
    let data = new HMIModeCommandRequest(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [mode_type]
    data.mode_type = _deserializer.uint8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    return length + 1;
  }

  static datatype() {
    // Returns string type for a service object
    return 'in2ulv_msgs/HMIModeCommandRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '2076c5a9de23a7c0d34019916302d207';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # 帧头，包含时间戳信息
    std_msgs/Header header
    
    # 模式设置
    uint8 mode_type
    
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
    const resolved = new HMIModeCommandRequest(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.mode_type !== undefined) {
      resolved.mode_type = msg.mode_type;
    }
    else {
      resolved.mode_type = 0
    }

    return resolved;
    }
};

class HMIModeCommandResponse {
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
    // Serializes a message object of type HMIModeCommandResponse
    // Serialize message field [receive_status]
    bufferOffset = _serializer.bool(obj.receive_status, buffer, bufferOffset);
    // Serialize message field [receive_info]
    bufferOffset = _serializer.string(obj.receive_info, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type HMIModeCommandResponse
    let len;
    let data = new HMIModeCommandResponse(null);
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
    return 'in2ulv_msgs/HMIModeCommandResponse';
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
    const resolved = new HMIModeCommandResponse(null);
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
  Request: HMIModeCommandRequest,
  Response: HMIModeCommandResponse,
  md5sum() { return 'faa5d2d67ab17bd67adc93c419a58b77'; },
  datatype() { return 'in2ulv_msgs/HMIModeCommand'; }
};
