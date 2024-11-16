// Auto-generated. Do not edit!

// (in-package in2ulv_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class HDMapPrimitive {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.id = null;
      this.primitive_type = null;
    }
    else {
      if (initObj.hasOwnProperty('id')) {
        this.id = initObj.id
      }
      else {
        this.id = 0;
      }
      if (initObj.hasOwnProperty('primitive_type')) {
        this.primitive_type = initObj.primitive_type
      }
      else {
        this.primitive_type = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type HDMapPrimitive
    // Serialize message field [id]
    bufferOffset = _serializer.int64(obj.id, buffer, bufferOffset);
    // Serialize message field [primitive_type]
    bufferOffset = _serializer.string(obj.primitive_type, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type HDMapPrimitive
    let len;
    let data = new HDMapPrimitive(null);
    // Deserialize message field [id]
    data.id = _deserializer.int64(buffer, bufferOffset);
    // Deserialize message field [primitive_type]
    data.primitive_type = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.primitive_type);
    return length + 12;
  }

  static datatype() {
    // Returns string type for a message object
    return 'in2ulv_msgs/HDMapPrimitive';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '71178c1a30e0d8abc901046ed42eed0a';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
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
    const resolved = new HDMapPrimitive(null);
    if (msg.id !== undefined) {
      resolved.id = msg.id;
    }
    else {
      resolved.id = 0
    }

    if (msg.primitive_type !== undefined) {
      resolved.primitive_type = msg.primitive_type;
    }
    else {
      resolved.primitive_type = ''
    }

    return resolved;
    }
};

module.exports = HDMapPrimitive;
