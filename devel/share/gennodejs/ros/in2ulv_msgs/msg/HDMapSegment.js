// Auto-generated. Do not edit!

// (in-package in2ulv_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let HDMapPrimitive = require('./HDMapPrimitive.js');

//-----------------------------------------------------------

class HDMapSegment {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.primitives = null;
      this.preferred_primitive_id = null;
    }
    else {
      if (initObj.hasOwnProperty('primitives')) {
        this.primitives = initObj.primitives
      }
      else {
        this.primitives = [];
      }
      if (initObj.hasOwnProperty('preferred_primitive_id')) {
        this.preferred_primitive_id = initObj.preferred_primitive_id
      }
      else {
        this.preferred_primitive_id = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type HDMapSegment
    // Serialize message field [primitives]
    // Serialize the length for message field [primitives]
    bufferOffset = _serializer.uint32(obj.primitives.length, buffer, bufferOffset);
    obj.primitives.forEach((val) => {
      bufferOffset = HDMapPrimitive.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [preferred_primitive_id]
    bufferOffset = _serializer.int64(obj.preferred_primitive_id, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type HDMapSegment
    let len;
    let data = new HDMapSegment(null);
    // Deserialize message field [primitives]
    // Deserialize array length for message field [primitives]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.primitives = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.primitives[i] = HDMapPrimitive.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [preferred_primitive_id]
    data.preferred_primitive_id = _deserializer.int64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    object.primitives.forEach((val) => {
      length += HDMapPrimitive.getMessageSize(val);
    });
    return length + 12;
  }

  static datatype() {
    // Returns string type for a message object
    return 'in2ulv_msgs/HDMapSegment';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'd2c0eed8a8c4b7028940231461cac864';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # A segment of an HDMap which contains one or more MapPrimitives.
    in2ulv_msgs/HDMapPrimitive[] primitives
    
    int64 preferred_primitive_id
    
    ================================================================================
    MSG: in2ulv_msgs/HDMapPrimitive
    # Map primitive information
    int64 id
    
    # Type of primitive, such as lane, polygon, line.
    string primitive_type
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new HDMapSegment(null);
    if (msg.primitives !== undefined) {
      resolved.primitives = new Array(msg.primitives.length);
      for (let i = 0; i < resolved.primitives.length; ++i) {
        resolved.primitives[i] = HDMapPrimitive.Resolve(msg.primitives[i]);
      }
    }
    else {
      resolved.primitives = []
    }

    if (msg.preferred_primitive_id !== undefined) {
      resolved.preferred_primitive_id = msg.preferred_primitive_id;
    }
    else {
      resolved.preferred_primitive_id = 0
    }

    return resolved;
    }
};

module.exports = HDMapSegment;
