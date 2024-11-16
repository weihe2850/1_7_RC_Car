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

class ControlResult {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.steer = null;
      this.brake = null;
      this.if_brake = null;
      this.speed_control = null;
      this.if_speed = null;
      this.acceleration_control = null;
      this.if_acceleration = null;
      this.is_left_lighting = null;
      this.is_right_lighting = null;
      this.is_hook_close = null;
      this.hook_position = null;
      this.gear_info = null;
      this.speed_limit = null;
      this.speed_out = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('steer')) {
        this.steer = initObj.steer
      }
      else {
        this.steer = 0.0;
      }
      if (initObj.hasOwnProperty('brake')) {
        this.brake = initObj.brake
      }
      else {
        this.brake = 0.0;
      }
      if (initObj.hasOwnProperty('if_brake')) {
        this.if_brake = initObj.if_brake
      }
      else {
        this.if_brake = false;
      }
      if (initObj.hasOwnProperty('speed_control')) {
        this.speed_control = initObj.speed_control
      }
      else {
        this.speed_control = 0.0;
      }
      if (initObj.hasOwnProperty('if_speed')) {
        this.if_speed = initObj.if_speed
      }
      else {
        this.if_speed = false;
      }
      if (initObj.hasOwnProperty('acceleration_control')) {
        this.acceleration_control = initObj.acceleration_control
      }
      else {
        this.acceleration_control = 0.0;
      }
      if (initObj.hasOwnProperty('if_acceleration')) {
        this.if_acceleration = initObj.if_acceleration
      }
      else {
        this.if_acceleration = false;
      }
      if (initObj.hasOwnProperty('is_left_lighting')) {
        this.is_left_lighting = initObj.is_left_lighting
      }
      else {
        this.is_left_lighting = false;
      }
      if (initObj.hasOwnProperty('is_right_lighting')) {
        this.is_right_lighting = initObj.is_right_lighting
      }
      else {
        this.is_right_lighting = false;
      }
      if (initObj.hasOwnProperty('is_hook_close')) {
        this.is_hook_close = initObj.is_hook_close
      }
      else {
        this.is_hook_close = false;
      }
      if (initObj.hasOwnProperty('hook_position')) {
        this.hook_position = initObj.hook_position
      }
      else {
        this.hook_position = 0.0;
      }
      if (initObj.hasOwnProperty('gear_info')) {
        this.gear_info = initObj.gear_info
      }
      else {
        this.gear_info = 0;
      }
      if (initObj.hasOwnProperty('speed_limit')) {
        this.speed_limit = initObj.speed_limit
      }
      else {
        this.speed_limit = 0.0;
      }
      if (initObj.hasOwnProperty('speed_out')) {
        this.speed_out = initObj.speed_out
      }
      else {
        this.speed_out = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ControlResult
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [steer]
    bufferOffset = _serializer.float32(obj.steer, buffer, bufferOffset);
    // Serialize message field [brake]
    bufferOffset = _serializer.float32(obj.brake, buffer, bufferOffset);
    // Serialize message field [if_brake]
    bufferOffset = _serializer.bool(obj.if_brake, buffer, bufferOffset);
    // Serialize message field [speed_control]
    bufferOffset = _serializer.float32(obj.speed_control, buffer, bufferOffset);
    // Serialize message field [if_speed]
    bufferOffset = _serializer.bool(obj.if_speed, buffer, bufferOffset);
    // Serialize message field [acceleration_control]
    bufferOffset = _serializer.float32(obj.acceleration_control, buffer, bufferOffset);
    // Serialize message field [if_acceleration]
    bufferOffset = _serializer.bool(obj.if_acceleration, buffer, bufferOffset);
    // Serialize message field [is_left_lighting]
    bufferOffset = _serializer.bool(obj.is_left_lighting, buffer, bufferOffset);
    // Serialize message field [is_right_lighting]
    bufferOffset = _serializer.bool(obj.is_right_lighting, buffer, bufferOffset);
    // Serialize message field [is_hook_close]
    bufferOffset = _serializer.bool(obj.is_hook_close, buffer, bufferOffset);
    // Serialize message field [hook_position]
    bufferOffset = _serializer.float32(obj.hook_position, buffer, bufferOffset);
    // Serialize message field [gear_info]
    bufferOffset = _serializer.uint8(obj.gear_info, buffer, bufferOffset);
    // Serialize message field [speed_limit]
    bufferOffset = _serializer.float32(obj.speed_limit, buffer, bufferOffset);
    // Serialize message field [speed_out]
    bufferOffset = _serializer.float32(obj.speed_out, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ControlResult
    let len;
    let data = new ControlResult(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [steer]
    data.steer = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [brake]
    data.brake = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [if_brake]
    data.if_brake = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [speed_control]
    data.speed_control = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [if_speed]
    data.if_speed = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [acceleration_control]
    data.acceleration_control = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [if_acceleration]
    data.if_acceleration = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [is_left_lighting]
    data.is_left_lighting = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [is_right_lighting]
    data.is_right_lighting = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [is_hook_close]
    data.is_hook_close = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [hook_position]
    data.hook_position = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [gear_info]
    data.gear_info = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [speed_limit]
    data.speed_limit = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [speed_out]
    data.speed_out = _deserializer.float32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    return length + 35;
  }

  static datatype() {
    // Returns string type for a message object
    return 'in2ulv_msgs/ControlResult';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'd0ea0e1d317647aa9e9251fc4a618a52';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    std_msgs/Header header
    
    #方向盘打角   -50 ———— +50   左正右负   -720~720
    float32 steer   
    
    #油门       0 ———— +100  
    # float32 throttle
    
    # 刹车 0-100.0
    float32 brake
    bool if_brake
    
    # 控速
    float32 speed_control
    bool if_speed
    
    # 控加速度
    float32 acceleration_control
    bool if_acceleration
    
    # 左车灯
    bool is_left_lighting
    
    # 右车灯
    bool is_right_lighting
    
    # 挂钩锁紧
    bool is_hook_close
    
    # 挂钩位置
    float32 hook_position
    
    # 档位
    uint8 gear_info
    
    # pmx - debug
    float32 speed_limit
    float32 speed_out
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
    const resolved = new ControlResult(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.steer !== undefined) {
      resolved.steer = msg.steer;
    }
    else {
      resolved.steer = 0.0
    }

    if (msg.brake !== undefined) {
      resolved.brake = msg.brake;
    }
    else {
      resolved.brake = 0.0
    }

    if (msg.if_brake !== undefined) {
      resolved.if_brake = msg.if_brake;
    }
    else {
      resolved.if_brake = false
    }

    if (msg.speed_control !== undefined) {
      resolved.speed_control = msg.speed_control;
    }
    else {
      resolved.speed_control = 0.0
    }

    if (msg.if_speed !== undefined) {
      resolved.if_speed = msg.if_speed;
    }
    else {
      resolved.if_speed = false
    }

    if (msg.acceleration_control !== undefined) {
      resolved.acceleration_control = msg.acceleration_control;
    }
    else {
      resolved.acceleration_control = 0.0
    }

    if (msg.if_acceleration !== undefined) {
      resolved.if_acceleration = msg.if_acceleration;
    }
    else {
      resolved.if_acceleration = false
    }

    if (msg.is_left_lighting !== undefined) {
      resolved.is_left_lighting = msg.is_left_lighting;
    }
    else {
      resolved.is_left_lighting = false
    }

    if (msg.is_right_lighting !== undefined) {
      resolved.is_right_lighting = msg.is_right_lighting;
    }
    else {
      resolved.is_right_lighting = false
    }

    if (msg.is_hook_close !== undefined) {
      resolved.is_hook_close = msg.is_hook_close;
    }
    else {
      resolved.is_hook_close = false
    }

    if (msg.hook_position !== undefined) {
      resolved.hook_position = msg.hook_position;
    }
    else {
      resolved.hook_position = 0.0
    }

    if (msg.gear_info !== undefined) {
      resolved.gear_info = msg.gear_info;
    }
    else {
      resolved.gear_info = 0
    }

    if (msg.speed_limit !== undefined) {
      resolved.speed_limit = msg.speed_limit;
    }
    else {
      resolved.speed_limit = 0.0
    }

    if (msg.speed_out !== undefined) {
      resolved.speed_out = msg.speed_out;
    }
    else {
      resolved.speed_out = 0.0
    }

    return resolved;
    }
};

module.exports = ControlResult;
