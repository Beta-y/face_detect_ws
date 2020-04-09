// Auto-generated. Do not edit!

// (in-package face_detector.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let my_list = require('./my_list.js');

//-----------------------------------------------------------

class face_msgs {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.index = null;
      this.location = null;
    }
    else {
      if (initObj.hasOwnProperty('index')) {
        this.index = initObj.index
      }
      else {
        this.index = 0;
      }
      if (initObj.hasOwnProperty('location')) {
        this.location = initObj.location
      }
      else {
        this.location = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type face_msgs
    // Serialize message field [index]
    bufferOffset = _serializer.int16(obj.index, buffer, bufferOffset);
    // Serialize message field [location]
    // Serialize the length for message field [location]
    bufferOffset = _serializer.uint32(obj.location.length, buffer, bufferOffset);
    obj.location.forEach((val) => {
      bufferOffset = my_list.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type face_msgs
    let len;
    let data = new face_msgs(null);
    // Deserialize message field [index]
    data.index = _deserializer.int16(buffer, bufferOffset);
    // Deserialize message field [location]
    // Deserialize array length for message field [location]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.location = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.location[i] = my_list.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    object.location.forEach((val) => {
      length += my_list.getMessageSize(val);
    });
    return length + 6;
  }

  static datatype() {
    // Returns string type for a message object
    return 'face_detector/face_msgs';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '8b8cdd61744da60b1fa004570af7b850';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int16 index
    my_list[] location
    
    ================================================================================
    MSG: face_detector/my_list
    #list 4D
    string lable
    int16 top
    int16 right
    int16 bottom 
    int16 left
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new face_msgs(null);
    if (msg.index !== undefined) {
      resolved.index = msg.index;
    }
    else {
      resolved.index = 0
    }

    if (msg.location !== undefined) {
      resolved.location = new Array(msg.location.length);
      for (let i = 0; i < resolved.location.length; ++i) {
        resolved.location[i] = my_list.Resolve(msg.location[i]);
      }
    }
    else {
      resolved.location = []
    }

    return resolved;
    }
};

module.exports = face_msgs;
