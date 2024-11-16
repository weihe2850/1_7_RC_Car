// Auto-generated. Do not edit!

// (in-package in2ulv_msgs.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

let HDMapBin = require('../msg/HDMapBin.js');

//-----------------------------------------------------------

class HDMapServiceRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.requested_primitives = null;
      this.geom_upper_bound = null;
      this.geom_lower_bound = null;
    }
    else {
      if (initObj.hasOwnProperty('requested_primitives')) {
        this.requested_primitives = initObj.requested_primitives
      }
      else {
        this.requested_primitives = [];
      }
      if (initObj.hasOwnProperty('geom_upper_bound')) {
        this.geom_upper_bound = initObj.geom_upper_bound
      }
      else {
        this.geom_upper_bound = new Array(3).fill(0);
      }
      if (initObj.hasOwnProperty('geom_lower_bound')) {
        this.geom_lower_bound = initObj.geom_lower_bound
      }
      else {
        this.geom_lower_bound = new Array(3).fill(0);
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type HDMapServiceRequest
    // Serialize message field [requested_primitives]
    bufferOffset = _arraySerializer.uint8(obj.requested_primitives, buffer, bufferOffset, null);
    // Check that the constant length array field [geom_upper_bound] has the right length
    if (obj.geom_upper_bound.length !== 3) {
      throw new Error('Unable to serialize array field geom_upper_bound - length must be 3')
    }
    // Serialize message field [geom_upper_bound]
    bufferOffset = _arraySerializer.float64(obj.geom_upper_bound, buffer, bufferOffset, 3);
    // Check that the constant length array field [geom_lower_bound] has the right length
    if (obj.geom_lower_bound.length !== 3) {
      throw new Error('Unable to serialize array field geom_lower_bound - length must be 3')
    }
    // Serialize message field [geom_lower_bound]
    bufferOffset = _arraySerializer.float64(obj.geom_lower_bound, buffer, bufferOffset, 3);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type HDMapServiceRequest
    let len;
    let data = new HDMapServiceRequest(null);
    // Deserialize message field [requested_primitives]
    data.requested_primitives = _arrayDeserializer.uint8(buffer, bufferOffset, null)
    // Deserialize message field [geom_upper_bound]
    data.geom_upper_bound = _arrayDeserializer.float64(buffer, bufferOffset, 3)
    // Deserialize message field [geom_lower_bound]
    data.geom_lower_bound = _arrayDeserializer.float64(buffer, bufferOffset, 3)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.requested_primitives.length;
    return length + 52;
  }

  static datatype() {
    // Returns string type for a service object
    return 'in2ulv_msgs/HDMapServiceRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'c660a0397124ea4da3a97b3b441770e7';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint8[] requested_primitives
    
    # Geometric upper bound of map data requested
    float64[3] geom_upper_bound
    
    # Geometric lower bound of map data requested
    float64[3] geom_lower_bound
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new HDMapServiceRequest(null);
    if (msg.requested_primitives !== undefined) {
      resolved.requested_primitives = msg.requested_primitives;
    }
    else {
      resolved.requested_primitives = []
    }

    if (msg.geom_upper_bound !== undefined) {
      resolved.geom_upper_bound = msg.geom_upper_bound;
    }
    else {
      resolved.geom_upper_bound = new Array(3).fill(0)
    }

    if (msg.geom_lower_bound !== undefined) {
      resolved.geom_lower_bound = msg.geom_lower_bound;
    }
    else {
      resolved.geom_lower_bound = new Array(3).fill(0)
    }

    return resolved;
    }
};

class HDMapServiceResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.map = null;
      this.answer = null;
    }
    else {
      if (initObj.hasOwnProperty('map')) {
        this.map = initObj.map
      }
      else {
        this.map = new HDMapBin();
      }
      if (initObj.hasOwnProperty('answer')) {
        this.answer = initObj.answer
      }
      else {
        this.answer = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type HDMapServiceResponse
    // Serialize message field [map]
    bufferOffset = HDMapBin.serialize(obj.map, buffer, bufferOffset);
    // Serialize message field [answer]
    bufferOffset = _serializer.int32(obj.answer, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type HDMapServiceResponse
    let len;
    let data = new HDMapServiceResponse(null);
    // Deserialize message field [map]
    data.map = HDMapBin.deserialize(buffer, bufferOffset);
    // Deserialize message field [answer]
    data.answer = _deserializer.int32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += HDMapBin.getMessageSize(object.map);
    return length + 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'in2ulv_msgs/HDMapServiceResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '3310b2472ab23bd9d02f1bdd3d6851d3';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    HDMapBin map
    int32  answer
    
    ================================================================================
    MSG: in2ulv_msgs/HDMapBin
    # This contains the lanelet map in binary format.
    
    # Timestamp and frame_id of the map
    Header header
    
    # version of map format. keep this as empty string if unnecessary
    string format_version
    
    # version of map version. keep this as empty string if unnecessary
    string map_version
    
    # binary data of lanelet2 map. This is meant to be filled using toBinMsg() in lanelet2_extension library
    int8[] data
    
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
    const resolved = new HDMapServiceResponse(null);
    if (msg.map !== undefined) {
      resolved.map = HDMapBin.Resolve(msg.map)
    }
    else {
      resolved.map = new HDMapBin()
    }

    if (msg.answer !== undefined) {
      resolved.answer = msg.answer;
    }
    else {
      resolved.answer = 0
    }

    return resolved;
    }
};

module.exports = {
  Request: HDMapServiceRequest,
  Response: HDMapServiceResponse,
  md5sum() { return '08e28d6edd6a5f0aeb88a6dc9e09f47c'; },
  datatype() { return 'in2ulv_msgs/HDMapService'; }
};
