; Auto-generated. Do not edit!


(cl:in-package quadrotor_msgs-msg)


;//! \htmlinclude PolynomialTraj.msg.html

(cl:defclass <PolynomialTraj> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (trajectory_id
    :reader trajectory_id
    :initarg :trajectory_id
    :type cl:integer
    :initform 0)
   (action
    :reader action
    :initarg :action
    :type cl:integer
    :initform 0)
   (trajectory
    :reader trajectory
    :initarg :trajectory
    :type (cl:vector quadrotor_msgs-msg:PolynomialMatrix)
   :initform (cl:make-array 0 :element-type 'quadrotor_msgs-msg:PolynomialMatrix :initial-element (cl:make-instance 'quadrotor_msgs-msg:PolynomialMatrix))))
)

(cl:defclass PolynomialTraj (<PolynomialTraj>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <PolynomialTraj>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'PolynomialTraj)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name quadrotor_msgs-msg:<PolynomialTraj> is deprecated: use quadrotor_msgs-msg:PolynomialTraj instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <PolynomialTraj>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader quadrotor_msgs-msg:header-val is deprecated.  Use quadrotor_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'trajectory_id-val :lambda-list '(m))
(cl:defmethod trajectory_id-val ((m <PolynomialTraj>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader quadrotor_msgs-msg:trajectory_id-val is deprecated.  Use quadrotor_msgs-msg:trajectory_id instead.")
  (trajectory_id m))

(cl:ensure-generic-function 'action-val :lambda-list '(m))
(cl:defmethod action-val ((m <PolynomialTraj>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader quadrotor_msgs-msg:action-val is deprecated.  Use quadrotor_msgs-msg:action instead.")
  (action m))

(cl:ensure-generic-function 'trajectory-val :lambda-list '(m))
(cl:defmethod trajectory-val ((m <PolynomialTraj>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader quadrotor_msgs-msg:trajectory-val is deprecated.  Use quadrotor_msgs-msg:trajectory instead.")
  (trajectory m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<PolynomialTraj>)))
    "Constants for message type '<PolynomialTraj>"
  '((:ACTION_ADD . 1)
    (:ACTION_ABORT . 2)
    (:ACTION_WARN_START . 3)
    (:ACTION_WARN_FINAL . 4)
    (:ACTION_WARN_IMPOSSIBLE . 5))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'PolynomialTraj)))
    "Constants for message type 'PolynomialTraj"
  '((:ACTION_ADD . 1)
    (:ACTION_ABORT . 2)
    (:ACTION_WARN_START . 3)
    (:ACTION_WARN_FINAL . 4)
    (:ACTION_WARN_IMPOSSIBLE . 5))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <PolynomialTraj>) ostream)
  "Serializes a message object of type '<PolynomialTraj>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'trajectory_id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'trajectory_id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'trajectory_id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'trajectory_id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'action)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'action)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'action)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'action)) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'trajectory))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'trajectory))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <PolynomialTraj>) istream)
  "Deserializes a message object of type '<PolynomialTraj>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'trajectory_id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'trajectory_id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'trajectory_id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'trajectory_id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'action)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'action)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'action)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'action)) (cl:read-byte istream))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'trajectory) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'trajectory)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'quadrotor_msgs-msg:PolynomialMatrix))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<PolynomialTraj>)))
  "Returns string type for a message object of type '<PolynomialTraj>"
  "quadrotor_msgs/PolynomialTraj")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'PolynomialTraj)))
  "Returns string type for a message object of type 'PolynomialTraj"
  "quadrotor_msgs/PolynomialTraj")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<PolynomialTraj>)))
  "Returns md5sum for a message object of type '<PolynomialTraj>"
  "953704bac8e4c900f7bb35217887d6c4")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'PolynomialTraj)))
  "Returns md5sum for a message object of type 'PolynomialTraj"
  "953704bac8e4c900f7bb35217887d6c4")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<PolynomialTraj>)))
  "Returns full string definition for message of type '<PolynomialTraj>"
  (cl:format cl:nil "Header header~%~%# the trajectory id, starts from \"1\".~%uint32 trajectory_id~%~%# the action command for trajectory server.~%uint32 ACTION_ADD           =   1~%uint32 ACTION_ABORT         =   2~%uint32 ACTION_WARN_START           =   3~%uint32 ACTION_WARN_FINAL           =   4~%uint32 ACTION_WARN_IMPOSSIBLE      =   5~%uint32 action~%~%# the order of trajectory.~%quadrotor_msgs/PolynomialMatrix[] trajectory ~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: quadrotor_msgs/PolynomialMatrix~%# the order of trajectory.~%uint32 num_order~%uint32 num_dim~%~%# the polynomial coecfficients of the trajectory.~%~%float64[] data~%float64 duration~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'PolynomialTraj)))
  "Returns full string definition for message of type 'PolynomialTraj"
  (cl:format cl:nil "Header header~%~%# the trajectory id, starts from \"1\".~%uint32 trajectory_id~%~%# the action command for trajectory server.~%uint32 ACTION_ADD           =   1~%uint32 ACTION_ABORT         =   2~%uint32 ACTION_WARN_START           =   3~%uint32 ACTION_WARN_FINAL           =   4~%uint32 ACTION_WARN_IMPOSSIBLE      =   5~%uint32 action~%~%# the order of trajectory.~%quadrotor_msgs/PolynomialMatrix[] trajectory ~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: quadrotor_msgs/PolynomialMatrix~%# the order of trajectory.~%uint32 num_order~%uint32 num_dim~%~%# the polynomial coecfficients of the trajectory.~%~%float64[] data~%float64 duration~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <PolynomialTraj>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4
     4
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'trajectory) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <PolynomialTraj>))
  "Converts a ROS message object to a list"
  (cl:list 'PolynomialTraj
    (cl:cons ':header (header msg))
    (cl:cons ':trajectory_id (trajectory_id msg))
    (cl:cons ':action (action msg))
    (cl:cons ':trajectory (trajectory msg))
))
