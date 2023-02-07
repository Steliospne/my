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

class Buttons {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.reset = null;
      this.mode = null;
      this.stop = null;
    }
    else {
      if (initObj.hasOwnProperty('reset')) {
        this.reset = initObj.reset
      }
      else {
        this.reset = false;
      }
      if (initObj.hasOwnProperty('mode')) {
        this.mode = initObj.mode
      }
      else {
        this.mode = false;
      }
      if (initObj.hasOwnProperty('stop')) {
        this.stop = initObj.stop
      }
      else {
        this.stop = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Buttons
    // Serialize message field [reset]
    bufferOffset = _serializer.bool(obj.reset, buffer, bufferOffset);
    // Serialize message field [mode]
    bufferOffset = _serializer.bool(obj.mode, buffer, bufferOffset);
    // Serialize message field [stop]
    bufferOffset = _serializer.bool(obj.stop, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Buttons
    let len;
    let data = new Buttons(null);
    // Deserialize message field [reset]
    data.reset = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [mode]
    data.mode = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [stop]
    data.stop = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 3;
  }

  static datatype() {
    // Returns string type for a message object
    return 'my_robot_driver/Buttons';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'd5eb4537e3fc1caf4d9efa0e1fbc2aa5';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    
    bool reset
    bool mode
    bool stop
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new Buttons(null);
    if (msg.reset !== undefined) {
      resolved.reset = msg.reset;
    }
    else {
      resolved.reset = false
    }

    if (msg.mode !== undefined) {
      resolved.mode = msg.mode;
    }
    else {
      resolved.mode = false
    }

    if (msg.stop !== undefined) {
      resolved.stop = msg.stop;
    }
    else {
      resolved.stop = false
    }

    return resolved;
    }
};

module.exports = Buttons;
