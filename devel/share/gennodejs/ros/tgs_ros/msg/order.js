// Auto-generated. Do not edit!

// (in-package tgs_ros.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class order {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.user_name = null;
    }
    else {
      if (initObj.hasOwnProperty('user_name')) {
        this.user_name = initObj.user_name
      }
      else {
        this.user_name = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type order
    // Serialize message field [user_name]
    bufferOffset = _serializer.string(obj.user_name, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type order
    let len;
    let data = new order(null);
    // Deserialize message field [user_name]
    data.user_name = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.user_name);
    return length + 4;
  }

  static datatype() {
    // Returns string type for a message object
    return 'tgs_ros/order';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '159b36609af19853383ab1313ed185b0';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string user_name
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new order(null);
    if (msg.user_name !== undefined) {
      resolved.user_name = msg.user_name;
    }
    else {
      resolved.user_name = ''
    }

    return resolved;
    }
};

module.exports = order;
