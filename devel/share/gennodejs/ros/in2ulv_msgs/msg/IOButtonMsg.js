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

class IOButtonMsg {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.module_type = null;
      this.error_code = null;
      this.io_validity = null;
      this.button_stop = null;
      this.button_a = null;
      this.button_b = null;
      this.button_c = null;
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
      if (initObj.hasOwnProperty('io_validity')) {
        this.io_validity = initObj.io_validity
      }
      else {
        this.io_validity = false;
      }
      if (initObj.hasOwnProperty('button_stop')) {
        this.button_stop = initObj.button_stop
      }
      else {
        this.button_stop = 0;
      }
      if (initObj.hasOwnProperty('button_a')) {
        this.button_a = initObj.button_a
      }
      else {
        this.button_a = 0;
      }
      if (initObj.hasOwnProperty('button_b')) {
        this.button_b = initObj.button_b
      }
      else {
        this.button_b = 0;
      }
      if (initObj.hasOwnProperty('button_c')) {
        this.button_c = initObj.button_c
      }
      else {
        this.button_c = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type IOButtonMsg
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [module_type]
    bufferOffset = _serializer.uint8(obj.module_type, buffer, bufferOffset);
    // Serialize message field [error_code]
    bufferOffset = _serializer.uint32(obj.error_code, buffer, bufferOffset);
    // Serialize message field [io_validity]
    bufferOffset = _serializer.bool(obj.io_validity, buffer, bufferOffset);
    // Serialize message field [button_stop]
    bufferOffset = _serializer.uint8(obj.button_stop, buffer, bufferOffset);
    // Serialize message field [button_a]
    bufferOffset = _serializer.uint8(obj.button_a, buffer, bufferOffset);
    // Serialize message field [button_b]
    bufferOffset = _serializer.uint8(obj.button_b, buffer, bufferOffset);
    // Serialize message field [button_c]
    bufferOffset = _serializer.uint8(obj.button_c, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type IOButtonMsg
    let len;
    let data = new IOButtonMsg(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [module_type]
    data.module_type = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [error_code]
    data.error_code = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [io_validity]
    data.io_validity = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [button_stop]
    data.button_stop = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [button_a]
    data.button_a = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [button_b]
    data.button_b = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [button_c]
    data.button_c = _deserializer.uint8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    return length + 10;
  }

  static datatype() {
    // Returns string type for a message object
    return 'in2ulv_msgs/IOButtonMsg';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '157d5ffbca87ffa114dc6db487e4338a';
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
    
    # 总线IO模块数据有效性：IO模块默认关闭，需要程序启动连接否则数据无效(0)
    bool io_validity
    
    # 按钮: var > 0 表示激活 var = 0 表示未激活
    uint8 button_stop
    uint8 button_a
    uint8 button_b
    uint8 button_c
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
    const resolved = new IOButtonMsg(null);
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

    if (msg.io_validity !== undefined) {
      resolved.io_validity = msg.io_validity;
    }
    else {
      resolved.io_validity = false
    }

    if (msg.button_stop !== undefined) {
      resolved.button_stop = msg.button_stop;
    }
    else {
      resolved.button_stop = 0
    }

    if (msg.button_a !== undefined) {
      resolved.button_a = msg.button_a;
    }
    else {
      resolved.button_a = 0
    }

    if (msg.button_b !== undefined) {
      resolved.button_b = msg.button_b;
    }
    else {
      resolved.button_b = 0
    }

    if (msg.button_c !== undefined) {
      resolved.button_c = msg.button_c;
    }
    else {
      resolved.button_c = 0
    }

    return resolved;
    }
};

module.exports = IOButtonMsg;
