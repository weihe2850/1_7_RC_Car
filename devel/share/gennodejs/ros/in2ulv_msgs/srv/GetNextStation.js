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

class GetNextStationRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.station_positions = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('station_positions')) {
        this.station_positions = initObj.station_positions
      }
      else {
        this.station_positions = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type GetNextStationRequest
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [station_positions]
    // Serialize the length for message field [station_positions]
    bufferOffset = _serializer.uint32(obj.station_positions.length, buffer, bufferOffset);
    obj.station_positions.forEach((val) => {
      bufferOffset = geometry_msgs.msg.Point.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type GetNextStationRequest
    let len;
    let data = new GetNextStationRequest(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [station_positions]
    // Deserialize array length for message field [station_positions]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.station_positions = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.station_positions[i] = geometry_msgs.msg.Point.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    length += 24 * object.station_positions.length;
    return length + 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'in2ulv_msgs/GetNextStationRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '0ed6156e11995c558d9db36bba9f96ae';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # 帧头，包含时间戳信息
    std_msgs/Header header
    
    # 站点位置
    geometry_msgs/Point[] station_positions
    
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
    const resolved = new GetNextStationRequest(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.station_positions !== undefined) {
      resolved.station_positions = new Array(msg.station_positions.length);
      for (let i = 0; i < resolved.station_positions.length; ++i) {
        resolved.station_positions[i] = geometry_msgs.msg.Point.Resolve(msg.station_positions[i]);
      }
    }
    else {
      resolved.station_positions = []
    }

    return resolved;
    }
};

class GetNextStationResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.target_index = null;
    }
    else {
      if (initObj.hasOwnProperty('target_index')) {
        this.target_index = initObj.target_index
      }
      else {
        this.target_index = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type GetNextStationResponse
    // Serialize message field [target_index]
    bufferOffset = _serializer.int16(obj.target_index, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type GetNextStationResponse
    let len;
    let data = new GetNextStationResponse(null);
    // Deserialize message field [target_index]
    data.target_index = _deserializer.int16(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 2;
  }

  static datatype() {
    // Returns string type for a service object
    return 'in2ulv_msgs/GetNextStationResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '5831f688e23bf4ec7487cbde647bbdd1';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # 目标站点索引
    int16 target_index
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new GetNextStationResponse(null);
    if (msg.target_index !== undefined) {
      resolved.target_index = msg.target_index;
    }
    else {
      resolved.target_index = 0
    }

    return resolved;
    }
};

module.exports = {
  Request: GetNextStationRequest,
  Response: GetNextStationResponse,
  md5sum() { return '6913a9d233b1fe0b71190001ea6fea24'; },
  datatype() { return 'in2ulv_msgs/GetNextStation'; }
};
