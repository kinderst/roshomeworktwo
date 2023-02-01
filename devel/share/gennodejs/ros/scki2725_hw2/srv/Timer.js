// Auto-generated. Do not edit!

// (in-package scki2725_hw2.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------


//-----------------------------------------------------------

class TimerRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.printing = null;
      this.start = null;
    }
    else {
      if (initObj.hasOwnProperty('printing')) {
        this.printing = initObj.printing
      }
      else {
        this.printing = false;
      }
      if (initObj.hasOwnProperty('start')) {
        this.start = initObj.start
      }
      else {
        this.start = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type TimerRequest
    // Serialize message field [printing]
    bufferOffset = _serializer.bool(obj.printing, buffer, bufferOffset);
    // Serialize message field [start]
    bufferOffset = _serializer.float64(obj.start, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type TimerRequest
    let len;
    let data = new TimerRequest(null);
    // Deserialize message field [printing]
    data.printing = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [start]
    data.start = _deserializer.float64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 9;
  }

  static datatype() {
    // Returns string type for a service object
    return 'scki2725_hw2/TimerRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '565d68e018f7aa32f4cc9782ad9fa1e7';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    bool printing
    float64 start
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new TimerRequest(null);
    if (msg.printing !== undefined) {
      resolved.printing = msg.printing;
    }
    else {
      resolved.printing = false
    }

    if (msg.start !== undefined) {
      resolved.start = msg.start;
    }
    else {
      resolved.start = 0.0
    }

    return resolved;
    }
};

class TimerResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.end = null;
    }
    else {
      if (initObj.hasOwnProperty('end')) {
        this.end = initObj.end
      }
      else {
        this.end = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type TimerResponse
    // Serialize message field [end]
    bufferOffset = _serializer.float64(obj.end, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type TimerResponse
    let len;
    let data = new TimerResponse(null);
    // Deserialize message field [end]
    data.end = _deserializer.float64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 8;
  }

  static datatype() {
    // Returns string type for a service object
    return 'scki2725_hw2/TimerResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '270bbe95388b4ce7389d41b4b3b90cb6';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float64 end
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new TimerResponse(null);
    if (msg.end !== undefined) {
      resolved.end = msg.end;
    }
    else {
      resolved.end = 0.0
    }

    return resolved;
    }
};

module.exports = {
  Request: TimerRequest,
  Response: TimerResponse,
  md5sum() { return '0e426c5e8189291ccb09331d326d8d33'; },
  datatype() { return 'scki2725_hw2/Timer'; }
};
