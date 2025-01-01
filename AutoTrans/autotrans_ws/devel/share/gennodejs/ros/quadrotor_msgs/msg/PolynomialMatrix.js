// Auto-generated. Do not edit!

// (in-package quadrotor_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class PolynomialMatrix {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.num_order = null;
      this.num_dim = null;
      this.data = null;
      this.duration = null;
    }
    else {
      if (initObj.hasOwnProperty('num_order')) {
        this.num_order = initObj.num_order
      }
      else {
        this.num_order = 0;
      }
      if (initObj.hasOwnProperty('num_dim')) {
        this.num_dim = initObj.num_dim
      }
      else {
        this.num_dim = 0;
      }
      if (initObj.hasOwnProperty('data')) {
        this.data = initObj.data
      }
      else {
        this.data = [];
      }
      if (initObj.hasOwnProperty('duration')) {
        this.duration = initObj.duration
      }
      else {
        this.duration = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type PolynomialMatrix
    // Serialize message field [num_order]
    bufferOffset = _serializer.uint32(obj.num_order, buffer, bufferOffset);
    // Serialize message field [num_dim]
    bufferOffset = _serializer.uint32(obj.num_dim, buffer, bufferOffset);
    // Serialize message field [data]
    bufferOffset = _arraySerializer.float64(obj.data, buffer, bufferOffset, null);
    // Serialize message field [duration]
    bufferOffset = _serializer.float64(obj.duration, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type PolynomialMatrix
    let len;
    let data = new PolynomialMatrix(null);
    // Deserialize message field [num_order]
    data.num_order = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [num_dim]
    data.num_dim = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [data]
    data.data = _arrayDeserializer.float64(buffer, bufferOffset, null)
    // Deserialize message field [duration]
    data.duration = _deserializer.float64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 8 * object.data.length;
    return length + 20;
  }

  static datatype() {
    // Returns string type for a message object
    return 'quadrotor_msgs/PolynomialMatrix';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '33f3d05d20db7dedec1bc61efdd169fc';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # the order of trajectory.
    uint32 num_order
    uint32 num_dim
    
    # the polynomial coecfficients of the trajectory.
    
    float64[] data
    float64 duration
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new PolynomialMatrix(null);
    if (msg.num_order !== undefined) {
      resolved.num_order = msg.num_order;
    }
    else {
      resolved.num_order = 0
    }

    if (msg.num_dim !== undefined) {
      resolved.num_dim = msg.num_dim;
    }
    else {
      resolved.num_dim = 0
    }

    if (msg.data !== undefined) {
      resolved.data = msg.data;
    }
    else {
      resolved.data = []
    }

    if (msg.duration !== undefined) {
      resolved.duration = msg.duration;
    }
    else {
      resolved.duration = 0.0
    }

    return resolved;
    }
};

module.exports = PolynomialMatrix;
