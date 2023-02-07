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

class Odom_data {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.x = null;
      this.y = null;
      this.theta = null;
      this.d_theta = null;
      this.counter_l = null;
      this.counter_r = null;
    }
    else {
      if (initObj.hasOwnProperty('x')) {
        this.x = initObj.x
      }
      else {
        this.x = 0.0;
      }
      if (initObj.hasOwnProperty('y')) {
        this.y = initObj.y
      }
      else {
        this.y = 0.0;
      }
      if (initObj.hasOwnProperty('theta')) {
        this.theta = initObj.theta
      }
      else {
        this.theta = 0.0;
      }
      if (initObj.hasOwnProperty('d_theta')) {
        this.d_theta = initObj.d_theta
      }
      else {
        this.d_theta = 0.0;
      }
      if (initObj.hasOwnProperty('counter_l')) {
        this.counter_l = initObj.counter_l
      }
      else {
        this.counter_l = 0;
      }
      if (initObj.hasOwnProperty('counter_r')) {
        this.counter_r = initObj.counter_r
      }
      else {
        this.counter_r = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Odom_data
    // Serialize message field [x]
    bufferOffset = _serializer.float64(obj.x, buffer, bufferOffset);
    // Serialize message field [y]
    bufferOffset = _serializer.float64(obj.y, buffer, bufferOffset);
    // Serialize message field [theta]
    bufferOffset = _serializer.float64(obj.theta, buffer, bufferOffset);
    // Serialize message field [d_theta]
    bufferOffset = _serializer.float64(obj.d_theta, buffer, bufferOffset);
    // Serialize message field [counter_l]
    bufferOffset = _serializer.uint16(obj.counter_l, buffer, bufferOffset);
    // Serialize message field [counter_r]
    bufferOffset = _serializer.uint16(obj.counter_r, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Odom_data
    let len;
    let data = new Odom_data(null);
    // Deserialize message field [x]
    data.x = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [y]
    data.y = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [theta]
    data.theta = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [d_theta]
    data.d_theta = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [counter_l]
    data.counter_l = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [counter_r]
    data.counter_r = _deserializer.uint16(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 36;
  }

  static datatype() {
    // Returns string type for a message object
    return 'my_robot_driver/Odom_data';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '7cb54c3a5884441715ff3e84859cb042';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    
    float64 x
    float64 y
    float64 theta
    float64 d_theta
    uint16 counter_l
    uint16 counter_r
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new Odom_data(null);
    if (msg.x !== undefined) {
      resolved.x = msg.x;
    }
    else {
      resolved.x = 0.0
    }

    if (msg.y !== undefined) {
      resolved.y = msg.y;
    }
    else {
      resolved.y = 0.0
    }

    if (msg.theta !== undefined) {
      resolved.theta = msg.theta;
    }
    else {
      resolved.theta = 0.0
    }

    if (msg.d_theta !== undefined) {
      resolved.d_theta = msg.d_theta;
    }
    else {
      resolved.d_theta = 0.0
    }

    if (msg.counter_l !== undefined) {
      resolved.counter_l = msg.counter_l;
    }
    else {
      resolved.counter_l = 0
    }

    if (msg.counter_r !== undefined) {
      resolved.counter_r = msg.counter_r;
    }
    else {
      resolved.counter_r = 0
    }

    return resolved;
    }
};

module.exports = Odom_data;
