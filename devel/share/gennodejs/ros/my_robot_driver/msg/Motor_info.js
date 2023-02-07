// Auto-generated. Do not edit!

// (in-package my_robot_driver.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class Motor_info {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.current_speed_l = null;
      this.current_speed_r = null;
    }
    else {
      if (initObj.hasOwnProperty('current_speed_l')) {
        this.current_speed_l = initObj.current_speed_l
      }
      else {
        this.current_speed_l = 0.0;
      }
      if (initObj.hasOwnProperty('current_speed_r')) {
        this.current_speed_r = initObj.current_speed_r
      }
      else {
        this.current_speed_r = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Motor_info
    // Serialize message field [current_speed_l]
    bufferOffset = _serializer.float32(obj.current_speed_l, buffer, bufferOffset);
    // Serialize message field [current_speed_r]
    bufferOffset = _serializer.float32(obj.current_speed_r, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Motor_info
    let len;
    let data = new Motor_info(null);
    // Deserialize message field [current_speed_l]
    data.current_speed_l = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [current_speed_r]
    data.current_speed_r = _deserializer.float32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 8;
  }

  static datatype() {
    // Returns string type for a message object
    return 'my_robot_driver/Motor_info';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '25e2b75d3711d982ee897267a66f9df5';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float32 current_speed_l
    float32 current_speed_r
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new Motor_info(null);
    if (msg.current_speed_l !== undefined) {
      resolved.current_speed_l = msg.current_speed_l;
    }
    else {
      resolved.current_speed_l = 0.0
    }

    if (msg.current_speed_r !== undefined) {
      resolved.current_speed_r = msg.current_speed_r;
    }
    else {
      resolved.current_speed_r = 0.0
    }

    return resolved;
    }
};

module.exports = Motor_info;
