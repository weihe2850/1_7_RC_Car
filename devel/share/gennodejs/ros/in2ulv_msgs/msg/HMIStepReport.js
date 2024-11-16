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

class HMIStepReport {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.step_report = null;
      this.station_id = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('step_report')) {
        this.step_report = initObj.step_report
      }
      else {
        this.step_report = 0;
      }
      if (initObj.hasOwnProperty('station_id')) {
        this.station_id = initObj.station_id
      }
      else {
        this.station_id = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type HMIStepReport
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [step_report]
    bufferOffset = _serializer.uint8(obj.step_report, buffer, bufferOffset);
    // Serialize message field [station_id]
    bufferOffset = _serializer.uint32(obj.station_id, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type HMIStepReport
    let len;
    let data = new HMIStepReport(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [step_report]
    data.step_report = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [station_id]
    data.station_id = _deserializer.uint32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    return length + 5;
  }

  static datatype() {
    // Returns string type for a message object
    return 'in2ulv_msgs/HMIStepReport';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '1690f2b8b61886c2a07014ccb5c01a39';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # 帧头，包含时间戳信息
    std_msgs/Header header
    
    # 任务步骤反馈
    # FULL_SUCCESS 或 PART_SUCCESS
    uint8 step_report
    
    # 如果完成的是带有 station id 的 HEAD_FOR_GOAL 任务，则返回正确的 station id
    uint32 station_id
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
    const resolved = new HMIStepReport(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.step_report !== undefined) {
      resolved.step_report = msg.step_report;
    }
    else {
      resolved.step_report = 0
    }

    if (msg.station_id !== undefined) {
      resolved.station_id = msg.station_id;
    }
    else {
      resolved.station_id = 0
    }

    return resolved;
    }
};

module.exports = HMIStepReport;
