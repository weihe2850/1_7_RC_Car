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
let geometry_msgs = _finder('geometry_msgs');

//-----------------------------------------------------------


//-----------------------------------------------------------

class CheckWithinLaneletRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.use_localization_result = null;
      this.position = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('use_localization_result')) {
        this.use_localization_result = initObj.use_localization_result
      }
      else {
        this.use_localization_result = false;
      }
      if (initObj.hasOwnProperty('position')) {
        this.position = initObj.position
      }
      else {
        this.position = new geometry_msgs.msg.Point();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type CheckWithinLaneletRequest
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [use_localization_result]
    bufferOffset = _serializer.bool(obj.use_localization_result, buffer, bufferOffset);
    // Serialize message field [position]
    bufferOffset = geometry_msgs.msg.Point.serialize(obj.position, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type CheckWithinLaneletRequest
    let len;
    let data = new CheckWithinLaneletRequest(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [use_localization_result]
    data.use_localization_result = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [position]
    data.position = geometry_msgs.msg.Point.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    return length + 25;
  }

  static datatype() {
    // Returns string type for a service object
    return 'in2ulv_msgs/CheckWithinLaneletRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '10e3ea31a0a17a13a6a3dd0876eaa675';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # 帧头，包含时间戳信息
    std_msgs/Header header
    
    # 是否将当前定位结果作为目标点位置
    bool use_localization_result
    
    # use_localization_result 为 false 时候，需要设置目标点位置
    geometry_msgs/Point position
    
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
    const resolved = new CheckWithinLaneletRequest(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.use_localization_result !== undefined) {
      resolved.use_localization_result = msg.use_localization_result;
    }
    else {
      resolved.use_localization_result = false
    }

    if (msg.position !== undefined) {
      resolved.position = geometry_msgs.msg.Point.Resolve(msg.position)
    }
    else {
      resolved.position = new geometry_msgs.msg.Point()
    }

    return resolved;
    }
};

class CheckWithinLaneletResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.within = null;
    }
    else {
      if (initObj.hasOwnProperty('within')) {
        this.within = initObj.within
      }
      else {
        this.within = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type CheckWithinLaneletResponse
    // Serialize message field [within]
    bufferOffset = _serializer.bool(obj.within, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type CheckWithinLaneletResponse
    let len;
    let data = new CheckWithinLaneletResponse(null);
    // Deserialize message field [within]
    data.within = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a service object
    return 'in2ulv_msgs/CheckWithinLaneletResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'c26375269acff67a6df61904ced4a03d';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # 是否在 lanelet 上
    bool within
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new CheckWithinLaneletResponse(null);
    if (msg.within !== undefined) {
      resolved.within = msg.within;
    }
    else {
      resolved.within = false
    }

    return resolved;
    }
};

module.exports = {
  Request: CheckWithinLaneletRequest,
  Response: CheckWithinLaneletResponse,
  md5sum() { return 'da164720bf0d4371b7d840e959c11d6e'; },
  datatype() { return 'in2ulv_msgs/CheckWithinLanelet'; }
};
