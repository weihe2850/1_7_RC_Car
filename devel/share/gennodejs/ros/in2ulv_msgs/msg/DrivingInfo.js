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

class DrivingInfo {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.avoidanceflag = null;
      this.total_mileage = null;
      this.completed_mileage = null;
      this.remaining_time = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('avoidanceflag')) {
        this.avoidanceflag = initObj.avoidanceflag
      }
      else {
        this.avoidanceflag = false;
      }
      if (initObj.hasOwnProperty('total_mileage')) {
        this.total_mileage = initObj.total_mileage
      }
      else {
        this.total_mileage = 0.0;
      }
      if (initObj.hasOwnProperty('completed_mileage')) {
        this.completed_mileage = initObj.completed_mileage
      }
      else {
        this.completed_mileage = 0.0;
      }
      if (initObj.hasOwnProperty('remaining_time')) {
        this.remaining_time = initObj.remaining_time
      }
      else {
        this.remaining_time = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type DrivingInfo
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [avoidanceflag]
    bufferOffset = _serializer.bool(obj.avoidanceflag, buffer, bufferOffset);
    // Serialize message field [total_mileage]
    bufferOffset = _serializer.float64(obj.total_mileage, buffer, bufferOffset);
    // Serialize message field [completed_mileage]
    bufferOffset = _serializer.float64(obj.completed_mileage, buffer, bufferOffset);
    // Serialize message field [remaining_time]
    bufferOffset = _serializer.float64(obj.remaining_time, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type DrivingInfo
    let len;
    let data = new DrivingInfo(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [avoidanceflag]
    data.avoidanceflag = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [total_mileage]
    data.total_mileage = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [completed_mileage]
    data.completed_mileage = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [remaining_time]
    data.remaining_time = _deserializer.float64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    return length + 25;
  }

  static datatype() {
    // Returns string type for a message object
    return 'in2ulv_msgs/DrivingInfo';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '3fdabca3408297c4e235a4ea8aa8aad5';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    std_msgs/Header header
    
    bool avoidanceflag
    
    float64 total_mileage
    
    float64 completed_mileage
    
    float64 remaining_time
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
    const resolved = new DrivingInfo(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.avoidanceflag !== undefined) {
      resolved.avoidanceflag = msg.avoidanceflag;
    }
    else {
      resolved.avoidanceflag = false
    }

    if (msg.total_mileage !== undefined) {
      resolved.total_mileage = msg.total_mileage;
    }
    else {
      resolved.total_mileage = 0.0
    }

    if (msg.completed_mileage !== undefined) {
      resolved.completed_mileage = msg.completed_mileage;
    }
    else {
      resolved.completed_mileage = 0.0
    }

    if (msg.remaining_time !== undefined) {
      resolved.remaining_time = msg.remaining_time;
    }
    else {
      resolved.remaining_time = 0.0
    }

    return resolved;
    }
};

module.exports = DrivingInfo;
