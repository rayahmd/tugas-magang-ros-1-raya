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

class driver {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.driver_id = null;
      this.name = null;
      this.car_brand = null;
      this.car_type = null;
      this.plate = null;
    }
    else {
      if (initObj.hasOwnProperty('driver_id')) {
        this.driver_id = initObj.driver_id
      }
      else {
        this.driver_id = '';
      }
      if (initObj.hasOwnProperty('name')) {
        this.name = initObj.name
      }
      else {
        this.name = '';
      }
      if (initObj.hasOwnProperty('car_brand')) {
        this.car_brand = initObj.car_brand
      }
      else {
        this.car_brand = '';
      }
      if (initObj.hasOwnProperty('car_type')) {
        this.car_type = initObj.car_type
      }
      else {
        this.car_type = '';
      }
      if (initObj.hasOwnProperty('plate')) {
        this.plate = initObj.plate
      }
      else {
        this.plate = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type driver
    // Serialize message field [driver_id]
    bufferOffset = _serializer.string(obj.driver_id, buffer, bufferOffset);
    // Serialize message field [name]
    bufferOffset = _serializer.string(obj.name, buffer, bufferOffset);
    // Serialize message field [car_brand]
    bufferOffset = _serializer.string(obj.car_brand, buffer, bufferOffset);
    // Serialize message field [car_type]
    bufferOffset = _serializer.string(obj.car_type, buffer, bufferOffset);
    // Serialize message field [plate]
    bufferOffset = _serializer.string(obj.plate, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type driver
    let len;
    let data = new driver(null);
    // Deserialize message field [driver_id]
    data.driver_id = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [name]
    data.name = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [car_brand]
    data.car_brand = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [car_type]
    data.car_type = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [plate]
    data.plate = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.driver_id);
    length += _getByteLength(object.name);
    length += _getByteLength(object.car_brand);
    length += _getByteLength(object.car_type);
    length += _getByteLength(object.plate);
    return length + 20;
  }

  static datatype() {
    // Returns string type for a message object
    return 'tgs_ros/driver';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '93069d58263ad2c724a8a005539b60fe';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string driver_id
    string name
    string car_brand
    string car_type
    string plate
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new driver(null);
    if (msg.driver_id !== undefined) {
      resolved.driver_id = msg.driver_id;
    }
    else {
      resolved.driver_id = ''
    }

    if (msg.name !== undefined) {
      resolved.name = msg.name;
    }
    else {
      resolved.name = ''
    }

    if (msg.car_brand !== undefined) {
      resolved.car_brand = msg.car_brand;
    }
    else {
      resolved.car_brand = ''
    }

    if (msg.car_type !== undefined) {
      resolved.car_type = msg.car_type;
    }
    else {
      resolved.car_type = ''
    }

    if (msg.plate !== undefined) {
      resolved.plate = msg.plate;
    }
    else {
      resolved.plate = ''
    }

    return resolved;
    }
};

module.exports = driver;
