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
    }
    else {
      if (initObj.hasOwnProperty('printing')) {
        this.printing = initObj.printing
      }
      else {
        this.printing = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type TimerRequest
    // Serialize message field [printing]
    bufferOffset = _serializer.bool(obj.printing, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type TimerRequest
    let len;
    let data = new TimerRequest(null);
    // Deserialize message field [printing]
    data.printing = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a service object
    return 'scki2725_hw2/TimerRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '424d19f59af93153953d3ef5c3614349';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    bool printing
    
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

    return resolved;
    }
};

class TimerResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.clock = null;
      this.stamp = null;
    }
    else {
      if (initObj.hasOwnProperty('clock')) {
        this.clock = initObj.clock
      }
      else {
        this.clock = 0.0;
      }
      if (initObj.hasOwnProperty('stamp')) {
        this.stamp = initObj.stamp
      }
      else {
        this.stamp = {secs: 0, nsecs: 0};
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type TimerResponse
    // Serialize message field [clock]
    bufferOffset = _serializer.float64(obj.clock, buffer, bufferOffset);
    // Serialize message field [stamp]
    bufferOffset = _serializer.time(obj.stamp, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type TimerResponse
    let len;
    let data = new TimerResponse(null);
    // Deserialize message field [clock]
    data.clock = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [stamp]
    data.stamp = _deserializer.time(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 16;
  }

  static datatype() {
    // Returns string type for a service object
    return 'scki2725_hw2/TimerResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'd593ef9452dfc837176d09f400fd3fd3';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float64 clock
    time stamp
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new TimerResponse(null);
    if (msg.clock !== undefined) {
      resolved.clock = msg.clock;
    }
    else {
      resolved.clock = 0.0
    }

    if (msg.stamp !== undefined) {
      resolved.stamp = msg.stamp;
    }
    else {
      resolved.stamp = {secs: 0, nsecs: 0}
    }

    return resolved;
    }
};

module.exports = {
  Request: TimerRequest,
  Response: TimerResponse,
  md5sum() { return 'b68471fcd0db25b9058c843e54654d6a'; },
  datatype() { return 'scki2725_hw2/Timer'; }
};
