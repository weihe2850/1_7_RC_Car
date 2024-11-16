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

class HookMsg {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.module_type = null;
      this.error_code = null;
      this.AHDCortSts = null;
      this.HokPosVal = null;
      this.HokCntpintSts = null;
      this.HokCntSts = null;
      this.HokRstSts = null;
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
      if (initObj.hasOwnProperty('AHDCortSts')) {
        this.AHDCortSts = initObj.AHDCortSts
      }
      else {
        this.AHDCortSts = 0;
      }
      if (initObj.hasOwnProperty('HokPosVal')) {
        this.HokPosVal = initObj.HokPosVal
      }
      else {
        this.HokPosVal = 0;
      }
      if (initObj.hasOwnProperty('HokCntpintSts')) {
        this.HokCntpintSts = initObj.HokCntpintSts
      }
      else {
        this.HokCntpintSts = 0;
      }
      if (initObj.hasOwnProperty('HokCntSts')) {
        this.HokCntSts = initObj.HokCntSts
      }
      else {
        this.HokCntSts = 0;
      }
      if (initObj.hasOwnProperty('HokRstSts')) {
        this.HokRstSts = initObj.HokRstSts
      }
      else {
        this.HokRstSts = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type HookMsg
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [module_type]
    bufferOffset = _serializer.uint8(obj.module_type, buffer, bufferOffset);
    // Serialize message field [error_code]
    bufferOffset = _serializer.uint32(obj.error_code, buffer, bufferOffset);
    // Serialize message field [AHDCortSts]
    bufferOffset = _serializer.uint8(obj.AHDCortSts, buffer, bufferOffset);
    // Serialize message field [HokPosVal]
    bufferOffset = _serializer.int32(obj.HokPosVal, buffer, bufferOffset);
    // Serialize message field [HokCntpintSts]
    bufferOffset = _serializer.uint8(obj.HokCntpintSts, buffer, bufferOffset);
    // Serialize message field [HokCntSts]
    bufferOffset = _serializer.uint8(obj.HokCntSts, buffer, bufferOffset);
    // Serialize message field [HokRstSts]
    bufferOffset = _serializer.uint8(obj.HokRstSts, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type HookMsg
    let len;
    let data = new HookMsg(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [module_type]
    data.module_type = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [error_code]
    data.error_code = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [AHDCortSts]
    data.AHDCortSts = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [HokPosVal]
    data.HokPosVal = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [HokCntpintSts]
    data.HokCntpintSts = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [HokCntSts]
    data.HokCntSts = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [HokRstSts]
    data.HokRstSts = _deserializer.uint8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    return length + 13;
  }

  static datatype() {
    // Returns string type for a message object
    return 'in2ulv_msgs/HookMsg';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'e5d852e0489802c930a6ca6cba9f4263';
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
    # AHD General Status 0x340
    uint8 AHDCortSts    # 自动脱挂钩纠偏状态
    int32 HokPosVal     # 挂钩位置
    uint8 HokCntpintSts # 挂钩对位状态
    uint8 HokCntSts     # 挂钩连接状态
    uint8 HokRstSts     # 挂钩复位状态
    
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
    const resolved = new HookMsg(null);
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

    if (msg.AHDCortSts !== undefined) {
      resolved.AHDCortSts = msg.AHDCortSts;
    }
    else {
      resolved.AHDCortSts = 0
    }

    if (msg.HokPosVal !== undefined) {
      resolved.HokPosVal = msg.HokPosVal;
    }
    else {
      resolved.HokPosVal = 0
    }

    if (msg.HokCntpintSts !== undefined) {
      resolved.HokCntpintSts = msg.HokCntpintSts;
    }
    else {
      resolved.HokCntpintSts = 0
    }

    if (msg.HokCntSts !== undefined) {
      resolved.HokCntSts = msg.HokCntSts;
    }
    else {
      resolved.HokCntSts = 0
    }

    if (msg.HokRstSts !== undefined) {
      resolved.HokRstSts = msg.HokRstSts;
    }
    else {
      resolved.HokRstSts = 0
    }

    return resolved;
    }
};

module.exports = HookMsg;
