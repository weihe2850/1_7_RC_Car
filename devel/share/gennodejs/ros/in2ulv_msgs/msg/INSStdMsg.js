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
let sensor_msgs = _finder('sensor_msgs');

//-----------------------------------------------------------

class INSStdMsg {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.module_type = null;
      this.error_code = null;
      this.ins_data = null;
      this.imu = null;
      this.nav_sat_fix = null;
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
      this.INS_UTM_East = null;
      this.INS_UTM_North = null;
      this.INS_UTM_NorthSpd = null;
      this.INS_UTM_EastSpd = null;
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
      if (initObj.hasOwnProperty('imu')) {
        this.imu = initObj.imu
      }
      else {
        this.imu = new sensor_msgs.msg.Imu();
      }
      if (initObj.hasOwnProperty('nav_sat_fix')) {
        this.nav_sat_fix = initObj.nav_sat_fix
      }
      else {
        this.nav_sat_fix = new sensor_msgs.msg.NavSatFix();
      }
      if (initObj.hasOwnProperty('ACC_X')) {
        this.ACC_X = initObj.ACC_X
      }
      else {
        this.ACC_X = 0.0;
      }
      if (initObj.hasOwnProperty('ACC_Y')) {
        this.ACC_Y = initObj.ACC_Y
      }
      else {
        this.ACC_Y = 0.0;
      }
      if (initObj.hasOwnProperty('ACC_Z')) {
        this.ACC_Z = initObj.ACC_Z
      }
      else {
        this.ACC_Z = 0.0;
      }
      if (initObj.hasOwnProperty('GYRO_X')) {
        this.GYRO_X = initObj.GYRO_X
      }
      else {
        this.GYRO_X = 0.0;
      }
      if (initObj.hasOwnProperty('GYRO_Y')) {
        this.GYRO_Y = initObj.GYRO_Y
      }
      else {
        this.GYRO_Y = 0.0;
      }
      if (initObj.hasOwnProperty('GYRO_Z')) {
        this.GYRO_Z = initObj.GYRO_Z
      }
      else {
        this.GYRO_Z = 0.0;
      }
      if (initObj.hasOwnProperty('INS_PitchAngle')) {
        this.INS_PitchAngle = initObj.INS_PitchAngle
      }
      else {
        this.INS_PitchAngle = 0.0;
      }
      if (initObj.hasOwnProperty('INS_RollAngle')) {
        this.INS_RollAngle = initObj.INS_RollAngle
      }
      else {
        this.INS_RollAngle = 0.0;
      }
      if (initObj.hasOwnProperty('INS_HeadingAngle')) {
        this.INS_HeadingAngle = initObj.INS_HeadingAngle
      }
      else {
        this.INS_HeadingAngle = 0.0;
      }
      if (initObj.hasOwnProperty('INS_LocatHeight')) {
        this.INS_LocatHeight = initObj.INS_LocatHeight
      }
      else {
        this.INS_LocatHeight = 0.0;
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
        this.INS_Latitude = 0.0;
      }
      if (initObj.hasOwnProperty('INS_Longitude')) {
        this.INS_Longitude = initObj.INS_Longitude
      }
      else {
        this.INS_Longitude = 0.0;
      }
      if (initObj.hasOwnProperty('INS_NorthSpd')) {
        this.INS_NorthSpd = initObj.INS_NorthSpd
      }
      else {
        this.INS_NorthSpd = 0.0;
      }
      if (initObj.hasOwnProperty('INS_EastSpd')) {
        this.INS_EastSpd = initObj.INS_EastSpd
      }
      else {
        this.INS_EastSpd = 0.0;
      }
      if (initObj.hasOwnProperty('INS_ToGroundSpd')) {
        this.INS_ToGroundSpd = initObj.INS_ToGroundSpd
      }
      else {
        this.INS_ToGroundSpd = 0.0;
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
        this.INS_Std_Lat = 0.0;
      }
      if (initObj.hasOwnProperty('INS_Std_Lon')) {
        this.INS_Std_Lon = initObj.INS_Std_Lon
      }
      else {
        this.INS_Std_Lon = 0.0;
      }
      if (initObj.hasOwnProperty('INS_Std_LocatHeight')) {
        this.INS_Std_LocatHeight = initObj.INS_Std_LocatHeight
      }
      else {
        this.INS_Std_LocatHeight = 0.0;
      }
      if (initObj.hasOwnProperty('INS_Std_Heading')) {
        this.INS_Std_Heading = initObj.INS_Std_Heading
      }
      else {
        this.INS_Std_Heading = 0.0;
      }
      if (initObj.hasOwnProperty('INS_UTM_East')) {
        this.INS_UTM_East = initObj.INS_UTM_East
      }
      else {
        this.INS_UTM_East = 0.0;
      }
      if (initObj.hasOwnProperty('INS_UTM_North')) {
        this.INS_UTM_North = initObj.INS_UTM_North
      }
      else {
        this.INS_UTM_North = 0.0;
      }
      if (initObj.hasOwnProperty('INS_UTM_NorthSpd')) {
        this.INS_UTM_NorthSpd = initObj.INS_UTM_NorthSpd
      }
      else {
        this.INS_UTM_NorthSpd = 0.0;
      }
      if (initObj.hasOwnProperty('INS_UTM_EastSpd')) {
        this.INS_UTM_EastSpd = initObj.INS_UTM_EastSpd
      }
      else {
        this.INS_UTM_EastSpd = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type INSStdMsg
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [module_type]
    bufferOffset = _serializer.uint8(obj.module_type, buffer, bufferOffset);
    // Serialize message field [error_code]
    bufferOffset = _serializer.uint32(obj.error_code, buffer, bufferOffset);
    // Serialize message field [ins_data]
    bufferOffset = _serializer.string(obj.ins_data, buffer, bufferOffset);
    // Serialize message field [imu]
    bufferOffset = sensor_msgs.msg.Imu.serialize(obj.imu, buffer, bufferOffset);
    // Serialize message field [nav_sat_fix]
    bufferOffset = sensor_msgs.msg.NavSatFix.serialize(obj.nav_sat_fix, buffer, bufferOffset);
    // Serialize message field [ACC_X]
    bufferOffset = _serializer.float64(obj.ACC_X, buffer, bufferOffset);
    // Serialize message field [ACC_Y]
    bufferOffset = _serializer.float64(obj.ACC_Y, buffer, bufferOffset);
    // Serialize message field [ACC_Z]
    bufferOffset = _serializer.float64(obj.ACC_Z, buffer, bufferOffset);
    // Serialize message field [GYRO_X]
    bufferOffset = _serializer.float64(obj.GYRO_X, buffer, bufferOffset);
    // Serialize message field [GYRO_Y]
    bufferOffset = _serializer.float64(obj.GYRO_Y, buffer, bufferOffset);
    // Serialize message field [GYRO_Z]
    bufferOffset = _serializer.float64(obj.GYRO_Z, buffer, bufferOffset);
    // Serialize message field [INS_PitchAngle]
    bufferOffset = _serializer.float64(obj.INS_PitchAngle, buffer, bufferOffset);
    // Serialize message field [INS_RollAngle]
    bufferOffset = _serializer.float64(obj.INS_RollAngle, buffer, bufferOffset);
    // Serialize message field [INS_HeadingAngle]
    bufferOffset = _serializer.float64(obj.INS_HeadingAngle, buffer, bufferOffset);
    // Serialize message field [INS_LocatHeight]
    bufferOffset = _serializer.float64(obj.INS_LocatHeight, buffer, bufferOffset);
    // Serialize message field [INS_Time]
    bufferOffset = _serializer.uint32(obj.INS_Time, buffer, bufferOffset);
    // Serialize message field [INS_Latitude]
    bufferOffset = _serializer.float64(obj.INS_Latitude, buffer, bufferOffset);
    // Serialize message field [INS_Longitude]
    bufferOffset = _serializer.float64(obj.INS_Longitude, buffer, bufferOffset);
    // Serialize message field [INS_NorthSpd]
    bufferOffset = _serializer.float64(obj.INS_NorthSpd, buffer, bufferOffset);
    // Serialize message field [INS_EastSpd]
    bufferOffset = _serializer.float64(obj.INS_EastSpd, buffer, bufferOffset);
    // Serialize message field [INS_ToGroundSpd]
    bufferOffset = _serializer.float64(obj.INS_ToGroundSpd, buffer, bufferOffset);
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
    bufferOffset = _serializer.float32(obj.INS_Std_Lat, buffer, bufferOffset);
    // Serialize message field [INS_Std_Lon]
    bufferOffset = _serializer.float32(obj.INS_Std_Lon, buffer, bufferOffset);
    // Serialize message field [INS_Std_LocatHeight]
    bufferOffset = _serializer.float32(obj.INS_Std_LocatHeight, buffer, bufferOffset);
    // Serialize message field [INS_Std_Heading]
    bufferOffset = _serializer.float32(obj.INS_Std_Heading, buffer, bufferOffset);
    // Serialize message field [INS_UTM_East]
    bufferOffset = _serializer.float64(obj.INS_UTM_East, buffer, bufferOffset);
    // Serialize message field [INS_UTM_North]
    bufferOffset = _serializer.float64(obj.INS_UTM_North, buffer, bufferOffset);
    // Serialize message field [INS_UTM_NorthSpd]
    bufferOffset = _serializer.float64(obj.INS_UTM_NorthSpd, buffer, bufferOffset);
    // Serialize message field [INS_UTM_EastSpd]
    bufferOffset = _serializer.float64(obj.INS_UTM_EastSpd, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type INSStdMsg
    let len;
    let data = new INSStdMsg(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [module_type]
    data.module_type = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [error_code]
    data.error_code = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [ins_data]
    data.ins_data = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [imu]
    data.imu = sensor_msgs.msg.Imu.deserialize(buffer, bufferOffset);
    // Deserialize message field [nav_sat_fix]
    data.nav_sat_fix = sensor_msgs.msg.NavSatFix.deserialize(buffer, bufferOffset);
    // Deserialize message field [ACC_X]
    data.ACC_X = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [ACC_Y]
    data.ACC_Y = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [ACC_Z]
    data.ACC_Z = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [GYRO_X]
    data.GYRO_X = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [GYRO_Y]
    data.GYRO_Y = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [GYRO_Z]
    data.GYRO_Z = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [INS_PitchAngle]
    data.INS_PitchAngle = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [INS_RollAngle]
    data.INS_RollAngle = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [INS_HeadingAngle]
    data.INS_HeadingAngle = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [INS_LocatHeight]
    data.INS_LocatHeight = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [INS_Time]
    data.INS_Time = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [INS_Latitude]
    data.INS_Latitude = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [INS_Longitude]
    data.INS_Longitude = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [INS_NorthSpd]
    data.INS_NorthSpd = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [INS_EastSpd]
    data.INS_EastSpd = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [INS_ToGroundSpd]
    data.INS_ToGroundSpd = _deserializer.float64(buffer, bufferOffset);
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
    data.INS_Std_Lat = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [INS_Std_Lon]
    data.INS_Std_Lon = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [INS_Std_LocatHeight]
    data.INS_Std_LocatHeight = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [INS_Std_Heading]
    data.INS_Std_Heading = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [INS_UTM_East]
    data.INS_UTM_East = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [INS_UTM_North]
    data.INS_UTM_North = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [INS_UTM_NorthSpd]
    data.INS_UTM_NorthSpd = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [INS_UTM_EastSpd]
    data.INS_UTM_EastSpd = _deserializer.float64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    length += _getByteLength(object.ins_data);
    length += sensor_msgs.msg.Imu.getMessageSize(object.imu);
    length += sensor_msgs.msg.NavSatFix.getMessageSize(object.nav_sat_fix);
    return length + 187;
  }

  static datatype() {
    // Returns string type for a message object
    return 'in2ulv_msgs/INSStdMsg';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'e660d7b5d497967dad824f69729739ae';
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
    
    # ROS 标准信息
    sensor_msgs/Imu imu
    sensor_msgs/NavSatFix nav_sat_fix
    
    # INS_Acc (0X500)
    float64 ACC_X
    float64 ACC_Y
    float64 ACC_Z
    
    # INS_GYRO (0X501)
    float64 GYRO_X
    float64 GYRO_Y
    float64 GYRO_Z
    
    # INS_HeadingPitchRoll (0X502)
    float64 INS_PitchAngle
    float64 INS_RollAngle
    float64 INS_HeadingAngle
    
    # INS_HeightAndTime (0X503)
    float64 INS_LocatHeight
    uint32 INS_Time
    
    # INS_LatitudeLongitude (0X504)
    float64 INS_Latitude
    float64 INS_Longitude
    
    # INS_Speed (0X505)
    float64 INS_NorthSpd
    float64 INS_EastSpd
    float64 INS_ToGroundSpd
    
    # INS_DataInfo (0X506)
    uint8 INS_GpsFlag_Pos
    uint8 INS_NumSV     #星数
    uint8 INS_GpsFlag_Heading
    uint8 INS_Gps_Age
    uint8 INS_Car_Status
    uint8 INS_Status
    
    # INS_Std (0X507)
    float32 INS_Std_Lat
    float32 INS_Std_Lon
    float32 INS_Std_LocatHeight
    float32 INS_Std_Heading
    
    # 新增的 UTM 坐标字段
    float64 INS_UTM_East
    float64 INS_UTM_North
    float64 INS_UTM_NorthSpd
    float64 INS_UTM_EastSpd
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
    MSG: sensor_msgs/Imu
    # This is a message to hold data from an IMU (Inertial Measurement Unit)
    #
    # Accelerations should be in m/s^2 (not in g's), and rotational velocity should be in rad/sec
    #
    # If the covariance of the measurement is known, it should be filled in (if all you know is the 
    # variance of each measurement, e.g. from the datasheet, just put those along the diagonal)
    # A covariance matrix of all zeros will be interpreted as "covariance unknown", and to use the
    # data a covariance will have to be assumed or gotten from some other source
    #
    # If you have no estimate for one of the data elements (e.g. your IMU doesn't produce an orientation 
    # estimate), please set element 0 of the associated covariance matrix to -1
    # If you are interpreting this message, please check for a value of -1 in the first element of each 
    # covariance matrix, and disregard the associated estimate.
    
    Header header
    
    geometry_msgs/Quaternion orientation
    float64[9] orientation_covariance # Row major about x, y, z axes
    
    geometry_msgs/Vector3 angular_velocity
    float64[9] angular_velocity_covariance # Row major about x, y, z axes
    
    geometry_msgs/Vector3 linear_acceleration
    float64[9] linear_acceleration_covariance # Row major x, y z 
    
    ================================================================================
    MSG: geometry_msgs/Quaternion
    # This represents an orientation in free space in quaternion form.
    
    float64 x
    float64 y
    float64 z
    float64 w
    
    ================================================================================
    MSG: geometry_msgs/Vector3
    # This represents a vector in free space. 
    # It is only meant to represent a direction. Therefore, it does not
    # make sense to apply a translation to it (e.g., when applying a 
    # generic rigid transformation to a Vector3, tf2 will only apply the
    # rotation). If you want your data to be translatable too, use the
    # geometry_msgs/Point message instead.
    
    float64 x
    float64 y
    float64 z
    ================================================================================
    MSG: sensor_msgs/NavSatFix
    # Navigation Satellite fix for any Global Navigation Satellite System
    #
    # Specified using the WGS 84 reference ellipsoid
    
    # header.stamp specifies the ROS time for this measurement (the
    #        corresponding satellite time may be reported using the
    #        sensor_msgs/TimeReference message).
    #
    # header.frame_id is the frame of reference reported by the satellite
    #        receiver, usually the location of the antenna.  This is a
    #        Euclidean frame relative to the vehicle, not a reference
    #        ellipsoid.
    Header header
    
    # satellite fix status information
    NavSatStatus status
    
    # Latitude [degrees]. Positive is north of equator; negative is south.
    float64 latitude
    
    # Longitude [degrees]. Positive is east of prime meridian; negative is west.
    float64 longitude
    
    # Altitude [m]. Positive is above the WGS 84 ellipsoid
    # (quiet NaN if no altitude is available).
    float64 altitude
    
    # Position covariance [m^2] defined relative to a tangential plane
    # through the reported position. The components are East, North, and
    # Up (ENU), in row-major order.
    #
    # Beware: this coordinate system exhibits singularities at the poles.
    
    float64[9] position_covariance
    
    # If the covariance of the fix is known, fill it in completely. If the
    # GPS receiver provides the variance of each measurement, put them
    # along the diagonal. If only Dilution of Precision is available,
    # estimate an approximate covariance from that.
    
    uint8 COVARIANCE_TYPE_UNKNOWN = 0
    uint8 COVARIANCE_TYPE_APPROXIMATED = 1
    uint8 COVARIANCE_TYPE_DIAGONAL_KNOWN = 2
    uint8 COVARIANCE_TYPE_KNOWN = 3
    
    uint8 position_covariance_type
    
    ================================================================================
    MSG: sensor_msgs/NavSatStatus
    # Navigation Satellite fix status for any Global Navigation Satellite System
    
    # Whether to output an augmented fix is determined by both the fix
    # type and the last time differential corrections were received.  A
    # fix is valid when status >= STATUS_FIX.
    
    int8 STATUS_NO_FIX =  -1        # unable to fix position
    int8 STATUS_FIX =      0        # unaugmented fix
    int8 STATUS_SBAS_FIX = 1        # with satellite-based augmentation
    int8 STATUS_GBAS_FIX = 2        # with ground-based augmentation
    
    int8 status
    
    # Bits defining which Global Navigation Satellite System signals were
    # used by the receiver.
    
    uint16 SERVICE_GPS =     1
    uint16 SERVICE_GLONASS = 2
    uint16 SERVICE_COMPASS = 4      # includes BeiDou.
    uint16 SERVICE_GALILEO = 8
    
    uint16 service
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new INSStdMsg(null);
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

    if (msg.imu !== undefined) {
      resolved.imu = sensor_msgs.msg.Imu.Resolve(msg.imu)
    }
    else {
      resolved.imu = new sensor_msgs.msg.Imu()
    }

    if (msg.nav_sat_fix !== undefined) {
      resolved.nav_sat_fix = sensor_msgs.msg.NavSatFix.Resolve(msg.nav_sat_fix)
    }
    else {
      resolved.nav_sat_fix = new sensor_msgs.msg.NavSatFix()
    }

    if (msg.ACC_X !== undefined) {
      resolved.ACC_X = msg.ACC_X;
    }
    else {
      resolved.ACC_X = 0.0
    }

    if (msg.ACC_Y !== undefined) {
      resolved.ACC_Y = msg.ACC_Y;
    }
    else {
      resolved.ACC_Y = 0.0
    }

    if (msg.ACC_Z !== undefined) {
      resolved.ACC_Z = msg.ACC_Z;
    }
    else {
      resolved.ACC_Z = 0.0
    }

    if (msg.GYRO_X !== undefined) {
      resolved.GYRO_X = msg.GYRO_X;
    }
    else {
      resolved.GYRO_X = 0.0
    }

    if (msg.GYRO_Y !== undefined) {
      resolved.GYRO_Y = msg.GYRO_Y;
    }
    else {
      resolved.GYRO_Y = 0.0
    }

    if (msg.GYRO_Z !== undefined) {
      resolved.GYRO_Z = msg.GYRO_Z;
    }
    else {
      resolved.GYRO_Z = 0.0
    }

    if (msg.INS_PitchAngle !== undefined) {
      resolved.INS_PitchAngle = msg.INS_PitchAngle;
    }
    else {
      resolved.INS_PitchAngle = 0.0
    }

    if (msg.INS_RollAngle !== undefined) {
      resolved.INS_RollAngle = msg.INS_RollAngle;
    }
    else {
      resolved.INS_RollAngle = 0.0
    }

    if (msg.INS_HeadingAngle !== undefined) {
      resolved.INS_HeadingAngle = msg.INS_HeadingAngle;
    }
    else {
      resolved.INS_HeadingAngle = 0.0
    }

    if (msg.INS_LocatHeight !== undefined) {
      resolved.INS_LocatHeight = msg.INS_LocatHeight;
    }
    else {
      resolved.INS_LocatHeight = 0.0
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
      resolved.INS_Latitude = 0.0
    }

    if (msg.INS_Longitude !== undefined) {
      resolved.INS_Longitude = msg.INS_Longitude;
    }
    else {
      resolved.INS_Longitude = 0.0
    }

    if (msg.INS_NorthSpd !== undefined) {
      resolved.INS_NorthSpd = msg.INS_NorthSpd;
    }
    else {
      resolved.INS_NorthSpd = 0.0
    }

    if (msg.INS_EastSpd !== undefined) {
      resolved.INS_EastSpd = msg.INS_EastSpd;
    }
    else {
      resolved.INS_EastSpd = 0.0
    }

    if (msg.INS_ToGroundSpd !== undefined) {
      resolved.INS_ToGroundSpd = msg.INS_ToGroundSpd;
    }
    else {
      resolved.INS_ToGroundSpd = 0.0
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
      resolved.INS_Std_Lat = 0.0
    }

    if (msg.INS_Std_Lon !== undefined) {
      resolved.INS_Std_Lon = msg.INS_Std_Lon;
    }
    else {
      resolved.INS_Std_Lon = 0.0
    }

    if (msg.INS_Std_LocatHeight !== undefined) {
      resolved.INS_Std_LocatHeight = msg.INS_Std_LocatHeight;
    }
    else {
      resolved.INS_Std_LocatHeight = 0.0
    }

    if (msg.INS_Std_Heading !== undefined) {
      resolved.INS_Std_Heading = msg.INS_Std_Heading;
    }
    else {
      resolved.INS_Std_Heading = 0.0
    }

    if (msg.INS_UTM_East !== undefined) {
      resolved.INS_UTM_East = msg.INS_UTM_East;
    }
    else {
      resolved.INS_UTM_East = 0.0
    }

    if (msg.INS_UTM_North !== undefined) {
      resolved.INS_UTM_North = msg.INS_UTM_North;
    }
    else {
      resolved.INS_UTM_North = 0.0
    }

    if (msg.INS_UTM_NorthSpd !== undefined) {
      resolved.INS_UTM_NorthSpd = msg.INS_UTM_NorthSpd;
    }
    else {
      resolved.INS_UTM_NorthSpd = 0.0
    }

    if (msg.INS_UTM_EastSpd !== undefined) {
      resolved.INS_UTM_EastSpd = msg.INS_UTM_EastSpd;
    }
    else {
      resolved.INS_UTM_EastSpd = 0.0
    }

    return resolved;
    }
};

module.exports = INSStdMsg;
