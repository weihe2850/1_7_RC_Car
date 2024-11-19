// Auto-generated. Do not edit!

// (in-package race_car_pkg.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class CarStates {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.Ux_mps = null;
      this.Uy_mps = null;
      this.r_radps = null;
      this.ax_mps2 = null;
      this.ay_mps2 = null;
      this.speed_rpm = null;
      this.delta_rad = null;
      this.Single_Motor_TxR_Nm = null;
      this.latitude = null;
      this.longitude = null;
      this.altitude = null;
      this.roll_rad = null;
      this.pitch_rad = null;
      this.yaw_rad = null;
      this.gps_state = null;
      this.UWB_x_m = null;
      this.UWB_y_m = null;
      this.EKF_x_m = null;
      this.EKF_y_m = null;
    }
    else {
      if (initObj.hasOwnProperty('Ux_mps')) {
        this.Ux_mps = initObj.Ux_mps
      }
      else {
        this.Ux_mps = 0.0;
      }
      if (initObj.hasOwnProperty('Uy_mps')) {
        this.Uy_mps = initObj.Uy_mps
      }
      else {
        this.Uy_mps = 0.0;
      }
      if (initObj.hasOwnProperty('r_radps')) {
        this.r_radps = initObj.r_radps
      }
      else {
        this.r_radps = 0.0;
      }
      if (initObj.hasOwnProperty('ax_mps2')) {
        this.ax_mps2 = initObj.ax_mps2
      }
      else {
        this.ax_mps2 = 0.0;
      }
      if (initObj.hasOwnProperty('ay_mps2')) {
        this.ay_mps2 = initObj.ay_mps2
      }
      else {
        this.ay_mps2 = 0.0;
      }
      if (initObj.hasOwnProperty('speed_rpm')) {
        this.speed_rpm = initObj.speed_rpm
      }
      else {
        this.speed_rpm = 0.0;
      }
      if (initObj.hasOwnProperty('delta_rad')) {
        this.delta_rad = initObj.delta_rad
      }
      else {
        this.delta_rad = 0.0;
      }
      if (initObj.hasOwnProperty('Single_Motor_TxR_Nm')) {
        this.Single_Motor_TxR_Nm = initObj.Single_Motor_TxR_Nm
      }
      else {
        this.Single_Motor_TxR_Nm = 0.0;
      }
      if (initObj.hasOwnProperty('latitude')) {
        this.latitude = initObj.latitude
      }
      else {
        this.latitude = 0.0;
      }
      if (initObj.hasOwnProperty('longitude')) {
        this.longitude = initObj.longitude
      }
      else {
        this.longitude = 0.0;
      }
      if (initObj.hasOwnProperty('altitude')) {
        this.altitude = initObj.altitude
      }
      else {
        this.altitude = 0.0;
      }
      if (initObj.hasOwnProperty('roll_rad')) {
        this.roll_rad = initObj.roll_rad
      }
      else {
        this.roll_rad = 0.0;
      }
      if (initObj.hasOwnProperty('pitch_rad')) {
        this.pitch_rad = initObj.pitch_rad
      }
      else {
        this.pitch_rad = 0.0;
      }
      if (initObj.hasOwnProperty('yaw_rad')) {
        this.yaw_rad = initObj.yaw_rad
      }
      else {
        this.yaw_rad = 0.0;
      }
      if (initObj.hasOwnProperty('gps_state')) {
        this.gps_state = initObj.gps_state
      }
      else {
        this.gps_state = 0;
      }
      if (initObj.hasOwnProperty('UWB_x_m')) {
        this.UWB_x_m = initObj.UWB_x_m
      }
      else {
        this.UWB_x_m = 0.0;
      }
      if (initObj.hasOwnProperty('UWB_y_m')) {
        this.UWB_y_m = initObj.UWB_y_m
      }
      else {
        this.UWB_y_m = 0.0;
      }
      if (initObj.hasOwnProperty('EKF_x_m')) {
        this.EKF_x_m = initObj.EKF_x_m
      }
      else {
        this.EKF_x_m = 0.0;
      }
      if (initObj.hasOwnProperty('EKF_y_m')) {
        this.EKF_y_m = initObj.EKF_y_m
      }
      else {
        this.EKF_y_m = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type CarStates
    // Serialize message field [Ux_mps]
    bufferOffset = _serializer.float64(obj.Ux_mps, buffer, bufferOffset);
    // Serialize message field [Uy_mps]
    bufferOffset = _serializer.float64(obj.Uy_mps, buffer, bufferOffset);
    // Serialize message field [r_radps]
    bufferOffset = _serializer.float64(obj.r_radps, buffer, bufferOffset);
    // Serialize message field [ax_mps2]
    bufferOffset = _serializer.float64(obj.ax_mps2, buffer, bufferOffset);
    // Serialize message field [ay_mps2]
    bufferOffset = _serializer.float64(obj.ay_mps2, buffer, bufferOffset);
    // Serialize message field [speed_rpm]
    bufferOffset = _serializer.float64(obj.speed_rpm, buffer, bufferOffset);
    // Serialize message field [delta_rad]
    bufferOffset = _serializer.float64(obj.delta_rad, buffer, bufferOffset);
    // Serialize message field [Single_Motor_TxR_Nm]
    bufferOffset = _serializer.float64(obj.Single_Motor_TxR_Nm, buffer, bufferOffset);
    // Serialize message field [latitude]
    bufferOffset = _serializer.float64(obj.latitude, buffer, bufferOffset);
    // Serialize message field [longitude]
    bufferOffset = _serializer.float64(obj.longitude, buffer, bufferOffset);
    // Serialize message field [altitude]
    bufferOffset = _serializer.float64(obj.altitude, buffer, bufferOffset);
    // Serialize message field [roll_rad]
    bufferOffset = _serializer.float64(obj.roll_rad, buffer, bufferOffset);
    // Serialize message field [pitch_rad]
    bufferOffset = _serializer.float64(obj.pitch_rad, buffer, bufferOffset);
    // Serialize message field [yaw_rad]
    bufferOffset = _serializer.float64(obj.yaw_rad, buffer, bufferOffset);
    // Serialize message field [gps_state]
    bufferOffset = _serializer.int32(obj.gps_state, buffer, bufferOffset);
    // Serialize message field [UWB_x_m]
    bufferOffset = _serializer.float64(obj.UWB_x_m, buffer, bufferOffset);
    // Serialize message field [UWB_y_m]
    bufferOffset = _serializer.float64(obj.UWB_y_m, buffer, bufferOffset);
    // Serialize message field [EKF_x_m]
    bufferOffset = _serializer.float64(obj.EKF_x_m, buffer, bufferOffset);
    // Serialize message field [EKF_y_m]
    bufferOffset = _serializer.float64(obj.EKF_y_m, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type CarStates
    let len;
    let data = new CarStates(null);
    // Deserialize message field [Ux_mps]
    data.Ux_mps = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [Uy_mps]
    data.Uy_mps = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [r_radps]
    data.r_radps = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [ax_mps2]
    data.ax_mps2 = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [ay_mps2]
    data.ay_mps2 = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [speed_rpm]
    data.speed_rpm = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [delta_rad]
    data.delta_rad = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [Single_Motor_TxR_Nm]
    data.Single_Motor_TxR_Nm = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [latitude]
    data.latitude = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [longitude]
    data.longitude = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [altitude]
    data.altitude = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [roll_rad]
    data.roll_rad = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [pitch_rad]
    data.pitch_rad = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [yaw_rad]
    data.yaw_rad = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [gps_state]
    data.gps_state = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [UWB_x_m]
    data.UWB_x_m = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [UWB_y_m]
    data.UWB_y_m = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [EKF_x_m]
    data.EKF_x_m = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [EKF_y_m]
    data.EKF_y_m = _deserializer.float64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 148;
  }

  static datatype() {
    // Returns string type for a message object
    return 'race_car_pkg/CarStates';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '8e4453ced50b304c0ba0c546d7acd617';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float64 Ux_mps
    float64 Uy_mps
    float64 r_radps
    float64 ax_mps2
    float64 ay_mps2
    float64 speed_rpm
    float64 delta_rad
    float64 Single_Motor_TxR_Nm
    float64 latitude
    float64 longitude
    float64 altitude
    float64 roll_rad
    float64 pitch_rad
    float64 yaw_rad
    int32 gps_state
    float64 UWB_x_m
    float64 UWB_y_m
    float64 EKF_x_m
    float64 EKF_y_m
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new CarStates(null);
    if (msg.Ux_mps !== undefined) {
      resolved.Ux_mps = msg.Ux_mps;
    }
    else {
      resolved.Ux_mps = 0.0
    }

    if (msg.Uy_mps !== undefined) {
      resolved.Uy_mps = msg.Uy_mps;
    }
    else {
      resolved.Uy_mps = 0.0
    }

    if (msg.r_radps !== undefined) {
      resolved.r_radps = msg.r_radps;
    }
    else {
      resolved.r_radps = 0.0
    }

    if (msg.ax_mps2 !== undefined) {
      resolved.ax_mps2 = msg.ax_mps2;
    }
    else {
      resolved.ax_mps2 = 0.0
    }

    if (msg.ay_mps2 !== undefined) {
      resolved.ay_mps2 = msg.ay_mps2;
    }
    else {
      resolved.ay_mps2 = 0.0
    }

    if (msg.speed_rpm !== undefined) {
      resolved.speed_rpm = msg.speed_rpm;
    }
    else {
      resolved.speed_rpm = 0.0
    }

    if (msg.delta_rad !== undefined) {
      resolved.delta_rad = msg.delta_rad;
    }
    else {
      resolved.delta_rad = 0.0
    }

    if (msg.Single_Motor_TxR_Nm !== undefined) {
      resolved.Single_Motor_TxR_Nm = msg.Single_Motor_TxR_Nm;
    }
    else {
      resolved.Single_Motor_TxR_Nm = 0.0
    }

    if (msg.latitude !== undefined) {
      resolved.latitude = msg.latitude;
    }
    else {
      resolved.latitude = 0.0
    }

    if (msg.longitude !== undefined) {
      resolved.longitude = msg.longitude;
    }
    else {
      resolved.longitude = 0.0
    }

    if (msg.altitude !== undefined) {
      resolved.altitude = msg.altitude;
    }
    else {
      resolved.altitude = 0.0
    }

    if (msg.roll_rad !== undefined) {
      resolved.roll_rad = msg.roll_rad;
    }
    else {
      resolved.roll_rad = 0.0
    }

    if (msg.pitch_rad !== undefined) {
      resolved.pitch_rad = msg.pitch_rad;
    }
    else {
      resolved.pitch_rad = 0.0
    }

    if (msg.yaw_rad !== undefined) {
      resolved.yaw_rad = msg.yaw_rad;
    }
    else {
      resolved.yaw_rad = 0.0
    }

    if (msg.gps_state !== undefined) {
      resolved.gps_state = msg.gps_state;
    }
    else {
      resolved.gps_state = 0
    }

    if (msg.UWB_x_m !== undefined) {
      resolved.UWB_x_m = msg.UWB_x_m;
    }
    else {
      resolved.UWB_x_m = 0.0
    }

    if (msg.UWB_y_m !== undefined) {
      resolved.UWB_y_m = msg.UWB_y_m;
    }
    else {
      resolved.UWB_y_m = 0.0
    }

    if (msg.EKF_x_m !== undefined) {
      resolved.EKF_x_m = msg.EKF_x_m;
    }
    else {
      resolved.EKF_x_m = 0.0
    }

    if (msg.EKF_y_m !== undefined) {
      resolved.EKF_y_m = msg.EKF_y_m;
    }
    else {
      resolved.EKF_y_m = 0.0
    }

    return resolved;
    }
};

module.exports = CarStates;
