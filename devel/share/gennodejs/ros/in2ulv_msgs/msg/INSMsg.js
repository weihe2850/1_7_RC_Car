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

class INSMsg {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.module_type = null;
      this.error_code = null;
      this.ins_data = null;
      this.ACC_X = null;
      this.ACC_Y = null;
      this.ACC_Z = null;
      this.GYRO_X = null;
      this.GYRO_Y = null;
      this.GYRO_Z = null;
      this.INS_PitchAngle = null;
      this.INS_RollAngle = null;
      this.INS_HeadingAngle = null;
      this.INS_LocatHeight = null;
      this.INS_Time = null;
      this.INS_Latitude = null;
      this.INS_Longitude = null;
      this.INS_NorthSpd = null;
      this.INS_EastSpd = null;
      this.INS_ToGroundSpd = null;
      this.INS_GpsFlag_Pos = null;
      this.INS_NumSV = null;
      this.INS_GpsFlag_Heading = null;
      this.INS_Gps_Age = null;
      this.INS_Car_Status = null;
      this.INS_Status = null;
      this.INS_Std_Lat = null;
      this.INS_Std_Lon = null;
      this.INS_Std_LocatHeight = null;
      this.INS_Std_Heading = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('module_type')) {
        this.module_type = initObj.module_type
      }
      else {
        this.module_type = 0;
      }
      if (initObj.hasOwnProperty('error_code')) {
        this.error_code = initObj.error_code
      }
      else {
        this.error_code = 0;
      }
      if (initObj.hasOwnProperty('ins_data')) {
        this.ins_data = initObj.ins_data
      }
      else {
        this.ins_data = '';
      }
      if (initObj.hasOwnProperty('ACC_X')) {
        this.ACC_X = initObj.ACC_X
      }
      else {
        this.ACC_X = 0;
      }
      if (initObj.hasOwnProperty('ACC_Y')) {
        this.ACC_Y = initObj.ACC_Y
      }
      else {
        this.ACC_Y = 0;
      }
      if (initObj.hasOwnProperty('ACC_Z')) {
        this.ACC_Z = initObj.ACC_Z
      }
      else {
        this.ACC_Z = 0;
      }
      if (initObj.hasOwnProperty('GYRO_X')) {
        this.GYRO_X = initObj.GYRO_X
      }
      else {
        this.GYRO_X = 0;
      }
      if (initObj.hasOwnProperty('GYRO_Y')) {
        this.GYRO_Y = initObj.GYRO_Y
      }
      else {
        this.GYRO_Y = 0;
      }
      if (initObj.hasOwnProperty('GYRO_Z')) {
        this.GYRO_Z = initObj.GYRO_Z
      }
      else {
        this.GYRO_Z = 0;
      }
      if (initObj.hasOwnProperty('INS_PitchAngle')) {
        this.INS_PitchAngle = initObj.INS_PitchAngle
      }
      else {
        this.INS_PitchAngle = 0;
      }
      if (initObj.hasOwnProperty('INS_RollAngle')) {
        this.INS_RollAngle = initObj.INS_RollAngle
      }
      else {
        this.INS_RollAngle = 0;
      }
      if (initObj.hasOwnProperty('INS_HeadingAngle')) {
        this.INS_HeadingAngle = initObj.INS_HeadingAngle
      }
      else {
        this.INS_HeadingAngle = 0;
      }
      if (initObj.hasOwnProperty('INS_LocatHeight')) {
        this.INS_LocatHeight = initObj.INS_LocatHeight
      }
      else {
        this.INS_LocatHeight = 0;
      }
      if (initObj.hasOwnProperty('INS_Time')) {
        this.INS_Time = initObj.INS_Time
      }
      else {
        this.INS_Time = 0;
      }
      if (initObj.hasOwnProperty('INS_Latitude')) {
        this.INS_Latitude = initObj.INS_Latitude
      }
      else {
        this.INS_Latitude = 0;
      }
      if (initObj.hasOwnProperty('INS_Longitude')) {
        this.INS_Longitude = initObj.INS_Longitude
      }
      else {
        this.INS_Longitude = 0;
      }
      if (initObj.hasOwnProperty('INS_NorthSpd')) {
        this.INS_NorthSpd = initObj.INS_NorthSpd
      }
      else {
        this.INS_NorthSpd = 0;
      }
      if (initObj.hasOwnProperty('INS_EastSpd')) {
        this.INS_EastSpd = initObj.INS_EastSpd
      }
      else {
        this.INS_EastSpd = 0;
      }
      if (initObj.hasOwnProperty('INS_ToGroundSpd')) {
        this.INS_ToGroundSpd = initObj.INS_ToGroundSpd
      }
      else {
        this.INS_ToGroundSpd = 0;
      }
      if (initObj.hasOwnProperty('INS_GpsFlag_Pos')) {
        this.INS_GpsFlag_Pos = initObj.INS_GpsFlag_Pos
      }
      else {
        this.INS_GpsFlag_Pos = 0;
      }
      if (initObj.hasOwnProperty('INS_NumSV')) {
        this.INS_NumSV = initObj.INS_NumSV
      }
      else {
        this.INS_NumSV = 0;
      }
      if (initObj.hasOwnProperty('INS_GpsFlag_Heading')) {
        this.INS_GpsFlag_Heading = initObj.INS_GpsFlag_Heading
      }
      else {
        this.INS_GpsFlag_Heading = 0;
      }
      if (initObj.hasOwnProperty('INS_Gps_Age')) {
        this.INS_Gps_Age = initObj.INS_Gps_Age
      }
      else {
        this.INS_Gps_Age = 0;
      }
      if (initObj.hasOwnProperty('INS_Car_Status')) {
        this.INS_Car_Status = initObj.INS_Car_Status
      }
      else {
        this.INS_Car_Status = 0;
      }
      if (initObj.hasOwnProperty('INS_Status')) {
        this.INS_Status = initObj.INS_Status
      }
      else {
        this.INS_Status = 0;
      }
      if (initObj.hasOwnProperty('INS_Std_Lat')) {
        this.INS_Std_Lat = initObj.INS_Std_Lat
      }
      else {
        this.INS_Std_Lat = 0;
      }
      if (initObj.hasOwnProperty('INS_Std_Lon')) {
        this.INS_Std_Lon = initObj.INS_Std_Lon
      }
      else {
        this.INS_Std_Lon = 0;
      }
      if (initObj.hasOwnProperty('INS_Std_LocatHeight')) {
        this.INS_Std_LocatHeight = initObj.INS_Std_LocatHeight
      }
      else {
        this.INS_Std_LocatHeight = 0;
      }
      if (initObj.hasOwnProperty('INS_Std_Heading')) {
        this.INS_Std_Heading = initObj.INS_Std_Heading
      }
      else {
        this.INS_Std_Heading = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type INSMsg
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [module_type]
    bufferOffset = _serializer.uint8(obj.module_type, buffer, bufferOffset);
    // Serialize message field [error_code]
    bufferOffset = _serializer.uint32(obj.error_code, buffer, bufferOffset);
    // Serialize message field [ins_data]
    bufferOffset = _serializer.string(obj.ins_data, buffer, bufferOffset);
    // Serialize message field [ACC_X]
    bufferOffset = _serializer.uint16(obj.ACC_X, buffer, bufferOffset);
    // Serialize message field [ACC_Y]
    bufferOffset = _serializer.uint16(obj.ACC_Y, buffer, bufferOffset);
    // Serialize message field [ACC_Z]
    bufferOffset = _serializer.uint16(obj.ACC_Z, buffer, bufferOffset);
    // Serialize message field [GYRO_X]
    bufferOffset = _serializer.uint16(obj.GYRO_X, buffer, bufferOffset);
    // Serialize message field [GYRO_Y]
    bufferOffset = _serializer.uint16(obj.GYRO_Y, buffer, bufferOffset);
    // Serialize message field [GYRO_Z]
    bufferOffset = _serializer.uint16(obj.GYRO_Z, buffer, bufferOffset);
    // Serialize message field [INS_PitchAngle]
    bufferOffset = _serializer.uint16(obj.INS_PitchAngle, buffer, bufferOffset);
    // Serialize message field [INS_RollAngle]
    bufferOffset = _serializer.uint16(obj.INS_RollAngle, buffer, bufferOffset);
    // Serialize message field [INS_HeadingAngle]
    bufferOffset = _serializer.uint16(obj.INS_HeadingAngle, buffer, bufferOffset);
    // Serialize message field [INS_LocatHeight]
    bufferOffset = _serializer.uint32(obj.INS_LocatHeight, buffer, bufferOffset);
    // Serialize message field [INS_Time]
    bufferOffset = _serializer.uint32(obj.INS_Time, buffer, bufferOffset);
    // Serialize message field [INS_Latitude]
    bufferOffset = _serializer.uint32(obj.INS_Latitude, buffer, bufferOffset);
    // Serialize message field [INS_Longitude]
    bufferOffset = _serializer.uint32(obj.INS_Longitude, buffer, bufferOffset);
    // Serialize message field [INS_NorthSpd]
    bufferOffset = _serializer.uint16(obj.INS_NorthSpd, buffer, bufferOffset);
    // Serialize message field [INS_EastSpd]
    bufferOffset = _serializer.uint16(obj.INS_EastSpd, buffer, bufferOffset);
    // Serialize message field [INS_ToGroundSpd]
    bufferOffset = _serializer.uint16(obj.INS_ToGroundSpd, buffer, bufferOffset);
    // Serialize message field [INS_GpsFlag_Pos]
    bufferOffset = _serializer.uint8(obj.INS_GpsFlag_Pos, buffer, bufferOffset);
    // Serialize message field [INS_NumSV]
    bufferOffset = _serializer.uint8(obj.INS_NumSV, buffer, bufferOffset);
    // Serialize message field [INS_GpsFlag_Heading]
    bufferOffset = _serializer.uint8(obj.INS_GpsFlag_Heading, buffer, bufferOffset);
    // Serialize message field [INS_Gps_Age]
    bufferOffset = _serializer.uint8(obj.INS_Gps_Age, buffer, bufferOffset);
    // Serialize message field [INS_Car_Status]
    bufferOffset = _serializer.uint8(obj.INS_Car_Status, buffer, bufferOffset);
    // Serialize message field [INS_Status]
    bufferOffset = _serializer.uint8(obj.INS_Status, buffer, bufferOffset);
    // Serialize message field [INS_Std_Lat]
    bufferOffset = _serializer.uint16(obj.INS_Std_Lat, buffer, bufferOffset);
    // Serialize message field [INS_Std_Lon]
    bufferOffset = _serializer.uint16(obj.INS_Std_Lon, buffer, bufferOffset);
    // Serialize message field [INS_Std_LocatHeight]
    bufferOffset = _serializer.uint16(obj.INS_Std_LocatHeight, buffer, bufferOffset);
    // Serialize message field [INS_Std_Heading]
    bufferOffset = _serializer.uint16(obj.INS_Std_Heading, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type INSMsg
    let len;
    let data = new INSMsg(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [module_type]
    data.module_type = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [error_code]
    data.error_code = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [ins_data]
    data.ins_data = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [ACC_X]
    data.ACC_X = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [ACC_Y]
    data.ACC_Y = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [ACC_Z]
    data.ACC_Z = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [GYRO_X]
    data.GYRO_X = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [GYRO_Y]
    data.GYRO_Y = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [GYRO_Z]
    data.GYRO_Z = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [INS_PitchAngle]
    data.INS_PitchAngle = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [INS_RollAngle]
    data.INS_RollAngle = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [INS_HeadingAngle]
    data.INS_HeadingAngle = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [INS_LocatHeight]
    data.INS_LocatHeight = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [INS_Time]
    data.INS_Time = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [INS_Latitude]
    data.INS_Latitude = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [INS_Longitude]
    data.INS_Longitude = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [INS_NorthSpd]
    data.INS_NorthSpd = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [INS_EastSpd]
    data.INS_EastSpd = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [INS_ToGroundSpd]
    data.INS_ToGroundSpd = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [INS_GpsFlag_Pos]
    data.INS_GpsFlag_Pos = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [INS_NumSV]
    data.INS_NumSV = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [INS_GpsFlag_Heading]
    data.INS_GpsFlag_Heading = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [INS_Gps_Age]
    data.INS_Gps_Age = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [INS_Car_Status]
    data.INS_Car_Status = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [INS_Status]
    data.INS_Status = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [INS_Std_Lat]
    data.INS_Std_Lat = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [INS_Std_Lon]
    data.INS_Std_Lon = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [INS_Std_LocatHeight]
    data.INS_Std_LocatHeight = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [INS_Std_Heading]
    data.INS_Std_Heading = _deserializer.uint16(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    length += _getByteLength(object.ins_data);
    return length + 63;
  }

  static datatype() {
    // Returns string type for a message object
    return 'in2ulv_msgs/INSMsg';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '7becfa5a7d632c7c67b72fd6b667376f';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # 帧头，包含时间戳信息
    std_msgs/Header header
    
    # 模块类型
    uint8 module_type
    
    # error_code
    uint32 error_code
    
    # 模块信息
    string ins_data
    
    # INS_Acc (0X500)
    uint16 ACC_X
    uint16 ACC_Y
    uint16 ACC_Z
    
    # INS_GYRO (0X501)
    uint16 GYRO_X
    uint16 GYRO_Y
    uint16 GYRO_Z
    
    # INS_HeadingPitchRoll (0X502)
    uint16 INS_PitchAngle
    uint16 INS_RollAngle
    uint16 INS_HeadingAngle
    
    # INS_HeightAndTime (0X503)
    uint32 INS_LocatHeight
    uint32 INS_Time
    
    # INS_LatitudeLongitude (0X504)
    uint32 INS_Latitude
    uint32 INS_Longitude
    
    # INS_Speed (0X505)
    uint16 INS_NorthSpd
    uint16 INS_EastSpd
    uint16 INS_ToGroundSpd
    
    # INS_DataInfo (0X506)
    uint8 INS_GpsFlag_Pos
    uint8 INS_NumSV     #星数
    uint8 INS_GpsFlag_Heading
    uint8 INS_Gps_Age
    uint8 INS_Car_Status
    uint8 INS_Status
    
    # INS_Std (0X507)
    uint16 INS_Std_Lat
    uint16 INS_Std_Lon
    uint16 INS_Std_LocatHeight
    uint16 INS_Std_Heading
    
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
    const resolved = new INSMsg(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.module_type !== undefined) {
      resolved.module_type = msg.module_type;
    }
    else {
      resolved.module_type = 0
    }

    if (msg.error_code !== undefined) {
      resolved.error_code = msg.error_code;
    }
    else {
      resolved.error_code = 0
    }

    if (msg.ins_data !== undefined) {
      resolved.ins_data = msg.ins_data;
    }
    else {
      resolved.ins_data = ''
    }

    if (msg.ACC_X !== undefined) {
      resolved.ACC_X = msg.ACC_X;
    }
    else {
      resolved.ACC_X = 0
    }

    if (msg.ACC_Y !== undefined) {
      resolved.ACC_Y = msg.ACC_Y;
    }
    else {
      resolved.ACC_Y = 0
    }

    if (msg.ACC_Z !== undefined) {
      resolved.ACC_Z = msg.ACC_Z;
    }
    else {
      resolved.ACC_Z = 0
    }

    if (msg.GYRO_X !== undefined) {
      resolved.GYRO_X = msg.GYRO_X;
    }
    else {
      resolved.GYRO_X = 0
    }

    if (msg.GYRO_Y !== undefined) {
      resolved.GYRO_Y = msg.GYRO_Y;
    }
    else {
      resolved.GYRO_Y = 0
    }

    if (msg.GYRO_Z !== undefined) {
      resolved.GYRO_Z = msg.GYRO_Z;
    }
    else {
      resolved.GYRO_Z = 0
    }

    if (msg.INS_PitchAngle !== undefined) {
      resolved.INS_PitchAngle = msg.INS_PitchAngle;
    }
    else {
      resolved.INS_PitchAngle = 0
    }

    if (msg.INS_RollAngle !== undefined) {
      resolved.INS_RollAngle = msg.INS_RollAngle;
    }
    else {
      resolved.INS_RollAngle = 0
    }

    if (msg.INS_HeadingAngle !== undefined) {
      resolved.INS_HeadingAngle = msg.INS_HeadingAngle;
    }
    else {
      resolved.INS_HeadingAngle = 0
    }

    if (msg.INS_LocatHeight !== undefined) {
      resolved.INS_LocatHeight = msg.INS_LocatHeight;
    }
    else {
      resolved.INS_LocatHeight = 0
    }

    if (msg.INS_Time !== undefined) {
      resolved.INS_Time = msg.INS_Time;
    }
    else {
      resolved.INS_Time = 0
    }

    if (msg.INS_Latitude !== undefined) {
      resolved.INS_Latitude = msg.INS_Latitude;
    }
    else {
      resolved.INS_Latitude = 0
    }

    if (msg.INS_Longitude !== undefined) {
      resolved.INS_Longitude = msg.INS_Longitude;
    }
    else {
      resolved.INS_Longitude = 0
    }

    if (msg.INS_NorthSpd !== undefined) {
      resolved.INS_NorthSpd = msg.INS_NorthSpd;
    }
    else {
      resolved.INS_NorthSpd = 0
    }

    if (msg.INS_EastSpd !== undefined) {
      resolved.INS_EastSpd = msg.INS_EastSpd;
    }
    else {
      resolved.INS_EastSpd = 0
    }

    if (msg.INS_ToGroundSpd !== undefined) {
      resolved.INS_ToGroundSpd = msg.INS_ToGroundSpd;
    }
    else {
      resolved.INS_ToGroundSpd = 0
    }

    if (msg.INS_GpsFlag_Pos !== undefined) {
      resolved.INS_GpsFlag_Pos = msg.INS_GpsFlag_Pos;
    }
    else {
      resolved.INS_GpsFlag_Pos = 0
    }

    if (msg.INS_NumSV !== undefined) {
      resolved.INS_NumSV = msg.INS_NumSV;
    }
    else {
      resolved.INS_NumSV = 0
    }

    if (msg.INS_GpsFlag_Heading !== undefined) {
      resolved.INS_GpsFlag_Heading = msg.INS_GpsFlag_Heading;
    }
    else {
      resolved.INS_GpsFlag_Heading = 0
    }

    if (msg.INS_Gps_Age !== undefined) {
      resolved.INS_Gps_Age = msg.INS_Gps_Age;
    }
    else {
      resolved.INS_Gps_Age = 0
    }

    if (msg.INS_Car_Status !== undefined) {
      resolved.INS_Car_Status = msg.INS_Car_Status;
    }
    else {
      resolved.INS_Car_Status = 0
    }

    if (msg.INS_Status !== undefined) {
      resolved.INS_Status = msg.INS_Status;
    }
    else {
      resolved.INS_Status = 0
    }

    if (msg.INS_Std_Lat !== undefined) {
      resolved.INS_Std_Lat = msg.INS_Std_Lat;
    }
    else {
      resolved.INS_Std_Lat = 0
    }

    if (msg.INS_Std_Lon !== undefined) {
      resolved.INS_Std_Lon = msg.INS_Std_Lon;
    }
    else {
      resolved.INS_Std_Lon = 0
    }

    if (msg.INS_Std_LocatHeight !== undefined) {
      resolved.INS_Std_LocatHeight = msg.INS_Std_LocatHeight;
    }
    else {
      resolved.INS_Std_LocatHeight = 0
    }

    if (msg.INS_Std_Heading !== undefined) {
      resolved.INS_Std_Heading = msg.INS_Std_Heading;
    }
    else {
      resolved.INS_Std_Heading = 0
    }

    return resolved;
    }
};

module.exports = INSMsg;
