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

class HookCtrlMsg {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.module_type = null;
      this.error_code = null;
      this.AHDModRqst = null;
      this.BckUpSts = null;
      this.AHDRstRqst = null;
      this.AHDPosRqstV = null;
      this.AHDPosRqst = null;
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
      if (initObj.hasOwnProperty('AHDModRqst')) {
        this.AHDModRqst = initObj.AHDModRqst
      }
      else {
        this.AHDModRqst = 0;
      }
      if (initObj.hasOwnProperty('BckUpSts')) {
        this.BckUpSts = initObj.BckUpSts
      }
      else {
        this.BckUpSts = 0;
      }
      if (initObj.hasOwnProperty('AHDRstRqst')) {
        this.AHDRstRqst = initObj.AHDRstRqst
      }
      else {
        this.AHDRstRqst = 0;
      }
      if (initObj.hasOwnProperty('AHDPosRqstV')) {
        this.AHDPosRqstV = initObj.AHDPosRqstV
      }
      else {
        this.AHDPosRqstV = 0;
      }
      if (initObj.hasOwnProperty('AHDPosRqst')) {
        this.AHDPosRqst = initObj.AHDPosRqst
      }
      else {
        this.AHDPosRqst = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type HookCtrlMsg
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [module_type]
    bufferOffset = _serializer.uint8(obj.module_type, buffer, bufferOffset);
    // Serialize message field [error_code]
    bufferOffset = _serializer.uint32(obj.error_code, buffer, bufferOffset);
    // Serialize message field [AHDModRqst]
    bufferOffset = _serializer.uint8(obj.AHDModRqst, buffer, bufferOffset);
    // Serialize message field [BckUpSts]
    bufferOffset = _serializer.uint8(obj.BckUpSts, buffer, bufferOffset);
    // Serialize message field [AHDRstRqst]
    bufferOffset = _serializer.uint8(obj.AHDRstRqst, buffer, bufferOffset);
    // Serialize message field [AHDPosRqstV]
    bufferOffset = _serializer.uint8(obj.AHDPosRqstV, buffer, bufferOffset);
    // Serialize message field [AHDPosRqst]
    bufferOffset = _serializer.int32(obj.AHDPosRqst, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type HookCtrlMsg
    let len;
    let data = new HookCtrlMsg(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [module_type]
    data.module_type = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [error_code]
    data.error_code = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [AHDModRqst]
    data.AHDModRqst = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [BckUpSts]
    data.BckUpSts = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [AHDRstRqst]
    data.AHDRstRqst = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [AHDPosRqstV]
    data.AHDPosRqstV = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [AHDPosRqst]
    data.AHDPosRqst = _deserializer.int32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    return length + 13;
  }

  static datatype() {
    // Returns string type for a message object
    return 'in2ulv_msgs/HookCtrlMsg';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '9051bf82eb1b0bc832bea74601287bfd';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # 帧头，包含时间戳信息
    std_msgs/Header header
    
    # 模块类型
    uint8 module_type
    
    # error_code
    uint32 error_code
    
    # 模块信息
    # IDU Automatic Hook Status 0x31E
    uint8 AHDModRqst    # 自动脱挂钩功能请求
    uint8 BckUpSts      # 倒车状态
    uint8 AHDRstRqst    # 自动脱挂钩重置请求
    uint8 AHDPosRqstV   # 自动脱挂钩位置请求有效性
    int32 AHDPosRqst    # 自动脱挂钩位置请求
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
    const resolved = new HookCtrlMsg(null);
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

    if (msg.AHDModRqst !== undefined) {
      resolved.AHDModRqst = msg.AHDModRqst;
    }
    else {
      resolved.AHDModRqst = 0
    }

    if (msg.BckUpSts !== undefined) {
      resolved.BckUpSts = msg.BckUpSts;
    }
    else {
      resolved.BckUpSts = 0
    }

    if (msg.AHDRstRqst !== undefined) {
      resolved.AHDRstRqst = msg.AHDRstRqst;
    }
    else {
      resolved.AHDRstRqst = 0
    }

    if (msg.AHDPosRqstV !== undefined) {
      resolved.AHDPosRqstV = msg.AHDPosRqstV;
    }
    else {
      resolved.AHDPosRqstV = 0
    }

    if (msg.AHDPosRqst !== undefined) {
      resolved.AHDPosRqst = msg.AHDPosRqst;
    }
    else {
      resolved.AHDPosRqst = 0
    }

    return resolved;
    }
};

module.exports = HookCtrlMsg;
