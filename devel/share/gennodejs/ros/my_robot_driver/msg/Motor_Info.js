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

class Motor_Info {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.speed = null;
      this.motor_state = null;
    }
    else {
      if (initObj.hasOwnProperty('speed')) {
        this.speed = initObj.speed
      }
      else {
        this.speed = 0;
      }
      if (initObj.hasOwnProperty('motor_state')) {
        this.motor_state = initObj.motor_state
      }
      else {
        this.motor_state = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Motor_Info
    // Serialize message field [speed]
    bufferOffset = _serializer.int32(obj.speed, buffer, bufferOffset);
    // Serialize message field [motor_state]
    bufferOffset = _serializer.string(obj.motor_state, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Motor_Info
    let len;
    let data = new Motor_Info(null);
    // Deserialize message field [speed]
    data.speed = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [motor_state]
    data.motor_state = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.motor_state);
    return length + 8;
  }

  static datatype() {
    // Returns string type for a message object
    return 'my_robot_driver/Motor_Info';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '727388caaf5c9d9c438c26406d5890e4';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    
    int32 speed
    string motor_state
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new Motor_Info(null);
    if (msg.speed !== undefined) {
      resolved.speed = msg.speed;
    }
    else {
      resolved.speed = 0
    }

    if (msg.motor_state !== undefined) {
      resolved.motor_state = msg.motor_state;
    }
    else {
      resolved.motor_state = ''
    }

    return resolved;
    }
};

module.exports = Motor_Info;
