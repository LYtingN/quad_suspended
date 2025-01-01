// Auto-generated. Do not edit!

// (in-package quadrotor_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let PolynomialMatrix = require('./PolynomialMatrix.js');
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class PolynomialTraj {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.trajectory_id = null;
      this.action = null;
      this.trajectory = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('trajectory_id')) {
        this.trajectory_id = initObj.trajectory_id
      }
      else {
        this.trajectory_id = 0;
      }
      if (initObj.hasOwnProperty('action')) {
        this.action = initObj.action
      }
      else {
        this.action = 0;
      }
      if (initObj.hasOwnProperty('trajectory')) {
        this.trajectory = initObj.trajectory
      }
      else {
        this.trajectory = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type PolynomialTraj
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [trajectory_id]
    bufferOffset = _serializer.uint32(obj.trajectory_id, buffer, bufferOffset);
    // Serialize message field [action]
    bufferOffset = _serializer.uint32(obj.action, buffer, bufferOffset);
    // Serialize message field [trajectory]
    // Serialize the length for message field [trajectory]
    bufferOffset = _serializer.uint32(obj.trajectory.length, buffer, bufferOffset);
    obj.trajectory.forEach((val) => {
      bufferOffset = PolynomialMatrix.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type PolynomialTraj
    let len;
    let data = new PolynomialTraj(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [trajectory_id]
    data.trajectory_id = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [action]
    data.action = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [trajectory]
    // Deserialize array length for message field [trajectory]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.trajectory = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.trajectory[i] = PolynomialMatrix.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    object.trajectory.forEach((val) => {
      length += PolynomialMatrix.getMessageSize(val);
    });
    return length + 12;
  }

  static datatype() {
    // Returns string type for a message object
    return 'quadrotor_msgs/PolynomialTraj';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '953704bac8e4c900f7bb35217887d6c4';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    Header header
    
    # the trajectory id, starts from "1".
    uint32 trajectory_id
    
    # the action command for trajectory server.
    uint32 ACTION_ADD           =   1
    uint32 ACTION_ABORT         =   2
    uint32 ACTION_WARN_START           =   3
    uint32 ACTION_WARN_FINAL           =   4
    uint32 ACTION_WARN_IMPOSSIBLE      =   5
    uint32 action
    
    # the order of trajectory.
    quadrotor_msgs/PolynomialMatrix[] trajectory 
    
    ================================================================================
    MSG: std_msgs/Header
    # Standard metadata for higher-level stamped data types.
    # This is generally used to communicate timestamped data 
    # in a particular coordinate frame.
    # 
    # sequence ID: consecutively increasing ID 
    uint32 seq
    #Two-integer timestamp that is expressed as:
    # * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
    # * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
    # time-handling sugar is provided by the client library
    time stamp
    #Frame this data is associated with
    string frame_id
    
    ================================================================================
    MSG: quadrotor_msgs/PolynomialMatrix
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
    const resolved = new PolynomialTraj(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.trajectory_id !== undefined) {
      resolved.trajectory_id = msg.trajectory_id;
    }
    else {
      resolved.trajectory_id = 0
    }

    if (msg.action !== undefined) {
      resolved.action = msg.action;
    }
    else {
      resolved.action = 0
    }

    if (msg.trajectory !== undefined) {
      resolved.trajectory = new Array(msg.trajectory.length);
      for (let i = 0; i < resolved.trajectory.length; ++i) {
        resolved.trajectory[i] = PolynomialMatrix.Resolve(msg.trajectory[i]);
      }
    }
    else {
      resolved.trajectory = []
    }

    return resolved;
    }
};

// Constants for message
PolynomialTraj.Constants = {
  ACTION_ADD: 1,
  ACTION_ABORT: 2,
  ACTION_WARN_START: 3,
  ACTION_WARN_FINAL: 4,
  ACTION_WARN_IMPOSSIBLE: 5,
}

module.exports = PolynomialTraj;
