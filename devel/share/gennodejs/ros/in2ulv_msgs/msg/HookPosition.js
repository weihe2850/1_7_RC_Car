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

class HookPosition {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.position_flag = null;
      this.hook_position = null;
      this.hook_offset = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('position_flag')) {
        this.position_flag = initObj.position_flag
      }
      else {
        this.position_flag = 0;
      }
      if (initObj.hasOwnProperty('hook_position')) {
        this.hook_position = initObj.hook_position
      }
      else {
        this.hook_position = 0.0;
      }
      if (initObj.hasOwnProperty('hook_offset')) {
        this.hook_offset = initObj.hook_offset
      }
      else {
        this.hook_offset = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type HookPosition
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [position_flag]
    bufferOffset = _serializer.uint8(obj.position_flag, buffer, bufferOffset);
    // Serialize message field [hook_position]
    bufferOffset = _serializer.float32(obj.hook_position, buffer, bufferOffset);
    // Serialize message field [hook_offset]
    bufferOffset = _serializer.int16(obj.hook_offset, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type HookPosition
    let len;
    let data = new HookPosition(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [position_flag]
    data.position_flag = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [hook_position]
    data.hook_position = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [hook_offset]
    data.hook_offset = _deserializer.int16(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    return length + 7;
  }

  static datatype() {
    // Returns string type for a message object
    return 'in2ulv_msgs/HookPosition';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'd2da94a5865fbfe6adbdd32d2335a6b5';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    std_msgs/Header header
    
    uint8 position_flag
    
    # 挂钩位置（cm）
    float32 hook_position
    
    # 挂钩纠偏值（-300 ~ 300 mm）
    int16 hook_offset
    
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
    const resolved = new HookPosition(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.position_flag !== undefined) {
      resolved.position_flag = msg.position_flag;
    }
    else {
      resolved.position_flag = 0
    }

    if (msg.hook_position !== undefined) {
      resolved.hook_position = msg.hook_position;
    }
    else {
      resolved.hook_position = 0.0
    }

    if (msg.hook_offset !== undefined) {
      resolved.hook_offset = msg.hook_offset;
    }
    else {
      resolved.hook_offset = 0
    }

    return resolved;
    }
};

module.exports = HookPosition;
