// Auto-generated. Do not edit!

// (in-package assignment_2_2022.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------


//-----------------------------------------------------------

class goalTallyRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
    }
    else {
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type goalTallyRequest
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type goalTallyRequest
    let len;
    let data = new goalTallyRequest(null);
    return data;
  }

  static getMessageSize(object) {
    return 0;
  }

  static datatype() {
    // Returns string type for a service object
    return 'assignment_2_2022/goalTallyRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'd41d8cd98f00b204e9800998ecf8427e';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new goalTallyRequest(null);
    return resolved;
    }
};

class goalTallyResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.num_reached = null;
      this.num_cancelled = null;
    }
    else {
      if (initObj.hasOwnProperty('num_reached')) {
        this.num_reached = initObj.num_reached
      }
      else {
        this.num_reached = 0;
      }
      if (initObj.hasOwnProperty('num_cancelled')) {
        this.num_cancelled = initObj.num_cancelled
      }
      else {
        this.num_cancelled = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type goalTallyResponse
    // Serialize message field [num_reached]
    bufferOffset = _serializer.int32(obj.num_reached, buffer, bufferOffset);
    // Serialize message field [num_cancelled]
    bufferOffset = _serializer.int32(obj.num_cancelled, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type goalTallyResponse
    let len;
    let data = new goalTallyResponse(null);
    // Deserialize message field [num_reached]
    data.num_reached = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [num_cancelled]
    data.num_cancelled = _deserializer.int32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 8;
  }

  static datatype() {
    // Returns string type for a service object
    return 'assignment_2_2022/goalTallyResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'c3b2d0cebb6acdd5ec152404b217af96';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int32 num_reached
    int32 num_cancelled
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new goalTallyResponse(null);
    if (msg.num_reached !== undefined) {
      resolved.num_reached = msg.num_reached;
    }
    else {
      resolved.num_reached = 0
    }

    if (msg.num_cancelled !== undefined) {
      resolved.num_cancelled = msg.num_cancelled;
    }
    else {
      resolved.num_cancelled = 0
    }

    return resolved;
    }
};

module.exports = {
  Request: goalTallyRequest,
  Response: goalTallyResponse,
  md5sum() { return 'c3b2d0cebb6acdd5ec152404b217af96'; },
  datatype() { return 'assignment_2_2022/goalTally'; }
};
