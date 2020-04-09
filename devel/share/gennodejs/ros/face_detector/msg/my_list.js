// Auto-generated. Do not edit!

// (in-package face_detector.msg)


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
      this.lable = null;
      this.top = null;
      this.right = null;
      this.bottom = null;
      this.left = null;
    }
    else {
      if (initObj.hasOwnProperty('lable')) {
        this.lable = initObj.lable
      }
      else {
        this.lable = '';
      }
      if (initObj.hasOwnProperty('top')) {
        this.top = initObj.top
      }
      else {
        this.top = 0;
      }
      if (initObj.hasOwnProperty('right')) {
        this.right = initObj.right
      }
      else {
        this.right = 0;
      }
      if (initObj.hasOwnProperty('bottom')) {
        this.bottom = initObj.bottom
      }
      else {
        this.bottom = 0;
      }
      if (initObj.hasOwnProperty('left')) {
        this.left = initObj.left
      }
      else {
        this.left = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type my_list
    // Serialize message field [lable]
    bufferOffset = _serializer.string(obj.lable, buffer, bufferOffset);
    // Serialize message field [top]
    bufferOffset = _serializer.int16(obj.top, buffer, bufferOffset);
    // Serialize message field [right]
    bufferOffset = _serializer.int16(obj.right, buffer, bufferOffset);
    // Serialize message field [bottom]
    bufferOffset = _serializer.int16(obj.bottom, buffer, bufferOffset);
    // Serialize message field [left]
    bufferOffset = _serializer.int16(obj.left, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type my_list
    let len;
    let data = new my_list(null);
    // Deserialize message field [lable]
    data.lable = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [top]
    data.top = _deserializer.int16(buffer, bufferOffset);
    // Deserialize message field [right]
    data.right = _deserializer.int16(buffer, bufferOffset);
    // Deserialize message field [bottom]
    data.bottom = _deserializer.int16(buffer, bufferOffset);
    // Deserialize message field [left]
    data.left = _deserializer.int16(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.lable.length;
    return length + 12;
  }

  static datatype() {
    // Returns string type for a message object
    return 'face_detector/my_list';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '590156b43bd12635225eac7ca690e0d9';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
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
    const resolved = new my_list(null);
    if (msg.lable !== undefined) {
      resolved.lable = msg.lable;
    }
    else {
      resolved.lable = ''
    }

    if (msg.top !== undefined) {
      resolved.top = msg.top;
    }
    else {
      resolved.top = 0
    }

    if (msg.right !== undefined) {
      resolved.right = msg.right;
    }
    else {
      resolved.right = 0
    }

    if (msg.bottom !== undefined) {
      resolved.bottom = msg.bottom;
    }
    else {
      resolved.bottom = 0
    }

    if (msg.left !== undefined) {
      resolved.left = msg.left;
    }
    else {
      resolved.left = 0
    }

    return resolved;
    }
};

module.exports = my_list;
