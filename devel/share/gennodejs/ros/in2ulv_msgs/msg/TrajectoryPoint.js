// Auto-generated. Do not edit!

// (in-package in2ulv_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class TrajectoryPoint {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.indicator_status = null;
      this.gear = null;
      this.x = null;
      this.y = null;
      this.theta = null;
      this.v = null;
      this.a = null;
    }
    else {
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
        this.x = 0.0;
      }
      if (initObj.hasOwnProperty('y')) {
        this.y = initObj.y
      }
      else {
        this.y = 0.0;
      }
      if (initObj.hasOwnProperty('theta')) {
        this.theta = initObj.theta
      }
      else {
        this.theta = 0.0;
      }
      if (initObj.hasOwnProperty('v')) {
        this.v = initObj.v
      }
      else {
        this.v = 0.0;
      }
      if (initObj.hasOwnProperty('a')) {
        this.a = initObj.a
      }
      else {
        this.a = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type TrajectoryPoint
    // Serialize message field [indicator_status]
    bufferOffset = _serializer.uint8(obj.indicator_status, buffer, bufferOffset);
    // Serialize message field [gear]
    bufferOffset = _serializer.uint8(obj.gear, buffer, bufferOffset);
    // Serialize message field [x]
    bufferOffset = _serializer.float64(obj.x, buffer, bufferOffset);
    // Serialize message field [y]
    bufferOffset = _serializer.float64(obj.y, buffer, bufferOffset);
    // Serialize message field [theta]
    bufferOffset = _serializer.float64(obj.theta, buffer, bufferOffset);
    // Serialize message field [v]
    bufferOffset = _serializer.float64(obj.v, buffer, bufferOffset);
    // Serialize message field [a]
    bufferOffset = _serializer.float64(obj.a, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type TrajectoryPoint
    let len;
    let data = new TrajectoryPoint(null);
    // Deserialize message field [indicator_status]
    data.indicator_status = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [gear]
    data.gear = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [x]
    data.x = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [y]
    data.y = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [theta]
    data.theta = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [v]
    data.v = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [a]
    data.a = _deserializer.float64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 42;
  }

  static datatype() {
    // Returns string type for a message object
    return 'in2ulv_msgs/TrajectoryPoint';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '125c7464e0d7fbb6cea049f6bc1ce29d';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # 转向灯, 0不闪，1右转向灯闪，2左转向灯闪, 3双闪
    uint8 indicator_status
    
    # 档位，0空挡，1为D档，2为R档，3为P档
    uint8 gear
    
    # 车体坐标系导航位姿
    float64 x
    float64 y
    float64 theta
    float64 v
    float64 a
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new TrajectoryPoint(null);
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
      resolved.x = 0.0
    }

    if (msg.y !== undefined) {
      resolved.y = msg.y;
    }
    else {
      resolved.y = 0.0
    }

    if (msg.theta !== undefined) {
      resolved.theta = msg.theta;
    }
    else {
      resolved.theta = 0.0
    }

    if (msg.v !== undefined) {
      resolved.v = msg.v;
    }
    else {
      resolved.v = 0.0
    }

    if (msg.a !== undefined) {
      resolved.a = msg.a;
    }
    else {
      resolved.a = 0.0
    }

    return resolved;
    }
};

module.exports = TrajectoryPoint;
