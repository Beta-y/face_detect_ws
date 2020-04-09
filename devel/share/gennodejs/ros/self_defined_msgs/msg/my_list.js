// Auto-generated. Do not edit!

// (in-package self_defined_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class my_list {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
    }
    else {
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type my_list
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type my_list
    let len;
    let data = new my_list(null);
    return data;
  }

  static getMessageSize(object) {
    return 0;
  }

  static datatype() {
    // Returns string type for a message object
    return 'self_defined_msgs/my_list';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '1d20127be13903cadd3a4c222505203d';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    #list 4D
    uint16 a=0
    uint16 b=0
    uint16 c=0
    uint16 d=0
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new my_list(null);
    return resolved;
    }
};

// Constants for message
my_list.Constants = {
  A: 0,
  B: 0,
  C: 0,
  D: 0,
}

module.exports = my_list;
