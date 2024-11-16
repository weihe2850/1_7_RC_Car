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

class GisInfo {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.status = null;
      this.indicator_status = null;
      this.gear = null;
      this.x = null;
      this.y = null;
      this.yaw = null;
      this.speed = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('status')) {
        this.status = initObj.status
      }
      else {
        this.status = 0;
      }
      if (initObj.hasOwnProperty('indicator_status')) {
        this.indicator_status = initObj.indicator_status
      }
      else {
        this.indicator_status = 0;
      }
      if (initObj.hasOwnProperty('gear')) {
        this.gear = initObj.gear
      }
      else {
        this.gear = 0;
      }
      if (initObj.hasOwnProperty('x')) {
        this.x = initObj.x
      }
      else {
        this.x = new Array(301).fill(0);
      }
      if (initObj.hasOwnProperty('y')) {
        this.y = initObj.y
      }
      else {
        this.y = new Array(301).fill(0);
      }
      if (initObj.hasOwnProperty('yaw')) {
        this.yaw = initObj.yaw
      }
      else {
        this.yaw = new Array(301).fill(0);
      }
      if (initObj.hasOwnProperty('speed')) {
        this.speed = initObj.speed
      }
      else {
        this.speed = new Array(301).fill(0);
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type GisInfo
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [status]
    bufferOffset = _serializer.uint8(obj.status, buffer, bufferOffset);
    // Serialize message field [indicator_status]
    bufferOffset = _serializer.uint8(obj.indicator_status, buffer, bufferOffset);
    // Serialize message field [gear]
    bufferOffset = _serializer.uint8(obj.gear, buffer, bufferOffset);
    // Check that the constant length array field [x] has the right length
    if (obj.x.length !== 301) {
      throw new Error('Unable to serialize array field x - length must be 301')
    }
    // Serialize message field [x]
    bufferOffset = _arraySerializer.float64(obj.x, buffer, bufferOffset, 301);
    // Check that the constant length array field [y] has the right length
    if (obj.y.length !== 301) {
      throw new Error('Unable to serialize array field y - length must be 301')
    }
    // Serialize message field [y]
    bufferOffset = _arraySerializer.float64(obj.y, buffer, bufferOffset, 301);
    // Check that the constant length array field [yaw] has the right length
    if (obj.yaw.length !== 301) {
      throw new Error('Unable to serialize array field yaw - length must be 301')
    }
    // Serialize message field [yaw]
    bufferOffset = _arraySerializer.float64(obj.yaw, buffer, bufferOffset, 301);
    // Check that the constant length array field [speed] has the right length
    if (obj.speed.length !== 301) {
      throw new Error('Unable to serialize array field speed - length must be 301')
    }
    // Serialize message field [speed]
    bufferOffset = _arraySerializer.float64(obj.speed, buffer, bufferOffset, 301);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type GisInfo
    let len;
    let data = new GisInfo(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [status]
    data.status = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [indicator_status]
    data.indicator_status = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [gear]
    data.gear = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [x]
    data.x = _arrayDeserializer.float64(buffer, bufferOffset, 301)
    // Deserialize message field [y]
    data.y = _arrayDeserializer.float64(buffer, bufferOffset, 301)
    // Deserialize message field [yaw]
    data.yaw = _arrayDeserializer.float64(buffer, bufferOffset, 301)
    // Deserialize message field [speed]
    data.speed = _arrayDeserializer.float64(buffer, bufferOffset, 301)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    return length + 9635;
  }

  static datatype() {
    // Returns string type for a message object
    return 'in2ulv_msgs/GisInfo';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'c9625dbf880cccfdb88400ff3cfa664d';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    std_msgs/Header header
    #行驶模式标志,0停止，1行驶
    uint8 status
    #转向灯,0不闪，1右转向灯闪，2左转向灯闪
    uint8 indicator_status
    #档位，0空挡，1为D档，2为R档，3为P档
    uint8 gear
    #GIS局部路径导航点，输出原点为（1500，1000）
    float64[301] x
    float64[301] y
    #-PI左偏到PI右偏
    float64[301] yaw
    #对应导航点期望速度
    float64[301] speed
    
    
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
    const resolved = new GisInfo(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.status !== undefined) {
      resolved.status = msg.status;
    }
    else {
      resolved.status = 0
    }

    if (msg.indicator_status !== undefined) {
      resolved.indicator_status = msg.indicator_status;
    }
    else {
      resolved.indicator_status = 0
    }

    if (msg.gear !== undefined) {
      resolved.gear = msg.gear;
    }
    else {
      resolved.gear = 0
    }

    if (msg.x !== undefined) {
      resolved.x = msg.x;
    }
    else {
      resolved.x = new Array(301).fill(0)
    }

    if (msg.y !== undefined) {
      resolved.y = msg.y;
    }
    else {
      resolved.y = new Array(301).fill(0)
    }

    if (msg.yaw !== undefined) {
      resolved.yaw = msg.yaw;
    }
    else {
      resolved.yaw = new Array(301).fill(0)
    }

    if (msg.speed !== undefined) {
      resolved.speed = msg.speed;
    }
    else {
      resolved.speed = new Array(301).fill(0)
    }

    return resolved;
    }
};

module.exports = GisInfo;
