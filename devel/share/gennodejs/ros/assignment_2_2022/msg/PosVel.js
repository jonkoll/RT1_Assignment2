// Auto-generated. Do not edit!

// (in-package assignment_2_2022.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class PosVel {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.msg_pos_x = null;
      this.msg_pos_y = null;
      this.msg_vel_x = null;
      this.msg_vel_y = null;
    }
    else {
      if (initObj.hasOwnProperty('msg_pos_x')) {
        this.msg_pos_x = initObj.msg_pos_x
      }
      else {
        this.msg_pos_x = 0.0;
      }
      if (initObj.hasOwnProperty('msg_pos_y')) {
        this.msg_pos_y = initObj.msg_pos_y
      }
      else {
        this.msg_pos_y = 0.0;
      }
      if (initObj.hasOwnProperty('msg_vel_x')) {
        this.msg_vel_x = initObj.msg_vel_x
      }
      else {
        this.msg_vel_x = 0.0;
      }
      if (initObj.hasOwnProperty('msg_vel_y')) {
        this.msg_vel_y = initObj.msg_vel_y
      }
      else {
        this.msg_vel_y = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type PosVel
    // Serialize message field [msg_pos_x]
    bufferOffset = _serializer.float64(obj.msg_pos_x, buffer, bufferOffset);
    // Serialize message field [msg_pos_y]
    bufferOffset = _serializer.float64(obj.msg_pos_y, buffer, bufferOffset);
    // Serialize message field [msg_vel_x]
    bufferOffset = _serializer.float64(obj.msg_vel_x, buffer, bufferOffset);
    // Serialize message field [msg_vel_y]
    bufferOffset = _serializer.float64(obj.msg_vel_y, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type PosVel
    let len;
    let data = new PosVel(null);
    // Deserialize message field [msg_pos_x]
    data.msg_pos_x = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [msg_pos_y]
    data.msg_pos_y = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [msg_vel_x]
    data.msg_vel_x = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [msg_vel_y]
    data.msg_vel_y = _deserializer.float64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 32;
  }

  static datatype() {
    // Returns string type for a message object
    return 'assignment_2_2022/PosVel';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '62b77e440a60d59d72cbcf5ad778d584';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float64 msg_pos_x
    float64 msg_pos_y
    float64 msg_vel_x
    float64 msg_vel_y
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new PosVel(null);
    if (msg.msg_pos_x !== undefined) {
      resolved.msg_pos_x = msg.msg_pos_x;
    }
    else {
      resolved.msg_pos_x = 0.0
    }

    if (msg.msg_pos_y !== undefined) {
      resolved.msg_pos_y = msg.msg_pos_y;
    }
    else {
      resolved.msg_pos_y = 0.0
    }

    if (msg.msg_vel_x !== undefined) {
      resolved.msg_vel_x = msg.msg_vel_x;
    }
    else {
      resolved.msg_vel_x = 0.0
    }

    if (msg.msg_vel_y !== undefined) {
      resolved.msg_vel_y = msg.msg_vel_y;
    }
    else {
      resolved.msg_vel_y = 0.0
    }

    return resolved;
    }
};

module.exports = PosVel;
