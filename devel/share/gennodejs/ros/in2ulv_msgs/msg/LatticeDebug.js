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

class LatticeDebug {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.trajectory_point_x = null;
      this.trajectory_point_y = null;
      this.trajectory_point_theta = null;
      this.trajectory_point_kappa = null;
      this.trajectory_point_v = null;
      this.trajectory_point_a = null;
      this.matched_point_s = null;
      this.matched_point_x = null;
      this.matched_point_y = null;
      this.matched_point_theta = null;
      this.matched_point_kappa = null;
      this.matched_point_kappa_prime = null;
      this.s = null;
      this.s_dot = null;
      this.s_ddot = null;
      this.d = null;
      this.d_prime = null;
      this.d_pprime = null;
      this.stop_point_distance = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('trajectory_point_x')) {
        this.trajectory_point_x = initObj.trajectory_point_x
      }
      else {
        this.trajectory_point_x = 0.0;
      }
      if (initObj.hasOwnProperty('trajectory_point_y')) {
        this.trajectory_point_y = initObj.trajectory_point_y
      }
      else {
        this.trajectory_point_y = 0.0;
      }
      if (initObj.hasOwnProperty('trajectory_point_theta')) {
        this.trajectory_point_theta = initObj.trajectory_point_theta
      }
      else {
        this.trajectory_point_theta = 0.0;
      }
      if (initObj.hasOwnProperty('trajectory_point_kappa')) {
        this.trajectory_point_kappa = initObj.trajectory_point_kappa
      }
      else {
        this.trajectory_point_kappa = 0.0;
      }
      if (initObj.hasOwnProperty('trajectory_point_v')) {
        this.trajectory_point_v = initObj.trajectory_point_v
      }
      else {
        this.trajectory_point_v = 0.0;
      }
      if (initObj.hasOwnProperty('trajectory_point_a')) {
        this.trajectory_point_a = initObj.trajectory_point_a
      }
      else {
        this.trajectory_point_a = 0.0;
      }
      if (initObj.hasOwnProperty('matched_point_s')) {
        this.matched_point_s = initObj.matched_point_s
      }
      else {
        this.matched_point_s = 0.0;
      }
      if (initObj.hasOwnProperty('matched_point_x')) {
        this.matched_point_x = initObj.matched_point_x
      }
      else {
        this.matched_point_x = 0.0;
      }
      if (initObj.hasOwnProperty('matched_point_y')) {
        this.matched_point_y = initObj.matched_point_y
      }
      else {
        this.matched_point_y = 0.0;
      }
      if (initObj.hasOwnProperty('matched_point_theta')) {
        this.matched_point_theta = initObj.matched_point_theta
      }
      else {
        this.matched_point_theta = 0.0;
      }
      if (initObj.hasOwnProperty('matched_point_kappa')) {
        this.matched_point_kappa = initObj.matched_point_kappa
      }
      else {
        this.matched_point_kappa = 0.0;
      }
      if (initObj.hasOwnProperty('matched_point_kappa_prime')) {
        this.matched_point_kappa_prime = initObj.matched_point_kappa_prime
      }
      else {
        this.matched_point_kappa_prime = 0.0;
      }
      if (initObj.hasOwnProperty('s')) {
        this.s = initObj.s
      }
      else {
        this.s = 0.0;
      }
      if (initObj.hasOwnProperty('s_dot')) {
        this.s_dot = initObj.s_dot
      }
      else {
        this.s_dot = 0.0;
      }
      if (initObj.hasOwnProperty('s_ddot')) {
        this.s_ddot = initObj.s_ddot
      }
      else {
        this.s_ddot = 0.0;
      }
      if (initObj.hasOwnProperty('d')) {
        this.d = initObj.d
      }
      else {
        this.d = 0.0;
      }
      if (initObj.hasOwnProperty('d_prime')) {
        this.d_prime = initObj.d_prime
      }
      else {
        this.d_prime = 0.0;
      }
      if (initObj.hasOwnProperty('d_pprime')) {
        this.d_pprime = initObj.d_pprime
      }
      else {
        this.d_pprime = 0.0;
      }
      if (initObj.hasOwnProperty('stop_point_distance')) {
        this.stop_point_distance = initObj.stop_point_distance
      }
      else {
        this.stop_point_distance = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type LatticeDebug
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [trajectory_point_x]
    bufferOffset = _serializer.float64(obj.trajectory_point_x, buffer, bufferOffset);
    // Serialize message field [trajectory_point_y]
    bufferOffset = _serializer.float64(obj.trajectory_point_y, buffer, bufferOffset);
    // Serialize message field [trajectory_point_theta]
    bufferOffset = _serializer.float64(obj.trajectory_point_theta, buffer, bufferOffset);
    // Serialize message field [trajectory_point_kappa]
    bufferOffset = _serializer.float64(obj.trajectory_point_kappa, buffer, bufferOffset);
    // Serialize message field [trajectory_point_v]
    bufferOffset = _serializer.float64(obj.trajectory_point_v, buffer, bufferOffset);
    // Serialize message field [trajectory_point_a]
    bufferOffset = _serializer.float64(obj.trajectory_point_a, buffer, bufferOffset);
    // Serialize message field [matched_point_s]
    bufferOffset = _serializer.float64(obj.matched_point_s, buffer, bufferOffset);
    // Serialize message field [matched_point_x]
    bufferOffset = _serializer.float64(obj.matched_point_x, buffer, bufferOffset);
    // Serialize message field [matched_point_y]
    bufferOffset = _serializer.float64(obj.matched_point_y, buffer, bufferOffset);
    // Serialize message field [matched_point_theta]
    bufferOffset = _serializer.float64(obj.matched_point_theta, buffer, bufferOffset);
    // Serialize message field [matched_point_kappa]
    bufferOffset = _serializer.float64(obj.matched_point_kappa, buffer, bufferOffset);
    // Serialize message field [matched_point_kappa_prime]
    bufferOffset = _serializer.float64(obj.matched_point_kappa_prime, buffer, bufferOffset);
    // Serialize message field [s]
    bufferOffset = _serializer.float64(obj.s, buffer, bufferOffset);
    // Serialize message field [s_dot]
    bufferOffset = _serializer.float64(obj.s_dot, buffer, bufferOffset);
    // Serialize message field [s_ddot]
    bufferOffset = _serializer.float64(obj.s_ddot, buffer, bufferOffset);
    // Serialize message field [d]
    bufferOffset = _serializer.float64(obj.d, buffer, bufferOffset);
    // Serialize message field [d_prime]
    bufferOffset = _serializer.float64(obj.d_prime, buffer, bufferOffset);
    // Serialize message field [d_pprime]
    bufferOffset = _serializer.float64(obj.d_pprime, buffer, bufferOffset);
    // Serialize message field [stop_point_distance]
    bufferOffset = _serializer.float64(obj.stop_point_distance, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type LatticeDebug
    let len;
    let data = new LatticeDebug(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [trajectory_point_x]
    data.trajectory_point_x = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [trajectory_point_y]
    data.trajectory_point_y = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [trajectory_point_theta]
    data.trajectory_point_theta = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [trajectory_point_kappa]
    data.trajectory_point_kappa = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [trajectory_point_v]
    data.trajectory_point_v = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [trajectory_point_a]
    data.trajectory_point_a = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [matched_point_s]
    data.matched_point_s = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [matched_point_x]
    data.matched_point_x = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [matched_point_y]
    data.matched_point_y = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [matched_point_theta]
    data.matched_point_theta = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [matched_point_kappa]
    data.matched_point_kappa = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [matched_point_kappa_prime]
    data.matched_point_kappa_prime = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [s]
    data.s = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [s_dot]
    data.s_dot = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [s_ddot]
    data.s_ddot = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [d]
    data.d = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [d_prime]
    data.d_prime = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [d_pprime]
    data.d_pprime = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [stop_point_distance]
    data.stop_point_distance = _deserializer.float64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    return length + 152;
  }

  static datatype() {
    // Returns string type for a message object
    return 'in2ulv_msgs/LatticeDebug';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '3feccd66a4ab06d8162cf5e6ebd8f19f';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    std_msgs/Header header
    
    float64 trajectory_point_x
    float64 trajectory_point_y
    float64 trajectory_point_theta
    float64 trajectory_point_kappa
    float64 trajectory_point_v
    float64 trajectory_point_a
    
    float64 matched_point_s
    float64 matched_point_x
    float64 matched_point_y
    float64 matched_point_theta
    float64 matched_point_kappa
    float64 matched_point_kappa_prime
    
    float64 s
    float64 s_dot
    float64 s_ddot
    float64 d
    float64 d_prime
    float64 d_pprime
    
    float64 stop_point_distance
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
    const resolved = new LatticeDebug(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.trajectory_point_x !== undefined) {
      resolved.trajectory_point_x = msg.trajectory_point_x;
    }
    else {
      resolved.trajectory_point_x = 0.0
    }

    if (msg.trajectory_point_y !== undefined) {
      resolved.trajectory_point_y = msg.trajectory_point_y;
    }
    else {
      resolved.trajectory_point_y = 0.0
    }

    if (msg.trajectory_point_theta !== undefined) {
      resolved.trajectory_point_theta = msg.trajectory_point_theta;
    }
    else {
      resolved.trajectory_point_theta = 0.0
    }

    if (msg.trajectory_point_kappa !== undefined) {
      resolved.trajectory_point_kappa = msg.trajectory_point_kappa;
    }
    else {
      resolved.trajectory_point_kappa = 0.0
    }

    if (msg.trajectory_point_v !== undefined) {
      resolved.trajectory_point_v = msg.trajectory_point_v;
    }
    else {
      resolved.trajectory_point_v = 0.0
    }

    if (msg.trajectory_point_a !== undefined) {
      resolved.trajectory_point_a = msg.trajectory_point_a;
    }
    else {
      resolved.trajectory_point_a = 0.0
    }

    if (msg.matched_point_s !== undefined) {
      resolved.matched_point_s = msg.matched_point_s;
    }
    else {
      resolved.matched_point_s = 0.0
    }

    if (msg.matched_point_x !== undefined) {
      resolved.matched_point_x = msg.matched_point_x;
    }
    else {
      resolved.matched_point_x = 0.0
    }

    if (msg.matched_point_y !== undefined) {
      resolved.matched_point_y = msg.matched_point_y;
    }
    else {
      resolved.matched_point_y = 0.0
    }

    if (msg.matched_point_theta !== undefined) {
      resolved.matched_point_theta = msg.matched_point_theta;
    }
    else {
      resolved.matched_point_theta = 0.0
    }

    if (msg.matched_point_kappa !== undefined) {
      resolved.matched_point_kappa = msg.matched_point_kappa;
    }
    else {
      resolved.matched_point_kappa = 0.0
    }

    if (msg.matched_point_kappa_prime !== undefined) {
      resolved.matched_point_kappa_prime = msg.matched_point_kappa_prime;
    }
    else {
      resolved.matched_point_kappa_prime = 0.0
    }

    if (msg.s !== undefined) {
      resolved.s = msg.s;
    }
    else {
      resolved.s = 0.0
    }

    if (msg.s_dot !== undefined) {
      resolved.s_dot = msg.s_dot;
    }
    else {
      resolved.s_dot = 0.0
    }

    if (msg.s_ddot !== undefined) {
      resolved.s_ddot = msg.s_ddot;
    }
    else {
      resolved.s_ddot = 0.0
    }

    if (msg.d !== undefined) {
      resolved.d = msg.d;
    }
    else {
      resolved.d = 0.0
    }

    if (msg.d_prime !== undefined) {
      resolved.d_prime = msg.d_prime;
    }
    else {
      resolved.d_prime = 0.0
    }

    if (msg.d_pprime !== undefined) {
      resolved.d_pprime = msg.d_pprime;
    }
    else {
      resolved.d_pprime = 0.0
    }

    if (msg.stop_point_distance !== undefined) {
      resolved.stop_point_distance = msg.stop_point_distance;
    }
    else {
      resolved.stop_point_distance = 0.0
    }

    return resolved;
    }
};

module.exports = LatticeDebug;
