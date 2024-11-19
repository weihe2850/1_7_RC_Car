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
let geometry_msgs = _finder('geometry_msgs');

//-----------------------------------------------------------

class ActionType {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.mode_type = null;
      this.action_type = null;
      this.task_type = null;
      this.target_point = null;
      this.veh_status = null;
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
      if (initObj.hasOwnProperty('action_type')) {
        this.action_type = initObj.action_type
      }
      else {
        this.action_type = 0;
      }
      if (initObj.hasOwnProperty('task_type')) {
        this.task_type = initObj.task_type
      }
      else {
        this.task_type = 0;
      }
      if (initObj.hasOwnProperty('target_point')) {
        this.target_point = initObj.target_point
      }
      else {
        this.target_point = new geometry_msgs.msg.Point();
      }
      if (initObj.hasOwnProperty('veh_status')) {
        this.veh_status = initObj.veh_status
      }
      else {
        this.veh_status = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ActionType
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [mode_type]
    bufferOffset = _serializer.uint8(obj.mode_type, buffer, bufferOffset);
    // Serialize message field [action_type]
    bufferOffset = _serializer.uint8(obj.action_type, buffer, bufferOffset);
    // Serialize message field [task_type]
    bufferOffset = _serializer.uint8(obj.task_type, buffer, bufferOffset);
    // Serialize message field [target_point]
    bufferOffset = geometry_msgs.msg.Point.serialize(obj.target_point, buffer, bufferOffset);
    // Serialize message field [veh_status]
    bufferOffset = _serializer.uint16(obj.veh_status, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ActionType
    let len;
    let data = new ActionType(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [mode_type]
    data.mode_type = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [action_type]
    data.action_type = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [task_type]
    data.task_type = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [target_point]
    data.target_point = geometry_msgs.msg.Point.deserialize(buffer, bufferOffset);
    // Deserialize message field [veh_status]
    data.veh_status = _deserializer.uint16(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    return length + 29;
  }

  static datatype() {
    // Returns string type for a message object
    return 'in2ulv_msgs/ActionType';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '49541e196c68da7c6efd757fb7bb50aa';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # 帧头，包含时间戳信息
    std_msgs/Header header
    
    # ULV模式
    uint8 mode_type
    
    # 动作类型
    uint8 action_type
    
    # 线路类型
    uint8 task_type
    
    # 目标点
    geometry_msgs/Point target_point
    
    uint16 veh_status
    
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
    const resolved = new ActionType(null);
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

    if (msg.action_type !== undefined) {
      resolved.action_type = msg.action_type;
    }
    else {
      resolved.action_type = 0
    }

    if (msg.task_type !== undefined) {
      resolved.task_type = msg.task_type;
    }
    else {
      resolved.task_type = 0
    }

    if (msg.target_point !== undefined) {
      resolved.target_point = geometry_msgs.msg.Point.Resolve(msg.target_point)
    }
    else {
      resolved.target_point = new geometry_msgs.msg.Point()
    }

    if (msg.veh_status !== undefined) {
      resolved.veh_status = msg.veh_status;
    }
    else {
      resolved.veh_status = 0
    }

    return resolved;
    }
};

module.exports = ActionType;
